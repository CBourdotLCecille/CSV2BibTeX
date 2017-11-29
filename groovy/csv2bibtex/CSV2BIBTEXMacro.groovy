package org.txm.macro.csv

import org.kohsuke.args4j.*
import groovy.transform.Field
import java.nio.charset.Charset
import org.txm.rcpapplication.swt.widget.parameters.*
import org.txm.utils.*
import javax.xml.stream.*
import org.txm.importer.ApplyXsl2
import java.net.URL
import org.txm.Toolbox
import java.io.*;

@Field @Option(name="inputFile", usage="CSV File", widget="File", required=false, def="file.csv")
File inputFile;

@Field @Option(name="columnSeparator", usage="column columnSeparator", widget="String", required=false, def="	")
def columnSeparator;

@Field @Option(name="characterEncoding", usage="File characterEncoding", widget="String", required=false, def="UTF-8")
def characterEncoding;

@Field @Option(name="rootElement", usage="text idcolumn name", widget="String", required=false, def="root")
def rootElement;

@Field @Option(name="textColumn", usage="text idcolumn name", widget="String", required=false, def="text_id")
def textColumn;

@Field @Option(name="columnTitle", usage="columnTitle column list separated with comma", widget="String", required=false, def="meta1,meta2")
def columnTitle;

@Field @Option(name="textColumnList", usage="textColumnList column list separated with comma", widget="String", required=false, def="textColumnList1,textColumnList2")
def textColumnList;

@Field (name="xslxml2bibtex", usage="XSL xml to bibtex' file", widget="File", def="xml2bibtex.xsl")
def xslxml2bibtex

@Field (name="debug", usage="Enable debug mode: temporary files are not deleted", widget="Boolean", required=false, def="false")
def debug = false

if (!ParametersDialog.open(this)) return;

File TXMHOME = new File(Toolbox.getParam(Toolbox.USER_TXM_HOME))
File xslDirectory = new File(TXMHOME, "xsl/csv2bibtex")
if  (xslxml2bibtex == null || xslxml2bibtex.getName() == "xml2bibtex.xsl")
		xslxml2bibtex = new File(xslDirectory, "xml2bibtex.xsl")

columnTitle = Arrays.asList(columnTitle.split(","))
textColumnList = Arrays.asList(textColumnList.split(","))

CsvReader reader = new CsvReader(inputFile.getAbsolutePath(), columnSeparator.charAt(0), Charset.forName(characterEncoding));
if (!reader.readHeaders()) {
	println "Error: no header"
	return
}
def headers = Arrays.asList(reader.getHeaders()) 

println "columns: $headers"
println "textColumn: $textColumn"
println "columnTitle columns: $columnTitle"
println "textColumnList columns: $textColumnList"

def ok = true
for (String m : columnTitle) {
	m = m.trim()
	if (!headers.contains(m)) {
		println "Error: missing columnTitle column: $m"
		ok = false
	}
}
for (String t : textColumnList) {
	t = t.trim()
	if (!headers.contains(t)) {
		println "Error: missing textColumnList column: $t"
	}
}

if (!ok) { return; }

File outputDirectory = new File(inputFile.getParentFile(), "BibTeX_Files")
outputDirectory.deleteDir();
outputDirectory.mkdir()

def current_structures = [:]

XMLOutputFactory factory = XMLOutputFactory.newInstance()
XMLStreamWriter writer;
while (reader.readRecord()) {
	
	String text_id = reader.get(textColumn)
	
	if (current_structures[textColumn] != text_id) { // new text !!
		if (writer != null) {
			println "ending XML file"
			for (def structure_id_name : columnTitle) {
				if (current_structures[structure_id_name] != null) {
					println "close previous $structure_id_name "+current_structures[structure_id_name]
					writer.writeEndElement() // struct
				}
			}
		
			writer.writeEndElement() // text
			writer.writeCharacters("\n") // simple XML formating
			writer.writeEndElement() // TEI
			writer.close()
			
			current_structures = [:]
		}
		println "New text: $text_id"
	
		File outputfile = new File(outputDirectory, text_id+".xml")

		
		FileOutputStream output = new FileOutputStream(outputfile)
		writer = factory.createXMLStreamWriter(output, "UTF-8")

		writer.writeStartDocument("UTF-8","1.0")
		writer.writeCharacters("\n") // simple XML formating
		
		writer.writeStartElement(rootElement)
		writer.writeCharacters("\n") // simple XML formating
		// ...
		writer.writeStartElement("text")
		writer.writeCharacters("\n") // simple XML formating
		
		current_structures[textColumn] = text_id
	}
	
	for (def structure_id_name : columnTitle) {
		
		def structure_id = reader.get(structure_id_name)
	
		if (current_structures[structure_id_name] != structure_id) { // new structure !!
			
			println "found $structure_id_name $structure_id previous: "+current_structures[structure_id_name]
			
			int current_struct_index = columnTitle.indexOf(structure_id_name)
			println "closing inner structures from "+(current_struct_index..columnTitle.size())
			for (int i : current_struct_index..columnTitle.size()) {
				
				if (current_structures[columnTitle[i]] != null) {
					writer.writeEndElement() // structure_id_name
					writer.writeCharacters("\n") // simple XML formating
					current_structures[columnTitle[i]] = null
				}
			}
		
			if (current_structures[structure_id_name] != null) {
				println "close previous $structure_id_name "+current_structures[structure_id_name]
				writer.writeEndElement() // structure_id_name
				writer.writeCharacters("\n") // simple XML formating
			}
			
			println "open $structure_id_name $structure_id"
			writer.writeStartElement(structure_id_name)
			writer.writeAttribute("id", structure_id)
			writer.writeCharacters("\n") // simple XML formating
			
			current_structures[structure_id_name] = structure_id
		}
	}	
	
	for (String text_id_name : textColumnList) {
		String text_content = reader.get(text_id_name)
		writer.writeCharacters(text_content) // simple XML formating
		writer.writeCharacters("\n") // simple XML formating
	}

}




if (writer != null) {
	println "ending XML file"

	for (def structure_id_name : columnTitle) {
		if (current_structures[structure_id_name] != null) writer.writeEndElement() // text
	}

	writer.writeEndElement() // text
	writer.writeEndElement() // TEI
	writer.close()
}

println "Applying XSL : $xslxml2bibtex..."
ApplyXsl2 applier = new ApplyXsl2(xslxml2bibtex);
def BibtexFiles = []
for (File f : outputDirectory.listFiles()) { // récupérer les fichiers créés plus haut
	String name = f.getName()
	String txtname = name.substring(0, name.indexOf("."));
	File rez = new File(outputDirectory, txtname+".bib")



	if (!f.isDirectory() && !f.isHidden() && name.endsWith(".xml") && !name.equals("import.xml")) {
	
		if (debug) println " file $f >> $rez"
		else print ""
	
		if (!applier.process(f, rez)) {
			println "Error: failed to process $f"
			return false
		} else {
			BibtexFiles << rez
		}
	}
} 


println "Done, result files written in $outputDirectory"