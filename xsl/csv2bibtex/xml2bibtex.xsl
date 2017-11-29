<!--//This program has been conceived by Charles Bourdot and Lou Cecille - MSH Nantes

//This program is free software; you can redistribute it and/or
//modify it under the terms of the GNU General Public
//License as published by the Free Software Foundation,
//either version 3 of the License, or
//(at your option) any later version.

//This program is distributed in the hope that it will be useful,
//but WITHOUT ANY WARRANTY; without even the implied warranty of
//MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
//Lesser General Public License for more details.
//<http://www.gnu.org/licenses/> -->

<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xhtml="http://www.w3.org/1999/xhtml"
    
    version="2.0">

<xsl:output encoding="UTF-8" indent="no" method="text"/>

<!-- template agissant sur des données de type Article -->
<xsl:template match="*:article">

	<!-- en-tête, première ligne et accolade ouvrante -->
	<xsl:text>@article{</xsl:text><xsl:value-of select="@id"/><xsl:text>,
</xsl:text>
<!-- fin d'entête -->

<!-- métadonnées obligatoires -->

<xsl:if test="string-length(./descendant::*:title/@id)!=0"><xsl:text>   title = {</xsl:text><xsl:value-of select="./descendant::*:title/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:author/@id)!=0"><xsl:text>   author = {</xsl:text><xsl:value-of select="./descendant::*:author/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:journal/@id)!=0"><xsl:text>   journal = {</xsl:text><xsl:value-of select="./descendant::*:journal/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:abstract/@id)!=0"><xsl:text>   abstract = {</xsl:text><xsl:value-of select="./descendant::*:abstract/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:year/@id)!=0"><xsl:text>   year = {</xsl:text><xsl:value-of select="./descendant::*:year/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-audience/@id)!=0"><xsl:text>   x-audience = {</xsl:text><xsl:value-of select="./descendant::*:x-audience/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-popularlevel/@id)!=0"><xsl:text>   x-popularlevel = {</xsl:text><xsl:value-of select="./descendant::*:x-popularlevel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-peerreviewing/@id)!=0"><xsl:text>   x-peerreviewing = {</xsl:text><xsl:value-of select="./descendant::*:x-peerreviewing/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-language/@id)!=0"><xsl:text>   x-language = {</xsl:text><xsl:value-of select="./descendant::*:x-language/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées obligatoires -->

<!-- métadonnées facultatives spécifiques au type BibTeX -->

<xsl:if test="string-length(./descendant::*:issn/@id)!=0"><xsl:text>   issn = {</xsl:text><xsl:value-of select="./descendant::*:issn/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:number/@id)!=0"><xsl:text>   number = {</xsl:text><xsl:value-of select="./descendant::*:number/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:publisher/@id)!=0"><xsl:text>   publisher = {</xsl:text><xsl:value-of select="./descendant::*:publisher/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pages/@id)!=0"><xsl:text>   pages = {</xsl:text><xsl:value-of select="./descendant::*:pages/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:series/@id)!=0"><xsl:text>   series = {</xsl:text><xsl:value-of select="./descendant::*:series/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:volume/@id)!=0"><xsl:text>   volume = {</xsl:text><xsl:value-of select="./descendant::*:volume/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-hal_journal_id/@id)!=0"><xsl:text>   x-hal_journal_id = {</xsl:text><xsl:value-of select="./descendant::*:x-hal_journal_id/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-publisherlink/@id)!=0"><xsl:text>   x-publisherlink = {</xsl:text><xsl:value-of select="./descendant::*:x-publisherlink/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- métadonnées facultatives communes à tous les types BibTeX -->

<xsl:if test="string-length(./descendant::*:doi/@id)!=0"><xsl:text>   doi = {</xsl:text><xsl:value-of select="./descendant::*:doi/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:keywords/@id)!=0"><xsl:text>   keywords = {</xsl:text><xsl:value-of select="./descendant::*:keywords/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:note/@id)!=0"><xsl:text>   note = {</xsl:text><xsl:value-of select="./descendant::*:note/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmcid/@id)!=0"><xsl:text>   pmcid = {</xsl:text><xsl:value-of select="./descendant::*:pmcid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmid/@id)!=0"><xsl:text>   pmid = {</xsl:text><xsl:value-of select="./descendant::*:pmid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:url/@id)!=0"><xsl:text>   url = {</xsl:text><xsl:value-of select="./descendant::*:url/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_fr/@id)!=0"><xsl:text>   x-abstract_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_en/@id)!=0"><xsl:text>   x-abstract_en = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-anrproject/@id)!=0"><xsl:text>   x-anrproject = {</xsl:text><xsl:value-of select="./descendant::*:x-anrproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-classification/@id)!=0"><xsl:text>   x-classification = {</xsl:text><xsl:value-of select="./descendant::*:x-classification/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-domain/@id)!=0"><xsl:text>   x-domain = {</xsl:text><xsl:value-of select="./descendant::*:x-domain/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-europeanproject/@id)!=0"><xsl:text>   x-europeanproject = {</xsl:text><xsl:value-of select="./descendant::*:x-europeanproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-funding/@id)!=0"><xsl:text>   x-funding = {</xsl:text><xsl:value-of select="./descendant::*:x-funding/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-jel/@id)!=0"><xsl:text>   x-jel = {</xsl:text><xsl:value-of select="./descendant::*:x-jel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_fr/@id)!=0"><xsl:text>   x-keywords_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_en/@id)!=0"><xsl:text>   x-keywords_en = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-licence/@id)!=0"><xsl:text>   x-licence = {</xsl:text><xsl:value-of select="./descendant::*:x-licence/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-localreference/@id)!=0"><xsl:text>   x-localreference = {</xsl:text><xsl:value-of select="./descendant::*:x-localreference/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-mesh/@id)!=0"><xsl:text>   x-mesh = {</xsl:text><xsl:value-of select="./descendant::*:x-mesh/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-onbehalfof/@id)!=0"><xsl:text>   x-onbehalfof = {</xsl:text><xsl:value-of select="./descendant::*:x-onbehalfof/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-subtitle/@id)!=0"><xsl:text>   x-subtitle = {</xsl:text><xsl:value-of select="./descendant::*:x-subtitle/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_fr/@id)!=0"><xsl:text>   x-title_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-title_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_en/@id)!=0"><xsl:text>   x-title_en = {</xsl:text><xsl:value-of select="./descendant::*:x-title_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-writingdate/@id)!=0"><xsl:text>   x-writingdate = {</xsl:text><xsl:value-of select="./descendant::*:x-writingdate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- dernière ligne, accolade fermante -->
	<xsl:text>}
	</xsl:text>
</xsl:template>








<!-- template inproceedings (communications) -->
<xsl:template match="*:inproceedings">

	<!-- en-tête, première ligne et accolade ouvrante -->
	<xsl:text>@inproceedings{</xsl:text><xsl:value-of select="@id"/><xsl:text>,
</xsl:text>
<!-- fin d'entête -->

<!-- métadonnées obligatoires -->

<xsl:if test="string-length(./descendant::*:title/@id)!=0"><xsl:text>   title = {</xsl:text><xsl:value-of select="./descendant::*:title/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:author/@id)!=0"><xsl:text>   author = {</xsl:text><xsl:value-of select="./descendant::*:author/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:booktitle/@id)!=0"><xsl:text>   booktitle = {</xsl:text><xsl:value-of select="./descendant::*:booktitle/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:abstract/@id)!=0"><xsl:text>   abstract = {</xsl:text><xsl:value-of select="./descendant::*:abstract/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:address/@id)!=0"><xsl:text>   address = {</xsl:text><xsl:value-of select="./descendant::*:address/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- ou -->

<xsl:if test="string-length(./descendant::*:x-country/@id)!=0"><xsl:text>   x-country = {</xsl:text><xsl:value-of select="./descendant::*:x-country/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-city/@id)!=0"><xsl:text>   x-city = {</xsl:text><xsl:value-of select="./descendant::*:x-city/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:year/@id)!=0"><xsl:text>   year = {</xsl:text><xsl:value-of select="./descendant::*:year/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-conferencestartdate/@id)!=0"><xsl:text>   x-conferencestartdate = {</xsl:text><xsl:value-of select="./descendant::*:x-conferencestartdate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-audience/@id)!=0"><xsl:text>   x-audience = {</xsl:text><xsl:value-of select="./descendant::*:x-audience/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-language/@id)!=0"><xsl:text>   x-language = {</xsl:text><xsl:value-of select="./descendant::*:x-language/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-invitedcommunication/@id)!=0"><xsl:text>   x-invitedcommunication = {</xsl:text><xsl:value-of select="./descendant::*:x-invitedcommunication/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-peerreviewing/@id)!=0"><xsl:text>   x-peerreviewing = {</xsl:text><xsl:value-of select="./descendant::*:x-peerreviewing/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-popularlevel/@id)!=0"><xsl:text>   x-popularlevel = {</xsl:text><xsl:value-of select="./descendant::*:x-popularlevel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-proceedings/@id)!=0"><xsl:text>   x-proceedings = {</xsl:text><xsl:value-of select="./descendant::*:x-proceedings/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées obligatoires -->

<!-- métadonnées facultatives spécifiques au type BibTeX -->

<xsl:if test="string-length(./descendant::*:editor/@id)!=0"><xsl:text>   editor = {</xsl:text><xsl:value-of select="./descendant::*:editor/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:number/@id)!=0"><xsl:text>   number = {</xsl:text><xsl:value-of select="./descendant::*:number/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pages/@id)!=0"><xsl:text>   pages = {</xsl:text><xsl:value-of select="./descendant::*:pages/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:publisher/@id)!=0"><xsl:text>   publisher = {</xsl:text><xsl:value-of select="./descendant::*:publisher/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:series/@id)!=0"><xsl:text>   series = {</xsl:text><xsl:value-of select="./descendant::*:series/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:volume/@id)!=0"><xsl:text>   volume = {</xsl:text><xsl:value-of select="./descendant::*:volume/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-conferenceenddate/@id)!=0"><xsl:text>   x-conferenceenddate = {</xsl:text><xsl:value-of select="./descendant::*:x-conferenceenddate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-conferenceorganizer/@id)!=0"><xsl:text>   x-conferenceorganizer = {</xsl:text><xsl:value-of select="./descendant::*:x-conferenceorganizer/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-publisherlink/@id)!=0"><xsl:text>   x-publisherlink = {</xsl:text><xsl:value-of select="./descendant::*:x-publisherlink/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-serieseditor /@id)!=0"><xsl:text>   x-serieseditor  = {</xsl:text><xsl:value-of select="./descendant::*:x-serieseditor /@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-source/@id)!=0"><xsl:text>   x-source = {</xsl:text><xsl:value-of select="./descendant::*:x-source/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- métadonnées facultatives communes à tous les types BibTeX -->

<xsl:if test="string-length(./descendant::*:doi/@id)!=0"><xsl:text>   doi = {</xsl:text><xsl:value-of select="./descendant::*:doi/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:keywords/@id)!=0"><xsl:text>   keywords = {</xsl:text><xsl:value-of select="./descendant::*:keywords/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:note/@id)!=0"><xsl:text>   note = {</xsl:text><xsl:value-of select="./descendant::*:note/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmcid/@id)!=0"><xsl:text>   pmcid = {</xsl:text><xsl:value-of select="./descendant::*:pmcid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmid/@id)!=0"><xsl:text>   pmid = {</xsl:text><xsl:value-of select="./descendant::*:pmid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:url/@id)!=0"><xsl:text>   url = {</xsl:text><xsl:value-of select="./descendant::*:url/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_fr/@id)!=0"><xsl:text>   x-abstract_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_en/@id)!=0"><xsl:text>   x-abstract_en = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-anrproject/@id)!=0"><xsl:text>   x-anrproject = {</xsl:text><xsl:value-of select="./descendant::*:x-anrproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-classification/@id)!=0"><xsl:text>   x-classification = {</xsl:text><xsl:value-of select="./descendant::*:x-classification/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-domain/@id)!=0"><xsl:text>   x-domain = {</xsl:text><xsl:value-of select="./descendant::*:x-domain/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-europeanproject/@id)!=0"><xsl:text>   x-europeanproject = {</xsl:text><xsl:value-of select="./descendant::*:x-europeanproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-funding/@id)!=0"><xsl:text>   x-funding = {</xsl:text><xsl:value-of select="./descendant::*:x-funding/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-jel/@id)!=0"><xsl:text>   x-jel = {</xsl:text><xsl:value-of select="./descendant::*:x-jel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_fr/@id)!=0"><xsl:text>   x-keywords_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_en/@id)!=0"><xsl:text>   x-keywords_en = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-licence/@id)!=0"><xsl:text>   x-licence = {</xsl:text><xsl:value-of select="./descendant::*:x-licence/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-localreference/@id)!=0"><xsl:text>   x-localreference = {</xsl:text><xsl:value-of select="./descendant::*:x-localreference/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-mesh/@id)!=0"><xsl:text>   x-mesh = {</xsl:text><xsl:value-of select="./descendant::*:x-mesh/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-onbehalfof/@id)!=0"><xsl:text>   x-onbehalfof = {</xsl:text><xsl:value-of select="./descendant::*:x-onbehalfof/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-subtitle/@id)!=0"><xsl:text>   x-subtitle = {</xsl:text><xsl:value-of select="./descendant::*:x-subtitle/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_fr/@id)!=0"><xsl:text>   x-title_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-title_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_en/@id)!=0"><xsl:text>   x-title_en = {</xsl:text><xsl:value-of select="./descendant::*:x-title_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-writingdate/@id)!=0"><xsl:text>   x-writingdate = {</xsl:text><xsl:value-of select="./descendant::*:x-writingdate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- dernière ligne, accolade fermante -->
	<xsl:text>}
	</xsl:text>
</xsl:template>







<!-- template conference (Communication) -->
<xsl:template match="*:conference">

	<!-- en-tête, première ligne et accolade ouvrante -->
	<xsl:text>@conference{</xsl:text><xsl:value-of select="@id"/><xsl:text>,
</xsl:text>
<!-- fin d'entête -->

<!-- métadonnées obligatoires -->

<xsl:if test="string-length(./descendant::*:title/@id)!=0"><xsl:text>   title = {</xsl:text><xsl:value-of select="./descendant::*:title/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:author/@id)!=0"><xsl:text>   author = {</xsl:text><xsl:value-of select="./descendant::*:author/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:booktitle/@id)!=0"><xsl:text>   booktitle = {</xsl:text><xsl:value-of select="./descendant::*:booktitle/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:address/@id)!=0"><xsl:text>   address = {</xsl:text><xsl:value-of select="./descendant::*:address/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- ou -->

<xsl:if test="string-length(./descendant::*:x-country/@id)!=0"><xsl:text>   x-country = {</xsl:text><xsl:value-of select="./descendant::*:x-country/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-city/@id)!=0"><xsl:text>   x-city = {</xsl:text><xsl:value-of select="./descendant::*:x-city/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:year/@id)!=0"><xsl:text>   year = {</xsl:text><xsl:value-of select="./descendant::*:year/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:abstract/@id)!=0"><xsl:text>   abstract = {</xsl:text><xsl:value-of select="./descendant::*:abstract/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-conferencestartdate/@id)!=0"><xsl:text>   x-conferencestartdate = {</xsl:text><xsl:value-of select="./descendant::*:x-conferencestartdate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-audience/@id)!=0"><xsl:text>   x-audience = {</xsl:text><xsl:value-of select="./descendant::*:x-audience/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-language/@id)!=0"><xsl:text>   x-language = {</xsl:text><xsl:value-of select="./descendant::*:x-language/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-invitedcommunication/@id)!=0"><xsl:text>   x-invitedcommunication = {</xsl:text><xsl:value-of select="./descendant::*:x-invitedcommunication/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-popularlevel/@id)!=0"><xsl:text>   x-popularlevel = {</xsl:text><xsl:value-of select="./descendant::*:x-popularlevel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-proceedings/@id)!=0"><xsl:text>   x-proceedings = {</xsl:text><xsl:value-of select="./descendant::*:x-proceedings/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-peerreviewing/@id)!=0"><xsl:text>   x-peerreviewing = {</xsl:text><xsl:value-of select="./descendant::*:x-peerreviewing/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées obligatoires -->

<!-- métadonnées facultatives spécifiques au type BibTeX -->

<xsl:if test="string-length(./descendant::*:editor/@id)!=0"><xsl:text>   editor = {</xsl:text><xsl:value-of select="./descendant::*:editor/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:number/@id)!=0"><xsl:text>   number = {</xsl:text><xsl:value-of select="./descendant::*:number/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pages/@id)!=0"><xsl:text>   pages = {</xsl:text><xsl:value-of select="./descendant::*:pages/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:publisher/@id)!=0"><xsl:text>   publisher = {</xsl:text><xsl:value-of select="./descendant::*:publisher/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:series/@id)!=0"><xsl:text>   series = {</xsl:text><xsl:value-of select="./descendant::*:series/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:volume/@id)!=0"><xsl:text>   volume = {</xsl:text><xsl:value-of select="./descendant::*:volume/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-conferenceenddate/@id)!=0"><xsl:text>   x-conferenceenddate = {</xsl:text><xsl:value-of select="./descendant::*:x-conferenceenddate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-conferenceorganizer/@id)!=0"><xsl:text>   x-conferenceorganizer = {</xsl:text><xsl:value-of select="./descendant::*:x-conferenceorganizer/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-publisherlink/@id)!=0"><xsl:text>   x-publisherlink = {</xsl:text><xsl:value-of select="./descendant::*:x-publisherlink/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-serieseditor /@id)!=0"><xsl:text>   x-serieseditor  = {</xsl:text><xsl:value-of select="./descendant::*:x-serieseditor /@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-source/@id)!=0"><xsl:text>   x-source = {</xsl:text><xsl:value-of select="./descendant::*:x-source/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- métadonnées facultatives communes à tous les types BibTeX -->

<xsl:if test="string-length(./descendant::*:doi/@id)!=0"><xsl:text>   doi = {</xsl:text><xsl:value-of select="./descendant::*:doi/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:keywords/@id)!=0"><xsl:text>   keywords = {</xsl:text><xsl:value-of select="./descendant::*:keywords/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:note/@id)!=0"><xsl:text>   note = {</xsl:text><xsl:value-of select="./descendant::*:note/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmcid/@id)!=0"><xsl:text>   pmcid = {</xsl:text><xsl:value-of select="./descendant::*:pmcid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmid/@id)!=0"><xsl:text>   pmid = {</xsl:text><xsl:value-of select="./descendant::*:pmid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:url/@id)!=0"><xsl:text>   url = {</xsl:text><xsl:value-of select="./descendant::*:url/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_fr/@id)!=0"><xsl:text>   x-abstract_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_en/@id)!=0"><xsl:text>   x-abstract_en = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-anrproject/@id)!=0"><xsl:text>   x-anrproject = {</xsl:text><xsl:value-of select="./descendant::*:x-anrproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-classification/@id)!=0"><xsl:text>   x-classification = {</xsl:text><xsl:value-of select="./descendant::*:x-classification/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-domain/@id)!=0"><xsl:text>   x-domain = {</xsl:text><xsl:value-of select="./descendant::*:x-domain/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-europeanproject/@id)!=0"><xsl:text>   x-europeanproject = {</xsl:text><xsl:value-of select="./descendant::*:x-europeanproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-funding/@id)!=0"><xsl:text>   x-funding = {</xsl:text><xsl:value-of select="./descendant::*:x-funding/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-jel/@id)!=0"><xsl:text>   x-jel = {</xsl:text><xsl:value-of select="./descendant::*:x-jel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_fr/@id)!=0"><xsl:text>   x-keywords_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_en/@id)!=0"><xsl:text>   x-keywords_en = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-licence/@id)!=0"><xsl:text>   x-licence = {</xsl:text><xsl:value-of select="./descendant::*:x-licence/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-localreference/@id)!=0"><xsl:text>   x-localreference = {</xsl:text><xsl:value-of select="./descendant::*:x-localreference/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-mesh/@id)!=0"><xsl:text>   x-mesh = {</xsl:text><xsl:value-of select="./descendant::*:x-mesh/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-onbehalfof/@id)!=0"><xsl:text>   x-onbehalfof = {</xsl:text><xsl:value-of select="./descendant::*:x-onbehalfof/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-subtitle/@id)!=0"><xsl:text>   x-subtitle = {</xsl:text><xsl:value-of select="./descendant::*:x-subtitle/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_fr/@id)!=0"><xsl:text>   x-title_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-title_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_en/@id)!=0"><xsl:text>   x-title_en = {</xsl:text><xsl:value-of select="./descendant::*:x-title_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-writingdate/@id)!=0"><xsl:text>   x-writingdate = {</xsl:text><xsl:value-of select="./descendant::*:x-writingdate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- dernière ligne, accolade fermante -->
	<xsl:text>}
	</xsl:text>
</xsl:template>





<!-- template presconf (Documents associés à des manifestations scientifiques) -->
<xsl:template match="*:presconf">

	<!-- en-tête, première ligne et accolade ouvrante -->
	<xsl:text>@presconf{</xsl:text><xsl:value-of select="@id"/><xsl:text>,
</xsl:text>
<!-- fin d'entête -->

<!-- métadonnées obligatoires -->

<xsl:if test="string-length(./descendant::*:title/@id)!=0"><xsl:text>   title = {</xsl:text><xsl:value-of select="./descendant::*:title/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:author/@id)!=0"><xsl:text>   author = {</xsl:text><xsl:value-of select="./descendant::*:author/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:booktitle/@id)!=0"><xsl:text>   booktitle = {</xsl:text><xsl:value-of select="./descendant::*:booktitle/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:abstract/@id)!=0"><xsl:text>   abstract = {</xsl:text><xsl:value-of select="./descendant::*:abstract/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:year/@id)!=0"><xsl:text>   year = {</xsl:text><xsl:value-of select="./descendant::*:year/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:address/@id)!=0"><xsl:text>   address = {</xsl:text><xsl:value-of select="./descendant::*:address/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- ou -->

<xsl:if test="string-length(./descendant::*:x-country/@id)!=0"><xsl:text>   x-country = {</xsl:text><xsl:value-of select="./descendant::*:x-country/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-city/@id)!=0"><xsl:text>   x-city = {</xsl:text><xsl:value-of select="./descendant::*:x-city/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-conferencestartdate/@id)!=0"><xsl:text>   x-conferencestartdate = {</xsl:text><xsl:value-of select="./descendant::*:x-conferencestartdate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-audience/@id)!=0"><xsl:text>   x-audience = {</xsl:text><xsl:value-of select="./descendant::*:x-audience/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-language/@id)!=0"><xsl:text>   x-language = {</xsl:text><xsl:value-of select="./descendant::*:x-language/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-invitedcommunication/@id)!=0"><xsl:text>   x-invitedcommunication = {</xsl:text><xsl:value-of select="./descendant::*:x-invitedcommunication/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-peerreviewing/@id)!=0"><xsl:text>   x-peerreviewing = {</xsl:text><xsl:value-of select="./descendant::*:x-peerreviewing/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-popularlevel/@id)!=0"><xsl:text>   x-popularlevel = {</xsl:text><xsl:value-of select="./descendant::*:x-popularlevel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-proceedings/@id)!=0"><xsl:text>   x-proceedings = {</xsl:text><xsl:value-of select="./descendant::*:x-proceedings/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-inria_presconftype/@id)!=0"><xsl:text>   x-inria_presconftype = {</xsl:text><xsl:value-of select="./descendant::*:x-inria_presconftype/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées obligatoires -->

<!-- métadonnées facultatives spécifiques au type BibTeX -->

<xsl:if test="string-length(./descendant::*:editor/@id)!=0"><xsl:text>   editor = {</xsl:text><xsl:value-of select="./descendant::*:editor/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:number/@id)!=0"><xsl:text>   number = {</xsl:text><xsl:value-of select="./descendant::*:number/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:series/@id)!=0"><xsl:text>   series = {</xsl:text><xsl:value-of select="./descendant::*:series/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pages/@id)!=0"><xsl:text>   pages = {</xsl:text><xsl:value-of select="./descendant::*:pages/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:publisher/@id)!=0"><xsl:text>   publisher = {</xsl:text><xsl:value-of select="./descendant::*:publisher/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:volume/@id)!=0"><xsl:text>   volume = {</xsl:text><xsl:value-of select="./descendant::*:volume/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-conferenceenddate/@id)!=0"><xsl:text>   x-conferenceenddate = {</xsl:text><xsl:value-of select="./descendant::*:x-conferenceenddate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-conferenceorganizer/@id)!=0"><xsl:text>   x-conferenceorganizer = {</xsl:text><xsl:value-of select="./descendant::*:x-conferenceorganizer/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-publisherlink/@id)!=0"><xsl:text>   x-publisherlink = {</xsl:text><xsl:value-of select="./descendant::*:x-publisherlink/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-serieseditor /@id)!=0"><xsl:text>   x-serieseditor  = {</xsl:text><xsl:value-of select="./descendant::*:x-serieseditor /@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-source/@id)!=0"><xsl:text>   x-source = {</xsl:text><xsl:value-of select="./descendant::*:x-source/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- métadonnées facultatives communes à tous les types BibTeX -->

<xsl:if test="string-length(./descendant::*:doi/@id)!=0"><xsl:text>   doi = {</xsl:text><xsl:value-of select="./descendant::*:doi/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:keywords/@id)!=0"><xsl:text>   keywords = {</xsl:text><xsl:value-of select="./descendant::*:keywords/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:note/@id)!=0"><xsl:text>   note = {</xsl:text><xsl:value-of select="./descendant::*:note/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmcid/@id)!=0"><xsl:text>   pmcid = {</xsl:text><xsl:value-of select="./descendant::*:pmcid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmid/@id)!=0"><xsl:text>   pmid = {</xsl:text><xsl:value-of select="./descendant::*:pmid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:url/@id)!=0"><xsl:text>   url = {</xsl:text><xsl:value-of select="./descendant::*:url/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_fr/@id)!=0"><xsl:text>   x-abstract_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_en/@id)!=0"><xsl:text>   x-abstract_en = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-anrproject/@id)!=0"><xsl:text>   x-anrproject = {</xsl:text><xsl:value-of select="./descendant::*:x-anrproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-classification/@id)!=0"><xsl:text>   x-classification = {</xsl:text><xsl:value-of select="./descendant::*:x-classification/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-domain/@id)!=0"><xsl:text>   x-domain = {</xsl:text><xsl:value-of select="./descendant::*:x-domain/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-europeanproject/@id)!=0"><xsl:text>   x-europeanproject = {</xsl:text><xsl:value-of select="./descendant::*:x-europeanproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-funding/@id)!=0"><xsl:text>   x-funding = {</xsl:text><xsl:value-of select="./descendant::*:x-funding/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-jel/@id)!=0"><xsl:text>   x-jel = {</xsl:text><xsl:value-of select="./descendant::*:x-jel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_fr/@id)!=0"><xsl:text>   x-keywords_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_en/@id)!=0"><xsl:text>   x-keywords_en = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-licence/@id)!=0"><xsl:text>   x-licence = {</xsl:text><xsl:value-of select="./descendant::*:x-licence/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-localreference/@id)!=0"><xsl:text>   x-localreference = {</xsl:text><xsl:value-of select="./descendant::*:x-localreference/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-mesh/@id)!=0"><xsl:text>   x-mesh = {</xsl:text><xsl:value-of select="./descendant::*:x-mesh/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-onbehalfof/@id)!=0"><xsl:text>   x-onbehalfof = {</xsl:text><xsl:value-of select="./descendant::*:x-onbehalfof/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-subtitle/@id)!=0"><xsl:text>   x-subtitle = {</xsl:text><xsl:value-of select="./descendant::*:x-subtitle/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_fr/@id)!=0"><xsl:text>   x-title_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-title_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_en/@id)!=0"><xsl:text>   x-title_en = {</xsl:text><xsl:value-of select="./descendant::*:x-title_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-writingdate/@id)!=0"><xsl:text>   x-writingdate = {</xsl:text><xsl:value-of select="./descendant::*:x-writingdate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- dernière ligne, accolade fermante -->
	<xsl:text>}
	</xsl:text>
</xsl:template>







<!-- template poster -->
<xsl:template match="*:poster">

	<!-- en-tête, première ligne et accolade ouvrante -->
	<xsl:text>@poster{</xsl:text><xsl:value-of select="@id"/><xsl:text>,
</xsl:text>
<!-- fin d'entête -->

<!-- métadonnées obligatoires -->

<xsl:if test="string-length(./descendant::*:title/@id)!=0"><xsl:text>   title = {</xsl:text><xsl:value-of select="./descendant::*:title/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:author/@id)!=0"><xsl:text>   author = {</xsl:text><xsl:value-of select="./descendant::*:author/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:booktitle/@id)!=0"><xsl:text>   booktitle = {</xsl:text><xsl:value-of select="./descendant::*:booktitle/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:abstract/@id)!=0"><xsl:text>   abstract = {</xsl:text><xsl:value-of select="./descendant::*:abstract/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:year/@id)!=0"><xsl:text>   year = {</xsl:text><xsl:value-of select="./descendant::*:year/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:address/@id)!=0"><xsl:text>   address = {</xsl:text><xsl:value-of select="./descendant::*:address/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- ou -->

<xsl:if test="string-length(./descendant::*:x-country/@id)!=0"><xsl:text>   x-country = {</xsl:text><xsl:value-of select="./descendant::*:x-country/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-city/@id)!=0"><xsl:text>   x-city = {</xsl:text><xsl:value-of select="./descendant::*:x-city/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-conferencestartdate/@id)!=0"><xsl:text>   x-conferencestartdate = {</xsl:text><xsl:value-of select="./descendant::*:x-conferencestartdate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-audience/@id)!=0"><xsl:text>   x-audience = {</xsl:text><xsl:value-of select="./descendant::*:x-audience/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-language/@id)!=0"><xsl:text>   x-language = {</xsl:text><xsl:value-of select="./descendant::*:x-language/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-invitedcommunication/@id)!=0"><xsl:text>   x-invitedcommunication = {</xsl:text><xsl:value-of select="./descendant::*:x-invitedcommunication/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-peerreviewing/@id)!=0"><xsl:text>   x-peerreviewing = {</xsl:text><xsl:value-of select="./descendant::*:x-peerreviewing/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-popularlevel/@id)!=0"><xsl:text>   x-popularlevel = {</xsl:text><xsl:value-of select="./descendant::*:x-popularlevel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-proceedings/@id)!=0"><xsl:text>   x-proceedings = {</xsl:text><xsl:value-of select="./descendant::*:x-proceedings/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées obligatoires -->

<!-- métadonnées facultatives spécifiques au type BibTeX -->

<xsl:if test="string-length(./descendant::*:editor/@id)!=0"><xsl:text>   editor = {</xsl:text><xsl:value-of select="./descendant::*:editor/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:number/@id)!=0"><xsl:text>   number = {</xsl:text><xsl:value-of select="./descendant::*:number/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pages/@id)!=0"><xsl:text>   pages = {</xsl:text><xsl:value-of select="./descendant::*:pages/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:publisher/@id)!=0"><xsl:text>   publisher = {</xsl:text><xsl:value-of select="./descendant::*:publisher/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:series/@id)!=0"><xsl:text>   series = {</xsl:text><xsl:value-of select="./descendant::*:series/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:volume/@id)!=0"><xsl:text>   volume = {</xsl:text><xsl:value-of select="./descendant::*:volume/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-conferenceenddate/@id)!=0"><xsl:text>   x-conferenceenddate = {</xsl:text><xsl:value-of select="./descendant::*:x-conferenceenddate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-conferenceorganizer/@id)!=0"><xsl:text>   x-conferenceorganizer = {</xsl:text><xsl:value-of select="./descendant::*:x-conferenceorganizer/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-publisherlink/@id)!=0"><xsl:text>   x-publisherlink = {</xsl:text><xsl:value-of select="./descendant::*:x-publisherlink/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-serieseditor /@id)!=0"><xsl:text>   x-serieseditor  = {</xsl:text><xsl:value-of select="./descendant::*:x-serieseditor /@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-source/@id)!=0"><xsl:text>   x-source = {</xsl:text><xsl:value-of select="./descendant::*:x-source/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- métadonnées facultatives communes à tous les types BibTeX -->

<xsl:if test="string-length(./descendant::*:doi/@id)!=0"><xsl:text>   doi = {</xsl:text><xsl:value-of select="./descendant::*:doi/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:keywords/@id)!=0"><xsl:text>   keywords = {</xsl:text><xsl:value-of select="./descendant::*:keywords/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:note/@id)!=0"><xsl:text>   note = {</xsl:text><xsl:value-of select="./descendant::*:note/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmcid/@id)!=0"><xsl:text>   pmcid = {</xsl:text><xsl:value-of select="./descendant::*:pmcid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmid/@id)!=0"><xsl:text>   pmid = {</xsl:text><xsl:value-of select="./descendant::*:pmid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:url/@id)!=0"><xsl:text>   url = {</xsl:text><xsl:value-of select="./descendant::*:url/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_fr/@id)!=0"><xsl:text>   x-abstract_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_en/@id)!=0"><xsl:text>   x-abstract_en = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-anrproject/@id)!=0"><xsl:text>   x-anrproject = {</xsl:text><xsl:value-of select="./descendant::*:x-anrproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-classification/@id)!=0"><xsl:text>   x-classification = {</xsl:text><xsl:value-of select="./descendant::*:x-classification/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-domain/@id)!=0"><xsl:text>   x-domain = {</xsl:text><xsl:value-of select="./descendant::*:x-domain/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-europeanproject/@id)!=0"><xsl:text>   x-europeanproject = {</xsl:text><xsl:value-of select="./descendant::*:x-europeanproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-funding/@id)!=0"><xsl:text>   x-funding = {</xsl:text><xsl:value-of select="./descendant::*:x-funding/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-jel/@id)!=0"><xsl:text>   x-jel = {</xsl:text><xsl:value-of select="./descendant::*:x-jel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_fr/@id)!=0"><xsl:text>   x-keywords_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_en/@id)!=0"><xsl:text>   x-keywords_en = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-licence/@id)!=0"><xsl:text>   x-licence = {</xsl:text><xsl:value-of select="./descendant::*:x-licence/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-localreference/@id)!=0"><xsl:text>   x-localreference = {</xsl:text><xsl:value-of select="./descendant::*:x-localreference/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-mesh/@id)!=0"><xsl:text>   x-mesh = {</xsl:text><xsl:value-of select="./descendant::*:x-mesh/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-onbehalfof/@id)!=0"><xsl:text>   x-onbehalfof = {</xsl:text><xsl:value-of select="./descendant::*:x-onbehalfof/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-subtitle/@id)!=0"><xsl:text>   x-subtitle = {</xsl:text><xsl:value-of select="./descendant::*:x-subtitle/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_fr/@id)!=0"><xsl:text>   x-title_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-title_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_en/@id)!=0"><xsl:text>   x-title_en = {</xsl:text><xsl:value-of select="./descendant::*:x-title_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-writingdate/@id)!=0"><xsl:text>   x-writingdate = {</xsl:text><xsl:value-of select="./descendant::*:x-writingdate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- dernière ligne, accolade fermante -->
	<xsl:text>}
	</xsl:text>
</xsl:template>








<!-- template incollection (Chapitre d'ouvrage) -->
<xsl:template match="*:incollection">

	<!-- en-tête, première ligne et accolade ouvrante -->
	<xsl:text>@incollection{</xsl:text><xsl:value-of select="@id"/><xsl:text>,
</xsl:text>
<!-- fin d'entête -->

<!-- métadonnées obligatoires -->

<xsl:if test="string-length(./descendant::*:title/@id)!=0"><xsl:text>   title = {</xsl:text><xsl:value-of select="./descendant::*:title/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:author/@id)!=0"><xsl:text>   author = {</xsl:text><xsl:value-of select="./descendant::*:author/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:booktitle/@id)!=0"><xsl:text>   booktitle = {</xsl:text><xsl:value-of select="./descendant::*:booktitle/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:abstract/@id)!=0"><xsl:text>   abstract = {</xsl:text><xsl:value-of select="./descendant::*:abstract/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:year/@id)!=0"><xsl:text>   year = {</xsl:text><xsl:value-of select="./descendant::*:year/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-audience/@id)!=0"><xsl:text>   x-audience = {</xsl:text><xsl:value-of select="./descendant::*:x-audience/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-language/@id)!=0"><xsl:text>   x-language = {</xsl:text><xsl:value-of select="./descendant::*:x-language/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-popularlevel/@id)!=0"><xsl:text>   x-popularlevel = {</xsl:text><xsl:value-of select="./descendant::*:x-popularlevel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées obligatoires -->

<!-- métadonnées facultatives spécifiques au type BibTeX -->

<xsl:if test="string-length(./descendant::*:editor/@id)!=0"><xsl:text>   editor = {</xsl:text><xsl:value-of select="./descendant::*:editor/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:isbn/@id)!=0"><xsl:text>   isbn = {</xsl:text><xsl:value-of select="./descendant::*:isbn/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:number/@id)!=0"><xsl:text>   number = {</xsl:text><xsl:value-of select="./descendant::*:number/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pages/@id)!=0"><xsl:text>   pages = {</xsl:text><xsl:value-of select="./descendant::*:pages/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:publisher/@id)!=0"><xsl:text>   publisher = {</xsl:text><xsl:value-of select="./descendant::*:publisher/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:series/@id)!=0"><xsl:text>   series = {</xsl:text><xsl:value-of select="./descendant::*:series/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:volume/@id)!=0"><xsl:text>   volume = {</xsl:text><xsl:value-of select="./descendant::*:volume/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-publisherlink/@id)!=0"><xsl:text>   x-publisherlink = {</xsl:text><xsl:value-of select="./descendant::*:x-publisherlink/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-publicationlocation/@id)!=0"><xsl:text>   x-publicationlocation = {</xsl:text><xsl:value-of select="./descendant::*:x-publicationlocation/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-serieseditor /@id)!=0"><xsl:text>   x-serieseditor  = {</xsl:text><xsl:value-of select="./descendant::*:x-serieseditor /@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- métadonnées facultatives communes à tous les types BibTeX -->

<xsl:if test="string-length(./descendant::*:doi/@id)!=0"><xsl:text>   doi = {</xsl:text><xsl:value-of select="./descendant::*:doi/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:keywords/@id)!=0"><xsl:text>   keywords = {</xsl:text><xsl:value-of select="./descendant::*:keywords/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:note/@id)!=0"><xsl:text>   note = {</xsl:text><xsl:value-of select="./descendant::*:note/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmcid/@id)!=0"><xsl:text>   pmcid = {</xsl:text><xsl:value-of select="./descendant::*:pmcid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmid/@id)!=0"><xsl:text>   pmid = {</xsl:text><xsl:value-of select="./descendant::*:pmid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:url/@id)!=0"><xsl:text>   url = {</xsl:text><xsl:value-of select="./descendant::*:url/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_fr/@id)!=0"><xsl:text>   x-abstract_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_en/@id)!=0"><xsl:text>   x-abstract_en = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-anrproject/@id)!=0"><xsl:text>   x-anrproject = {</xsl:text><xsl:value-of select="./descendant::*:x-anrproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-classification/@id)!=0"><xsl:text>   x-classification = {</xsl:text><xsl:value-of select="./descendant::*:x-classification/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-domain/@id)!=0"><xsl:text>   x-domain = {</xsl:text><xsl:value-of select="./descendant::*:x-domain/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-europeanproject/@id)!=0"><xsl:text>   x-europeanproject = {</xsl:text><xsl:value-of select="./descendant::*:x-europeanproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-funding/@id)!=0"><xsl:text>   x-funding = {</xsl:text><xsl:value-of select="./descendant::*:x-funding/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-jel/@id)!=0"><xsl:text>   x-jel = {</xsl:text><xsl:value-of select="./descendant::*:x-jel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_fr/@id)!=0"><xsl:text>   x-keywords_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_en/@id)!=0"><xsl:text>   x-keywords_en = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-licence/@id)!=0"><xsl:text>   x-licence = {</xsl:text><xsl:value-of select="./descendant::*:x-licence/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-localreference/@id)!=0"><xsl:text>   x-localreference = {</xsl:text><xsl:value-of select="./descendant::*:x-localreference/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-mesh/@id)!=0"><xsl:text>   x-mesh = {</xsl:text><xsl:value-of select="./descendant::*:x-mesh/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-onbehalfof/@id)!=0"><xsl:text>   x-onbehalfof = {</xsl:text><xsl:value-of select="./descendant::*:x-onbehalfof/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-subtitle/@id)!=0"><xsl:text>   x-subtitle = {</xsl:text><xsl:value-of select="./descendant::*:x-subtitle/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_fr/@id)!=0"><xsl:text>   x-title_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-title_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_en/@id)!=0"><xsl:text>   x-title_en = {</xsl:text><xsl:value-of select="./descendant::*:x-title_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-writingdate/@id)!=0"><xsl:text>   x-writingdate = {</xsl:text><xsl:value-of select="./descendant::*:x-writingdate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- dernière ligne, accolade fermante -->
	<xsl:text>}
	</xsl:text>
</xsl:template>








<!-- template inbook (Chapitre d'ouvrage) -->
<xsl:template match="*:inbook">

	<!-- en-tête, première ligne et accolade ouvrante -->
	<xsl:text>@inbook{</xsl:text><xsl:value-of select="@id"/><xsl:text>,
</xsl:text>
<!-- fin d'entête -->

<!-- métadonnées obligatoires -->

<xsl:if test="string-length(./descendant::*:title/@id)!=0"><xsl:text>   title = {</xsl:text><xsl:value-of select="./descendant::*:title/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:author/@id)!=0"><xsl:text>   author = {</xsl:text><xsl:value-of select="./descendant::*:author/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:booktitle/@id)!=0"><xsl:text>   booktitle = {</xsl:text><xsl:value-of select="./descendant::*:booktitle/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:year/@id)!=0"><xsl:text>   year = {</xsl:text><xsl:value-of select="./descendant::*:year/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:abstract/@id)!=0"><xsl:text>   abstract = {</xsl:text><xsl:value-of select="./descendant::*:abstract/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-audience/@id)!=0"><xsl:text>   x-audience = {</xsl:text><xsl:value-of select="./descendant::*:x-audience/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-language/@id)!=0"><xsl:text>   x-language = {</xsl:text><xsl:value-of select="./descendant::*:x-language/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-popularlevel/@id)!=0"><xsl:text>   x-popularlevel = {</xsl:text><xsl:value-of select="./descendant::*:x-popularlevel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées obligatoires -->

<!-- métadonnées facultatives spécifiques au type BibTeX -->

<xsl:if test="string-length(./descendant::*:editor/@id)!=0"><xsl:text>   editor = {</xsl:text><xsl:value-of select="./descendant::*:editor/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:isbn/@id)!=0"><xsl:text>   isbn = {</xsl:text><xsl:value-of select="./descendant::*:isbn/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:number/@id)!=0"><xsl:text>   number = {</xsl:text><xsl:value-of select="./descendant::*:number/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pages/@id)!=0"><xsl:text>   pages = {</xsl:text><xsl:value-of select="./descendant::*:pages/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:publisher/@id)!=0"><xsl:text>   publisher = {</xsl:text><xsl:value-of select="./descendant::*:publisher/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:series/@id)!=0"><xsl:text>   series = {</xsl:text><xsl:value-of select="./descendant::*:series/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:volume/@id)!=0"><xsl:text>   volume = {</xsl:text><xsl:value-of select="./descendant::*:volume/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-publicationlocation/@id)!=0"><xsl:text>   x-publicationlocation = {</xsl:text><xsl:value-of select="./descendant::*:x-publicationlocation/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-publisherlink/@id)!=0"><xsl:text>   x-publisherlink = {</xsl:text><xsl:value-of select="./descendant::*:x-publisherlink/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-serieseditor /@id)!=0"><xsl:text>   x-serieseditor  = {</xsl:text><xsl:value-of select="./descendant::*:x-serieseditor /@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- métadonnées facultatives communes à tous les types BibTeX -->

<xsl:if test="string-length(./descendant::*:doi/@id)!=0"><xsl:text>   doi = {</xsl:text><xsl:value-of select="./descendant::*:doi/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:keywords/@id)!=0"><xsl:text>   keywords = {</xsl:text><xsl:value-of select="./descendant::*:keywords/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:note/@id)!=0"><xsl:text>   note = {</xsl:text><xsl:value-of select="./descendant::*:note/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmcid/@id)!=0"><xsl:text>   pmcid = {</xsl:text><xsl:value-of select="./descendant::*:pmcid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmid/@id)!=0"><xsl:text>   pmid = {</xsl:text><xsl:value-of select="./descendant::*:pmid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:url/@id)!=0"><xsl:text>   url = {</xsl:text><xsl:value-of select="./descendant::*:url/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_fr/@id)!=0"><xsl:text>   x-abstract_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_en/@id)!=0"><xsl:text>   x-abstract_en = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-anrproject/@id)!=0"><xsl:text>   x-anrproject = {</xsl:text><xsl:value-of select="./descendant::*:x-anrproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-classification/@id)!=0"><xsl:text>   x-classification = {</xsl:text><xsl:value-of select="./descendant::*:x-classification/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-domain/@id)!=0"><xsl:text>   x-domain = {</xsl:text><xsl:value-of select="./descendant::*:x-domain/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-europeanproject/@id)!=0"><xsl:text>   x-europeanproject = {</xsl:text><xsl:value-of select="./descendant::*:x-europeanproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-funding/@id)!=0"><xsl:text>   x-funding = {</xsl:text><xsl:value-of select="./descendant::*:x-funding/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-jel/@id)!=0"><xsl:text>   x-jel = {</xsl:text><xsl:value-of select="./descendant::*:x-jel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_fr/@id)!=0"><xsl:text>   x-keywords_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_en/@id)!=0"><xsl:text>   x-keywords_en = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-licence/@id)!=0"><xsl:text>   x-licence = {</xsl:text><xsl:value-of select="./descendant::*:x-licence/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-localreference/@id)!=0"><xsl:text>   x-localreference = {</xsl:text><xsl:value-of select="./descendant::*:x-localreference/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-mesh/@id)!=0"><xsl:text>   x-mesh = {</xsl:text><xsl:value-of select="./descendant::*:x-mesh/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-onbehalfof/@id)!=0"><xsl:text>   x-onbehalfof = {</xsl:text><xsl:value-of select="./descendant::*:x-onbehalfof/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-subtitle/@id)!=0"><xsl:text>   x-subtitle = {</xsl:text><xsl:value-of select="./descendant::*:x-subtitle/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_fr/@id)!=0"><xsl:text>   x-title_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-title_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_en/@id)!=0"><xsl:text>   x-title_en = {</xsl:text><xsl:value-of select="./descendant::*:x-title_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-writingdate/@id)!=0"><xsl:text>   x-writingdate = {</xsl:text><xsl:value-of select="./descendant::*:x-writingdate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- dernière ligne, accolade fermante -->
	<xsl:text>}
	</xsl:text>
</xsl:template>









<!-- template book (Ouvrage) -->
<xsl:template match="*:book">

	<!-- en-tête, première ligne et accolade ouvrante -->
	<xsl:text>@book{</xsl:text><xsl:value-of select="@id"/><xsl:text>,
</xsl:text>
<!-- fin d'entête -->

<!-- métadonnées obligatoires -->

<xsl:if test="string-length(./descendant::*:title/@id)!=0"><xsl:text>   title = {</xsl:text><xsl:value-of select="./descendant::*:title/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:author/@id)!=0"><xsl:text>   author = {</xsl:text><xsl:value-of select="./descendant::*:author/@id"/><xsl:text>},
</xsl:text></xsl:if>


<xsl:if test="string-length(./descendant::*:year/@id)!=0"><xsl:text>   year = {</xsl:text><xsl:value-of select="./descendant::*:year/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:abstract/@id)!=0"><xsl:text>   abstract = {</xsl:text><xsl:value-of select="./descendant::*:abstract/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-audience/@id)!=0"><xsl:text>   x-audience = {</xsl:text><xsl:value-of select="./descendant::*:x-audience/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-language/@id)!=0"><xsl:text>   x-language = {</xsl:text><xsl:value-of select="./descendant::*:x-language/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-popularlevel/@id)!=0"><xsl:text>   x-popularlevel = {</xsl:text><xsl:value-of select="./descendant::*:x-popularlevel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées obligatoires -->

<!-- métadonnées facultatives spécifiques au type BibTeX -->

<xsl:if test="string-length(./descendant::*:editor/@id)!=0"><xsl:text>   editor = {</xsl:text><xsl:value-of select="./descendant::*:editor/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:isbn/@id)!=0"><xsl:text>   isbn = {</xsl:text><xsl:value-of select="./descendant::*:isbn/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:number/@id)!=0"><xsl:text>   number = {</xsl:text><xsl:value-of select="./descendant::*:number/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pages/@id)!=0"><xsl:text>   pages = {</xsl:text><xsl:value-of select="./descendant::*:pages/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:publisher/@id)!=0"><xsl:text>   publisher = {</xsl:text><xsl:value-of select="./descendant::*:publisher/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:series/@id)!=0"><xsl:text>   series = {</xsl:text><xsl:value-of select="./descendant::*:series/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:volume/@id)!=0"><xsl:text>   volume = {</xsl:text><xsl:value-of select="./descendant::*:volume/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-publicationlocation/@id)!=0"><xsl:text>   x-publicationlocation = {</xsl:text><xsl:value-of select="./descendant::*:x-publicationlocation/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-publisherlink/@id)!=0"><xsl:text>   x-publisherlink = {</xsl:text><xsl:value-of select="./descendant::*:x-publisherlink/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-serieseditor /@id)!=0"><xsl:text>   x-serieseditor  = {</xsl:text><xsl:value-of select="./descendant::*:x-serieseditor /@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- métadonnées facultatives communes à tous les types BibTeX -->

<xsl:if test="string-length(./descendant::*:doi/@id)!=0"><xsl:text>   doi = {</xsl:text><xsl:value-of select="./descendant::*:doi/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:keywords/@id)!=0"><xsl:text>   keywords = {</xsl:text><xsl:value-of select="./descendant::*:keywords/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:note/@id)!=0"><xsl:text>   note = {</xsl:text><xsl:value-of select="./descendant::*:note/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmcid/@id)!=0"><xsl:text>   pmcid = {</xsl:text><xsl:value-of select="./descendant::*:pmcid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmid/@id)!=0"><xsl:text>   pmid = {</xsl:text><xsl:value-of select="./descendant::*:pmid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:url/@id)!=0"><xsl:text>   url = {</xsl:text><xsl:value-of select="./descendant::*:url/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_fr/@id)!=0"><xsl:text>   x-abstract_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_en/@id)!=0"><xsl:text>   x-abstract_en = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-anrproject/@id)!=0"><xsl:text>   x-anrproject = {</xsl:text><xsl:value-of select="./descendant::*:x-anrproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-classification/@id)!=0"><xsl:text>   x-classification = {</xsl:text><xsl:value-of select="./descendant::*:x-classification/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-domain/@id)!=0"><xsl:text>   x-domain = {</xsl:text><xsl:value-of select="./descendant::*:x-domain/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-europeanproject/@id)!=0"><xsl:text>   x-europeanproject = {</xsl:text><xsl:value-of select="./descendant::*:x-europeanproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-funding/@id)!=0"><xsl:text>   x-funding = {</xsl:text><xsl:value-of select="./descendant::*:x-funding/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-jel/@id)!=0"><xsl:text>   x-jel = {</xsl:text><xsl:value-of select="./descendant::*:x-jel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_fr/@id)!=0"><xsl:text>   x-keywords_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_en/@id)!=0"><xsl:text>   x-keywords_en = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-licence/@id)!=0"><xsl:text>   x-licence = {</xsl:text><xsl:value-of select="./descendant::*:x-licence/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-localreference/@id)!=0"><xsl:text>   x-localreference = {</xsl:text><xsl:value-of select="./descendant::*:x-localreference/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-mesh/@id)!=0"><xsl:text>   x-mesh = {</xsl:text><xsl:value-of select="./descendant::*:x-mesh/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-onbehalfof/@id)!=0"><xsl:text>   x-onbehalfof = {</xsl:text><xsl:value-of select="./descendant::*:x-onbehalfof/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-subtitle/@id)!=0"><xsl:text>   x-subtitle = {</xsl:text><xsl:value-of select="./descendant::*:x-subtitle/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_fr/@id)!=0"><xsl:text>   x-title_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-title_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_en/@id)!=0"><xsl:text>   x-title_en = {</xsl:text><xsl:value-of select="./descendant::*:x-title_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-writingdate/@id)!=0"><xsl:text>   x-writingdate = {</xsl:text><xsl:value-of select="./descendant::*:x-writingdate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- dernière ligne, accolade fermante -->
	<xsl:text>}
	</xsl:text>
</xsl:template>










<!-- template proceedings (Direction d'ouvrage) -->
<xsl:template match="*:proceedings">

	<!-- en-tête, première ligne et accolade ouvrante -->
	<xsl:text>@proceedings{</xsl:text><xsl:value-of select="@id"/><xsl:text>,
</xsl:text>
<!-- fin d'entête -->

<!-- métadonnées obligatoires -->

<xsl:if test="string-length(./descendant::*:title/@id)!=0"><xsl:text>   title = {</xsl:text><xsl:value-of select="./descendant::*:title/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:author/@id)!=0"><xsl:text>   author = {</xsl:text><xsl:value-of select="./descendant::*:author/@id"/><xsl:text>},
</xsl:text></xsl:if>


<xsl:if test="string-length(./descendant::*:year/@id)!=0"><xsl:text>   year = {</xsl:text><xsl:value-of select="./descendant::*:year/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:abstract/@id)!=0"><xsl:text>   abstract = {</xsl:text><xsl:value-of select="./descendant::*:abstract/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-audience/@id)!=0"><xsl:text>   x-audience = {</xsl:text><xsl:value-of select="./descendant::*:x-audience/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-language/@id)!=0"><xsl:text>   x-language = {</xsl:text><xsl:value-of select="./descendant::*:x-language/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-popularlevel/@id)!=0"><xsl:text>   x-popularlevel = {</xsl:text><xsl:value-of select="./descendant::*:x-popularlevel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées obligatoires -->

<!-- métadonnées facultatives spécifiques au type BibTeX -->

<xsl:if test="string-length(./descendant::*:editor/@id)!=0"><xsl:text>   editor = {</xsl:text><xsl:value-of select="./descendant::*:editor/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:address/@id)!=0"><xsl:text>   address = {</xsl:text><xsl:value-of select="./descendant::*:address/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-city/@id)!=0"><xsl:text>   x-city = {</xsl:text><xsl:value-of select="./descendant::*:x-city/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-country/@id)!=0"><xsl:text>   x-country = {</xsl:text><xsl:value-of select="./descendant::*:x-country/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:isbn/@id)!=0"><xsl:text>   isbn = {</xsl:text><xsl:value-of select="./descendant::*:isbn/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:number/@id)!=0"><xsl:text>   number = {</xsl:text><xsl:value-of select="./descendant::*:number/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pages/@id)!=0"><xsl:text>   pages = {</xsl:text><xsl:value-of select="./descendant::*:pages/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:publisher/@id)!=0"><xsl:text>   publisher = {</xsl:text><xsl:value-of select="./descendant::*:publisher/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:series/@id)!=0"><xsl:text>   series = {</xsl:text><xsl:value-of select="./descendant::*:series/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:volume/@id)!=0"><xsl:text>   volume = {</xsl:text><xsl:value-of select="./descendant::*:volume/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-conferencestartdate/@id)!=0"><xsl:text>   x-conferencestartdate = {</xsl:text><xsl:value-of select="./descendant::*:x-conferencestartdate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-conferenceenddate/@id)!=0"><xsl:text>   x-conferenceenddate = {</xsl:text><xsl:value-of select="./descendant::*:x-conferenceenddate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-conferenceorganizer/@id)!=0"><xsl:text>   x-conferenceorganizer = {</xsl:text><xsl:value-of select="./descendant::*:x-conferenceorganizer/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-publisherlink/@id)!=0"><xsl:text>   x-publisherlink = {</xsl:text><xsl:value-of select="./descendant::*:x-publisherlink/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-publicationlocation/@id)!=0"><xsl:text>   x-publicationlocation = {</xsl:text><xsl:value-of select="./descendant::*:x-publicationlocation/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-serieseditor /@id)!=0"><xsl:text>   x-serieseditor  = {</xsl:text><xsl:value-of select="./descendant::*:x-serieseditor /@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- métadonnées facultatives communes à tous les types BibTeX -->

<xsl:if test="string-length(./descendant::*:doi/@id)!=0"><xsl:text>   doi = {</xsl:text><xsl:value-of select="./descendant::*:doi/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:keywords/@id)!=0"><xsl:text>   keywords = {</xsl:text><xsl:value-of select="./descendant::*:keywords/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:note/@id)!=0"><xsl:text>   note = {</xsl:text><xsl:value-of select="./descendant::*:note/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmcid/@id)!=0"><xsl:text>   pmcid = {</xsl:text><xsl:value-of select="./descendant::*:pmcid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmid/@id)!=0"><xsl:text>   pmid = {</xsl:text><xsl:value-of select="./descendant::*:pmid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:url/@id)!=0"><xsl:text>   url = {</xsl:text><xsl:value-of select="./descendant::*:url/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_fr/@id)!=0"><xsl:text>   x-abstract_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_en/@id)!=0"><xsl:text>   x-abstract_en = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-anrproject/@id)!=0"><xsl:text>   x-anrproject = {</xsl:text><xsl:value-of select="./descendant::*:x-anrproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-classification/@id)!=0"><xsl:text>   x-classification = {</xsl:text><xsl:value-of select="./descendant::*:x-classification/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-domain/@id)!=0"><xsl:text>   x-domain = {</xsl:text><xsl:value-of select="./descendant::*:x-domain/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-europeanproject/@id)!=0"><xsl:text>   x-europeanproject = {</xsl:text><xsl:value-of select="./descendant::*:x-europeanproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-funding/@id)!=0"><xsl:text>   x-funding = {</xsl:text><xsl:value-of select="./descendant::*:x-funding/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-jel/@id)!=0"><xsl:text>   x-jel = {</xsl:text><xsl:value-of select="./descendant::*:x-jel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_fr/@id)!=0"><xsl:text>   x-keywords_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_en/@id)!=0"><xsl:text>   x-keywords_en = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-licence/@id)!=0"><xsl:text>   x-licence = {</xsl:text><xsl:value-of select="./descendant::*:x-licence/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-localreference/@id)!=0"><xsl:text>   x-localreference = {</xsl:text><xsl:value-of select="./descendant::*:x-localreference/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-mesh/@id)!=0"><xsl:text>   x-mesh = {</xsl:text><xsl:value-of select="./descendant::*:x-mesh/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-onbehalfof/@id)!=0"><xsl:text>   x-onbehalfof = {</xsl:text><xsl:value-of select="./descendant::*:x-onbehalfof/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-subtitle/@id)!=0"><xsl:text>   x-subtitle = {</xsl:text><xsl:value-of select="./descendant::*:x-subtitle/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_fr/@id)!=0"><xsl:text>   x-title_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-title_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_en/@id)!=0"><xsl:text>   x-title_en = {</xsl:text><xsl:value-of select="./descendant::*:x-title_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-writingdate/@id)!=0"><xsl:text>   x-writingdate = {</xsl:text><xsl:value-of select="./descendant::*:x-writingdate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- dernière ligne, accolade fermante -->
	<xsl:text>}
	</xsl:text>
</xsl:template>











<!-- template phdthesis (Thèse ou HDR) -->
<xsl:template match="*:phdthesis">

	<!-- en-tête, première ligne et accolade ouvrante -->
	<xsl:text>@phdthesis{</xsl:text><xsl:value-of select="@id"/><xsl:text>,
</xsl:text>
<!-- fin d'entête -->

<!-- métadonnées obligatoires -->

<xsl:if test="string-length(./descendant::*:title/@id)!=0"><xsl:text>   title = {</xsl:text><xsl:value-of select="./descendant::*:title/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:author/@id)!=0"><xsl:text>   author = {</xsl:text><xsl:value-of select="./descendant::*:author/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:abstract/@id)!=0"><xsl:text>   abstract = {</xsl:text><xsl:value-of select="./descendant::*:abstract/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:school/@id)!=0"><xsl:text>   school = {</xsl:text><xsl:value-of select="./descendant::*:school/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:year/@id)!=0"><xsl:text>   year = {</xsl:text><xsl:value-of select="./descendant::*:year/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pdf/@id)!=0"><xsl:text>   pdf = {</xsl:text><xsl:value-of select="./descendant::*:pdf/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:type/@id)!=0"><xsl:text>   type = {</xsl:text><xsl:value-of select="./descendant::*:type/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-director/@id)!=0"><xsl:text>   x-director = {</xsl:text><xsl:value-of select="./descendant::*:x-director/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-language/@id)!=0"><xsl:text>   x-language = {</xsl:text><xsl:value-of select="./descendant::*:x-language/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_fr/@id)!=0"><xsl:text>   x-title_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-title_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_en/@id)!=0"><xsl:text>   x-title_en = {</xsl:text><xsl:value-of select="./descendant::*:x-title_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_fr/@id)!=0"><xsl:text>   x-abstract_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_en/@id)!=0"><xsl:text>   x-abstract_en = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_fr/@id)!=0"><xsl:text>   x-keywords_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_en/@id)!=0"><xsl:text>   x-keywords_en = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-filesource/@id)!=0"><xsl:text>   x-filesource = {</xsl:text><xsl:value-of select="./descendant::*:x-filesource/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées obligatoires -->

<!-- métadonnées facultatives spécifiques au type BibTeX -->

<xsl:if test="string-length(./descendant::*:number/@id)!=0"><xsl:text>   number = {</xsl:text><xsl:value-of select="./descendant::*:number/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-committee/@id)!=0"><xsl:text>   x-committee = {</xsl:text><xsl:value-of select="./descendant::*:x-committee/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-thesisSchool/@id)!=0"><xsl:text>   x-thesisSchool = {</xsl:text><xsl:value-of select="./descendant::*:x-thesisSchool/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- métadonnées facultatives communes à tous les types BibTeX -->

<xsl:if test="string-length(./descendant::*:doi/@id)!=0"><xsl:text>   doi = {</xsl:text><xsl:value-of select="./descendant::*:doi/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:keywords/@id)!=0"><xsl:text>   keywords = {</xsl:text><xsl:value-of select="./descendant::*:keywords/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:note/@id)!=0"><xsl:text>   note = {</xsl:text><xsl:value-of select="./descendant::*:note/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmcid/@id)!=0"><xsl:text>   pmcid = {</xsl:text><xsl:value-of select="./descendant::*:pmcid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmid/@id)!=0"><xsl:text>   pmid = {</xsl:text><xsl:value-of select="./descendant::*:pmid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:url/@id)!=0"><xsl:text>   url = {</xsl:text><xsl:value-of select="./descendant::*:url/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-anrproject/@id)!=0"><xsl:text>   x-anrproject = {</xsl:text><xsl:value-of select="./descendant::*:x-anrproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-classification/@id)!=0"><xsl:text>   x-classification = {</xsl:text><xsl:value-of select="./descendant::*:x-classification/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-domain/@id)!=0"><xsl:text>   x-domain = {</xsl:text><xsl:value-of select="./descendant::*:x-domain/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-europeanproject/@id)!=0"><xsl:text>   x-europeanproject = {</xsl:text><xsl:value-of select="./descendant::*:x-europeanproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-funding/@id)!=0"><xsl:text>   x-funding = {</xsl:text><xsl:value-of select="./descendant::*:x-funding/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-jel/@id)!=0"><xsl:text>   x-jel = {</xsl:text><xsl:value-of select="./descendant::*:x-jel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-licence/@id)!=0"><xsl:text>   x-licence = {</xsl:text><xsl:value-of select="./descendant::*:x-licence/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-localreference/@id)!=0"><xsl:text>   x-localreference = {</xsl:text><xsl:value-of select="./descendant::*:x-localreference/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-mesh/@id)!=0"><xsl:text>   x-mesh = {</xsl:text><xsl:value-of select="./descendant::*:x-mesh/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-onbehalfof/@id)!=0"><xsl:text>   x-onbehalfof = {</xsl:text><xsl:value-of select="./descendant::*:x-onbehalfof/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-subtitle/@id)!=0"><xsl:text>   x-subtitle = {</xsl:text><xsl:value-of select="./descendant::*:x-subtitle/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-writingdate/@id)!=0"><xsl:text>   x-writingdate = {</xsl:text><xsl:value-of select="./descendant::*:x-writingdate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- dernière ligne, accolade fermante -->
	<xsl:text>}
	</xsl:text>
</xsl:template>











<!-- template misc (Autre publication) -->
<xsl:template match="*:misc">

	<!-- en-tête, première ligne et accolade ouvrante -->
	<xsl:text>@misc{</xsl:text><xsl:value-of select="@id"/><xsl:text>,
</xsl:text>
<!-- fin d'entête -->

<!-- métadonnées obligatoires -->

<xsl:if test="string-length(./descendant::*:title/@id)!=0"><xsl:text>   title = {</xsl:text><xsl:value-of select="./descendant::*:title/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:author/@id)!=0"><xsl:text>   author = {</xsl:text><xsl:value-of select="./descendant::*:author/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:abstract/@id)!=0"><xsl:text>   abstract = {</xsl:text><xsl:value-of select="./descendant::*:abstract/@id"/><xsl:text>},
</xsl:text></xsl:if>


<xsl:if test="string-length(./descendant::*:year/@id)!=0"><xsl:text>   year = {</xsl:text><xsl:value-of select="./descendant::*:year/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:note/@id)!=0"><xsl:text>   note = {</xsl:text><xsl:value-of select="./descendant::*:note/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-audience/@id)!=0"><xsl:text>   x-audience = {</xsl:text><xsl:value-of select="./descendant::*:x-audience/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-language/@id)!=0"><xsl:text>   x-language = {</xsl:text><xsl:value-of select="./descendant::*:x-language/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-popularlevel/@id)!=0"><xsl:text>   x-popularlevel = {</xsl:text><xsl:value-of select="./descendant::*:x-popularlevel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées obligatoires -->

<!-- métadonnées facultatives spécifiques au type BibTeX -->

<xsl:if test="string-length(./descendant::*:pages/@id)!=0"><xsl:text>   pages = {</xsl:text><xsl:value-of select="./descendant::*:pages/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- métadonnées facultatives communes à tous les types BibTeX -->

<xsl:if test="string-length(./descendant::*:doi/@id)!=0"><xsl:text>   doi = {</xsl:text><xsl:value-of select="./descendant::*:doi/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:keywords/@id)!=0"><xsl:text>   keywords = {</xsl:text><xsl:value-of select="./descendant::*:keywords/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmcid/@id)!=0"><xsl:text>   pmcid = {</xsl:text><xsl:value-of select="./descendant::*:pmcid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmid/@id)!=0"><xsl:text>   pmid = {</xsl:text><xsl:value-of select="./descendant::*:pmid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:url/@id)!=0"><xsl:text>   url = {</xsl:text><xsl:value-of select="./descendant::*:url/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_fr/@id)!=0"><xsl:text>   x-abstract_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_en/@id)!=0"><xsl:text>   x-abstract_en = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-anrproject/@id)!=0"><xsl:text>   x-anrproject = {</xsl:text><xsl:value-of select="./descendant::*:x-anrproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-classification/@id)!=0"><xsl:text>   x-classification = {</xsl:text><xsl:value-of select="./descendant::*:x-classification/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-domain/@id)!=0"><xsl:text>   x-domain = {</xsl:text><xsl:value-of select="./descendant::*:x-domain/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-europeanproject/@id)!=0"><xsl:text>   x-europeanproject = {</xsl:text><xsl:value-of select="./descendant::*:x-europeanproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-funding/@id)!=0"><xsl:text>   x-funding = {</xsl:text><xsl:value-of select="./descendant::*:x-funding/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-jel/@id)!=0"><xsl:text>   x-jel = {</xsl:text><xsl:value-of select="./descendant::*:x-jel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_fr/@id)!=0"><xsl:text>   x-keywords_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_en/@id)!=0"><xsl:text>   x-keywords_en = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-licence/@id)!=0"><xsl:text>   x-licence = {</xsl:text><xsl:value-of select="./descendant::*:x-licence/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-localreference/@id)!=0"><xsl:text>   x-localreference = {</xsl:text><xsl:value-of select="./descendant::*:x-localreference/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-mesh/@id)!=0"><xsl:text>   x-mesh = {</xsl:text><xsl:value-of select="./descendant::*:x-mesh/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-onbehalfof/@id)!=0"><xsl:text>   x-onbehalfof = {</xsl:text><xsl:value-of select="./descendant::*:x-onbehalfof/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-subtitle/@id)!=0"><xsl:text>   x-subtitle = {</xsl:text><xsl:value-of select="./descendant::*:x-subtitle/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_fr/@id)!=0"><xsl:text>   x-title_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-title_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_en/@id)!=0"><xsl:text>   x-title_en = {</xsl:text><xsl:value-of select="./descendant::*:x-title_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-writingdate/@id)!=0"><xsl:text>   x-writingdate = {</xsl:text><xsl:value-of select="./descendant::*:x-writingdate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- dernière ligne, accolade fermante -->
	<xsl:text>}
	</xsl:text>
</xsl:template>











<!-- template techreport (Rapport) -->
<xsl:template match="*:techreport">

	<!-- en-tête, première ligne et accolade ouvrante -->
	<xsl:text>@techreport{</xsl:text><xsl:value-of select="@id"/><xsl:text>,
</xsl:text>
<!-- fin d'entête -->

<!-- métadonnées obligatoires -->

<xsl:if test="string-length(./descendant::*:title/@id)!=0"><xsl:text>   title = {</xsl:text><xsl:value-of select="./descendant::*:title/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:author/@id)!=0"><xsl:text>   author = {</xsl:text><xsl:value-of select="./descendant::*:author/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:abstract/@id)!=0"><xsl:text>   abstract = {</xsl:text><xsl:value-of select="./descendant::*:abstract/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:institution/@id)!=0"><xsl:text>   institution = {</xsl:text><xsl:value-of select="./descendant::*:institution/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:year/@id)!=0"><xsl:text>   year = {</xsl:text><xsl:value-of select="./descendant::*:year/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-language/@id)!=0"><xsl:text>   x-language = {</xsl:text><xsl:value-of select="./descendant::*:x-language/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-reporttype/@id)!=0"><xsl:text>   x-reporttype = {</xsl:text><xsl:value-of select="./descendant::*:x-reporttype/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées obligatoires -->

<!-- métadonnées facultatives spécifiques au type BibTeX -->

<xsl:if test="string-length(./descendant::*:number/@id)!=0"><xsl:text>   number = {</xsl:text><xsl:value-of select="./descendant::*:number/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pages/@id)!=0"><xsl:text>   pages = {</xsl:text><xsl:value-of select="./descendant::*:pages/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- métadonnées facultatives communes à tous les types BibTeX -->

<xsl:if test="string-length(./descendant::*:doi/@id)!=0"><xsl:text>   doi = {</xsl:text><xsl:value-of select="./descendant::*:doi/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:keywords/@id)!=0"><xsl:text>   keywords = {</xsl:text><xsl:value-of select="./descendant::*:keywords/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmcid/@id)!=0"><xsl:text>   pmcid = {</xsl:text><xsl:value-of select="./descendant::*:pmcid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmid/@id)!=0"><xsl:text>   pmid = {</xsl:text><xsl:value-of select="./descendant::*:pmid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:url/@id)!=0"><xsl:text>   url = {</xsl:text><xsl:value-of select="./descendant::*:url/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_fr/@id)!=0"><xsl:text>   x-abstract_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_en/@id)!=0"><xsl:text>   x-abstract_en = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-anrproject/@id)!=0"><xsl:text>   x-anrproject = {</xsl:text><xsl:value-of select="./descendant::*:x-anrproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-classification/@id)!=0"><xsl:text>   x-classification = {</xsl:text><xsl:value-of select="./descendant::*:x-classification/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-domain/@id)!=0"><xsl:text>   x-domain = {</xsl:text><xsl:value-of select="./descendant::*:x-domain/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-europeanproject/@id)!=0"><xsl:text>   x-europeanproject = {</xsl:text><xsl:value-of select="./descendant::*:x-europeanproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-funding/@id)!=0"><xsl:text>   x-funding = {</xsl:text><xsl:value-of select="./descendant::*:x-funding/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-jel/@id)!=0"><xsl:text>   x-jel = {</xsl:text><xsl:value-of select="./descendant::*:x-jel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_fr/@id)!=0"><xsl:text>   x-keywords_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_en/@id)!=0"><xsl:text>   x-keywords_en = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-licence/@id)!=0"><xsl:text>   x-licence = {</xsl:text><xsl:value-of select="./descendant::*:x-licence/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-localreference/@id)!=0"><xsl:text>   x-localreference = {</xsl:text><xsl:value-of select="./descendant::*:x-localreference/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-mesh/@id)!=0"><xsl:text>   x-mesh = {</xsl:text><xsl:value-of select="./descendant::*:x-mesh/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-onbehalfof/@id)!=0"><xsl:text>   x-onbehalfof = {</xsl:text><xsl:value-of select="./descendant::*:x-onbehalfof/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-subtitle/@id)!=0"><xsl:text>   x-subtitle = {</xsl:text><xsl:value-of select="./descendant::*:x-subtitle/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_fr/@id)!=0"><xsl:text>   x-title_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-title_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_en/@id)!=0"><xsl:text>   x-title_en = {</xsl:text><xsl:value-of select="./descendant::*:x-title_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-writingdate/@id)!=0"><xsl:text>   x-writingdate = {</xsl:text><xsl:value-of select="./descendant::*:x-writingdate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- dernière ligne, accolade fermante -->
	<xsl:text>}
	</xsl:text>
</xsl:template>











<!-- template manual (Rapport) -->
<xsl:template match="*:manual">

	<!-- en-tête, première ligne et accolade ouvrante -->
	<xsl:text>@manual{</xsl:text><xsl:value-of select="@id"/><xsl:text>,
</xsl:text>
<!-- fin d'entête -->

<!-- métadonnées obligatoires -->

<xsl:if test="string-length(./descendant::*:title/@id)!=0"><xsl:text>   title = {</xsl:text><xsl:value-of select="./descendant::*:title/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:author/@id)!=0"><xsl:text>   author = {</xsl:text><xsl:value-of select="./descendant::*:author/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:abstract/@id)!=0"><xsl:text>   abstract = {</xsl:text><xsl:value-of select="./descendant::*:abstract/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:institution/@id)!=0"><xsl:text>   institution = {</xsl:text><xsl:value-of select="./descendant::*:institution/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:year/@id)!=0"><xsl:text>   year = {</xsl:text><xsl:value-of select="./descendant::*:year/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-language/@id)!=0"><xsl:text>   x-language = {</xsl:text><xsl:value-of select="./descendant::*:x-language/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-reporttype/@id)!=0"><xsl:text>   x-reporttype = {</xsl:text><xsl:value-of select="./descendant::*:x-reporttype/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées obligatoires -->

<!-- métadonnées facultatives spécifiques au type BibTeX -->

<xsl:if test="string-length(./descendant::*:number/@id)!=0"><xsl:text>   number = {</xsl:text><xsl:value-of select="./descendant::*:number/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pages/@id)!=0"><xsl:text>   pages = {</xsl:text><xsl:value-of select="./descendant::*:pages/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- métadonnées facultatives communes à tous les types BibTeX -->

<xsl:if test="string-length(./descendant::*:doi/@id)!=0"><xsl:text>   doi = {</xsl:text><xsl:value-of select="./descendant::*:doi/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:keywords/@id)!=0"><xsl:text>   keywords = {</xsl:text><xsl:value-of select="./descendant::*:keywords/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmcid/@id)!=0"><xsl:text>   pmcid = {</xsl:text><xsl:value-of select="./descendant::*:pmcid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmid/@id)!=0"><xsl:text>   pmid = {</xsl:text><xsl:value-of select="./descendant::*:pmid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:url/@id)!=0"><xsl:text>   url = {</xsl:text><xsl:value-of select="./descendant::*:url/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_fr/@id)!=0"><xsl:text>   x-abstract_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_en/@id)!=0"><xsl:text>   x-abstract_en = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-anrproject/@id)!=0"><xsl:text>   x-anrproject = {</xsl:text><xsl:value-of select="./descendant::*:x-anrproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-classification/@id)!=0"><xsl:text>   x-classification = {</xsl:text><xsl:value-of select="./descendant::*:x-classification/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-domain/@id)!=0"><xsl:text>   x-domain = {</xsl:text><xsl:value-of select="./descendant::*:x-domain/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-europeanproject/@id)!=0"><xsl:text>   x-europeanproject = {</xsl:text><xsl:value-of select="./descendant::*:x-europeanproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-funding/@id)!=0"><xsl:text>   x-funding = {</xsl:text><xsl:value-of select="./descendant::*:x-funding/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-jel/@id)!=0"><xsl:text>   x-jel = {</xsl:text><xsl:value-of select="./descendant::*:x-jel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_fr/@id)!=0"><xsl:text>   x-keywords_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_en/@id)!=0"><xsl:text>   x-keywords_en = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-licence/@id)!=0"><xsl:text>   x-licence = {</xsl:text><xsl:value-of select="./descendant::*:x-licence/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-localreference/@id)!=0"><xsl:text>   x-localreference = {</xsl:text><xsl:value-of select="./descendant::*:x-localreference/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-mesh/@id)!=0"><xsl:text>   x-mesh = {</xsl:text><xsl:value-of select="./descendant::*:x-mesh/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-onbehalfof/@id)!=0"><xsl:text>   x-onbehalfof = {</xsl:text><xsl:value-of select="./descendant::*:x-onbehalfof/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-subtitle/@id)!=0"><xsl:text>   x-subtitle = {</xsl:text><xsl:value-of select="./descendant::*:x-subtitle/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_fr/@id)!=0"><xsl:text>   x-title_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-title_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_en/@id)!=0"><xsl:text>   x-title_en = {</xsl:text><xsl:value-of select="./descendant::*:x-title_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-writingdate/@id)!=0"><xsl:text>   x-writingdate = {</xsl:text><xsl:value-of select="./descendant::*:x-writingdate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- dernière ligne, accolade fermante -->
	<xsl:text>}
	</xsl:text>
</xsl:template>














<!-- template patent (Brevet) -->
<xsl:template match="*:patent">

	<!-- en-tête, première ligne et accolade ouvrante -->
	<xsl:text>@patent{</xsl:text><xsl:value-of select="@id"/><xsl:text>,
</xsl:text>
<!-- fin d'entête -->

<!-- métadonnées obligatoires -->

<xsl:if test="string-length(./descendant::*:title/@id)!=0"><xsl:text>   title = {</xsl:text><xsl:value-of select="./descendant::*:title/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:author/@id)!=0"><xsl:text>   author = {</xsl:text><xsl:value-of select="./descendant::*:author/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:abstract/@id)!=0"><xsl:text>   abstract = {</xsl:text><xsl:value-of select="./descendant::*:abstract/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:year/@id)!=0"><xsl:text>   year = {</xsl:text><xsl:value-of select="./descendant::*:year/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:number/@id)!=0"><xsl:text>   number = {</xsl:text><xsl:value-of select="./descendant::*:number/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-country/@id)!=0"><xsl:text>   x-country = {</xsl:text><xsl:value-of select="./descendant::*:x-country/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-audience/@id)!=0"><xsl:text>   x-audience = {</xsl:text><xsl:value-of select="./descendant::*:x-audience/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-language/@id)!=0"><xsl:text>   x-language = {</xsl:text><xsl:value-of select="./descendant::*:x-language/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées obligatoires -->

<!-- métadonnées facultatives spécifiques au type BibTeX -->

<xsl:if test="string-length(./descendant::*:pages/@id)!=0"><xsl:text>   pages = {</xsl:text><xsl:value-of select="./descendant::*:pages/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- métadonnées facultatives communes à tous les types BibTeX -->

<xsl:if test="string-length(./descendant::*:doi/@id)!=0"><xsl:text>   doi = {</xsl:text><xsl:value-of select="./descendant::*:doi/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:keywords/@id)!=0"><xsl:text>   keywords = {</xsl:text><xsl:value-of select="./descendant::*:keywords/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmcid/@id)!=0"><xsl:text>   pmcid = {</xsl:text><xsl:value-of select="./descendant::*:pmcid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmid/@id)!=0"><xsl:text>   pmid = {</xsl:text><xsl:value-of select="./descendant::*:pmid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:url/@id)!=0"><xsl:text>   url = {</xsl:text><xsl:value-of select="./descendant::*:url/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_fr/@id)!=0"><xsl:text>   x-abstract_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_en/@id)!=0"><xsl:text>   x-abstract_en = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-anrproject/@id)!=0"><xsl:text>   x-anrproject = {</xsl:text><xsl:value-of select="./descendant::*:x-anrproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-classification/@id)!=0"><xsl:text>   x-classification = {</xsl:text><xsl:value-of select="./descendant::*:x-classification/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-domain/@id)!=0"><xsl:text>   x-domain = {</xsl:text><xsl:value-of select="./descendant::*:x-domain/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-europeanproject/@id)!=0"><xsl:text>   x-europeanproject = {</xsl:text><xsl:value-of select="./descendant::*:x-europeanproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-funding/@id)!=0"><xsl:text>   x-funding = {</xsl:text><xsl:value-of select="./descendant::*:x-funding/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-jel/@id)!=0"><xsl:text>   x-jel = {</xsl:text><xsl:value-of select="./descendant::*:x-jel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_fr/@id)!=0"><xsl:text>   x-keywords_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_en/@id)!=0"><xsl:text>   x-keywords_en = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-licence/@id)!=0"><xsl:text>   x-licence = {</xsl:text><xsl:value-of select="./descendant::*:x-licence/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-localreference/@id)!=0"><xsl:text>   x-localreference = {</xsl:text><xsl:value-of select="./descendant::*:x-localreference/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-mesh/@id)!=0"><xsl:text>   x-mesh = {</xsl:text><xsl:value-of select="./descendant::*:x-mesh/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-onbehalfof/@id)!=0"><xsl:text>   x-onbehalfof = {</xsl:text><xsl:value-of select="./descendant::*:x-onbehalfof/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-subtitle/@id)!=0"><xsl:text>   x-subtitle = {</xsl:text><xsl:value-of select="./descendant::*:x-subtitle/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_fr/@id)!=0"><xsl:text>   x-title_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-title_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_en/@id)!=0"><xsl:text>   x-title_en = {</xsl:text><xsl:value-of select="./descendant::*:x-title_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-writingdate/@id)!=0"><xsl:text>   x-writingdate = {</xsl:text><xsl:value-of select="./descendant::*:x-writingdate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- dernière ligne, accolade fermante -->
	<xsl:text>}
	</xsl:text>
</xsl:template>















<!-- template unpublished (Document sans référence de publication (preprint)) -->
<xsl:template match="*:unpublished">

	<!-- en-tête, première ligne et accolade ouvrante -->
	<xsl:text>@unpublished{</xsl:text><xsl:value-of select="@id"/><xsl:text>,
</xsl:text>
<!-- fin d'entête -->

<!-- métadonnées obligatoires -->

<xsl:if test="string-length(./descendant::*:title/@id)!=0"><xsl:text>   title = {</xsl:text><xsl:value-of select="./descendant::*:title/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:author/@id)!=0"><xsl:text>   author = {</xsl:text><xsl:value-of select="./descendant::*:author/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:abstract/@id)!=0"><xsl:text>   abstract = {</xsl:text><xsl:value-of select="./descendant::*:abstract/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:year/@id)!=0"><xsl:text>   year = {</xsl:text><xsl:value-of select="./descendant::*:year/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-language/@id)!=0"><xsl:text>   x-language = {</xsl:text><xsl:value-of select="./descendant::*:x-language/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées obligatoires -->

<!-- métadonnées facultatives spécifiques au type BibTeX -->

<!-- fin des métadonnées facultatives -->

<!-- métadonnées facultatives communes à tous les types BibTeX -->

<xsl:if test="string-length(./descendant::*:doi/@id)!=0"><xsl:text>   doi = {</xsl:text><xsl:value-of select="./descendant::*:doi/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:keywords/@id)!=0"><xsl:text>   keywords = {</xsl:text><xsl:value-of select="./descendant::*:keywords/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmcid/@id)!=0"><xsl:text>   pmcid = {</xsl:text><xsl:value-of select="./descendant::*:pmcid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmid/@id)!=0"><xsl:text>   pmid = {</xsl:text><xsl:value-of select="./descendant::*:pmid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:url/@id)!=0"><xsl:text>   url = {</xsl:text><xsl:value-of select="./descendant::*:url/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_fr/@id)!=0"><xsl:text>   x-abstract_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_en/@id)!=0"><xsl:text>   x-abstract_en = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-anrproject/@id)!=0"><xsl:text>   x-anrproject = {</xsl:text><xsl:value-of select="./descendant::*:x-anrproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-classification/@id)!=0"><xsl:text>   x-classification = {</xsl:text><xsl:value-of select="./descendant::*:x-classification/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-domain/@id)!=0"><xsl:text>   x-domain = {</xsl:text><xsl:value-of select="./descendant::*:x-domain/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-europeanproject/@id)!=0"><xsl:text>   x-europeanproject = {</xsl:text><xsl:value-of select="./descendant::*:x-europeanproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-funding/@id)!=0"><xsl:text>   x-funding = {</xsl:text><xsl:value-of select="./descendant::*:x-funding/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-jel/@id)!=0"><xsl:text>   x-jel = {</xsl:text><xsl:value-of select="./descendant::*:x-jel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_fr/@id)!=0"><xsl:text>   x-keywords_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_en/@id)!=0"><xsl:text>   x-keywords_en = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-licence/@id)!=0"><xsl:text>   x-licence = {</xsl:text><xsl:value-of select="./descendant::*:x-licence/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-localreference/@id)!=0"><xsl:text>   x-localreference = {</xsl:text><xsl:value-of select="./descendant::*:x-localreference/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-mesh/@id)!=0"><xsl:text>   x-mesh = {</xsl:text><xsl:value-of select="./descendant::*:x-mesh/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-onbehalfof/@id)!=0"><xsl:text>   x-onbehalfof = {</xsl:text><xsl:value-of select="./descendant::*:x-onbehalfof/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-subtitle/@id)!=0"><xsl:text>   x-subtitle = {</xsl:text><xsl:value-of select="./descendant::*:x-subtitle/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_fr/@id)!=0"><xsl:text>   x-title_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-title_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_en/@id)!=0"><xsl:text>   x-title_en = {</xsl:text><xsl:value-of select="./descendant::*:x-title_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-writingdate/@id)!=0"><xsl:text>   x-writingdate = {</xsl:text><xsl:value-of select="./descendant::*:x-writingdate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- dernière ligne, accolade fermante -->
	<xsl:text>}
	</xsl:text>
</xsl:template>

















<!-- template mastersthesis (Mémoire) -->
<xsl:template match="*:mastersthesis">

	<!-- en-tête, première ligne et accolade ouvrante -->
	<xsl:text>@mastersthesis{</xsl:text><xsl:value-of select="@id"/><xsl:text>,
</xsl:text>
<!-- fin d'entête -->

<!-- métadonnées obligatoires -->

<xsl:if test="string-length(./descendant::*:title/@id)!=0"><xsl:text>   title = {</xsl:text><xsl:value-of select="./descendant::*:title/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:author/@id)!=0"><xsl:text>   author = {</xsl:text><xsl:value-of select="./descendant::*:author/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:abstract/@id)!=0"><xsl:text>   abstract = {</xsl:text><xsl:value-of select="./descendant::*:abstract/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:year/@id)!=0"><xsl:text>   year = {</xsl:text><xsl:value-of select="./descendant::*:year/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:school/@id)!=0"><xsl:text>   school = {</xsl:text><xsl:value-of select="./descendant::*:school/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-inria_degreetype/@id)!=0"><xsl:text>   x-inria_degreetype = {</xsl:text><xsl:value-of select="./descendant::*:x-inria_degreetype/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-audience/@id)!=0"><xsl:text>   x-audience = {</xsl:text><xsl:value-of select="./descendant::*:x-audience/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-language/@id)!=0"><xsl:text>   x-language = {</xsl:text><xsl:value-of select="./descendant::*:x-language/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-inria_directoremail/@id)!=0"><xsl:text>   x-inria_directoremail = {</xsl:text><xsl:value-of select="./descendant::*:x-inria_directoremail/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pdf/@id)!=0"><xsl:text>   pdf = {</xsl:text><xsl:value-of select="./descendant::*:pdf/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-filesource/@id)!=0"><xsl:text>   x-filesource = {</xsl:text><xsl:value-of select="./descendant::*:x-filesource/@id"/><xsl:text>},
</xsl:text></xsl:if>


<!-- fin des métadonnées obligatoires -->

<!-- métadonnées facultatives spécifiques au type BibTeX -->

<xsl:if test="string-length(./descendant::*:pages/@id)!=0"><xsl:text>   pages = {</xsl:text><xsl:value-of select="./descendant::*:pages/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-city/@id)!=0"><xsl:text>   x-city = {</xsl:text><xsl:value-of select="./descendant::*:x-city/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-committee/@id)!=0"><xsl:text>   x-committee = {</xsl:text><xsl:value-of select="./descendant::*:x-committee/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- métadonnées facultatives communes à tous les types BibTeX -->

<xsl:if test="string-length(./descendant::*:doi/@id)!=0"><xsl:text>   doi = {</xsl:text><xsl:value-of select="./descendant::*:doi/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:keywords/@id)!=0"><xsl:text>   keywords = {</xsl:text><xsl:value-of select="./descendant::*:keywords/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmcid/@id)!=0"><xsl:text>   pmcid = {</xsl:text><xsl:value-of select="./descendant::*:pmcid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmid/@id)!=0"><xsl:text>   pmid = {</xsl:text><xsl:value-of select="./descendant::*:pmid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:url/@id)!=0"><xsl:text>   url = {</xsl:text><xsl:value-of select="./descendant::*:url/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_fr/@id)!=0"><xsl:text>   x-abstract_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_en/@id)!=0"><xsl:text>   x-abstract_en = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-anrproject/@id)!=0"><xsl:text>   x-anrproject = {</xsl:text><xsl:value-of select="./descendant::*:x-anrproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-classification/@id)!=0"><xsl:text>   x-classification = {</xsl:text><xsl:value-of select="./descendant::*:x-classification/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-domain/@id)!=0"><xsl:text>   x-domain = {</xsl:text><xsl:value-of select="./descendant::*:x-domain/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-europeanproject/@id)!=0"><xsl:text>   x-europeanproject = {</xsl:text><xsl:value-of select="./descendant::*:x-europeanproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-funding/@id)!=0"><xsl:text>   x-funding = {</xsl:text><xsl:value-of select="./descendant::*:x-funding/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-jel/@id)!=0"><xsl:text>   x-jel = {</xsl:text><xsl:value-of select="./descendant::*:x-jel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_fr/@id)!=0"><xsl:text>   x-keywords_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_en/@id)!=0"><xsl:text>   x-keywords_en = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-licence/@id)!=0"><xsl:text>   x-licence = {</xsl:text><xsl:value-of select="./descendant::*:x-licence/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-localreference/@id)!=0"><xsl:text>   x-localreference = {</xsl:text><xsl:value-of select="./descendant::*:x-localreference/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-mesh/@id)!=0"><xsl:text>   x-mesh = {</xsl:text><xsl:value-of select="./descendant::*:x-mesh/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-onbehalfof/@id)!=0"><xsl:text>   x-onbehalfof = {</xsl:text><xsl:value-of select="./descendant::*:x-onbehalfof/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-subtitle/@id)!=0"><xsl:text>   x-subtitle = {</xsl:text><xsl:value-of select="./descendant::*:x-subtitle/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_fr/@id)!=0"><xsl:text>   x-title_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-title_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_en/@id)!=0"><xsl:text>   x-title_en = {</xsl:text><xsl:value-of select="./descendant::*:x-title_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-writingdate/@id)!=0"><xsl:text>   x-writingdate = {</xsl:text><xsl:value-of select="./descendant::*:x-writingdate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- dernière ligne, accolade fermante -->
	<xsl:text>}
	</xsl:text>
</xsl:template>


















<!-- template note (Note de lecture) -->
<xsl:template match="*:note[parent::*:text]">

	<!-- en-tête, première ligne et accolade ouvrante -->
	<xsl:text>@note{</xsl:text><xsl:value-of select="@id"/><xsl:text>,
</xsl:text>
<!-- fin d'entête -->

<!-- métadonnées obligatoires -->

<xsl:if test="string-length(./descendant::*:title/@id)!=0"><xsl:text>   title = {</xsl:text><xsl:value-of select="./descendant::*:title/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:author/@id)!=0"><xsl:text>   author = {</xsl:text><xsl:value-of select="./descendant::*:author/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:abstract/@id)!=0"><xsl:text>   abstract = {</xsl:text><xsl:value-of select="./descendant::*:abstract/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:year/@id)!=0"><xsl:text>   year = {</xsl:text><xsl:value-of select="./descendant::*:year/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-language/@id)!=0"><xsl:text>   x-language = {</xsl:text><xsl:value-of select="./descendant::*:x-language/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées obligatoires -->

<!-- métadonnées facultatives spécifiques au type BibTeX -->

<xsl:if test="string-length(./descendant::*:booktitle/@id)!=0"><xsl:text>   booktitle = {</xsl:text><xsl:value-of select="./descendant::*:booktitle/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:issn/@id)!=0"><xsl:text>   issn = {</xsl:text><xsl:value-of select="./descendant::*:issn/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:journal/@id)!=0"><xsl:text>   journal = {</xsl:text><xsl:value-of select="./descendant::*:journal/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:number/@id)!=0"><xsl:text>   number = {</xsl:text><xsl:value-of select="./descendant::*:number/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:publisher/@id)!=0"><xsl:text>   publisher = {</xsl:text><xsl:value-of select="./descendant::*:publisher/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pages/@id)!=0"><xsl:text>   pages = {</xsl:text><xsl:value-of select="./descendant::*:pages/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:volume/@id)!=0"><xsl:text>   volume = {</xsl:text><xsl:value-of select="./descendant::*:volume/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-hal_journal_id/@id)!=0"><xsl:text>   x-hal_journal_id = {</xsl:text><xsl:value-of select="./descendant::*:x-hal_journal_id/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-publisherlink/@id)!=0"><xsl:text>   x-publisherlink = {</xsl:text><xsl:value-of select="./descendant::*:x-publisherlink/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- métadonnées facultatives communes à tous les types BibTeX -->

<xsl:if test="string-length(./descendant::*:doi/@id)!=0"><xsl:text>   doi = {</xsl:text><xsl:value-of select="./descendant::*:doi/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:keywords/@id)!=0"><xsl:text>   keywords = {</xsl:text><xsl:value-of select="./descendant::*:keywords/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmcid/@id)!=0"><xsl:text>   pmcid = {</xsl:text><xsl:value-of select="./descendant::*:pmcid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:pmid/@id)!=0"><xsl:text>   pmid = {</xsl:text><xsl:value-of select="./descendant::*:pmid/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:url/@id)!=0"><xsl:text>   url = {</xsl:text><xsl:value-of select="./descendant::*:url/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_fr/@id)!=0"><xsl:text>   x-abstract_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-abstract_en/@id)!=0"><xsl:text>   x-abstract_en = {</xsl:text><xsl:value-of select="./descendant::*:x-abstract_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-anrproject/@id)!=0"><xsl:text>   x-anrproject = {</xsl:text><xsl:value-of select="./descendant::*:x-anrproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-classification/@id)!=0"><xsl:text>   x-classification = {</xsl:text><xsl:value-of select="./descendant::*:x-classification/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-domain/@id)!=0"><xsl:text>   x-domain = {</xsl:text><xsl:value-of select="./descendant::*:x-domain/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-europeanproject/@id)!=0"><xsl:text>   x-europeanproject = {</xsl:text><xsl:value-of select="./descendant::*:x-europeanproject/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-funding/@id)!=0"><xsl:text>   x-funding = {</xsl:text><xsl:value-of select="./descendant::*:x-funding/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-jel/@id)!=0"><xsl:text>   x-jel = {</xsl:text><xsl:value-of select="./descendant::*:x-jel/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_fr/@id)!=0"><xsl:text>   x-keywords_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-keywords_en/@id)!=0"><xsl:text>   x-keywords_en = {</xsl:text><xsl:value-of select="./descendant::*:x-keywords_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-licence/@id)!=0"><xsl:text>   x-licence = {</xsl:text><xsl:value-of select="./descendant::*:x-licence/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-localreference/@id)!=0"><xsl:text>   x-localreference = {</xsl:text><xsl:value-of select="./descendant::*:x-localreference/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-mesh/@id)!=0"><xsl:text>   x-mesh = {</xsl:text><xsl:value-of select="./descendant::*:x-mesh/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-onbehalfof/@id)!=0"><xsl:text>   x-onbehalfof = {</xsl:text><xsl:value-of select="./descendant::*:x-onbehalfof/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-subtitle/@id)!=0"><xsl:text>   x-subtitle = {</xsl:text><xsl:value-of select="./descendant::*:x-subtitle/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_fr/@id)!=0"><xsl:text>   x-title_fr = {</xsl:text><xsl:value-of select="./descendant::*:x-title_fr/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-title_en/@id)!=0"><xsl:text>   x-title_en = {</xsl:text><xsl:value-of select="./descendant::*:x-title_en/@id"/><xsl:text>},
</xsl:text></xsl:if>

<xsl:if test="string-length(./descendant::*:x-writingdate/@id)!=0"><xsl:text>   x-writingdate = {</xsl:text><xsl:value-of select="./descendant::*:x-writingdate/@id"/><xsl:text>},
</xsl:text></xsl:if>

<!-- fin des métadonnées facultatives -->

<!-- dernière ligne, accolade fermante -->
	<xsl:text>}
	</xsl:text>
</xsl:template>


</xsl:stylesheet>