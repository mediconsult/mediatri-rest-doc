#include <enunciate-common.c>
#ifndef DEF_CoreWEB_ns0_laakitysAnto_H
#define DEF_CoreWEB_ns0_laakitysAnto_H

/**
 *  DTO for LaakitysAnto.
 * 
 *   * A class to present LAAKITYS_ANTO table in medication functionality.
 *  Used to carry the data from database to the client side.
 * 
 *  <table style="border: 1px solid black;">
 *  <tr><th>property</th><th>only for frontend</th><th>obligatory from api</th><th>editable</th><th>must be same as laakityshistorias</th></tr>
 *  <tr><td>antaja</td><td>no</td><td>yes</td><td>yes</td><td>no</td></tr>
 *  <tr><td>huomautuksia</td><td>no</td><td>no</td><td>yes</td><td>no</td></tr>
 *  <tr><td>kello</td><td>no</td><td>yes (in planned)</td><td>yes</td><td>yes (all in one field)</td></tr>
 *  <tr><td>kirjaaja</td><td>no</td><td>no (added by api)</td><td>no</td><td>no</td></tr>
 *  <tr><td>laake</td><td>yes</td><td>no (added by api)</td><td>no</td><td>yes</td></tr>
 *  <tr><td>maara</td><td>no</td><td>yes</td><td>yes</td><td>no</td></tr>
 *  <tr><td>muutosAika</td><td>no</td><td>no (added by api)</td><td>no</td><td>no</td></tr>
 *  <tr><td>omistaja</td><td>no</td><td>yes (doublechecked)</td><td>no</td><td>yes</td></tr>
 *  <tr><td>osa</td><td>no</td><td>yes (doublechecked)</td><td>no</td><td>yes</td></tr>
 *  <tr><td>poistettu</td><td>no</td><td>no (added by api)</td><td>no</td><td>no</td></tr>
 *  <tr><td>toteutunutAika</td><td>no</td><td>yes</td><td>yes</td><td>no</td></tr>
 *  <tr><td>toteutunutAikaOriginal</td><td>no</td><td>yes (only for editing)</td><td>no</td><td>no</td></tr>
 *  <tr><td>toteutunutAikaLoppu</td><td>no</td><td>no</td><td>yes</td><td>no</td></tr>
 *  <tr><td>tyyppi</td><td>no</td><td>yes</td><td>no</td><td>no</td></tr>
 *  <tr><td>yksikko</td><td>no</td><td>yes (doublechecked)</td><td>no</td><td>yes</td></tr>
 *  <tr><td>kirjaajaName</td><td>yes</td><td>no</td><td>no</td><td>no</td></tr>
 *  <tr><td>antajaName</td><td>yes</td><td>no</td><td>no</td><td>no</td></tr>
 *  <tr><td>annettavaMaara</td><td>yes</td><td>no</td><td>no</td><td>no</td></tr>
 *  <tr><td>annettavaYksikko</td><td>yes</td><td>no</td><td>no</td><td>no</td></tr>
 *  <tr><td>annettavaMaksimi</td><td>yes</td><td>no</td><td>no</td><td>no</td></tr>
 *  </table>
 */
struct CoreWEB_ns0_laakitysAnto {


  /**
   * Returns the id of the medication giver
   */
  int antaja;

  /**
   * Returns the observetion comments related to the medication giving
   */
  xmlChar *huomautuksia;

  /**
   * Returns the id of the actual person that fed this info to the DB/system
   */
  int kirjaaja;

  /**
   * Returns the laake VNR. VNR is a code that is used to identify the medication. @see http://www.laaketietokeskus.fi/vnr
   */
  xmlChar *laake;

  /**
   * Returns the medication amount
   */
  float maara;

  /**
   * Returns the owner ie. patients mediatri id.
   */
  int omistaja;

  /**
   * Retuns the part number that is the id of the medication together with alku and omistaja
   */
  int osa;

  /**
   * Returns the code of the medication time removal. 'E' - not removed, 'K' = removed
   */
  unsigned short poistettu;

  /**
   * Returns the planned time for medication. Tells which time the medication should be given
   */
  struct tm *suunniteltuAika;

  /**
   * Returns the actual time of medication. Mapped from PK id ALKU
   */
  struct tm *toteutunutAika;

  /**
   * Returns the type of LaakitysAnto object, 1 = planned and given, 2 = planned but not yet given, 3 = extra
   */
  int tyyppi;

  /**
   * Returns the used unit. ml, l, etc.
   */
  xmlChar *yksikko;

  /**
   * Returns the name of the actual person that fed this info to the DB/system
   */
  xmlChar *kirjaajaName;

  /**
   * Returns the name of the medication giver
   */
  xmlChar *antajaName;

  /**
   * Returns the base amount that is given if swiped. Also the lower border of the amount.
   */
  xmlChar *annettavaMaara;

  /**
   * Returns the base unit that is described by laakityshistoria.
   */
  xmlChar *annettavaYksikko;

  /**
   * Returns the uuper border of the amount.
   */
  xmlChar *annettavaMaksimi;

  /**
   * Original time of medication. mapped from PK id ALKU. This PK is modified so to find the modifiable row the old row must be also given.
   */
  struct tm *toteutunutAikaOriginal;
};

/**
 * Reads a LaakitysAnto element from XML. The element to be read is "laakitysAnto", and
 * it is assumed that the reader is pointing to the XML document (not the element).
 *
 * @param reader The XML reader.
 * @return The LaakitysAnto, or NULL in case of error.
 */
struct CoreWEB_ns0_laakitysAnto *xml_read_CoreWEB_ns0_laakitysAnto(xmlTextReaderPtr reader);

/**
 * Writes a LaakitysAnto to XML under element name "laakitysAnto".
 *
 * @param writer The XML writer.
 * @param _laakitysAnto The LaakitysAnto to write.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
int xml_write_CoreWEB_ns0_laakitysAnto(xmlTextWriterPtr writer, struct CoreWEB_ns0_laakitysAnto *_laakitysAnto);

/**
 * Frees a LaakitysAnto.
 *
 * @param _laakitysAnto The LaakitysAnto to free.
 */
void free_CoreWEB_ns0_laakitysAnto(struct CoreWEB_ns0_laakitysAnto *_laakitysAnto);

/**
 * Reads a LaakitysAnto element from XML. The element to be read is "laakitysAnto", and
 * it is assumed that the reader is already pointing to the element.
 *
 * @param reader The XML reader.
 * @return The LaakitysAnto, or NULL in case of error.
 */
struct CoreWEB_ns0_laakitysAnto *xmlTextReaderReadNs0LaakitysAntoElement(xmlTextReaderPtr reader);

/**
 * Writes a LaakitysAnto to XML under element name "laakitysAnto".
 * Does NOT write the namespace prefixes.
 *
 * @param writer The XML writer.
 * @param _laakitysAnto The LaakitysAnto to write.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
static int xmlTextWriterWriteNs0LaakitysAntoElement(xmlTextWriterPtr writer, struct CoreWEB_ns0_laakitysAnto *_laakitysAnto);

/**
 * Writes a LaakitysAnto to XML under element name "laakitysAnto".
 *
 * @param writer The XML writer.
 * @param _laakitysAnto The LaakitysAnto to write.
 * @param writeNamespaces Whether to write the namespace prefixes.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
static int xmlTextWriterWriteNs0LaakitysAntoElementNS(xmlTextWriterPtr writer, struct CoreWEB_ns0_laakitysAnto *_laakitysAnto, int writeNamespaces);

/**
 * Frees the children of a LaakitysAnto.
 *
 * @param _laakitysAnto The LaakitysAnto whose children are to be free.
 */
static void freeNs0LaakitysAntoElement(struct CoreWEB_ns0_laakitysAnto *_laakitysAnto);

/**
 * Reads a LaakitysAnto from XML. The reader is assumed to be at the start element.
 *
 * @param reader The XML reader.
 * @return The LaakitysAnto, or NULL in case of error.
 */
static struct CoreWEB_ns0_laakitysAnto *xmlTextReaderReadNs0LaakitysAntoType(xmlTextReaderPtr reader);

/**
 * Writes a LaakitysAnto to XML.
 *
 * @param writer The XML writer.
 * @param _laakitysAnto The LaakitysAnto to write.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
static int xmlTextWriterWriteNs0LaakitysAntoType(xmlTextWriterPtr writer, struct CoreWEB_ns0_laakitysAnto *_laakitysAnto);

/**
 * Frees the elements of a LaakitysAnto.
 *
 * @param _laakitysAnto The LaakitysAnto to free.
 */
static void freeNs0LaakitysAntoType(struct CoreWEB_ns0_laakitysAnto *_laakitysAnto);

#endif /* DEF_CoreWEB_ns0_laakitysAnto_H */
#ifndef DEF_CoreWEB_ns0_tutkimuspyynto_H
#define DEF_CoreWEB_ns0_tutkimuspyynto_H

/**
 *  DTO for LabExamination
 * 
 *  A class to present TUTKIMUSPYYNTO table in laboratory examination functionality.
 *  Used to carry the data from database to the client side.
 * 
 */
struct CoreWEB_ns0_tutkimuspyynto {


  /**
   * Returns the name of the Tutkimus
   */
  xmlChar *tutkimus;

  /**
   * Returns a list of Tutkimus details under the same tutkimus name
   */
  struct CoreWEB_ns0_tutkimuspyyntoTiedot *tutkimuspyyntoTiedotList;

  /**
   * Size of the tutkimuspyyntoTiedotList array.
   */
  int _sizeof_tutkimuspyyntoTiedotList;

  /**
   * Returns the category of the tutkimus. Category could be
   * "tilattu", "kuittaamaton" or "tulos"
   */
  xmlChar *kategoria;

  /**
   * (no documentation provided)
   */
  struct tm *latestTime;
};

/**
 * Reads a Tutkimuspyynto element from XML. The element to be read is "tutkimuspyynto", and
 * it is assumed that the reader is pointing to the XML document (not the element).
 *
 * @param reader The XML reader.
 * @return The Tutkimuspyynto, or NULL in case of error.
 */
struct CoreWEB_ns0_tutkimuspyynto *xml_read_CoreWEB_ns0_tutkimuspyynto(xmlTextReaderPtr reader);

/**
 * Writes a Tutkimuspyynto to XML under element name "tutkimuspyynto".
 *
 * @param writer The XML writer.
 * @param _tutkimuspyynto The Tutkimuspyynto to write.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
int xml_write_CoreWEB_ns0_tutkimuspyynto(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyynto *_tutkimuspyynto);

/**
 * Frees a Tutkimuspyynto.
 *
 * @param _tutkimuspyynto The Tutkimuspyynto to free.
 */
void free_CoreWEB_ns0_tutkimuspyynto(struct CoreWEB_ns0_tutkimuspyynto *_tutkimuspyynto);

/**
 * Reads a Tutkimuspyynto element from XML. The element to be read is "tutkimuspyynto", and
 * it is assumed that the reader is already pointing to the element.
 *
 * @param reader The XML reader.
 * @return The Tutkimuspyynto, or NULL in case of error.
 */
struct CoreWEB_ns0_tutkimuspyynto *xmlTextReaderReadNs0TutkimuspyyntoElement(xmlTextReaderPtr reader);

/**
 * Writes a Tutkimuspyynto to XML under element name "tutkimuspyynto".
 * Does NOT write the namespace prefixes.
 *
 * @param writer The XML writer.
 * @param _tutkimuspyynto The Tutkimuspyynto to write.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
static int xmlTextWriterWriteNs0TutkimuspyyntoElement(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyynto *_tutkimuspyynto);

/**
 * Writes a Tutkimuspyynto to XML under element name "tutkimuspyynto".
 *
 * @param writer The XML writer.
 * @param _tutkimuspyynto The Tutkimuspyynto to write.
 * @param writeNamespaces Whether to write the namespace prefixes.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
static int xmlTextWriterWriteNs0TutkimuspyyntoElementNS(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyynto *_tutkimuspyynto, int writeNamespaces);

/**
 * Frees the children of a Tutkimuspyynto.
 *
 * @param _tutkimuspyynto The Tutkimuspyynto whose children are to be free.
 */
static void freeNs0TutkimuspyyntoElement(struct CoreWEB_ns0_tutkimuspyynto *_tutkimuspyynto);

/**
 * Reads a Tutkimuspyynto from XML. The reader is assumed to be at the start element.
 *
 * @param reader The XML reader.
 * @return The Tutkimuspyynto, or NULL in case of error.
 */
static struct CoreWEB_ns0_tutkimuspyynto *xmlTextReaderReadNs0TutkimuspyyntoType(xmlTextReaderPtr reader);

/**
 * Writes a Tutkimuspyynto to XML.
 *
 * @param writer The XML writer.
 * @param _tutkimuspyynto The Tutkimuspyynto to write.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
static int xmlTextWriterWriteNs0TutkimuspyyntoType(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyynto *_tutkimuspyynto);

/**
 * Frees the elements of a Tutkimuspyynto.
 *
 * @param _tutkimuspyynto The Tutkimuspyynto to free.
 */
static void freeNs0TutkimuspyyntoType(struct CoreWEB_ns0_tutkimuspyynto *_tutkimuspyynto);

#endif /* DEF_CoreWEB_ns0_tutkimuspyynto_H */
#ifndef DEF_CoreWEB_ns0_tutkimuspyyntoHerkkyys_H
#define DEF_CoreWEB_ns0_tutkimuspyyntoHerkkyys_H

/**
 *  DTO for TutkimuspyyntoHerkkyys
 * 
 *  A class to present TUTKIMUSPYYNTOHERKKYYS table in laboratory examination functionality.
 *  Used to carry the data from database to the client side.
 * 
 */
struct CoreWEB_ns0_tutkimuspyyntoHerkkyys {


  /**
   * (no documentation provided)
   */
  short rivi;

  /**
   * (no documentation provided)
   */
  xmlChar *antibiootti;

  /**
   * (no documentation provided)
   */
  unsigned short *kiekkoherkkyys;

  /**
   * (no documentation provided)
   */
  xmlChar *micherkkyys;

  /**
   * (no documentation provided)
   */
  xmlChar *lyhenne;

  /**
   * (no documentation provided)
   */
  xmlChar *numero;

  /**
   * (no documentation provided)
   */
  xmlChar *ryhma;
};

/**
 * Reads a TutkimuspyyntoHerkkyys element from XML. The element to be read is "tutkimuspyyntoHerkkyys", and
 * it is assumed that the reader is pointing to the XML document (not the element).
 *
 * @param reader The XML reader.
 * @return The TutkimuspyyntoHerkkyys, or NULL in case of error.
 */
struct CoreWEB_ns0_tutkimuspyyntoHerkkyys *xml_read_CoreWEB_ns0_tutkimuspyyntoHerkkyys(xmlTextReaderPtr reader);

/**
 * Writes a TutkimuspyyntoHerkkyys to XML under element name "tutkimuspyyntoHerkkyys".
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoHerkkyys The TutkimuspyyntoHerkkyys to write.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
int xml_write_CoreWEB_ns0_tutkimuspyyntoHerkkyys(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyyntoHerkkyys *_tutkimuspyyntoHerkkyys);

/**
 * Frees a TutkimuspyyntoHerkkyys.
 *
 * @param _tutkimuspyyntoHerkkyys The TutkimuspyyntoHerkkyys to free.
 */
void free_CoreWEB_ns0_tutkimuspyyntoHerkkyys(struct CoreWEB_ns0_tutkimuspyyntoHerkkyys *_tutkimuspyyntoHerkkyys);

/**
 * Reads a TutkimuspyyntoHerkkyys element from XML. The element to be read is "tutkimuspyyntoHerkkyys", and
 * it is assumed that the reader is already pointing to the element.
 *
 * @param reader The XML reader.
 * @return The TutkimuspyyntoHerkkyys, or NULL in case of error.
 */
struct CoreWEB_ns0_tutkimuspyyntoHerkkyys *xmlTextReaderReadNs0TutkimuspyyntoHerkkyysElement(xmlTextReaderPtr reader);

/**
 * Writes a TutkimuspyyntoHerkkyys to XML under element name "tutkimuspyyntoHerkkyys".
 * Does NOT write the namespace prefixes.
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoHerkkyys The TutkimuspyyntoHerkkyys to write.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
static int xmlTextWriterWriteNs0TutkimuspyyntoHerkkyysElement(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyyntoHerkkyys *_tutkimuspyyntoHerkkyys);

/**
 * Writes a TutkimuspyyntoHerkkyys to XML under element name "tutkimuspyyntoHerkkyys".
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoHerkkyys The TutkimuspyyntoHerkkyys to write.
 * @param writeNamespaces Whether to write the namespace prefixes.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
static int xmlTextWriterWriteNs0TutkimuspyyntoHerkkyysElementNS(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyyntoHerkkyys *_tutkimuspyyntoHerkkyys, int writeNamespaces);

/**
 * Frees the children of a TutkimuspyyntoHerkkyys.
 *
 * @param _tutkimuspyyntoHerkkyys The TutkimuspyyntoHerkkyys whose children are to be free.
 */
static void freeNs0TutkimuspyyntoHerkkyysElement(struct CoreWEB_ns0_tutkimuspyyntoHerkkyys *_tutkimuspyyntoHerkkyys);

/**
 * Reads a TutkimuspyyntoHerkkyys from XML. The reader is assumed to be at the start element.
 *
 * @param reader The XML reader.
 * @return The TutkimuspyyntoHerkkyys, or NULL in case of error.
 */
static struct CoreWEB_ns0_tutkimuspyyntoHerkkyys *xmlTextReaderReadNs0TutkimuspyyntoHerkkyysType(xmlTextReaderPtr reader);

/**
 * Writes a TutkimuspyyntoHerkkyys to XML.
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoHerkkyys The TutkimuspyyntoHerkkyys to write.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
static int xmlTextWriterWriteNs0TutkimuspyyntoHerkkyysType(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyyntoHerkkyys *_tutkimuspyyntoHerkkyys);

/**
 * Frees the elements of a TutkimuspyyntoHerkkyys.
 *
 * @param _tutkimuspyyntoHerkkyys The TutkimuspyyntoHerkkyys to free.
 */
static void freeNs0TutkimuspyyntoHerkkyysType(struct CoreWEB_ns0_tutkimuspyyntoHerkkyys *_tutkimuspyyntoHerkkyys);

#endif /* DEF_CoreWEB_ns0_tutkimuspyyntoHerkkyys_H */
#ifndef DEF_CoreWEB_ns0_tutkimuspyyntoMikrobi_H
#define DEF_CoreWEB_ns0_tutkimuspyyntoMikrobi_H

/**
 *  DTO for Lab Examination Microbe
 * 
 *  A class to present TUTKIMUSPYYNTOMIKROBI table in laboratory examination functionality.
 *  Used to carry the data from database to the client side.
 * 
 */
struct CoreWEB_ns0_tutkimuspyyntoMikrobi {


  /**
   * (no documentation provided)
   */
  short rivi;

  /**
   * (no documentation provided)
   */
  xmlChar *mikrobi;

  /**
   * (no documentation provided)
   */
  unsigned short *tutkimustyyppi;

  /**
   * (no documentation provided)
   */
  xmlChar *maara;

  /**
   * (no documentation provided)
   */
  xmlChar *numero;

  /**
   * (no documentation provided)
   */
  xmlChar *kommentti;

  /**
   * (no documentation provided)
   */
  unsigned short poistettu;

  /**
   * (no documentation provided)
   */
  struct tm *muutosaika;

  /**
   * (no documentation provided)
   */
  short muutospaikka;

  /**
   * (no documentation provided)
   */
  struct CoreWEB_ns0_tutkimuspyyntoHerkkyys *herkkyydet;

  /**
   * Size of the herkkyydet array.
   */
  int _sizeof_herkkyydet;
};

/**
 * Reads a TutkimuspyyntoMikrobi element from XML. The element to be read is "tutkimuspyyntoMikrobi", and
 * it is assumed that the reader is pointing to the XML document (not the element).
 *
 * @param reader The XML reader.
 * @return The TutkimuspyyntoMikrobi, or NULL in case of error.
 */
struct CoreWEB_ns0_tutkimuspyyntoMikrobi *xml_read_CoreWEB_ns0_tutkimuspyyntoMikrobi(xmlTextReaderPtr reader);

/**
 * Writes a TutkimuspyyntoMikrobi to XML under element name "tutkimuspyyntoMikrobi".
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoMikrobi The TutkimuspyyntoMikrobi to write.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
int xml_write_CoreWEB_ns0_tutkimuspyyntoMikrobi(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyyntoMikrobi *_tutkimuspyyntoMikrobi);

/**
 * Frees a TutkimuspyyntoMikrobi.
 *
 * @param _tutkimuspyyntoMikrobi The TutkimuspyyntoMikrobi to free.
 */
void free_CoreWEB_ns0_tutkimuspyyntoMikrobi(struct CoreWEB_ns0_tutkimuspyyntoMikrobi *_tutkimuspyyntoMikrobi);

/**
 * Reads a TutkimuspyyntoMikrobi element from XML. The element to be read is "tutkimuspyyntoMikrobi", and
 * it is assumed that the reader is already pointing to the element.
 *
 * @param reader The XML reader.
 * @return The TutkimuspyyntoMikrobi, or NULL in case of error.
 */
struct CoreWEB_ns0_tutkimuspyyntoMikrobi *xmlTextReaderReadNs0TutkimuspyyntoMikrobiElement(xmlTextReaderPtr reader);

/**
 * Writes a TutkimuspyyntoMikrobi to XML under element name "tutkimuspyyntoMikrobi".
 * Does NOT write the namespace prefixes.
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoMikrobi The TutkimuspyyntoMikrobi to write.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
static int xmlTextWriterWriteNs0TutkimuspyyntoMikrobiElement(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyyntoMikrobi *_tutkimuspyyntoMikrobi);

/**
 * Writes a TutkimuspyyntoMikrobi to XML under element name "tutkimuspyyntoMikrobi".
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoMikrobi The TutkimuspyyntoMikrobi to write.
 * @param writeNamespaces Whether to write the namespace prefixes.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
static int xmlTextWriterWriteNs0TutkimuspyyntoMikrobiElementNS(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyyntoMikrobi *_tutkimuspyyntoMikrobi, int writeNamespaces);

/**
 * Frees the children of a TutkimuspyyntoMikrobi.
 *
 * @param _tutkimuspyyntoMikrobi The TutkimuspyyntoMikrobi whose children are to be free.
 */
static void freeNs0TutkimuspyyntoMikrobiElement(struct CoreWEB_ns0_tutkimuspyyntoMikrobi *_tutkimuspyyntoMikrobi);

/**
 * Reads a TutkimuspyyntoMikrobi from XML. The reader is assumed to be at the start element.
 *
 * @param reader The XML reader.
 * @return The TutkimuspyyntoMikrobi, or NULL in case of error.
 */
static struct CoreWEB_ns0_tutkimuspyyntoMikrobi *xmlTextReaderReadNs0TutkimuspyyntoMikrobiType(xmlTextReaderPtr reader);

/**
 * Writes a TutkimuspyyntoMikrobi to XML.
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoMikrobi The TutkimuspyyntoMikrobi to write.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
static int xmlTextWriterWriteNs0TutkimuspyyntoMikrobiType(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyyntoMikrobi *_tutkimuspyyntoMikrobi);

/**
 * Frees the elements of a TutkimuspyyntoMikrobi.
 *
 * @param _tutkimuspyyntoMikrobi The TutkimuspyyntoMikrobi to free.
 */
static void freeNs0TutkimuspyyntoMikrobiType(struct CoreWEB_ns0_tutkimuspyyntoMikrobi *_tutkimuspyyntoMikrobi);

#endif /* DEF_CoreWEB_ns0_tutkimuspyyntoMikrobi_H */
#ifndef DEF_CoreWEB_ns0_tutkimuspyyntoTiedot_H
#define DEF_CoreWEB_ns0_tutkimuspyyntoTiedot_H

/**
 *  DTO for Lab Examination Details
 * 
 *  A class to present TUTKIMUSPYYNTO table in laboratory examination functionality.
 *  Used to carry the data from database to the client side.
 * 
 */
struct CoreWEB_ns0_tutkimuspyyntoTiedot {


  /**
   * Returns the pyynto id
   */
  int pyynto;

  /**
   * Returns the row number
   */
  short rivi;

  /**
   * Returns the Tutkimus name
   */
  xmlChar *tutkimus;

  /**
   * Returns the version
   */
  xmlChar *versio;

  /**
   * Returns the char value for Hajautettu
   */
  unsigned short *hajautettu;

  /**
   * Returns the Hoitojakso
   */
  int *hoitojakso;

  /**
   * Returns the notifications
   */
  xmlChar *huomautuksia;

  /**
   * Returns the possible control date
   */
  struct CoreWEB_ns0_date *kontrolloitava;

  /**
   * Returns the korvausluokka
   */
  unsigned short *korvausluokka;

  /**
   * Returns the county council
   */
  int *kunta;

  /**
   * Returns the Kustannuslinkki
   */
  int *kustannuslinkki;

  /**
   * Return the info about if there is some extra information
   */
  unsigned short *lisatietoja;

  /**
   * Return the Lomakelinkki
   */
  int *lomakelinkki;

  /**
   * Return the payer
   */
  int *maksaja;

  /**
   * Return the info about if there is Mikrobitietoja available
   */
  unsigned short *mikrobitietoja;

  /**
   * Return the time of change
   */
  struct tm *muutosaika;

  /**
   * Return the place of change
   */
  short muutospaikka;

  /**
   * Return the sample
   */
  int *nayte;

  /**
   * Return the info about if there is sample information
   */
  unsigned short *naytetietoja;

  /**
   * Return the result in numeric format
   */
  double *numerotulos;

  /**
   * Return the unit of the result
   */
  xmlChar *numeroyksikko;

  /**
   * Return the Osalinkki
   */
  int *osalinkki;

  /**
   * Return the department
   */
  int *osasto;

  /**
   * Return the time when the lab examination is done
   */
  struct tm *ottoaika;

  /**
   * Return the package
   */
  xmlChar *paketti;

  /**
   * Return the V�est�vastuupiiri
   */
  int *piiri;

  /**
   * Return the info about if the result is removed
   */
  xmlChar *poistettu;

  /**
   * 
   */
  struct tm *pyydetty;

  /**
   * Return the verbal result
   */
  xmlChar *sanallinenvastaus;

  /**
   * Return the location (department)
   */
  xmlChar *sijaintiosasto;

  /**
   * Return the location (place)
   */
  xmlChar *sijaintipaikka;

  /**
   * Return the internal payer
   */
  xmlChar *sisainenMaksaja;

  /**
   * Return the Suoritelinkki
   */
  int *suoritelinkki;

  /**
   * Return the time when lab examination is done
   */
  struct tm *tehty;

  /**
   * Return the place where lab examination is done
   */
  int *tekopaikka;

  /**
   * Return the result in textual format
   */
  xmlChar *tekstitulos;

  /**
   * Return the SMS
   */
  int *tekstiviesti;

  /**
   * Return the state
   */
  unsigned short tila;

  /**
   * Return the orderer
   */
  int tilaaja;

  /**
   * Return the name of the orderer
   */
  xmlChar *tilaajaNimi;

  /**
   * Return the unit of the orderer
   */
  int *tilaajayksikko;

  /**
   * Return the identifier of the order
   */
  xmlChar *tilaustunnus;

  /**
   * Return the date when the repetition ends
   */
  struct CoreWEB_ns0_date *toistoloppuu;

  /**
   * Return the interval of the repetition
   */
  int *toistovali;

  /**
   * Return the interpretation
   */
  xmlChar *tulkinta;

  /**
   * Return the producer
   */
  int *tuottaja;

  /**
   * Return the employer
   */
  int *tyonantaja;

  /**
   * Return the info about if there is Vastaustietoja available
   */
  unsigned short *vastaustietoja;

  /**
   * Return the Viitearvot, which contains min and max values for the
   * result. Result is normal, if the value is between the min and max values.
   */
  xmlChar *viitearvot;

  /**
   * Return the recorder of the result
   */
  int *kirjaaja;

  /**
   * (no documentation provided)
   */
  xmlChar *tilaKoodi;

  /**
   * (no documentation provided)
   */
  int *poikkeava;

  /**
   * (no documentation provided)
   */
  struct CoreWEB_ns0_tutkimuspyyntoMikrobi *mikrobit;

  /**
   * Size of the mikrobit array.
   */
  int _sizeof_mikrobit;
};

/**
 * Reads a TutkimuspyyntoTiedot element from XML. The element to be read is "tutkimuspyyntoTiedot", and
 * it is assumed that the reader is pointing to the XML document (not the element).
 *
 * @param reader The XML reader.
 * @return The TutkimuspyyntoTiedot, or NULL in case of error.
 */
struct CoreWEB_ns0_tutkimuspyyntoTiedot *xml_read_CoreWEB_ns0_tutkimuspyyntoTiedot(xmlTextReaderPtr reader);

/**
 * Writes a TutkimuspyyntoTiedot to XML under element name "tutkimuspyyntoTiedot".
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoTiedot The TutkimuspyyntoTiedot to write.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
int xml_write_CoreWEB_ns0_tutkimuspyyntoTiedot(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyyntoTiedot *_tutkimuspyyntoTiedot);

/**
 * Frees a TutkimuspyyntoTiedot.
 *
 * @param _tutkimuspyyntoTiedot The TutkimuspyyntoTiedot to free.
 */
void free_CoreWEB_ns0_tutkimuspyyntoTiedot(struct CoreWEB_ns0_tutkimuspyyntoTiedot *_tutkimuspyyntoTiedot);

/**
 * Reads a TutkimuspyyntoTiedot element from XML. The element to be read is "tutkimuspyyntoTiedot", and
 * it is assumed that the reader is already pointing to the element.
 *
 * @param reader The XML reader.
 * @return The TutkimuspyyntoTiedot, or NULL in case of error.
 */
struct CoreWEB_ns0_tutkimuspyyntoTiedot *xmlTextReaderReadNs0TutkimuspyyntoTiedotElement(xmlTextReaderPtr reader);

/**
 * Writes a TutkimuspyyntoTiedot to XML under element name "tutkimuspyyntoTiedot".
 * Does NOT write the namespace prefixes.
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoTiedot The TutkimuspyyntoTiedot to write.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
static int xmlTextWriterWriteNs0TutkimuspyyntoTiedotElement(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyyntoTiedot *_tutkimuspyyntoTiedot);

/**
 * Writes a TutkimuspyyntoTiedot to XML under element name "tutkimuspyyntoTiedot".
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoTiedot The TutkimuspyyntoTiedot to write.
 * @param writeNamespaces Whether to write the namespace prefixes.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
static int xmlTextWriterWriteNs0TutkimuspyyntoTiedotElementNS(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyyntoTiedot *_tutkimuspyyntoTiedot, int writeNamespaces);

/**
 * Frees the children of a TutkimuspyyntoTiedot.
 *
 * @param _tutkimuspyyntoTiedot The TutkimuspyyntoTiedot whose children are to be free.
 */
static void freeNs0TutkimuspyyntoTiedotElement(struct CoreWEB_ns0_tutkimuspyyntoTiedot *_tutkimuspyyntoTiedot);

/**
 * Reads a TutkimuspyyntoTiedot from XML. The reader is assumed to be at the start element.
 *
 * @param reader The XML reader.
 * @return The TutkimuspyyntoTiedot, or NULL in case of error.
 */
static struct CoreWEB_ns0_tutkimuspyyntoTiedot *xmlTextReaderReadNs0TutkimuspyyntoTiedotType(xmlTextReaderPtr reader);

/**
 * Writes a TutkimuspyyntoTiedot to XML.
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoTiedot The TutkimuspyyntoTiedot to write.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
static int xmlTextWriterWriteNs0TutkimuspyyntoTiedotType(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyyntoTiedot *_tutkimuspyyntoTiedot);

/**
 * Frees the elements of a TutkimuspyyntoTiedot.
 *
 * @param _tutkimuspyyntoTiedot The TutkimuspyyntoTiedot to free.
 */
static void freeNs0TutkimuspyyntoTiedotType(struct CoreWEB_ns0_tutkimuspyyntoTiedot *_tutkimuspyyntoTiedot);

#endif /* DEF_CoreWEB_ns0_tutkimuspyyntoTiedot_H */
#ifndef DEF_CoreWEB_ns0_hoito_H
#define DEF_CoreWEB_ns0_hoito_H

/**
 *  DTO for Hoito
 * 
 *  A class to present HOITO table in hoito-ohjeet ja -m��r�ykset functionality.
 *  Used to carry the data from database to the client side.
 * 
 */
struct CoreWEB_ns0_hoito {


  /**
   * Returns the alkaa date
   */
  struct CoreWEB_ns0_date *alkaa;

  /**
   * Returns the loppuu date
   */
  struct CoreWEB_ns0_date *loppuu;

  /**
   * Returns the maaraaja id
   */
  int *maaraaja;

  /**
   * Returns the tekija id
   */
  int *tekija;

  /**
   * Returns the header (otsikko)
   */
  xmlChar *otsikko;

  /**
   * Returns the constant string (vakio)
   */
  xmlChar *vakio;

  /**
   * Returns the free string (vapaa)
   */
  xmlChar *vapaa;

  /**
   * Returns the notifications (huomautuksia)
   */
  xmlChar *huomautuksia;

  /**
   * Returns the times as a string
   */
  xmlChar *kellonajat;

  /**
   * Returns the recorder (kirjaaja)
   */
  int *kirjaaja;

  /**
   * Returns the ender (lopettaja)
   */
  int *lopettaja;

  /**
   * Returns the time of ending (lopetettu)
   */
  struct tm *lopetettu;

  /**
   * 
   */
  unsigned short kerta;

  /**
   * Returns the time when Hoito is done
   */
  struct tm *tehty;

  /**
   * 
   */
  int lomake;

  /**
   * Returns the row number (rivi)
   */
  int rivi;

  /**
   * Returns the time of change
   */
  struct tm *muutosaika;

  /**
   * (no documentation provided)
   */
  xmlChar *maaraajaNimi;

  /**
   * (no documentation provided)
   */
  xmlChar *kirjaajaNimi;

  /**
   * (no documentation provided)
   */
  xmlChar *tekijaNimi;

  /**
   * (no documentation provided)
   */
  xmlChar *lopettajaNimi;

  /**
   * (no documentation provided)
   */
  xmlChar *lomakeNimi;
};

/**
 * Reads a Hoito element from XML. The element to be read is "hoito", and
 * it is assumed that the reader is pointing to the XML document (not the element).
 *
 * @param reader The XML reader.
 * @return The Hoito, or NULL in case of error.
 */
struct CoreWEB_ns0_hoito *xml_read_CoreWEB_ns0_hoito(xmlTextReaderPtr reader);

/**
 * Writes a Hoito to XML under element name "hoito".
 *
 * @param writer The XML writer.
 * @param _hoito The Hoito to write.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
int xml_write_CoreWEB_ns0_hoito(xmlTextWriterPtr writer, struct CoreWEB_ns0_hoito *_hoito);

/**
 * Frees a Hoito.
 *
 * @param _hoito The Hoito to free.
 */
void free_CoreWEB_ns0_hoito(struct CoreWEB_ns0_hoito *_hoito);

/**
 * Reads a Hoito element from XML. The element to be read is "hoito", and
 * it is assumed that the reader is already pointing to the element.
 *
 * @param reader The XML reader.
 * @return The Hoito, or NULL in case of error.
 */
struct CoreWEB_ns0_hoito *xmlTextReaderReadNs0HoitoElement(xmlTextReaderPtr reader);

/**
 * Writes a Hoito to XML under element name "hoito".
 * Does NOT write the namespace prefixes.
 *
 * @param writer The XML writer.
 * @param _hoito The Hoito to write.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
static int xmlTextWriterWriteNs0HoitoElement(xmlTextWriterPtr writer, struct CoreWEB_ns0_hoito *_hoito);

/**
 * Writes a Hoito to XML under element name "hoito".
 *
 * @param writer The XML writer.
 * @param _hoito The Hoito to write.
 * @param writeNamespaces Whether to write the namespace prefixes.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
static int xmlTextWriterWriteNs0HoitoElementNS(xmlTextWriterPtr writer, struct CoreWEB_ns0_hoito *_hoito, int writeNamespaces);

/**
 * Frees the children of a Hoito.
 *
 * @param _hoito The Hoito whose children are to be free.
 */
static void freeNs0HoitoElement(struct CoreWEB_ns0_hoito *_hoito);

/**
 * Reads a Hoito from XML. The reader is assumed to be at the start element.
 *
 * @param reader The XML reader.
 * @return The Hoito, or NULL in case of error.
 */
static struct CoreWEB_ns0_hoito *xmlTextReaderReadNs0HoitoType(xmlTextReaderPtr reader);

/**
 * Writes a Hoito to XML.
 *
 * @param writer The XML writer.
 * @param _hoito The Hoito to write.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
static int xmlTextWriterWriteNs0HoitoType(xmlTextWriterPtr writer, struct CoreWEB_ns0_hoito *_hoito);

/**
 * Frees the elements of a Hoito.
 *
 * @param _hoito The Hoito to free.
 */
static void freeNs0HoitoType(struct CoreWEB_ns0_hoito *_hoito);

#endif /* DEF_CoreWEB_ns0_hoito_H */
#ifndef DEF_CoreWEB_ns0_date_H
#define DEF_CoreWEB_ns0_date_H

/**
 * (no documentation provided)
 */
struct CoreWEB_ns0_date {

};

/**
 * Reads a Date from XML. The reader is assumed to be at the start element.
 *
 * @param reader The XML reader.
 * @return The Date, or NULL in case of error.
 */
static struct CoreWEB_ns0_date *xmlTextReaderReadNs0DateType(xmlTextReaderPtr reader);

/**
 * Writes a Date to XML.
 *
 * @param writer The XML writer.
 * @param _date The Date to write.
 * @return The bytes written (may be 0 in case of buffering) or -1 in case of error.
 */
static int xmlTextWriterWriteNs0DateType(xmlTextWriterPtr writer, struct CoreWEB_ns0_date *_date);

/**
 * Frees the elements of a Date.
 *
 * @param _date The Date to free.
 */
static void freeNs0DateType(struct CoreWEB_ns0_date *_date);

#endif /* DEF_CoreWEB_ns0_date_H */
#ifndef DEF_CoreWEB_ns0_laakitysAnto_M
#define DEF_CoreWEB_ns0_laakitysAnto_M

/**
 * Reads a LaakitysAnto element from XML. The element to be read is "laakitysAnto", and
 * it is assumed that the reader is pointing to the XML document (not the element).
 *
 * @param reader The XML reader.
 * @return The LaakitysAnto, or NULL in case of error.
 */
struct CoreWEB_ns0_laakitysAnto *xml_read_CoreWEB_ns0_laakitysAnto(xmlTextReaderPtr reader) {
  int status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
  return xmlTextReaderReadNs0LaakitysAntoElement(reader);
}

/**
 * Writes a LaakitysAnto to XML under element name "laakitysAnto".
 *
 * @param writer The XML writer.
 * @param _laakitysAnto The LaakitysAnto to write.
 * @return 1 if successful, 0 otherwise.
 */
int xml_write_CoreWEB_ns0_laakitysAnto(xmlTextWriterPtr writer, struct CoreWEB_ns0_laakitysAnto *_laakitysAnto) {
  return xmlTextWriterWriteNs0LaakitysAntoElementNS(writer, _laakitysAnto, 1);
}

/**
 * Frees a LaakitysAnto.
 *
 * @param _laakitysAnto The LaakitysAnto to free.
 */
void free_CoreWEB_ns0_laakitysAnto(struct CoreWEB_ns0_laakitysAnto *_laakitysAnto) {
  freeNs0LaakitysAntoType(_laakitysAnto);
  free(_laakitysAnto);
}

/**
 * Reads a LaakitysAnto element from XML. The element to be read is "laakitysAnto", and
 * it is assumed that the reader is pointing to that element.
 *
 * @param reader The XML reader.
 * @return The LaakitysAnto, or NULL in case of error.
 */
struct CoreWEB_ns0_laakitysAnto *xmlTextReaderReadNs0LaakitysAntoElement(xmlTextReaderPtr reader) {
  struct CoreWEB_ns0_laakitysAnto *_laakitysAnto = NULL;

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "laakitysAnto", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Attempting to read root element {}laakitysAnto.\n");
#endif
    _laakitysAnto = xmlTextReaderReadNs0LaakitysAntoType(reader);
  }
#if DEBUG_ENUNCIATE
  if (_laakitysAnto == NULL) {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      printf("attempt to read {}laakitysAnto failed. current element: {}%s\n",  xmlTextReaderConstLocalName(reader));
    }
    else {
      printf("attempt to read {}laakitysAnto failed. current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader));
    }
  }
#endif

  return _laakitysAnto;
}

/**
 * Writes a LaakitysAnto to XML under element name "laakitysAnto".
 * Does NOT write the namespace prefixes.
 *
 * @param writer The XML writer.
 * @param _laakitysAnto The LaakitysAnto to write.
 * @return 1 if successful, 0 otherwise.
 */
static int xmlTextWriterWriteNs0LaakitysAntoElement(xmlTextWriterPtr writer, struct CoreWEB_ns0_laakitysAnto *_laakitysAnto) {
  return xmlTextWriterWriteNs0LaakitysAntoElementNS(writer, _laakitysAnto, 0);
}

/**
 * Writes a LaakitysAnto to XML under element name "laakitysAnto".
 *
 * @param writer The XML writer.
 * @param _laakitysAnto The LaakitysAnto to write.
 * @param writeNamespaces Whether to write the namespace prefixes.
 * @return 1 if successful, 0 otherwise.
 */
static int xmlTextWriterWriteNs0LaakitysAntoElementNS(xmlTextWriterPtr writer, struct CoreWEB_ns0_laakitysAnto *_laakitysAnto, int writeNamespaces) {
  int totalBytes = 0;
  int status;

  status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakitysAnto", NULL);
  if (status < 0) {
#if DEBUG_ENUNCIATE
    printf("unable to write start element {}laakitysAnto. status: %i\n", status);
#endif
    return status;
  }
  totalBytes += status;

#if DEBUG_ENUNCIATE > 1
  printf("writing type {}laakitysAnto for root element {}laakitysAnto...\n");
#endif
  status = xmlTextWriterWriteNs0LaakitysAntoType(writer, _laakitysAnto);
  if (status < 0) {
#if DEBUG_ENUNCIATE
    printf("unable to write type for start element {}laakitysAnto. status: %i\n", status);
#endif
    return status;
  }
  totalBytes += status;

  status = xmlTextWriterEndElement(writer);
  if (status < 0) {
#if DEBUG_ENUNCIATE
    printf("unable to end element {}laakitysAnto. status: %i\n", status);
#endif
    return status;
  }
  totalBytes += status;

  return totalBytes;
}

/**
 * Frees the children of a LaakitysAnto.
 *
 * @param _laakitysAnto The LaakitysAnto whose children are to be free.
 */
static void freeNs0LaakitysAntoElement(struct CoreWEB_ns0_laakitysAnto *_laakitysAnto) {
  freeNs0LaakitysAntoType(_laakitysAnto);
}

/**
 * Reads a LaakitysAnto from XML. The reader is assumed to be at the start element.
 *
 * @return the LaakitysAnto, or NULL in case of error.
 */
static struct CoreWEB_ns0_laakitysAnto *xmlTextReaderReadNs0LaakitysAntoType(xmlTextReaderPtr reader) {
  int status, depth;
  void *_child_accessor;
  struct CoreWEB_ns0_laakitysAnto *_laakitysAnto = calloc(1, sizeof(struct CoreWEB_ns0_laakitysAnto));



  if (xmlTextReaderIsEmptyElement(reader) == 0) {
    depth = xmlTextReaderDepth(reader);//track the depth.
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);

    while (xmlTextReaderDepth(reader) > depth) {
      if (status < 1) {
        //panic: XML read error.
#if DEBUG_ENUNCIATE
        printf("Failure to advance to next child element.\n");
#endif
        freeNs0LaakitysAntoType(_laakitysAnto);
        free(_laakitysAnto);
        return NULL;
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "antaja", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}antaja of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}antaja of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0LaakitysAntoType(_laakitysAnto);
          free(_laakitysAnto);
          return NULL;
        }

        _laakitysAnto->antaja = *((int*)_child_accessor);
        free(_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "huomautuksia", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}huomautuksia of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}huomautuksia of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0LaakitysAntoType(_laakitysAnto);
          free(_laakitysAnto);
          return NULL;
        }

        _laakitysAnto->huomautuksia = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "kirjaaja", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}kirjaaja of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}kirjaaja of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0LaakitysAntoType(_laakitysAnto);
          free(_laakitysAnto);
          return NULL;
        }

        _laakitysAnto->kirjaaja = *((int*)_child_accessor);
        free(_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "laake", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}laake of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}laake of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0LaakitysAntoType(_laakitysAnto);
          free(_laakitysAnto);
          return NULL;
        }

        _laakitysAnto->laake = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "maara", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}maara of type {http://www.w3.org/2001/XMLSchema}float.\n");
#endif
        _child_accessor = xmlTextReaderReadXsFloatType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}maara of type {http://www.w3.org/2001/XMLSchema}float.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0LaakitysAntoType(_laakitysAnto);
          free(_laakitysAnto);
          return NULL;
        }

        _laakitysAnto->maara = *((float*)_child_accessor);
        free(_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "omistaja", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}omistaja of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}omistaja of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0LaakitysAntoType(_laakitysAnto);
          free(_laakitysAnto);
          return NULL;
        }

        _laakitysAnto->omistaja = *((int*)_child_accessor);
        free(_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "osa", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}osa of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}osa of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0LaakitysAntoType(_laakitysAnto);
          free(_laakitysAnto);
          return NULL;
        }

        _laakitysAnto->osa = *((int*)_child_accessor);
        free(_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "poistettu", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}poistettu of type {http://www.w3.org/2001/XMLSchema}unsignedShort.\n");
#endif
        _child_accessor = xmlTextReaderReadXsUnsignedShortType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}poistettu of type {http://www.w3.org/2001/XMLSchema}unsignedShort.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0LaakitysAntoType(_laakitysAnto);
          free(_laakitysAnto);
          return NULL;
        }

        _laakitysAnto->poistettu = *((unsigned short*)_child_accessor);
        free(_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "suunniteltuAika", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}suunniteltuAika of type {http://www.w3.org/2001/XMLSchema}dateTime.\n");
#endif
        _child_accessor = xmlTextReaderReadXsDateTimeType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}suunniteltuAika of type {http://www.w3.org/2001/XMLSchema}dateTime.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0LaakitysAntoType(_laakitysAnto);
          free(_laakitysAnto);
          return NULL;
        }

        _laakitysAnto->suunniteltuAika = ((struct tm*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "toteutunutAika", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}toteutunutAika of type {http://www.w3.org/2001/XMLSchema}dateTime.\n");
#endif
        _child_accessor = xmlTextReaderReadXsDateTimeType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}toteutunutAika of type {http://www.w3.org/2001/XMLSchema}dateTime.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0LaakitysAntoType(_laakitysAnto);
          free(_laakitysAnto);
          return NULL;
        }

        _laakitysAnto->toteutunutAika = ((struct tm*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "tyyppi", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}tyyppi of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}tyyppi of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0LaakitysAntoType(_laakitysAnto);
          free(_laakitysAnto);
          return NULL;
        }

        _laakitysAnto->tyyppi = *((int*)_child_accessor);
        free(_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "yksikko", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}yksikko of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}yksikko of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0LaakitysAntoType(_laakitysAnto);
          free(_laakitysAnto);
          return NULL;
        }

        _laakitysAnto->yksikko = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "kirjaajaName", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}kirjaajaName of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}kirjaajaName of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0LaakitysAntoType(_laakitysAnto);
          free(_laakitysAnto);
          return NULL;
        }

        _laakitysAnto->kirjaajaName = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "antajaName", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}antajaName of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}antajaName of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0LaakitysAntoType(_laakitysAnto);
          free(_laakitysAnto);
          return NULL;
        }

        _laakitysAnto->antajaName = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "annettavaMaara", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}annettavaMaara of type {http://www.w3.org/2001/XMLSchema}decimal.\n");
#endif
        _child_accessor = xmlTextReaderReadXsDecimalType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}annettavaMaara of type {http://www.w3.org/2001/XMLSchema}decimal.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0LaakitysAntoType(_laakitysAnto);
          free(_laakitysAnto);
          return NULL;
        }

        _laakitysAnto->annettavaMaara = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "annettavaYksikko", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}annettavaYksikko of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}annettavaYksikko of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0LaakitysAntoType(_laakitysAnto);
          free(_laakitysAnto);
          return NULL;
        }

        _laakitysAnto->annettavaYksikko = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "annettavaMaksimi", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}annettavaMaksimi of type {http://www.w3.org/2001/XMLSchema}decimal.\n");
#endif
        _child_accessor = xmlTextReaderReadXsDecimalType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}annettavaMaksimi of type {http://www.w3.org/2001/XMLSchema}decimal.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0LaakitysAntoType(_laakitysAnto);
          free(_laakitysAnto);
          return NULL;
        }

        _laakitysAnto->annettavaMaksimi = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "toteutunutAikaOriginal", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}toteutunutAikaOriginal of type {http://www.w3.org/2001/XMLSchema}dateTime.\n");
#endif
        _child_accessor = xmlTextReaderReadXsDateTimeType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}toteutunutAikaOriginal of type {http://www.w3.org/2001/XMLSchema}dateTime.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0LaakitysAntoType(_laakitysAnto);
          free(_laakitysAnto);
          return NULL;
        }

        _laakitysAnto->toteutunutAikaOriginal = ((struct tm*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else {
#if DEBUG_ENUNCIATE > 1
        if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
          printf("unknown child element {}%s for type {}laakitysAnto.  Skipping...\n",  xmlTextReaderConstLocalName(reader));
        }
        else {
          printf("unknown child element {%s}%s for type {}laakitysAnto. Skipping...\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader));
        }
#endif
        status = xmlTextReaderSkipElement(reader);
      }
    }
  }

  return _laakitysAnto;
}

/**
 * Writes a LaakitysAnto to XML.
 *
 * @param writer The XML writer.
 * @param _laakitysAnto The LaakitysAnto to write.
 * @return The total bytes written, or -1 on error;
 */
static int xmlTextWriterWriteNs0LaakitysAntoType(xmlTextWriterPtr writer, struct CoreWEB_ns0_laakitysAnto *_laakitysAnto) {
  int status, totalBytes = 0, i;
  xmlChar *binaryData;
  if (1) { //always write the primitive element.
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "antaja", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}antaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}antaja...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, &(_laakitysAnto->antaja));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}antaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}antaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_laakitysAnto->huomautuksia != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "huomautuksia", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}huomautuksia. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}huomautuksia...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_laakitysAnto->huomautuksia));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}huomautuksia. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}huomautuksia. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (1) { //always write the primitive element.
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kirjaaja", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}kirjaaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}kirjaaja...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, &(_laakitysAnto->kirjaaja));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}kirjaaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}kirjaaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_laakitysAnto->laake != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laake", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}laake. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}laake...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_laakitysAnto->laake));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}laake. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}laake. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (1) { //always write the primitive element.
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "maara", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}maara. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}float for element {}maara...\n");
#endif
    status = xmlTextWriterWriteXsFloatType(writer, &(_laakitysAnto->maara));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}float for element {}maara. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}maara. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (1) { //always write the primitive element.
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "omistaja", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}omistaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}omistaja...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, &(_laakitysAnto->omistaja));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}omistaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}omistaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (1) { //always write the primitive element.
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "osa", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}osa. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}osa...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, &(_laakitysAnto->osa));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}osa. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}osa. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (1) { //always write the primitive element.
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "poistettu", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}poistettu. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}unsignedShort for element {}poistettu...\n");
#endif
    status = xmlTextWriterWriteXsUnsignedShortType(writer, &(_laakitysAnto->poistettu));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}unsignedShort for element {}poistettu. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}poistettu. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_laakitysAnto->suunniteltuAika != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "suunniteltuAika", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}suunniteltuAika. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}dateTime for element {}suunniteltuAika...\n");
#endif
    status = xmlTextWriterWriteXsDateTimeType(writer, (_laakitysAnto->suunniteltuAika));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}dateTime for element {}suunniteltuAika. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}suunniteltuAika. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_laakitysAnto->toteutunutAika != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "toteutunutAika", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}toteutunutAika. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}dateTime for element {}toteutunutAika...\n");
#endif
    status = xmlTextWriterWriteXsDateTimeType(writer, (_laakitysAnto->toteutunutAika));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}dateTime for element {}toteutunutAika. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}toteutunutAika. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (1) { //always write the primitive element.
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tyyppi", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}tyyppi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}tyyppi...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, &(_laakitysAnto->tyyppi));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}tyyppi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}tyyppi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_laakitysAnto->yksikko != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "yksikko", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}yksikko. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}yksikko...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_laakitysAnto->yksikko));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}yksikko. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}yksikko. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_laakitysAnto->kirjaajaName != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kirjaajaName", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}kirjaajaName. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}kirjaajaName...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_laakitysAnto->kirjaajaName));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}kirjaajaName. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}kirjaajaName. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_laakitysAnto->antajaName != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "antajaName", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}antajaName. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}antajaName...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_laakitysAnto->antajaName));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}antajaName. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}antajaName. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_laakitysAnto->annettavaMaara != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "annettavaMaara", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}annettavaMaara. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}decimal for element {}annettavaMaara...\n");
#endif
    status = xmlTextWriterWriteXsDecimalType(writer, (_laakitysAnto->annettavaMaara));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}decimal for element {}annettavaMaara. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}annettavaMaara. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_laakitysAnto->annettavaYksikko != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "annettavaYksikko", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}annettavaYksikko. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}annettavaYksikko...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_laakitysAnto->annettavaYksikko));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}annettavaYksikko. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}annettavaYksikko. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_laakitysAnto->annettavaMaksimi != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "annettavaMaksimi", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}annettavaMaksimi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}decimal for element {}annettavaMaksimi...\n");
#endif
    status = xmlTextWriterWriteXsDecimalType(writer, (_laakitysAnto->annettavaMaksimi));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}decimal for element {}annettavaMaksimi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}annettavaMaksimi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_laakitysAnto->toteutunutAikaOriginal != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "toteutunutAikaOriginal", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}toteutunutAikaOriginal. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}dateTime for element {}toteutunutAikaOriginal...\n");
#endif
    status = xmlTextWriterWriteXsDateTimeType(writer, (_laakitysAnto->toteutunutAikaOriginal));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}dateTime for element {}toteutunutAikaOriginal. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}toteutunutAikaOriginal. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }

  return totalBytes;
}

/**
 * Frees the elements of a LaakitysAnto.
 *
 * @param _laakitysAnto The LaakitysAnto to free.
 */
static void freeNs0LaakitysAntoType(struct CoreWEB_ns0_laakitysAnto *_laakitysAnto) {
  int i;
  if (_laakitysAnto->huomautuksia != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor huomautuksia of type CoreWEB_ns0_laakitysAnto...\n");
#endif
    freeXsStringType(_laakitysAnto->huomautuksia);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor huomautuksia of type CoreWEB_ns0_laakitysAnto...\n");
#endif
    free(_laakitysAnto->huomautuksia);
  }
  if (_laakitysAnto->laake != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor laake of type CoreWEB_ns0_laakitysAnto...\n");
#endif
    freeXsStringType(_laakitysAnto->laake);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor laake of type CoreWEB_ns0_laakitysAnto...\n");
#endif
    free(_laakitysAnto->laake);
  }
  if (_laakitysAnto->suunniteltuAika != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor suunniteltuAika of type CoreWEB_ns0_laakitysAnto...\n");
#endif
    freeXsDateTimeType(_laakitysAnto->suunniteltuAika);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor suunniteltuAika of type CoreWEB_ns0_laakitysAnto...\n");
#endif
    free(_laakitysAnto->suunniteltuAika);
  }
  if (_laakitysAnto->toteutunutAika != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor toteutunutAika of type CoreWEB_ns0_laakitysAnto...\n");
#endif
    freeXsDateTimeType(_laakitysAnto->toteutunutAika);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor toteutunutAika of type CoreWEB_ns0_laakitysAnto...\n");
#endif
    free(_laakitysAnto->toteutunutAika);
  }
  if (_laakitysAnto->yksikko != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor yksikko of type CoreWEB_ns0_laakitysAnto...\n");
#endif
    freeXsStringType(_laakitysAnto->yksikko);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor yksikko of type CoreWEB_ns0_laakitysAnto...\n");
#endif
    free(_laakitysAnto->yksikko);
  }
  if (_laakitysAnto->kirjaajaName != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor kirjaajaName of type CoreWEB_ns0_laakitysAnto...\n");
#endif
    freeXsStringType(_laakitysAnto->kirjaajaName);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor kirjaajaName of type CoreWEB_ns0_laakitysAnto...\n");
#endif
    free(_laakitysAnto->kirjaajaName);
  }
  if (_laakitysAnto->antajaName != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor antajaName of type CoreWEB_ns0_laakitysAnto...\n");
#endif
    freeXsStringType(_laakitysAnto->antajaName);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor antajaName of type CoreWEB_ns0_laakitysAnto...\n");
#endif
    free(_laakitysAnto->antajaName);
  }
  if (_laakitysAnto->annettavaMaara != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor annettavaMaara of type CoreWEB_ns0_laakitysAnto...\n");
#endif
    freeXsDecimalType(_laakitysAnto->annettavaMaara);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor annettavaMaara of type CoreWEB_ns0_laakitysAnto...\n");
#endif
    free(_laakitysAnto->annettavaMaara);
  }
  if (_laakitysAnto->annettavaYksikko != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor annettavaYksikko of type CoreWEB_ns0_laakitysAnto...\n");
#endif
    freeXsStringType(_laakitysAnto->annettavaYksikko);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor annettavaYksikko of type CoreWEB_ns0_laakitysAnto...\n");
#endif
    free(_laakitysAnto->annettavaYksikko);
  }
  if (_laakitysAnto->annettavaMaksimi != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor annettavaMaksimi of type CoreWEB_ns0_laakitysAnto...\n");
#endif
    freeXsDecimalType(_laakitysAnto->annettavaMaksimi);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor annettavaMaksimi of type CoreWEB_ns0_laakitysAnto...\n");
#endif
    free(_laakitysAnto->annettavaMaksimi);
  }
  if (_laakitysAnto->toteutunutAikaOriginal != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor toteutunutAikaOriginal of type CoreWEB_ns0_laakitysAnto...\n");
#endif
    freeXsDateTimeType(_laakitysAnto->toteutunutAikaOriginal);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor toteutunutAikaOriginal of type CoreWEB_ns0_laakitysAnto...\n");
#endif
    free(_laakitysAnto->toteutunutAikaOriginal);
  }
}
#endif /* DEF_CoreWEB_ns0_laakitysAnto_M */
#ifndef DEF_CoreWEB_ns0_tutkimuspyynto_M
#define DEF_CoreWEB_ns0_tutkimuspyynto_M

/**
 * Reads a Tutkimuspyynto element from XML. The element to be read is "tutkimuspyynto", and
 * it is assumed that the reader is pointing to the XML document (not the element).
 *
 * @param reader The XML reader.
 * @return The Tutkimuspyynto, or NULL in case of error.
 */
struct CoreWEB_ns0_tutkimuspyynto *xml_read_CoreWEB_ns0_tutkimuspyynto(xmlTextReaderPtr reader) {
  int status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
  return xmlTextReaderReadNs0TutkimuspyyntoElement(reader);
}

/**
 * Writes a Tutkimuspyynto to XML under element name "tutkimuspyynto".
 *
 * @param writer The XML writer.
 * @param _tutkimuspyynto The Tutkimuspyynto to write.
 * @return 1 if successful, 0 otherwise.
 */
int xml_write_CoreWEB_ns0_tutkimuspyynto(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyynto *_tutkimuspyynto) {
  return xmlTextWriterWriteNs0TutkimuspyyntoElementNS(writer, _tutkimuspyynto, 1);
}

/**
 * Frees a Tutkimuspyynto.
 *
 * @param _tutkimuspyynto The Tutkimuspyynto to free.
 */
void free_CoreWEB_ns0_tutkimuspyynto(struct CoreWEB_ns0_tutkimuspyynto *_tutkimuspyynto) {
  freeNs0TutkimuspyyntoType(_tutkimuspyynto);
  free(_tutkimuspyynto);
}

/**
 * Reads a Tutkimuspyynto element from XML. The element to be read is "tutkimuspyynto", and
 * it is assumed that the reader is pointing to that element.
 *
 * @param reader The XML reader.
 * @return The Tutkimuspyynto, or NULL in case of error.
 */
struct CoreWEB_ns0_tutkimuspyynto *xmlTextReaderReadNs0TutkimuspyyntoElement(xmlTextReaderPtr reader) {
  struct CoreWEB_ns0_tutkimuspyynto *_tutkimuspyynto = NULL;

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tutkimuspyynto", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Attempting to read root element {}tutkimuspyynto.\n");
#endif
    _tutkimuspyynto = xmlTextReaderReadNs0TutkimuspyyntoType(reader);
  }
#if DEBUG_ENUNCIATE
  if (_tutkimuspyynto == NULL) {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      printf("attempt to read {}tutkimuspyynto failed. current element: {}%s\n",  xmlTextReaderConstLocalName(reader));
    }
    else {
      printf("attempt to read {}tutkimuspyynto failed. current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader));
    }
  }
#endif

  return _tutkimuspyynto;
}

/**
 * Writes a Tutkimuspyynto to XML under element name "tutkimuspyynto".
 * Does NOT write the namespace prefixes.
 *
 * @param writer The XML writer.
 * @param _tutkimuspyynto The Tutkimuspyynto to write.
 * @return 1 if successful, 0 otherwise.
 */
static int xmlTextWriterWriteNs0TutkimuspyyntoElement(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyynto *_tutkimuspyynto) {
  return xmlTextWriterWriteNs0TutkimuspyyntoElementNS(writer, _tutkimuspyynto, 0);
}

/**
 * Writes a Tutkimuspyynto to XML under element name "tutkimuspyynto".
 *
 * @param writer The XML writer.
 * @param _tutkimuspyynto The Tutkimuspyynto to write.
 * @param writeNamespaces Whether to write the namespace prefixes.
 * @return 1 if successful, 0 otherwise.
 */
static int xmlTextWriterWriteNs0TutkimuspyyntoElementNS(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyynto *_tutkimuspyynto, int writeNamespaces) {
  int totalBytes = 0;
  int status;

  status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tutkimuspyynto", NULL);
  if (status < 0) {
#if DEBUG_ENUNCIATE
    printf("unable to write start element {}tutkimuspyynto. status: %i\n", status);
#endif
    return status;
  }
  totalBytes += status;

#if DEBUG_ENUNCIATE > 1
  printf("writing type {}tutkimuspyynto for root element {}tutkimuspyynto...\n");
#endif
  status = xmlTextWriterWriteNs0TutkimuspyyntoType(writer, _tutkimuspyynto);
  if (status < 0) {
#if DEBUG_ENUNCIATE
    printf("unable to write type for start element {}tutkimuspyynto. status: %i\n", status);
#endif
    return status;
  }
  totalBytes += status;

  status = xmlTextWriterEndElement(writer);
  if (status < 0) {
#if DEBUG_ENUNCIATE
    printf("unable to end element {}tutkimuspyynto. status: %i\n", status);
#endif
    return status;
  }
  totalBytes += status;

  return totalBytes;
}

/**
 * Frees the children of a Tutkimuspyynto.
 *
 * @param _tutkimuspyynto The Tutkimuspyynto whose children are to be free.
 */
static void freeNs0TutkimuspyyntoElement(struct CoreWEB_ns0_tutkimuspyynto *_tutkimuspyynto) {
  freeNs0TutkimuspyyntoType(_tutkimuspyynto);
}

/**
 * Reads a Tutkimuspyynto from XML. The reader is assumed to be at the start element.
 *
 * @return the Tutkimuspyynto, or NULL in case of error.
 */
static struct CoreWEB_ns0_tutkimuspyynto *xmlTextReaderReadNs0TutkimuspyyntoType(xmlTextReaderPtr reader) {
  int status, depth;
  void *_child_accessor;
  struct CoreWEB_ns0_tutkimuspyynto *_tutkimuspyynto = calloc(1, sizeof(struct CoreWEB_ns0_tutkimuspyynto));



  if (xmlTextReaderIsEmptyElement(reader) == 0) {
    depth = xmlTextReaderDepth(reader);//track the depth.
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);

    while (xmlTextReaderDepth(reader) > depth) {
      if (status < 1) {
        //panic: XML read error.
#if DEBUG_ENUNCIATE
        printf("Failure to advance to next child element.\n");
#endif
        freeNs0TutkimuspyyntoType(_tutkimuspyynto);
        free(_tutkimuspyynto);
        return NULL;
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "tutkimus", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}tutkimus of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}tutkimus of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoType(_tutkimuspyynto);
          free(_tutkimuspyynto);
          return NULL;
        }

        _tutkimuspyynto->tutkimus = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "tutkimuspyyntoTiedotList", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}tutkimuspyyntoTiedotList of type {}tutkimuspyyntoTiedot.\n");
#endif
        _child_accessor = xmlTextReaderReadNs0TutkimuspyyntoTiedotType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}tutkimuspyyntoTiedotList of type {}tutkimuspyyntoTiedot.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoType(_tutkimuspyynto);
          free(_tutkimuspyynto);
          return NULL;
        }

        _tutkimuspyynto->tutkimuspyyntoTiedotList = realloc(_tutkimuspyynto->tutkimuspyyntoTiedotList, (_tutkimuspyynto->_sizeof_tutkimuspyyntoTiedotList + 1) * sizeof(struct CoreWEB_ns0_tutkimuspyyntoTiedot));
        memcpy(&(_tutkimuspyynto->tutkimuspyyntoTiedotList[_tutkimuspyynto->_sizeof_tutkimuspyyntoTiedotList++]), _child_accessor, sizeof(struct CoreWEB_ns0_tutkimuspyyntoTiedot));
        free(_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "kategoria", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}kategoria of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}kategoria of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoType(_tutkimuspyynto);
          free(_tutkimuspyynto);
          return NULL;
        }

        _tutkimuspyynto->kategoria = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "latestTime", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}latestTime of type {http://www.w3.org/2001/XMLSchema}dateTime.\n");
#endif
        _child_accessor = xmlTextReaderReadXsDateTimeType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}latestTime of type {http://www.w3.org/2001/XMLSchema}dateTime.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoType(_tutkimuspyynto);
          free(_tutkimuspyynto);
          return NULL;
        }

        _tutkimuspyynto->latestTime = ((struct tm*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else {
#if DEBUG_ENUNCIATE > 1
        if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
          printf("unknown child element {}%s for type {}tutkimuspyynto.  Skipping...\n",  xmlTextReaderConstLocalName(reader));
        }
        else {
          printf("unknown child element {%s}%s for type {}tutkimuspyynto. Skipping...\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader));
        }
#endif
        status = xmlTextReaderSkipElement(reader);
      }
    }
  }

  return _tutkimuspyynto;
}

/**
 * Writes a Tutkimuspyynto to XML.
 *
 * @param writer The XML writer.
 * @param _tutkimuspyynto The Tutkimuspyynto to write.
 * @return The total bytes written, or -1 on error;
 */
static int xmlTextWriterWriteNs0TutkimuspyyntoType(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyynto *_tutkimuspyynto) {
  int status, totalBytes = 0, i;
  xmlChar *binaryData;
  if (_tutkimuspyynto->tutkimus != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tutkimus", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}tutkimus. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}tutkimus...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyynto->tutkimus));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}tutkimus. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}tutkimus. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  for (i = 0; i < _tutkimuspyynto->_sizeof_tutkimuspyyntoTiedotList; i++) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tutkimuspyyntoTiedotList", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}tutkimuspyyntoTiedotList. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {}tutkimuspyyntoTiedot for element {}tutkimuspyyntoTiedotList...\n");
#endif
    status = xmlTextWriterWriteNs0TutkimuspyyntoTiedotType(writer, &(_tutkimuspyynto->tutkimuspyyntoTiedotList[i]));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {}tutkimuspyyntoTiedot for element {}tutkimuspyyntoTiedotList. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}tutkimuspyyntoTiedotList. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyynto->kategoria != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kategoria", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}kategoria. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}kategoria...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyynto->kategoria));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}kategoria. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}kategoria. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyynto->latestTime != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "latestTime", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}latestTime. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}dateTime for element {}latestTime...\n");
#endif
    status = xmlTextWriterWriteXsDateTimeType(writer, (_tutkimuspyynto->latestTime));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}dateTime for element {}latestTime. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}latestTime. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }

  return totalBytes;
}

/**
 * Frees the elements of a Tutkimuspyynto.
 *
 * @param _tutkimuspyynto The Tutkimuspyynto to free.
 */
static void freeNs0TutkimuspyyntoType(struct CoreWEB_ns0_tutkimuspyynto *_tutkimuspyynto) {
  int i;
  if (_tutkimuspyynto->tutkimus != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor tutkimus of type CoreWEB_ns0_tutkimuspyynto...\n");
#endif
    freeXsStringType(_tutkimuspyynto->tutkimus);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor tutkimus of type CoreWEB_ns0_tutkimuspyynto...\n");
#endif
    free(_tutkimuspyynto->tutkimus);
  }
  if (_tutkimuspyynto->tutkimuspyyntoTiedotList != NULL) {
    for (i = 0; i < _tutkimuspyynto->_sizeof_tutkimuspyyntoTiedotList; i++) {
#if DEBUG_ENUNCIATE > 1
      printf("Freeing accessor tutkimuspyyntoTiedotList[%i] of type CoreWEB_ns0_tutkimuspyynto...\n", i);
#endif
      freeNs0TutkimuspyyntoTiedotType(&(_tutkimuspyynto->tutkimuspyyntoTiedotList[i]));
    }
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor tutkimuspyyntoTiedotList of type CoreWEB_ns0_tutkimuspyynto...\n");
#endif
    free(_tutkimuspyynto->tutkimuspyyntoTiedotList);
  }
  if (_tutkimuspyynto->kategoria != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor kategoria of type CoreWEB_ns0_tutkimuspyynto...\n");
#endif
    freeXsStringType(_tutkimuspyynto->kategoria);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor kategoria of type CoreWEB_ns0_tutkimuspyynto...\n");
#endif
    free(_tutkimuspyynto->kategoria);
  }
  if (_tutkimuspyynto->latestTime != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor latestTime of type CoreWEB_ns0_tutkimuspyynto...\n");
#endif
    freeXsDateTimeType(_tutkimuspyynto->latestTime);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor latestTime of type CoreWEB_ns0_tutkimuspyynto...\n");
#endif
    free(_tutkimuspyynto->latestTime);
  }
}
#endif /* DEF_CoreWEB_ns0_tutkimuspyynto_M */
#ifndef DEF_CoreWEB_ns0_tutkimuspyyntoHerkkyys_M
#define DEF_CoreWEB_ns0_tutkimuspyyntoHerkkyys_M

/**
 * Reads a TutkimuspyyntoHerkkyys element from XML. The element to be read is "tutkimuspyyntoHerkkyys", and
 * it is assumed that the reader is pointing to the XML document (not the element).
 *
 * @param reader The XML reader.
 * @return The TutkimuspyyntoHerkkyys, or NULL in case of error.
 */
struct CoreWEB_ns0_tutkimuspyyntoHerkkyys *xml_read_CoreWEB_ns0_tutkimuspyyntoHerkkyys(xmlTextReaderPtr reader) {
  int status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
  return xmlTextReaderReadNs0TutkimuspyyntoHerkkyysElement(reader);
}

/**
 * Writes a TutkimuspyyntoHerkkyys to XML under element name "tutkimuspyyntoHerkkyys".
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoHerkkyys The TutkimuspyyntoHerkkyys to write.
 * @return 1 if successful, 0 otherwise.
 */
int xml_write_CoreWEB_ns0_tutkimuspyyntoHerkkyys(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyyntoHerkkyys *_tutkimuspyyntoHerkkyys) {
  return xmlTextWriterWriteNs0TutkimuspyyntoHerkkyysElementNS(writer, _tutkimuspyyntoHerkkyys, 1);
}

/**
 * Frees a TutkimuspyyntoHerkkyys.
 *
 * @param _tutkimuspyyntoHerkkyys The TutkimuspyyntoHerkkyys to free.
 */
void free_CoreWEB_ns0_tutkimuspyyntoHerkkyys(struct CoreWEB_ns0_tutkimuspyyntoHerkkyys *_tutkimuspyyntoHerkkyys) {
  freeNs0TutkimuspyyntoHerkkyysType(_tutkimuspyyntoHerkkyys);
  free(_tutkimuspyyntoHerkkyys);
}

/**
 * Reads a TutkimuspyyntoHerkkyys element from XML. The element to be read is "tutkimuspyyntoHerkkyys", and
 * it is assumed that the reader is pointing to that element.
 *
 * @param reader The XML reader.
 * @return The TutkimuspyyntoHerkkyys, or NULL in case of error.
 */
struct CoreWEB_ns0_tutkimuspyyntoHerkkyys *xmlTextReaderReadNs0TutkimuspyyntoHerkkyysElement(xmlTextReaderPtr reader) {
  struct CoreWEB_ns0_tutkimuspyyntoHerkkyys *_tutkimuspyyntoHerkkyys = NULL;

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tutkimuspyyntoHerkkyys", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Attempting to read root element {}tutkimuspyyntoHerkkyys.\n");
#endif
    _tutkimuspyyntoHerkkyys = xmlTextReaderReadNs0TutkimuspyyntoHerkkyysType(reader);
  }
#if DEBUG_ENUNCIATE
  if (_tutkimuspyyntoHerkkyys == NULL) {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      printf("attempt to read {}tutkimuspyyntoHerkkyys failed. current element: {}%s\n",  xmlTextReaderConstLocalName(reader));
    }
    else {
      printf("attempt to read {}tutkimuspyyntoHerkkyys failed. current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader));
    }
  }
#endif

  return _tutkimuspyyntoHerkkyys;
}

/**
 * Writes a TutkimuspyyntoHerkkyys to XML under element name "tutkimuspyyntoHerkkyys".
 * Does NOT write the namespace prefixes.
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoHerkkyys The TutkimuspyyntoHerkkyys to write.
 * @return 1 if successful, 0 otherwise.
 */
static int xmlTextWriterWriteNs0TutkimuspyyntoHerkkyysElement(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyyntoHerkkyys *_tutkimuspyyntoHerkkyys) {
  return xmlTextWriterWriteNs0TutkimuspyyntoHerkkyysElementNS(writer, _tutkimuspyyntoHerkkyys, 0);
}

/**
 * Writes a TutkimuspyyntoHerkkyys to XML under element name "tutkimuspyyntoHerkkyys".
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoHerkkyys The TutkimuspyyntoHerkkyys to write.
 * @param writeNamespaces Whether to write the namespace prefixes.
 * @return 1 if successful, 0 otherwise.
 */
static int xmlTextWriterWriteNs0TutkimuspyyntoHerkkyysElementNS(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyyntoHerkkyys *_tutkimuspyyntoHerkkyys, int writeNamespaces) {
  int totalBytes = 0;
  int status;

  status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tutkimuspyyntoHerkkyys", NULL);
  if (status < 0) {
#if DEBUG_ENUNCIATE
    printf("unable to write start element {}tutkimuspyyntoHerkkyys. status: %i\n", status);
#endif
    return status;
  }
  totalBytes += status;

#if DEBUG_ENUNCIATE > 1
  printf("writing type {}tutkimuspyyntoHerkkyys for root element {}tutkimuspyyntoHerkkyys...\n");
#endif
  status = xmlTextWriterWriteNs0TutkimuspyyntoHerkkyysType(writer, _tutkimuspyyntoHerkkyys);
  if (status < 0) {
#if DEBUG_ENUNCIATE
    printf("unable to write type for start element {}tutkimuspyyntoHerkkyys. status: %i\n", status);
#endif
    return status;
  }
  totalBytes += status;

  status = xmlTextWriterEndElement(writer);
  if (status < 0) {
#if DEBUG_ENUNCIATE
    printf("unable to end element {}tutkimuspyyntoHerkkyys. status: %i\n", status);
#endif
    return status;
  }
  totalBytes += status;

  return totalBytes;
}

/**
 * Frees the children of a TutkimuspyyntoHerkkyys.
 *
 * @param _tutkimuspyyntoHerkkyys The TutkimuspyyntoHerkkyys whose children are to be free.
 */
static void freeNs0TutkimuspyyntoHerkkyysElement(struct CoreWEB_ns0_tutkimuspyyntoHerkkyys *_tutkimuspyyntoHerkkyys) {
  freeNs0TutkimuspyyntoHerkkyysType(_tutkimuspyyntoHerkkyys);
}

/**
 * Reads a TutkimuspyyntoHerkkyys from XML. The reader is assumed to be at the start element.
 *
 * @return the TutkimuspyyntoHerkkyys, or NULL in case of error.
 */
static struct CoreWEB_ns0_tutkimuspyyntoHerkkyys *xmlTextReaderReadNs0TutkimuspyyntoHerkkyysType(xmlTextReaderPtr reader) {
  int status, depth;
  void *_child_accessor;
  struct CoreWEB_ns0_tutkimuspyyntoHerkkyys *_tutkimuspyyntoHerkkyys = calloc(1, sizeof(struct CoreWEB_ns0_tutkimuspyyntoHerkkyys));



  if (xmlTextReaderIsEmptyElement(reader) == 0) {
    depth = xmlTextReaderDepth(reader);//track the depth.
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);

    while (xmlTextReaderDepth(reader) > depth) {
      if (status < 1) {
        //panic: XML read error.
#if DEBUG_ENUNCIATE
        printf("Failure to advance to next child element.\n");
#endif
        freeNs0TutkimuspyyntoHerkkyysType(_tutkimuspyyntoHerkkyys);
        free(_tutkimuspyyntoHerkkyys);
        return NULL;
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "rivi", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}rivi of type {http://www.w3.org/2001/XMLSchema}short.\n");
#endif
        _child_accessor = xmlTextReaderReadXsShortType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}rivi of type {http://www.w3.org/2001/XMLSchema}short.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoHerkkyysType(_tutkimuspyyntoHerkkyys);
          free(_tutkimuspyyntoHerkkyys);
          return NULL;
        }

        _tutkimuspyyntoHerkkyys->rivi = *((short*)_child_accessor);
        free(_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "antibiootti", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}antibiootti of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}antibiootti of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoHerkkyysType(_tutkimuspyyntoHerkkyys);
          free(_tutkimuspyyntoHerkkyys);
          return NULL;
        }

        _tutkimuspyyntoHerkkyys->antibiootti = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "kiekkoherkkyys", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}kiekkoherkkyys of type {http://www.w3.org/2001/XMLSchema}unsignedShort.\n");
#endif
        _child_accessor = xmlTextReaderReadXsUnsignedShortType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}kiekkoherkkyys of type {http://www.w3.org/2001/XMLSchema}unsignedShort.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoHerkkyysType(_tutkimuspyyntoHerkkyys);
          free(_tutkimuspyyntoHerkkyys);
          return NULL;
        }

        _tutkimuspyyntoHerkkyys->kiekkoherkkyys = ((unsigned short*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "micherkkyys", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}micherkkyys of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}micherkkyys of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoHerkkyysType(_tutkimuspyyntoHerkkyys);
          free(_tutkimuspyyntoHerkkyys);
          return NULL;
        }

        _tutkimuspyyntoHerkkyys->micherkkyys = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "lyhenne", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}lyhenne of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}lyhenne of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoHerkkyysType(_tutkimuspyyntoHerkkyys);
          free(_tutkimuspyyntoHerkkyys);
          return NULL;
        }

        _tutkimuspyyntoHerkkyys->lyhenne = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "numero", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}numero of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}numero of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoHerkkyysType(_tutkimuspyyntoHerkkyys);
          free(_tutkimuspyyntoHerkkyys);
          return NULL;
        }

        _tutkimuspyyntoHerkkyys->numero = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "ryhma", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}ryhma of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}ryhma of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoHerkkyysType(_tutkimuspyyntoHerkkyys);
          free(_tutkimuspyyntoHerkkyys);
          return NULL;
        }

        _tutkimuspyyntoHerkkyys->ryhma = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else {
#if DEBUG_ENUNCIATE > 1
        if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
          printf("unknown child element {}%s for type {}tutkimuspyyntoHerkkyys.  Skipping...\n",  xmlTextReaderConstLocalName(reader));
        }
        else {
          printf("unknown child element {%s}%s for type {}tutkimuspyyntoHerkkyys. Skipping...\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader));
        }
#endif
        status = xmlTextReaderSkipElement(reader);
      }
    }
  }

  return _tutkimuspyyntoHerkkyys;
}

/**
 * Writes a TutkimuspyyntoHerkkyys to XML.
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoHerkkyys The TutkimuspyyntoHerkkyys to write.
 * @return The total bytes written, or -1 on error;
 */
static int xmlTextWriterWriteNs0TutkimuspyyntoHerkkyysType(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyyntoHerkkyys *_tutkimuspyyntoHerkkyys) {
  int status, totalBytes = 0, i;
  xmlChar *binaryData;
  if (1) { //always write the primitive element.
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "rivi", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}rivi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}short for element {}rivi...\n");
#endif
    status = xmlTextWriterWriteXsShortType(writer, &(_tutkimuspyyntoHerkkyys->rivi));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}short for element {}rivi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}rivi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoHerkkyys->antibiootti != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "antibiootti", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}antibiootti. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}antibiootti...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyyntoHerkkyys->antibiootti));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}antibiootti. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}antibiootti. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoHerkkyys->kiekkoherkkyys != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kiekkoherkkyys", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}kiekkoherkkyys. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}unsignedShort for element {}kiekkoherkkyys...\n");
#endif
    status = xmlTextWriterWriteXsUnsignedShortType(writer, (_tutkimuspyyntoHerkkyys->kiekkoherkkyys));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}unsignedShort for element {}kiekkoherkkyys. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}kiekkoherkkyys. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoHerkkyys->micherkkyys != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "micherkkyys", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}micherkkyys. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}micherkkyys...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyyntoHerkkyys->micherkkyys));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}micherkkyys. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}micherkkyys. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoHerkkyys->lyhenne != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "lyhenne", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}lyhenne. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}lyhenne...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyyntoHerkkyys->lyhenne));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}lyhenne. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}lyhenne. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoHerkkyys->numero != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "numero", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}numero. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}numero...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyyntoHerkkyys->numero));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}numero. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}numero. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoHerkkyys->ryhma != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "ryhma", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}ryhma. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}ryhma...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyyntoHerkkyys->ryhma));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}ryhma. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}ryhma. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }

  return totalBytes;
}

/**
 * Frees the elements of a TutkimuspyyntoHerkkyys.
 *
 * @param _tutkimuspyyntoHerkkyys The TutkimuspyyntoHerkkyys to free.
 */
static void freeNs0TutkimuspyyntoHerkkyysType(struct CoreWEB_ns0_tutkimuspyyntoHerkkyys *_tutkimuspyyntoHerkkyys) {
  int i;
  if (_tutkimuspyyntoHerkkyys->antibiootti != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor antibiootti of type CoreWEB_ns0_tutkimuspyyntoHerkkyys...\n");
#endif
    freeXsStringType(_tutkimuspyyntoHerkkyys->antibiootti);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor antibiootti of type CoreWEB_ns0_tutkimuspyyntoHerkkyys...\n");
#endif
    free(_tutkimuspyyntoHerkkyys->antibiootti);
  }
  if (_tutkimuspyyntoHerkkyys->kiekkoherkkyys != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor kiekkoherkkyys of type CoreWEB_ns0_tutkimuspyyntoHerkkyys...\n");
#endif
    freeXsUnsignedShortType(_tutkimuspyyntoHerkkyys->kiekkoherkkyys);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor kiekkoherkkyys of type CoreWEB_ns0_tutkimuspyyntoHerkkyys...\n");
#endif
    free(_tutkimuspyyntoHerkkyys->kiekkoherkkyys);
  }
  if (_tutkimuspyyntoHerkkyys->micherkkyys != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor micherkkyys of type CoreWEB_ns0_tutkimuspyyntoHerkkyys...\n");
#endif
    freeXsStringType(_tutkimuspyyntoHerkkyys->micherkkyys);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor micherkkyys of type CoreWEB_ns0_tutkimuspyyntoHerkkyys...\n");
#endif
    free(_tutkimuspyyntoHerkkyys->micherkkyys);
  }
  if (_tutkimuspyyntoHerkkyys->lyhenne != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor lyhenne of type CoreWEB_ns0_tutkimuspyyntoHerkkyys...\n");
#endif
    freeXsStringType(_tutkimuspyyntoHerkkyys->lyhenne);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor lyhenne of type CoreWEB_ns0_tutkimuspyyntoHerkkyys...\n");
#endif
    free(_tutkimuspyyntoHerkkyys->lyhenne);
  }
  if (_tutkimuspyyntoHerkkyys->numero != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor numero of type CoreWEB_ns0_tutkimuspyyntoHerkkyys...\n");
#endif
    freeXsStringType(_tutkimuspyyntoHerkkyys->numero);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor numero of type CoreWEB_ns0_tutkimuspyyntoHerkkyys...\n");
#endif
    free(_tutkimuspyyntoHerkkyys->numero);
  }
  if (_tutkimuspyyntoHerkkyys->ryhma != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor ryhma of type CoreWEB_ns0_tutkimuspyyntoHerkkyys...\n");
#endif
    freeXsStringType(_tutkimuspyyntoHerkkyys->ryhma);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor ryhma of type CoreWEB_ns0_tutkimuspyyntoHerkkyys...\n");
#endif
    free(_tutkimuspyyntoHerkkyys->ryhma);
  }
}
#endif /* DEF_CoreWEB_ns0_tutkimuspyyntoHerkkyys_M */
#ifndef DEF_CoreWEB_ns0_tutkimuspyyntoMikrobi_M
#define DEF_CoreWEB_ns0_tutkimuspyyntoMikrobi_M

/**
 * Reads a TutkimuspyyntoMikrobi element from XML. The element to be read is "tutkimuspyyntoMikrobi", and
 * it is assumed that the reader is pointing to the XML document (not the element).
 *
 * @param reader The XML reader.
 * @return The TutkimuspyyntoMikrobi, or NULL in case of error.
 */
struct CoreWEB_ns0_tutkimuspyyntoMikrobi *xml_read_CoreWEB_ns0_tutkimuspyyntoMikrobi(xmlTextReaderPtr reader) {
  int status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
  return xmlTextReaderReadNs0TutkimuspyyntoMikrobiElement(reader);
}

/**
 * Writes a TutkimuspyyntoMikrobi to XML under element name "tutkimuspyyntoMikrobi".
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoMikrobi The TutkimuspyyntoMikrobi to write.
 * @return 1 if successful, 0 otherwise.
 */
int xml_write_CoreWEB_ns0_tutkimuspyyntoMikrobi(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyyntoMikrobi *_tutkimuspyyntoMikrobi) {
  return xmlTextWriterWriteNs0TutkimuspyyntoMikrobiElementNS(writer, _tutkimuspyyntoMikrobi, 1);
}

/**
 * Frees a TutkimuspyyntoMikrobi.
 *
 * @param _tutkimuspyyntoMikrobi The TutkimuspyyntoMikrobi to free.
 */
void free_CoreWEB_ns0_tutkimuspyyntoMikrobi(struct CoreWEB_ns0_tutkimuspyyntoMikrobi *_tutkimuspyyntoMikrobi) {
  freeNs0TutkimuspyyntoMikrobiType(_tutkimuspyyntoMikrobi);
  free(_tutkimuspyyntoMikrobi);
}

/**
 * Reads a TutkimuspyyntoMikrobi element from XML. The element to be read is "tutkimuspyyntoMikrobi", and
 * it is assumed that the reader is pointing to that element.
 *
 * @param reader The XML reader.
 * @return The TutkimuspyyntoMikrobi, or NULL in case of error.
 */
struct CoreWEB_ns0_tutkimuspyyntoMikrobi *xmlTextReaderReadNs0TutkimuspyyntoMikrobiElement(xmlTextReaderPtr reader) {
  struct CoreWEB_ns0_tutkimuspyyntoMikrobi *_tutkimuspyyntoMikrobi = NULL;

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tutkimuspyyntoMikrobi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Attempting to read root element {}tutkimuspyyntoMikrobi.\n");
#endif
    _tutkimuspyyntoMikrobi = xmlTextReaderReadNs0TutkimuspyyntoMikrobiType(reader);
  }
#if DEBUG_ENUNCIATE
  if (_tutkimuspyyntoMikrobi == NULL) {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      printf("attempt to read {}tutkimuspyyntoMikrobi failed. current element: {}%s\n",  xmlTextReaderConstLocalName(reader));
    }
    else {
      printf("attempt to read {}tutkimuspyyntoMikrobi failed. current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader));
    }
  }
#endif

  return _tutkimuspyyntoMikrobi;
}

/**
 * Writes a TutkimuspyyntoMikrobi to XML under element name "tutkimuspyyntoMikrobi".
 * Does NOT write the namespace prefixes.
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoMikrobi The TutkimuspyyntoMikrobi to write.
 * @return 1 if successful, 0 otherwise.
 */
static int xmlTextWriterWriteNs0TutkimuspyyntoMikrobiElement(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyyntoMikrobi *_tutkimuspyyntoMikrobi) {
  return xmlTextWriterWriteNs0TutkimuspyyntoMikrobiElementNS(writer, _tutkimuspyyntoMikrobi, 0);
}

/**
 * Writes a TutkimuspyyntoMikrobi to XML under element name "tutkimuspyyntoMikrobi".
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoMikrobi The TutkimuspyyntoMikrobi to write.
 * @param writeNamespaces Whether to write the namespace prefixes.
 * @return 1 if successful, 0 otherwise.
 */
static int xmlTextWriterWriteNs0TutkimuspyyntoMikrobiElementNS(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyyntoMikrobi *_tutkimuspyyntoMikrobi, int writeNamespaces) {
  int totalBytes = 0;
  int status;

  status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tutkimuspyyntoMikrobi", NULL);
  if (status < 0) {
#if DEBUG_ENUNCIATE
    printf("unable to write start element {}tutkimuspyyntoMikrobi. status: %i\n", status);
#endif
    return status;
  }
  totalBytes += status;

#if DEBUG_ENUNCIATE > 1
  printf("writing type {}tutkimuspyyntoMikrobi for root element {}tutkimuspyyntoMikrobi...\n");
#endif
  status = xmlTextWriterWriteNs0TutkimuspyyntoMikrobiType(writer, _tutkimuspyyntoMikrobi);
  if (status < 0) {
#if DEBUG_ENUNCIATE
    printf("unable to write type for start element {}tutkimuspyyntoMikrobi. status: %i\n", status);
#endif
    return status;
  }
  totalBytes += status;

  status = xmlTextWriterEndElement(writer);
  if (status < 0) {
#if DEBUG_ENUNCIATE
    printf("unable to end element {}tutkimuspyyntoMikrobi. status: %i\n", status);
#endif
    return status;
  }
  totalBytes += status;

  return totalBytes;
}

/**
 * Frees the children of a TutkimuspyyntoMikrobi.
 *
 * @param _tutkimuspyyntoMikrobi The TutkimuspyyntoMikrobi whose children are to be free.
 */
static void freeNs0TutkimuspyyntoMikrobiElement(struct CoreWEB_ns0_tutkimuspyyntoMikrobi *_tutkimuspyyntoMikrobi) {
  freeNs0TutkimuspyyntoMikrobiType(_tutkimuspyyntoMikrobi);
}

/**
 * Reads a TutkimuspyyntoMikrobi from XML. The reader is assumed to be at the start element.
 *
 * @return the TutkimuspyyntoMikrobi, or NULL in case of error.
 */
static struct CoreWEB_ns0_tutkimuspyyntoMikrobi *xmlTextReaderReadNs0TutkimuspyyntoMikrobiType(xmlTextReaderPtr reader) {
  int status, depth;
  void *_child_accessor;
  struct CoreWEB_ns0_tutkimuspyyntoMikrobi *_tutkimuspyyntoMikrobi = calloc(1, sizeof(struct CoreWEB_ns0_tutkimuspyyntoMikrobi));



  if (xmlTextReaderIsEmptyElement(reader) == 0) {
    depth = xmlTextReaderDepth(reader);//track the depth.
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);

    while (xmlTextReaderDepth(reader) > depth) {
      if (status < 1) {
        //panic: XML read error.
#if DEBUG_ENUNCIATE
        printf("Failure to advance to next child element.\n");
#endif
        freeNs0TutkimuspyyntoMikrobiType(_tutkimuspyyntoMikrobi);
        free(_tutkimuspyyntoMikrobi);
        return NULL;
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "rivi", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}rivi of type {http://www.w3.org/2001/XMLSchema}short.\n");
#endif
        _child_accessor = xmlTextReaderReadXsShortType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}rivi of type {http://www.w3.org/2001/XMLSchema}short.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoMikrobiType(_tutkimuspyyntoMikrobi);
          free(_tutkimuspyyntoMikrobi);
          return NULL;
        }

        _tutkimuspyyntoMikrobi->rivi = *((short*)_child_accessor);
        free(_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "mikrobi", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}mikrobi of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}mikrobi of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoMikrobiType(_tutkimuspyyntoMikrobi);
          free(_tutkimuspyyntoMikrobi);
          return NULL;
        }

        _tutkimuspyyntoMikrobi->mikrobi = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "tutkimustyyppi", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}tutkimustyyppi of type {http://www.w3.org/2001/XMLSchema}unsignedShort.\n");
#endif
        _child_accessor = xmlTextReaderReadXsUnsignedShortType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}tutkimustyyppi of type {http://www.w3.org/2001/XMLSchema}unsignedShort.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoMikrobiType(_tutkimuspyyntoMikrobi);
          free(_tutkimuspyyntoMikrobi);
          return NULL;
        }

        _tutkimuspyyntoMikrobi->tutkimustyyppi = ((unsigned short*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "maara", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}maara of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}maara of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoMikrobiType(_tutkimuspyyntoMikrobi);
          free(_tutkimuspyyntoMikrobi);
          return NULL;
        }

        _tutkimuspyyntoMikrobi->maara = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "numero", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}numero of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}numero of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoMikrobiType(_tutkimuspyyntoMikrobi);
          free(_tutkimuspyyntoMikrobi);
          return NULL;
        }

        _tutkimuspyyntoMikrobi->numero = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "kommentti", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}kommentti of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}kommentti of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoMikrobiType(_tutkimuspyyntoMikrobi);
          free(_tutkimuspyyntoMikrobi);
          return NULL;
        }

        _tutkimuspyyntoMikrobi->kommentti = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "poistettu", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}poistettu of type {http://www.w3.org/2001/XMLSchema}unsignedShort.\n");
#endif
        _child_accessor = xmlTextReaderReadXsUnsignedShortType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}poistettu of type {http://www.w3.org/2001/XMLSchema}unsignedShort.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoMikrobiType(_tutkimuspyyntoMikrobi);
          free(_tutkimuspyyntoMikrobi);
          return NULL;
        }

        _tutkimuspyyntoMikrobi->poistettu = *((unsigned short*)_child_accessor);
        free(_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "muutosaika", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}muutosaika of type {http://www.w3.org/2001/XMLSchema}dateTime.\n");
#endif
        _child_accessor = xmlTextReaderReadXsDateTimeType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}muutosaika of type {http://www.w3.org/2001/XMLSchema}dateTime.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoMikrobiType(_tutkimuspyyntoMikrobi);
          free(_tutkimuspyyntoMikrobi);
          return NULL;
        }

        _tutkimuspyyntoMikrobi->muutosaika = ((struct tm*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "muutospaikka", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}muutospaikka of type {http://www.w3.org/2001/XMLSchema}short.\n");
#endif
        _child_accessor = xmlTextReaderReadXsShortType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}muutospaikka of type {http://www.w3.org/2001/XMLSchema}short.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoMikrobiType(_tutkimuspyyntoMikrobi);
          free(_tutkimuspyyntoMikrobi);
          return NULL;
        }

        _tutkimuspyyntoMikrobi->muutospaikka = *((short*)_child_accessor);
        free(_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "herkkyydet", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}herkkyydet of type {}tutkimuspyyntoHerkkyys.\n");
#endif
        _child_accessor = xmlTextReaderReadNs0TutkimuspyyntoHerkkyysType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}herkkyydet of type {}tutkimuspyyntoHerkkyys.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoMikrobiType(_tutkimuspyyntoMikrobi);
          free(_tutkimuspyyntoMikrobi);
          return NULL;
        }

        _tutkimuspyyntoMikrobi->herkkyydet = realloc(_tutkimuspyyntoMikrobi->herkkyydet, (_tutkimuspyyntoMikrobi->_sizeof_herkkyydet + 1) * sizeof(struct CoreWEB_ns0_tutkimuspyyntoHerkkyys));
        memcpy(&(_tutkimuspyyntoMikrobi->herkkyydet[_tutkimuspyyntoMikrobi->_sizeof_herkkyydet++]), _child_accessor, sizeof(struct CoreWEB_ns0_tutkimuspyyntoHerkkyys));
        free(_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else {
#if DEBUG_ENUNCIATE > 1
        if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
          printf("unknown child element {}%s for type {}tutkimuspyyntoMikrobi.  Skipping...\n",  xmlTextReaderConstLocalName(reader));
        }
        else {
          printf("unknown child element {%s}%s for type {}tutkimuspyyntoMikrobi. Skipping...\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader));
        }
#endif
        status = xmlTextReaderSkipElement(reader);
      }
    }
  }

  return _tutkimuspyyntoMikrobi;
}

/**
 * Writes a TutkimuspyyntoMikrobi to XML.
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoMikrobi The TutkimuspyyntoMikrobi to write.
 * @return The total bytes written, or -1 on error;
 */
static int xmlTextWriterWriteNs0TutkimuspyyntoMikrobiType(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyyntoMikrobi *_tutkimuspyyntoMikrobi) {
  int status, totalBytes = 0, i;
  xmlChar *binaryData;
  if (1) { //always write the primitive element.
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "rivi", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}rivi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}short for element {}rivi...\n");
#endif
    status = xmlTextWriterWriteXsShortType(writer, &(_tutkimuspyyntoMikrobi->rivi));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}short for element {}rivi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}rivi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoMikrobi->mikrobi != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "mikrobi", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}mikrobi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}mikrobi...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyyntoMikrobi->mikrobi));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}mikrobi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}mikrobi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoMikrobi->tutkimustyyppi != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tutkimustyyppi", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}tutkimustyyppi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}unsignedShort for element {}tutkimustyyppi...\n");
#endif
    status = xmlTextWriterWriteXsUnsignedShortType(writer, (_tutkimuspyyntoMikrobi->tutkimustyyppi));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}unsignedShort for element {}tutkimustyyppi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}tutkimustyyppi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoMikrobi->maara != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "maara", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}maara. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}maara...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyyntoMikrobi->maara));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}maara. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}maara. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoMikrobi->numero != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "numero", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}numero. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}numero...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyyntoMikrobi->numero));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}numero. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}numero. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoMikrobi->kommentti != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kommentti", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}kommentti. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}kommentti...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyyntoMikrobi->kommentti));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}kommentti. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}kommentti. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (1) { //always write the primitive element.
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "poistettu", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}poistettu. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}unsignedShort for element {}poistettu...\n");
#endif
    status = xmlTextWriterWriteXsUnsignedShortType(writer, &(_tutkimuspyyntoMikrobi->poistettu));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}unsignedShort for element {}poistettu. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}poistettu. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoMikrobi->muutosaika != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "muutosaika", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}muutosaika. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}dateTime for element {}muutosaika...\n");
#endif
    status = xmlTextWriterWriteXsDateTimeType(writer, (_tutkimuspyyntoMikrobi->muutosaika));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}dateTime for element {}muutosaika. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}muutosaika. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (1) { //always write the primitive element.
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "muutospaikka", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}muutospaikka. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}short for element {}muutospaikka...\n");
#endif
    status = xmlTextWriterWriteXsShortType(writer, &(_tutkimuspyyntoMikrobi->muutospaikka));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}short for element {}muutospaikka. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}muutospaikka. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  for (i = 0; i < _tutkimuspyyntoMikrobi->_sizeof_herkkyydet; i++) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "herkkyydet", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}herkkyydet. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {}tutkimuspyyntoHerkkyys for element {}herkkyydet...\n");
#endif
    status = xmlTextWriterWriteNs0TutkimuspyyntoHerkkyysType(writer, &(_tutkimuspyyntoMikrobi->herkkyydet[i]));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {}tutkimuspyyntoHerkkyys for element {}herkkyydet. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}herkkyydet. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }

  return totalBytes;
}

/**
 * Frees the elements of a TutkimuspyyntoMikrobi.
 *
 * @param _tutkimuspyyntoMikrobi The TutkimuspyyntoMikrobi to free.
 */
static void freeNs0TutkimuspyyntoMikrobiType(struct CoreWEB_ns0_tutkimuspyyntoMikrobi *_tutkimuspyyntoMikrobi) {
  int i;
  if (_tutkimuspyyntoMikrobi->mikrobi != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor mikrobi of type CoreWEB_ns0_tutkimuspyyntoMikrobi...\n");
#endif
    freeXsStringType(_tutkimuspyyntoMikrobi->mikrobi);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor mikrobi of type CoreWEB_ns0_tutkimuspyyntoMikrobi...\n");
#endif
    free(_tutkimuspyyntoMikrobi->mikrobi);
  }
  if (_tutkimuspyyntoMikrobi->tutkimustyyppi != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor tutkimustyyppi of type CoreWEB_ns0_tutkimuspyyntoMikrobi...\n");
#endif
    freeXsUnsignedShortType(_tutkimuspyyntoMikrobi->tutkimustyyppi);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor tutkimustyyppi of type CoreWEB_ns0_tutkimuspyyntoMikrobi...\n");
#endif
    free(_tutkimuspyyntoMikrobi->tutkimustyyppi);
  }
  if (_tutkimuspyyntoMikrobi->maara != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor maara of type CoreWEB_ns0_tutkimuspyyntoMikrobi...\n");
#endif
    freeXsStringType(_tutkimuspyyntoMikrobi->maara);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor maara of type CoreWEB_ns0_tutkimuspyyntoMikrobi...\n");
#endif
    free(_tutkimuspyyntoMikrobi->maara);
  }
  if (_tutkimuspyyntoMikrobi->numero != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor numero of type CoreWEB_ns0_tutkimuspyyntoMikrobi...\n");
#endif
    freeXsStringType(_tutkimuspyyntoMikrobi->numero);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor numero of type CoreWEB_ns0_tutkimuspyyntoMikrobi...\n");
#endif
    free(_tutkimuspyyntoMikrobi->numero);
  }
  if (_tutkimuspyyntoMikrobi->kommentti != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor kommentti of type CoreWEB_ns0_tutkimuspyyntoMikrobi...\n");
#endif
    freeXsStringType(_tutkimuspyyntoMikrobi->kommentti);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor kommentti of type CoreWEB_ns0_tutkimuspyyntoMikrobi...\n");
#endif
    free(_tutkimuspyyntoMikrobi->kommentti);
  }
  if (_tutkimuspyyntoMikrobi->muutosaika != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor muutosaika of type CoreWEB_ns0_tutkimuspyyntoMikrobi...\n");
#endif
    freeXsDateTimeType(_tutkimuspyyntoMikrobi->muutosaika);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor muutosaika of type CoreWEB_ns0_tutkimuspyyntoMikrobi...\n");
#endif
    free(_tutkimuspyyntoMikrobi->muutosaika);
  }
  if (_tutkimuspyyntoMikrobi->herkkyydet != NULL) {
    for (i = 0; i < _tutkimuspyyntoMikrobi->_sizeof_herkkyydet; i++) {
#if DEBUG_ENUNCIATE > 1
      printf("Freeing accessor herkkyydet[%i] of type CoreWEB_ns0_tutkimuspyyntoMikrobi...\n", i);
#endif
      freeNs0TutkimuspyyntoHerkkyysType(&(_tutkimuspyyntoMikrobi->herkkyydet[i]));
    }
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor herkkyydet of type CoreWEB_ns0_tutkimuspyyntoMikrobi...\n");
#endif
    free(_tutkimuspyyntoMikrobi->herkkyydet);
  }
}
#endif /* DEF_CoreWEB_ns0_tutkimuspyyntoMikrobi_M */
#ifndef DEF_CoreWEB_ns0_tutkimuspyyntoTiedot_M
#define DEF_CoreWEB_ns0_tutkimuspyyntoTiedot_M

/**
 * Reads a TutkimuspyyntoTiedot element from XML. The element to be read is "tutkimuspyyntoTiedot", and
 * it is assumed that the reader is pointing to the XML document (not the element).
 *
 * @param reader The XML reader.
 * @return The TutkimuspyyntoTiedot, or NULL in case of error.
 */
struct CoreWEB_ns0_tutkimuspyyntoTiedot *xml_read_CoreWEB_ns0_tutkimuspyyntoTiedot(xmlTextReaderPtr reader) {
  int status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
  return xmlTextReaderReadNs0TutkimuspyyntoTiedotElement(reader);
}

/**
 * Writes a TutkimuspyyntoTiedot to XML under element name "tutkimuspyyntoTiedot".
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoTiedot The TutkimuspyyntoTiedot to write.
 * @return 1 if successful, 0 otherwise.
 */
int xml_write_CoreWEB_ns0_tutkimuspyyntoTiedot(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyyntoTiedot *_tutkimuspyyntoTiedot) {
  return xmlTextWriterWriteNs0TutkimuspyyntoTiedotElementNS(writer, _tutkimuspyyntoTiedot, 1);
}

/**
 * Frees a TutkimuspyyntoTiedot.
 *
 * @param _tutkimuspyyntoTiedot The TutkimuspyyntoTiedot to free.
 */
void free_CoreWEB_ns0_tutkimuspyyntoTiedot(struct CoreWEB_ns0_tutkimuspyyntoTiedot *_tutkimuspyyntoTiedot) {
  freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
  free(_tutkimuspyyntoTiedot);
}

/**
 * Reads a TutkimuspyyntoTiedot element from XML. The element to be read is "tutkimuspyyntoTiedot", and
 * it is assumed that the reader is pointing to that element.
 *
 * @param reader The XML reader.
 * @return The TutkimuspyyntoTiedot, or NULL in case of error.
 */
struct CoreWEB_ns0_tutkimuspyyntoTiedot *xmlTextReaderReadNs0TutkimuspyyntoTiedotElement(xmlTextReaderPtr reader) {
  struct CoreWEB_ns0_tutkimuspyyntoTiedot *_tutkimuspyyntoTiedot = NULL;

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tutkimuspyyntoTiedot", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Attempting to read root element {}tutkimuspyyntoTiedot.\n");
#endif
    _tutkimuspyyntoTiedot = xmlTextReaderReadNs0TutkimuspyyntoTiedotType(reader);
  }
#if DEBUG_ENUNCIATE
  if (_tutkimuspyyntoTiedot == NULL) {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      printf("attempt to read {}tutkimuspyyntoTiedot failed. current element: {}%s\n",  xmlTextReaderConstLocalName(reader));
    }
    else {
      printf("attempt to read {}tutkimuspyyntoTiedot failed. current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader));
    }
  }
#endif

  return _tutkimuspyyntoTiedot;
}

/**
 * Writes a TutkimuspyyntoTiedot to XML under element name "tutkimuspyyntoTiedot".
 * Does NOT write the namespace prefixes.
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoTiedot The TutkimuspyyntoTiedot to write.
 * @return 1 if successful, 0 otherwise.
 */
static int xmlTextWriterWriteNs0TutkimuspyyntoTiedotElement(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyyntoTiedot *_tutkimuspyyntoTiedot) {
  return xmlTextWriterWriteNs0TutkimuspyyntoTiedotElementNS(writer, _tutkimuspyyntoTiedot, 0);
}

/**
 * Writes a TutkimuspyyntoTiedot to XML under element name "tutkimuspyyntoTiedot".
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoTiedot The TutkimuspyyntoTiedot to write.
 * @param writeNamespaces Whether to write the namespace prefixes.
 * @return 1 if successful, 0 otherwise.
 */
static int xmlTextWriterWriteNs0TutkimuspyyntoTiedotElementNS(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyyntoTiedot *_tutkimuspyyntoTiedot, int writeNamespaces) {
  int totalBytes = 0;
  int status;

  status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tutkimuspyyntoTiedot", NULL);
  if (status < 0) {
#if DEBUG_ENUNCIATE
    printf("unable to write start element {}tutkimuspyyntoTiedot. status: %i\n", status);
#endif
    return status;
  }
  totalBytes += status;

#if DEBUG_ENUNCIATE > 1
  printf("writing type {}tutkimuspyyntoTiedot for root element {}tutkimuspyyntoTiedot...\n");
#endif
  status = xmlTextWriterWriteNs0TutkimuspyyntoTiedotType(writer, _tutkimuspyyntoTiedot);
  if (status < 0) {
#if DEBUG_ENUNCIATE
    printf("unable to write type for start element {}tutkimuspyyntoTiedot. status: %i\n", status);
#endif
    return status;
  }
  totalBytes += status;

  status = xmlTextWriterEndElement(writer);
  if (status < 0) {
#if DEBUG_ENUNCIATE
    printf("unable to end element {}tutkimuspyyntoTiedot. status: %i\n", status);
#endif
    return status;
  }
  totalBytes += status;

  return totalBytes;
}

/**
 * Frees the children of a TutkimuspyyntoTiedot.
 *
 * @param _tutkimuspyyntoTiedot The TutkimuspyyntoTiedot whose children are to be free.
 */
static void freeNs0TutkimuspyyntoTiedotElement(struct CoreWEB_ns0_tutkimuspyyntoTiedot *_tutkimuspyyntoTiedot) {
  freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
}

/**
 * Reads a TutkimuspyyntoTiedot from XML. The reader is assumed to be at the start element.
 *
 * @return the TutkimuspyyntoTiedot, or NULL in case of error.
 */
static struct CoreWEB_ns0_tutkimuspyyntoTiedot *xmlTextReaderReadNs0TutkimuspyyntoTiedotType(xmlTextReaderPtr reader) {
  int status, depth;
  void *_child_accessor;
  struct CoreWEB_ns0_tutkimuspyyntoTiedot *_tutkimuspyyntoTiedot = calloc(1, sizeof(struct CoreWEB_ns0_tutkimuspyyntoTiedot));



  if (xmlTextReaderIsEmptyElement(reader) == 0) {
    depth = xmlTextReaderDepth(reader);//track the depth.
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);

    while (xmlTextReaderDepth(reader) > depth) {
      if (status < 1) {
        //panic: XML read error.
#if DEBUG_ENUNCIATE
        printf("Failure to advance to next child element.\n");
#endif
        freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
        free(_tutkimuspyyntoTiedot);
        return NULL;
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "pyynto", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}pyynto of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}pyynto of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->pyynto = *((int*)_child_accessor);
        free(_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "rivi", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}rivi of type {http://www.w3.org/2001/XMLSchema}short.\n");
#endif
        _child_accessor = xmlTextReaderReadXsShortType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}rivi of type {http://www.w3.org/2001/XMLSchema}short.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->rivi = *((short*)_child_accessor);
        free(_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "tutkimus", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}tutkimus of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}tutkimus of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->tutkimus = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "versio", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}versio of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}versio of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->versio = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "hajautettu", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}hajautettu of type {http://www.w3.org/2001/XMLSchema}unsignedShort.\n");
#endif
        _child_accessor = xmlTextReaderReadXsUnsignedShortType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}hajautettu of type {http://www.w3.org/2001/XMLSchema}unsignedShort.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->hajautettu = ((unsigned short*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "hoitojakso", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}hoitojakso of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}hoitojakso of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->hoitojakso = ((int*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "huomautuksia", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}huomautuksia of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}huomautuksia of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->huomautuksia = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "kontrolloitava", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}kontrolloitava of type {}date.\n");
#endif
        _child_accessor = xmlTextReaderReadNs0DateType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}kontrolloitava of type {}date.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->kontrolloitava = ((struct CoreWEB_ns0_date*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "korvausluokka", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}korvausluokka of type {http://www.w3.org/2001/XMLSchema}unsignedShort.\n");
#endif
        _child_accessor = xmlTextReaderReadXsUnsignedShortType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}korvausluokka of type {http://www.w3.org/2001/XMLSchema}unsignedShort.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->korvausluokka = ((unsigned short*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "kunta", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}kunta of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}kunta of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->kunta = ((int*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "kustannuslinkki", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}kustannuslinkki of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}kustannuslinkki of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->kustannuslinkki = ((int*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "lisatietoja", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}lisatietoja of type {http://www.w3.org/2001/XMLSchema}unsignedShort.\n");
#endif
        _child_accessor = xmlTextReaderReadXsUnsignedShortType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}lisatietoja of type {http://www.w3.org/2001/XMLSchema}unsignedShort.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->lisatietoja = ((unsigned short*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "lomakelinkki", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}lomakelinkki of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}lomakelinkki of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->lomakelinkki = ((int*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "maksaja", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}maksaja of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}maksaja of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->maksaja = ((int*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "mikrobitietoja", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}mikrobitietoja of type {http://www.w3.org/2001/XMLSchema}unsignedShort.\n");
#endif
        _child_accessor = xmlTextReaderReadXsUnsignedShortType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}mikrobitietoja of type {http://www.w3.org/2001/XMLSchema}unsignedShort.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->mikrobitietoja = ((unsigned short*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "muutosaika", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}muutosaika of type {http://www.w3.org/2001/XMLSchema}dateTime.\n");
#endif
        _child_accessor = xmlTextReaderReadXsDateTimeType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}muutosaika of type {http://www.w3.org/2001/XMLSchema}dateTime.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->muutosaika = ((struct tm*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "muutospaikka", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}muutospaikka of type {http://www.w3.org/2001/XMLSchema}short.\n");
#endif
        _child_accessor = xmlTextReaderReadXsShortType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}muutospaikka of type {http://www.w3.org/2001/XMLSchema}short.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->muutospaikka = *((short*)_child_accessor);
        free(_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "nayte", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}nayte of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}nayte of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->nayte = ((int*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "naytetietoja", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}naytetietoja of type {http://www.w3.org/2001/XMLSchema}unsignedShort.\n");
#endif
        _child_accessor = xmlTextReaderReadXsUnsignedShortType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}naytetietoja of type {http://www.w3.org/2001/XMLSchema}unsignedShort.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->naytetietoja = ((unsigned short*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "numerotulos", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}numerotulos of type {http://www.w3.org/2001/XMLSchema}double.\n");
#endif
        _child_accessor = xmlTextReaderReadXsDoubleType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}numerotulos of type {http://www.w3.org/2001/XMLSchema}double.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->numerotulos = ((double*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "numeroyksikko", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}numeroyksikko of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}numeroyksikko of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->numeroyksikko = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "osalinkki", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}osalinkki of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}osalinkki of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->osalinkki = ((int*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "osasto", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}osasto of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}osasto of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->osasto = ((int*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "ottoaika", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}ottoaika of type {http://www.w3.org/2001/XMLSchema}dateTime.\n");
#endif
        _child_accessor = xmlTextReaderReadXsDateTimeType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}ottoaika of type {http://www.w3.org/2001/XMLSchema}dateTime.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->ottoaika = ((struct tm*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "paketti", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}paketti of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}paketti of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->paketti = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "piiri", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}piiri of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}piiri of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->piiri = ((int*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "poistettu", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}poistettu of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}poistettu of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->poistettu = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "pyydetty", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}pyydetty of type {http://www.w3.org/2001/XMLSchema}dateTime.\n");
#endif
        _child_accessor = xmlTextReaderReadXsDateTimeType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}pyydetty of type {http://www.w3.org/2001/XMLSchema}dateTime.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->pyydetty = ((struct tm*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "sanallinenvastaus", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}sanallinenvastaus of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}sanallinenvastaus of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->sanallinenvastaus = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "sijaintiosasto", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}sijaintiosasto of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}sijaintiosasto of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->sijaintiosasto = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "sijaintipaikka", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}sijaintipaikka of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}sijaintipaikka of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->sijaintipaikka = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "sisainenMaksaja", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}sisainenMaksaja of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}sisainenMaksaja of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->sisainenMaksaja = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "suoritelinkki", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}suoritelinkki of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}suoritelinkki of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->suoritelinkki = ((int*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "tehty", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}tehty of type {http://www.w3.org/2001/XMLSchema}dateTime.\n");
#endif
        _child_accessor = xmlTextReaderReadXsDateTimeType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}tehty of type {http://www.w3.org/2001/XMLSchema}dateTime.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->tehty = ((struct tm*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "tekopaikka", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}tekopaikka of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}tekopaikka of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->tekopaikka = ((int*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "tekstitulos", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}tekstitulos of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}tekstitulos of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->tekstitulos = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "tekstiviesti", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}tekstiviesti of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}tekstiviesti of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->tekstiviesti = ((int*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "tila", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}tila of type {http://www.w3.org/2001/XMLSchema}unsignedShort.\n");
#endif
        _child_accessor = xmlTextReaderReadXsUnsignedShortType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}tila of type {http://www.w3.org/2001/XMLSchema}unsignedShort.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->tila = *((unsigned short*)_child_accessor);
        free(_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "tilaaja", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}tilaaja of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}tilaaja of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->tilaaja = *((int*)_child_accessor);
        free(_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "tilaajaNimi", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}tilaajaNimi of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}tilaajaNimi of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->tilaajaNimi = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "tilaajayksikko", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}tilaajayksikko of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}tilaajayksikko of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->tilaajayksikko = ((int*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "tilaustunnus", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}tilaustunnus of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}tilaustunnus of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->tilaustunnus = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "toistoloppuu", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}toistoloppuu of type {}date.\n");
#endif
        _child_accessor = xmlTextReaderReadNs0DateType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}toistoloppuu of type {}date.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->toistoloppuu = ((struct CoreWEB_ns0_date*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "toistovali", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}toistovali of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}toistovali of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->toistovali = ((int*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "tulkinta", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}tulkinta of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}tulkinta of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->tulkinta = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "tuottaja", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}tuottaja of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}tuottaja of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->tuottaja = ((int*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "tyonantaja", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}tyonantaja of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}tyonantaja of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->tyonantaja = ((int*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "vastaustietoja", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}vastaustietoja of type {http://www.w3.org/2001/XMLSchema}unsignedShort.\n");
#endif
        _child_accessor = xmlTextReaderReadXsUnsignedShortType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}vastaustietoja of type {http://www.w3.org/2001/XMLSchema}unsignedShort.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->vastaustietoja = ((unsigned short*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "viitearvot", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}viitearvot of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}viitearvot of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->viitearvot = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "kirjaaja", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}kirjaaja of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}kirjaaja of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->kirjaaja = ((int*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "tilaKoodi", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}tilaKoodi of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}tilaKoodi of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->tilaKoodi = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "poikkeava", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}poikkeava of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}poikkeava of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->poikkeava = ((int*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "mikrobit", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}mikrobit of type {}tutkimuspyyntoMikrobi.\n");
#endif
        _child_accessor = xmlTextReaderReadNs0TutkimuspyyntoMikrobiType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}mikrobit of type {}tutkimuspyyntoMikrobi.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0TutkimuspyyntoTiedotType(_tutkimuspyyntoTiedot);
          free(_tutkimuspyyntoTiedot);
          return NULL;
        }

        _tutkimuspyyntoTiedot->mikrobit = realloc(_tutkimuspyyntoTiedot->mikrobit, (_tutkimuspyyntoTiedot->_sizeof_mikrobit + 1) * sizeof(struct CoreWEB_ns0_tutkimuspyyntoMikrobi));
        memcpy(&(_tutkimuspyyntoTiedot->mikrobit[_tutkimuspyyntoTiedot->_sizeof_mikrobit++]), _child_accessor, sizeof(struct CoreWEB_ns0_tutkimuspyyntoMikrobi));
        free(_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else {
#if DEBUG_ENUNCIATE > 1
        if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
          printf("unknown child element {}%s for type {}tutkimuspyyntoTiedot.  Skipping...\n",  xmlTextReaderConstLocalName(reader));
        }
        else {
          printf("unknown child element {%s}%s for type {}tutkimuspyyntoTiedot. Skipping...\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader));
        }
#endif
        status = xmlTextReaderSkipElement(reader);
      }
    }
  }

  return _tutkimuspyyntoTiedot;
}

/**
 * Writes a TutkimuspyyntoTiedot to XML.
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoTiedot The TutkimuspyyntoTiedot to write.
 * @return The total bytes written, or -1 on error;
 */
static int xmlTextWriterWriteNs0TutkimuspyyntoTiedotType(xmlTextWriterPtr writer, struct CoreWEB_ns0_tutkimuspyyntoTiedot *_tutkimuspyyntoTiedot) {
  int status, totalBytes = 0, i;
  xmlChar *binaryData;
  if (1) { //always write the primitive element.
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "pyynto", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}pyynto. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}pyynto...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, &(_tutkimuspyyntoTiedot->pyynto));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}pyynto. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}pyynto. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (1) { //always write the primitive element.
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "rivi", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}rivi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}short for element {}rivi...\n");
#endif
    status = xmlTextWriterWriteXsShortType(writer, &(_tutkimuspyyntoTiedot->rivi));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}short for element {}rivi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}rivi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->tutkimus != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tutkimus", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}tutkimus. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}tutkimus...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyyntoTiedot->tutkimus));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}tutkimus. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}tutkimus. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->versio != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "versio", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}versio. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}versio...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyyntoTiedot->versio));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}versio. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}versio. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->hajautettu != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "hajautettu", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}hajautettu. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}unsignedShort for element {}hajautettu...\n");
#endif
    status = xmlTextWriterWriteXsUnsignedShortType(writer, (_tutkimuspyyntoTiedot->hajautettu));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}unsignedShort for element {}hajautettu. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}hajautettu. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->hoitojakso != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "hoitojakso", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}hoitojakso. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}hoitojakso...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, (_tutkimuspyyntoTiedot->hoitojakso));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}hoitojakso. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}hoitojakso. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->huomautuksia != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "huomautuksia", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}huomautuksia. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}huomautuksia...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyyntoTiedot->huomautuksia));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}huomautuksia. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}huomautuksia. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->kontrolloitava != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kontrolloitava", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}kontrolloitava. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {}date for element {}kontrolloitava...\n");
#endif
    status = xmlTextWriterWriteNs0DateType(writer, (_tutkimuspyyntoTiedot->kontrolloitava));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {}date for element {}kontrolloitava. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}kontrolloitava. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->korvausluokka != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "korvausluokka", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}korvausluokka. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}unsignedShort for element {}korvausluokka...\n");
#endif
    status = xmlTextWriterWriteXsUnsignedShortType(writer, (_tutkimuspyyntoTiedot->korvausluokka));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}unsignedShort for element {}korvausluokka. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}korvausluokka. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->kunta != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kunta", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}kunta. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}kunta...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, (_tutkimuspyyntoTiedot->kunta));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}kunta. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}kunta. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->kustannuslinkki != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kustannuslinkki", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}kustannuslinkki. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}kustannuslinkki...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, (_tutkimuspyyntoTiedot->kustannuslinkki));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}kustannuslinkki. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}kustannuslinkki. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->lisatietoja != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "lisatietoja", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}lisatietoja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}unsignedShort for element {}lisatietoja...\n");
#endif
    status = xmlTextWriterWriteXsUnsignedShortType(writer, (_tutkimuspyyntoTiedot->lisatietoja));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}unsignedShort for element {}lisatietoja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}lisatietoja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->lomakelinkki != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "lomakelinkki", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}lomakelinkki. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}lomakelinkki...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, (_tutkimuspyyntoTiedot->lomakelinkki));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}lomakelinkki. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}lomakelinkki. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->maksaja != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "maksaja", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}maksaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}maksaja...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, (_tutkimuspyyntoTiedot->maksaja));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}maksaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}maksaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->mikrobitietoja != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "mikrobitietoja", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}mikrobitietoja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}unsignedShort for element {}mikrobitietoja...\n");
#endif
    status = xmlTextWriterWriteXsUnsignedShortType(writer, (_tutkimuspyyntoTiedot->mikrobitietoja));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}unsignedShort for element {}mikrobitietoja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}mikrobitietoja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->muutosaika != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "muutosaika", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}muutosaika. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}dateTime for element {}muutosaika...\n");
#endif
    status = xmlTextWriterWriteXsDateTimeType(writer, (_tutkimuspyyntoTiedot->muutosaika));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}dateTime for element {}muutosaika. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}muutosaika. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (1) { //always write the primitive element.
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "muutospaikka", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}muutospaikka. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}short for element {}muutospaikka...\n");
#endif
    status = xmlTextWriterWriteXsShortType(writer, &(_tutkimuspyyntoTiedot->muutospaikka));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}short for element {}muutospaikka. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}muutospaikka. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->nayte != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "nayte", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}nayte. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}nayte...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, (_tutkimuspyyntoTiedot->nayte));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}nayte. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}nayte. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->naytetietoja != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "naytetietoja", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}naytetietoja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}unsignedShort for element {}naytetietoja...\n");
#endif
    status = xmlTextWriterWriteXsUnsignedShortType(writer, (_tutkimuspyyntoTiedot->naytetietoja));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}unsignedShort for element {}naytetietoja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}naytetietoja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->numerotulos != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "numerotulos", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}numerotulos. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}double for element {}numerotulos...\n");
#endif
    status = xmlTextWriterWriteXsDoubleType(writer, (_tutkimuspyyntoTiedot->numerotulos));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}double for element {}numerotulos. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}numerotulos. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->numeroyksikko != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "numeroyksikko", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}numeroyksikko. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}numeroyksikko...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyyntoTiedot->numeroyksikko));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}numeroyksikko. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}numeroyksikko. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->osalinkki != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "osalinkki", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}osalinkki. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}osalinkki...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, (_tutkimuspyyntoTiedot->osalinkki));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}osalinkki. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}osalinkki. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->osasto != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "osasto", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}osasto. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}osasto...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, (_tutkimuspyyntoTiedot->osasto));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}osasto. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}osasto. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->ottoaika != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "ottoaika", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}ottoaika. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}dateTime for element {}ottoaika...\n");
#endif
    status = xmlTextWriterWriteXsDateTimeType(writer, (_tutkimuspyyntoTiedot->ottoaika));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}dateTime for element {}ottoaika. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}ottoaika. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->paketti != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "paketti", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}paketti. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}paketti...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyyntoTiedot->paketti));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}paketti. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}paketti. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->piiri != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "piiri", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}piiri. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}piiri...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, (_tutkimuspyyntoTiedot->piiri));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}piiri. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}piiri. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->poistettu != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "poistettu", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}poistettu. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}poistettu...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyyntoTiedot->poistettu));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}poistettu. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}poistettu. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->pyydetty != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "pyydetty", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}pyydetty. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}dateTime for element {}pyydetty...\n");
#endif
    status = xmlTextWriterWriteXsDateTimeType(writer, (_tutkimuspyyntoTiedot->pyydetty));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}dateTime for element {}pyydetty. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}pyydetty. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->sanallinenvastaus != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "sanallinenvastaus", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}sanallinenvastaus. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}sanallinenvastaus...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyyntoTiedot->sanallinenvastaus));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}sanallinenvastaus. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}sanallinenvastaus. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->sijaintiosasto != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "sijaintiosasto", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}sijaintiosasto. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}sijaintiosasto...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyyntoTiedot->sijaintiosasto));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}sijaintiosasto. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}sijaintiosasto. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->sijaintipaikka != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "sijaintipaikka", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}sijaintipaikka. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}sijaintipaikka...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyyntoTiedot->sijaintipaikka));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}sijaintipaikka. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}sijaintipaikka. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->sisainenMaksaja != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "sisainenMaksaja", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}sisainenMaksaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}sisainenMaksaja...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyyntoTiedot->sisainenMaksaja));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}sisainenMaksaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}sisainenMaksaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->suoritelinkki != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "suoritelinkki", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}suoritelinkki. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}suoritelinkki...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, (_tutkimuspyyntoTiedot->suoritelinkki));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}suoritelinkki. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}suoritelinkki. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->tehty != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tehty", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}tehty. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}dateTime for element {}tehty...\n");
#endif
    status = xmlTextWriterWriteXsDateTimeType(writer, (_tutkimuspyyntoTiedot->tehty));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}dateTime for element {}tehty. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}tehty. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->tekopaikka != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tekopaikka", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}tekopaikka. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}tekopaikka...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, (_tutkimuspyyntoTiedot->tekopaikka));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}tekopaikka. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}tekopaikka. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->tekstitulos != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tekstitulos", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}tekstitulos. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}tekstitulos...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyyntoTiedot->tekstitulos));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}tekstitulos. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}tekstitulos. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->tekstiviesti != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tekstiviesti", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}tekstiviesti. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}tekstiviesti...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, (_tutkimuspyyntoTiedot->tekstiviesti));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}tekstiviesti. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}tekstiviesti. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (1) { //always write the primitive element.
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tila", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}tila. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}unsignedShort for element {}tila...\n");
#endif
    status = xmlTextWriterWriteXsUnsignedShortType(writer, &(_tutkimuspyyntoTiedot->tila));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}unsignedShort for element {}tila. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}tila. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (1) { //always write the primitive element.
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tilaaja", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}tilaaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}tilaaja...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, &(_tutkimuspyyntoTiedot->tilaaja));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}tilaaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}tilaaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->tilaajaNimi != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tilaajaNimi", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}tilaajaNimi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}tilaajaNimi...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyyntoTiedot->tilaajaNimi));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}tilaajaNimi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}tilaajaNimi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->tilaajayksikko != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tilaajayksikko", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}tilaajayksikko. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}tilaajayksikko...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, (_tutkimuspyyntoTiedot->tilaajayksikko));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}tilaajayksikko. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}tilaajayksikko. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->tilaustunnus != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tilaustunnus", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}tilaustunnus. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}tilaustunnus...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyyntoTiedot->tilaustunnus));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}tilaustunnus. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}tilaustunnus. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->toistoloppuu != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "toistoloppuu", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}toistoloppuu. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {}date for element {}toistoloppuu...\n");
#endif
    status = xmlTextWriterWriteNs0DateType(writer, (_tutkimuspyyntoTiedot->toistoloppuu));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {}date for element {}toistoloppuu. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}toistoloppuu. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->toistovali != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "toistovali", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}toistovali. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}toistovali...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, (_tutkimuspyyntoTiedot->toistovali));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}toistovali. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}toistovali. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->tulkinta != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tulkinta", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}tulkinta. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}tulkinta...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyyntoTiedot->tulkinta));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}tulkinta. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}tulkinta. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->tuottaja != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tuottaja", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}tuottaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}tuottaja...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, (_tutkimuspyyntoTiedot->tuottaja));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}tuottaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}tuottaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->tyonantaja != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tyonantaja", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}tyonantaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}tyonantaja...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, (_tutkimuspyyntoTiedot->tyonantaja));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}tyonantaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}tyonantaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->vastaustietoja != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "vastaustietoja", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}vastaustietoja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}unsignedShort for element {}vastaustietoja...\n");
#endif
    status = xmlTextWriterWriteXsUnsignedShortType(writer, (_tutkimuspyyntoTiedot->vastaustietoja));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}unsignedShort for element {}vastaustietoja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}vastaustietoja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->viitearvot != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "viitearvot", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}viitearvot. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}viitearvot...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyyntoTiedot->viitearvot));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}viitearvot. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}viitearvot. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->kirjaaja != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kirjaaja", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}kirjaaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}kirjaaja...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, (_tutkimuspyyntoTiedot->kirjaaja));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}kirjaaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}kirjaaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->tilaKoodi != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tilaKoodi", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}tilaKoodi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}tilaKoodi...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_tutkimuspyyntoTiedot->tilaKoodi));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}tilaKoodi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}tilaKoodi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_tutkimuspyyntoTiedot->poikkeava != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "poikkeava", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}poikkeava. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}poikkeava...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, (_tutkimuspyyntoTiedot->poikkeava));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}poikkeava. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}poikkeava. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  for (i = 0; i < _tutkimuspyyntoTiedot->_sizeof_mikrobit; i++) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "mikrobit", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}mikrobit. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {}tutkimuspyyntoMikrobi for element {}mikrobit...\n");
#endif
    status = xmlTextWriterWriteNs0TutkimuspyyntoMikrobiType(writer, &(_tutkimuspyyntoTiedot->mikrobit[i]));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {}tutkimuspyyntoMikrobi for element {}mikrobit. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}mikrobit. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }

  return totalBytes;
}

/**
 * Frees the elements of a TutkimuspyyntoTiedot.
 *
 * @param _tutkimuspyyntoTiedot The TutkimuspyyntoTiedot to free.
 */
static void freeNs0TutkimuspyyntoTiedotType(struct CoreWEB_ns0_tutkimuspyyntoTiedot *_tutkimuspyyntoTiedot) {
  int i;
  if (_tutkimuspyyntoTiedot->tutkimus != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor tutkimus of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsStringType(_tutkimuspyyntoTiedot->tutkimus);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor tutkimus of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->tutkimus);
  }
  if (_tutkimuspyyntoTiedot->versio != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor versio of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsStringType(_tutkimuspyyntoTiedot->versio);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor versio of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->versio);
  }
  if (_tutkimuspyyntoTiedot->hajautettu != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor hajautettu of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsUnsignedShortType(_tutkimuspyyntoTiedot->hajautettu);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor hajautettu of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->hajautettu);
  }
  if (_tutkimuspyyntoTiedot->hoitojakso != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor hoitojakso of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsIntType(_tutkimuspyyntoTiedot->hoitojakso);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor hoitojakso of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->hoitojakso);
  }
  if (_tutkimuspyyntoTiedot->huomautuksia != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor huomautuksia of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsStringType(_tutkimuspyyntoTiedot->huomautuksia);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor huomautuksia of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->huomautuksia);
  }
  if (_tutkimuspyyntoTiedot->kontrolloitava != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor kontrolloitava of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeNs0DateType(_tutkimuspyyntoTiedot->kontrolloitava);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor kontrolloitava of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->kontrolloitava);
  }
  if (_tutkimuspyyntoTiedot->korvausluokka != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor korvausluokka of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsUnsignedShortType(_tutkimuspyyntoTiedot->korvausluokka);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor korvausluokka of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->korvausluokka);
  }
  if (_tutkimuspyyntoTiedot->kunta != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor kunta of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsIntType(_tutkimuspyyntoTiedot->kunta);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor kunta of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->kunta);
  }
  if (_tutkimuspyyntoTiedot->kustannuslinkki != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor kustannuslinkki of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsIntType(_tutkimuspyyntoTiedot->kustannuslinkki);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor kustannuslinkki of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->kustannuslinkki);
  }
  if (_tutkimuspyyntoTiedot->lisatietoja != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor lisatietoja of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsUnsignedShortType(_tutkimuspyyntoTiedot->lisatietoja);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor lisatietoja of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->lisatietoja);
  }
  if (_tutkimuspyyntoTiedot->lomakelinkki != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor lomakelinkki of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsIntType(_tutkimuspyyntoTiedot->lomakelinkki);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor lomakelinkki of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->lomakelinkki);
  }
  if (_tutkimuspyyntoTiedot->maksaja != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor maksaja of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsIntType(_tutkimuspyyntoTiedot->maksaja);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor maksaja of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->maksaja);
  }
  if (_tutkimuspyyntoTiedot->mikrobitietoja != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor mikrobitietoja of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsUnsignedShortType(_tutkimuspyyntoTiedot->mikrobitietoja);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor mikrobitietoja of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->mikrobitietoja);
  }
  if (_tutkimuspyyntoTiedot->muutosaika != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor muutosaika of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsDateTimeType(_tutkimuspyyntoTiedot->muutosaika);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor muutosaika of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->muutosaika);
  }
  if (_tutkimuspyyntoTiedot->nayte != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor nayte of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsIntType(_tutkimuspyyntoTiedot->nayte);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor nayte of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->nayte);
  }
  if (_tutkimuspyyntoTiedot->naytetietoja != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor naytetietoja of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsUnsignedShortType(_tutkimuspyyntoTiedot->naytetietoja);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor naytetietoja of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->naytetietoja);
  }
  if (_tutkimuspyyntoTiedot->numerotulos != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor numerotulos of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsDoubleType(_tutkimuspyyntoTiedot->numerotulos);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor numerotulos of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->numerotulos);
  }
  if (_tutkimuspyyntoTiedot->numeroyksikko != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor numeroyksikko of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsStringType(_tutkimuspyyntoTiedot->numeroyksikko);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor numeroyksikko of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->numeroyksikko);
  }
  if (_tutkimuspyyntoTiedot->osalinkki != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor osalinkki of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsIntType(_tutkimuspyyntoTiedot->osalinkki);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor osalinkki of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->osalinkki);
  }
  if (_tutkimuspyyntoTiedot->osasto != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor osasto of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsIntType(_tutkimuspyyntoTiedot->osasto);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor osasto of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->osasto);
  }
  if (_tutkimuspyyntoTiedot->ottoaika != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor ottoaika of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsDateTimeType(_tutkimuspyyntoTiedot->ottoaika);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor ottoaika of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->ottoaika);
  }
  if (_tutkimuspyyntoTiedot->paketti != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor paketti of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsStringType(_tutkimuspyyntoTiedot->paketti);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor paketti of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->paketti);
  }
  if (_tutkimuspyyntoTiedot->piiri != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor piiri of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsIntType(_tutkimuspyyntoTiedot->piiri);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor piiri of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->piiri);
  }
  if (_tutkimuspyyntoTiedot->poistettu != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor poistettu of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsStringType(_tutkimuspyyntoTiedot->poistettu);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor poistettu of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->poistettu);
  }
  if (_tutkimuspyyntoTiedot->pyydetty != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor pyydetty of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsDateTimeType(_tutkimuspyyntoTiedot->pyydetty);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor pyydetty of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->pyydetty);
  }
  if (_tutkimuspyyntoTiedot->sanallinenvastaus != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor sanallinenvastaus of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsStringType(_tutkimuspyyntoTiedot->sanallinenvastaus);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor sanallinenvastaus of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->sanallinenvastaus);
  }
  if (_tutkimuspyyntoTiedot->sijaintiosasto != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor sijaintiosasto of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsStringType(_tutkimuspyyntoTiedot->sijaintiosasto);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor sijaintiosasto of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->sijaintiosasto);
  }
  if (_tutkimuspyyntoTiedot->sijaintipaikka != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor sijaintipaikka of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsStringType(_tutkimuspyyntoTiedot->sijaintipaikka);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor sijaintipaikka of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->sijaintipaikka);
  }
  if (_tutkimuspyyntoTiedot->sisainenMaksaja != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor sisainenMaksaja of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsStringType(_tutkimuspyyntoTiedot->sisainenMaksaja);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor sisainenMaksaja of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->sisainenMaksaja);
  }
  if (_tutkimuspyyntoTiedot->suoritelinkki != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor suoritelinkki of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsIntType(_tutkimuspyyntoTiedot->suoritelinkki);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor suoritelinkki of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->suoritelinkki);
  }
  if (_tutkimuspyyntoTiedot->tehty != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor tehty of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsDateTimeType(_tutkimuspyyntoTiedot->tehty);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor tehty of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->tehty);
  }
  if (_tutkimuspyyntoTiedot->tekopaikka != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor tekopaikka of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsIntType(_tutkimuspyyntoTiedot->tekopaikka);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor tekopaikka of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->tekopaikka);
  }
  if (_tutkimuspyyntoTiedot->tekstitulos != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor tekstitulos of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsStringType(_tutkimuspyyntoTiedot->tekstitulos);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor tekstitulos of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->tekstitulos);
  }
  if (_tutkimuspyyntoTiedot->tekstiviesti != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor tekstiviesti of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsIntType(_tutkimuspyyntoTiedot->tekstiviesti);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor tekstiviesti of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->tekstiviesti);
  }
  if (_tutkimuspyyntoTiedot->tilaajaNimi != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor tilaajaNimi of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsStringType(_tutkimuspyyntoTiedot->tilaajaNimi);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor tilaajaNimi of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->tilaajaNimi);
  }
  if (_tutkimuspyyntoTiedot->tilaajayksikko != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor tilaajayksikko of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsIntType(_tutkimuspyyntoTiedot->tilaajayksikko);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor tilaajayksikko of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->tilaajayksikko);
  }
  if (_tutkimuspyyntoTiedot->tilaustunnus != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor tilaustunnus of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsStringType(_tutkimuspyyntoTiedot->tilaustunnus);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor tilaustunnus of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->tilaustunnus);
  }
  if (_tutkimuspyyntoTiedot->toistoloppuu != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor toistoloppuu of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeNs0DateType(_tutkimuspyyntoTiedot->toistoloppuu);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor toistoloppuu of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->toistoloppuu);
  }
  if (_tutkimuspyyntoTiedot->toistovali != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor toistovali of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsIntType(_tutkimuspyyntoTiedot->toistovali);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor toistovali of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->toistovali);
  }
  if (_tutkimuspyyntoTiedot->tulkinta != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor tulkinta of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsStringType(_tutkimuspyyntoTiedot->tulkinta);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor tulkinta of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->tulkinta);
  }
  if (_tutkimuspyyntoTiedot->tuottaja != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor tuottaja of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsIntType(_tutkimuspyyntoTiedot->tuottaja);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor tuottaja of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->tuottaja);
  }
  if (_tutkimuspyyntoTiedot->tyonantaja != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor tyonantaja of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsIntType(_tutkimuspyyntoTiedot->tyonantaja);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor tyonantaja of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->tyonantaja);
  }
  if (_tutkimuspyyntoTiedot->vastaustietoja != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor vastaustietoja of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsUnsignedShortType(_tutkimuspyyntoTiedot->vastaustietoja);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor vastaustietoja of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->vastaustietoja);
  }
  if (_tutkimuspyyntoTiedot->viitearvot != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor viitearvot of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsStringType(_tutkimuspyyntoTiedot->viitearvot);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor viitearvot of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->viitearvot);
  }
  if (_tutkimuspyyntoTiedot->kirjaaja != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor kirjaaja of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsIntType(_tutkimuspyyntoTiedot->kirjaaja);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor kirjaaja of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->kirjaaja);
  }
  if (_tutkimuspyyntoTiedot->tilaKoodi != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor tilaKoodi of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsStringType(_tutkimuspyyntoTiedot->tilaKoodi);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor tilaKoodi of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->tilaKoodi);
  }
  if (_tutkimuspyyntoTiedot->poikkeava != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor poikkeava of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    freeXsIntType(_tutkimuspyyntoTiedot->poikkeava);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor poikkeava of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->poikkeava);
  }
  if (_tutkimuspyyntoTiedot->mikrobit != NULL) {
    for (i = 0; i < _tutkimuspyyntoTiedot->_sizeof_mikrobit; i++) {
#if DEBUG_ENUNCIATE > 1
      printf("Freeing accessor mikrobit[%i] of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n", i);
#endif
      freeNs0TutkimuspyyntoMikrobiType(&(_tutkimuspyyntoTiedot->mikrobit[i]));
    }
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor mikrobit of type CoreWEB_ns0_tutkimuspyyntoTiedot...\n");
#endif
    free(_tutkimuspyyntoTiedot->mikrobit);
  }
}
#endif /* DEF_CoreWEB_ns0_tutkimuspyyntoTiedot_M */
#ifndef DEF_CoreWEB_ns0_hoito_M
#define DEF_CoreWEB_ns0_hoito_M

/**
 * Reads a Hoito element from XML. The element to be read is "hoito", and
 * it is assumed that the reader is pointing to the XML document (not the element).
 *
 * @param reader The XML reader.
 * @return The Hoito, or NULL in case of error.
 */
struct CoreWEB_ns0_hoito *xml_read_CoreWEB_ns0_hoito(xmlTextReaderPtr reader) {
  int status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
  return xmlTextReaderReadNs0HoitoElement(reader);
}

/**
 * Writes a Hoito to XML under element name "hoito".
 *
 * @param writer The XML writer.
 * @param _hoito The Hoito to write.
 * @return 1 if successful, 0 otherwise.
 */
int xml_write_CoreWEB_ns0_hoito(xmlTextWriterPtr writer, struct CoreWEB_ns0_hoito *_hoito) {
  return xmlTextWriterWriteNs0HoitoElementNS(writer, _hoito, 1);
}

/**
 * Frees a Hoito.
 *
 * @param _hoito The Hoito to free.
 */
void free_CoreWEB_ns0_hoito(struct CoreWEB_ns0_hoito *_hoito) {
  freeNs0HoitoType(_hoito);
  free(_hoito);
}

/**
 * Reads a Hoito element from XML. The element to be read is "hoito", and
 * it is assumed that the reader is pointing to that element.
 *
 * @param reader The XML reader.
 * @return The Hoito, or NULL in case of error.
 */
struct CoreWEB_ns0_hoito *xmlTextReaderReadNs0HoitoElement(xmlTextReaderPtr reader) {
  struct CoreWEB_ns0_hoito *_hoito = NULL;

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "hoito", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Attempting to read root element {}hoito.\n");
#endif
    _hoito = xmlTextReaderReadNs0HoitoType(reader);
  }
#if DEBUG_ENUNCIATE
  if (_hoito == NULL) {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      printf("attempt to read {}hoito failed. current element: {}%s\n",  xmlTextReaderConstLocalName(reader));
    }
    else {
      printf("attempt to read {}hoito failed. current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader));
    }
  }
#endif

  return _hoito;
}

/**
 * Writes a Hoito to XML under element name "hoito".
 * Does NOT write the namespace prefixes.
 *
 * @param writer The XML writer.
 * @param _hoito The Hoito to write.
 * @return 1 if successful, 0 otherwise.
 */
static int xmlTextWriterWriteNs0HoitoElement(xmlTextWriterPtr writer, struct CoreWEB_ns0_hoito *_hoito) {
  return xmlTextWriterWriteNs0HoitoElementNS(writer, _hoito, 0);
}

/**
 * Writes a Hoito to XML under element name "hoito".
 *
 * @param writer The XML writer.
 * @param _hoito The Hoito to write.
 * @param writeNamespaces Whether to write the namespace prefixes.
 * @return 1 if successful, 0 otherwise.
 */
static int xmlTextWriterWriteNs0HoitoElementNS(xmlTextWriterPtr writer, struct CoreWEB_ns0_hoito *_hoito, int writeNamespaces) {
  int totalBytes = 0;
  int status;

  status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "hoito", NULL);
  if (status < 0) {
#if DEBUG_ENUNCIATE
    printf("unable to write start element {}hoito. status: %i\n", status);
#endif
    return status;
  }
  totalBytes += status;

#if DEBUG_ENUNCIATE > 1
  printf("writing type {}hoito for root element {}hoito...\n");
#endif
  status = xmlTextWriterWriteNs0HoitoType(writer, _hoito);
  if (status < 0) {
#if DEBUG_ENUNCIATE
    printf("unable to write type for start element {}hoito. status: %i\n", status);
#endif
    return status;
  }
  totalBytes += status;

  status = xmlTextWriterEndElement(writer);
  if (status < 0) {
#if DEBUG_ENUNCIATE
    printf("unable to end element {}hoito. status: %i\n", status);
#endif
    return status;
  }
  totalBytes += status;

  return totalBytes;
}

/**
 * Frees the children of a Hoito.
 *
 * @param _hoito The Hoito whose children are to be free.
 */
static void freeNs0HoitoElement(struct CoreWEB_ns0_hoito *_hoito) {
  freeNs0HoitoType(_hoito);
}

/**
 * Reads a Hoito from XML. The reader is assumed to be at the start element.
 *
 * @return the Hoito, or NULL in case of error.
 */
static struct CoreWEB_ns0_hoito *xmlTextReaderReadNs0HoitoType(xmlTextReaderPtr reader) {
  int status, depth;
  void *_child_accessor;
  struct CoreWEB_ns0_hoito *_hoito = calloc(1, sizeof(struct CoreWEB_ns0_hoito));



  if (xmlTextReaderIsEmptyElement(reader) == 0) {
    depth = xmlTextReaderDepth(reader);//track the depth.
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);

    while (xmlTextReaderDepth(reader) > depth) {
      if (status < 1) {
        //panic: XML read error.
#if DEBUG_ENUNCIATE
        printf("Failure to advance to next child element.\n");
#endif
        freeNs0HoitoType(_hoito);
        free(_hoito);
        return NULL;
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "alkaa", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}alkaa of type {}date.\n");
#endif
        _child_accessor = xmlTextReaderReadNs0DateType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}alkaa of type {}date.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0HoitoType(_hoito);
          free(_hoito);
          return NULL;
        }

        _hoito->alkaa = ((struct CoreWEB_ns0_date*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "loppuu", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}loppuu of type {}date.\n");
#endif
        _child_accessor = xmlTextReaderReadNs0DateType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}loppuu of type {}date.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0HoitoType(_hoito);
          free(_hoito);
          return NULL;
        }

        _hoito->loppuu = ((struct CoreWEB_ns0_date*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "maaraaja", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}maaraaja of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}maaraaja of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0HoitoType(_hoito);
          free(_hoito);
          return NULL;
        }

        _hoito->maaraaja = ((int*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "tekija", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}tekija of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}tekija of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0HoitoType(_hoito);
          free(_hoito);
          return NULL;
        }

        _hoito->tekija = ((int*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "otsikko", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}otsikko of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}otsikko of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0HoitoType(_hoito);
          free(_hoito);
          return NULL;
        }

        _hoito->otsikko = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "vakio", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}vakio of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}vakio of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0HoitoType(_hoito);
          free(_hoito);
          return NULL;
        }

        _hoito->vakio = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "vapaa", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}vapaa of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}vapaa of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0HoitoType(_hoito);
          free(_hoito);
          return NULL;
        }

        _hoito->vapaa = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "huomautuksia", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}huomautuksia of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}huomautuksia of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0HoitoType(_hoito);
          free(_hoito);
          return NULL;
        }

        _hoito->huomautuksia = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "kellonajat", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}kellonajat of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}kellonajat of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0HoitoType(_hoito);
          free(_hoito);
          return NULL;
        }

        _hoito->kellonajat = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "kirjaaja", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}kirjaaja of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}kirjaaja of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0HoitoType(_hoito);
          free(_hoito);
          return NULL;
        }

        _hoito->kirjaaja = ((int*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "lopettaja", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}lopettaja of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}lopettaja of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0HoitoType(_hoito);
          free(_hoito);
          return NULL;
        }

        _hoito->lopettaja = ((int*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "lopetettu", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}lopetettu of type {http://www.w3.org/2001/XMLSchema}dateTime.\n");
#endif
        _child_accessor = xmlTextReaderReadXsDateTimeType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}lopetettu of type {http://www.w3.org/2001/XMLSchema}dateTime.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0HoitoType(_hoito);
          free(_hoito);
          return NULL;
        }

        _hoito->lopetettu = ((struct tm*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "kerta", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}kerta of type {http://www.w3.org/2001/XMLSchema}unsignedShort.\n");
#endif
        _child_accessor = xmlTextReaderReadXsUnsignedShortType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}kerta of type {http://www.w3.org/2001/XMLSchema}unsignedShort.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0HoitoType(_hoito);
          free(_hoito);
          return NULL;
        }

        _hoito->kerta = *((unsigned short*)_child_accessor);
        free(_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "tehty", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}tehty of type {http://www.w3.org/2001/XMLSchema}dateTime.\n");
#endif
        _child_accessor = xmlTextReaderReadXsDateTimeType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}tehty of type {http://www.w3.org/2001/XMLSchema}dateTime.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0HoitoType(_hoito);
          free(_hoito);
          return NULL;
        }

        _hoito->tehty = ((struct tm*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "lomake", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}lomake of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}lomake of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0HoitoType(_hoito);
          free(_hoito);
          return NULL;
        }

        _hoito->lomake = *((int*)_child_accessor);
        free(_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "rivi", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}rivi of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
        _child_accessor = xmlTextReaderReadXsIntType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}rivi of type {http://www.w3.org/2001/XMLSchema}int.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0HoitoType(_hoito);
          free(_hoito);
          return NULL;
        }

        _hoito->rivi = *((int*)_child_accessor);
        free(_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "muutosaika", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}muutosaika of type {http://www.w3.org/2001/XMLSchema}dateTime.\n");
#endif
        _child_accessor = xmlTextReaderReadXsDateTimeType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}muutosaika of type {http://www.w3.org/2001/XMLSchema}dateTime.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0HoitoType(_hoito);
          free(_hoito);
          return NULL;
        }

        _hoito->muutosaika = ((struct tm*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "maaraajaNimi", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}maaraajaNimi of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}maaraajaNimi of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0HoitoType(_hoito);
          free(_hoito);
          return NULL;
        }

        _hoito->maaraajaNimi = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "kirjaajaNimi", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}kirjaajaNimi of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}kirjaajaNimi of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0HoitoType(_hoito);
          free(_hoito);
          return NULL;
        }

        _hoito->kirjaajaNimi = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "tekijaNimi", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}tekijaNimi of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}tekijaNimi of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0HoitoType(_hoito);
          free(_hoito);
          return NULL;
        }

        _hoito->tekijaNimi = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "lopettajaNimi", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}lopettajaNimi of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}lopettajaNimi of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0HoitoType(_hoito);
          free(_hoito);
          return NULL;
        }

        _hoito->lopettajaNimi = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
        && xmlStrcmp(BAD_CAST "lomakeNimi", xmlTextReaderConstLocalName(reader)) == 0
        && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
        printf("Attempting to read choice {}lomakeNimi of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
        _child_accessor = xmlTextReaderReadXsStringType(reader);
        if (_child_accessor == NULL) {
#if DEBUG_ENUNCIATE
          printf("Failed to read choice {}lomakeNimi of type {http://www.w3.org/2001/XMLSchema}string.\n");
#endif
          //panic: unable to read the child element for some reason.
          freeNs0HoitoType(_hoito);
          free(_hoito);
          return NULL;
        }

        _hoito->lomakeNimi = ((xmlChar*)_child_accessor);
        status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
      }
      else {
#if DEBUG_ENUNCIATE > 1
        if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
          printf("unknown child element {}%s for type {}hoito.  Skipping...\n",  xmlTextReaderConstLocalName(reader));
        }
        else {
          printf("unknown child element {%s}%s for type {}hoito. Skipping...\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader));
        }
#endif
        status = xmlTextReaderSkipElement(reader);
      }
    }
  }

  return _hoito;
}

/**
 * Writes a Hoito to XML.
 *
 * @param writer The XML writer.
 * @param _hoito The Hoito to write.
 * @return The total bytes written, or -1 on error;
 */
static int xmlTextWriterWriteNs0HoitoType(xmlTextWriterPtr writer, struct CoreWEB_ns0_hoito *_hoito) {
  int status, totalBytes = 0, i;
  xmlChar *binaryData;
  if (_hoito->alkaa != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "alkaa", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}alkaa. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {}date for element {}alkaa...\n");
#endif
    status = xmlTextWriterWriteNs0DateType(writer, (_hoito->alkaa));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {}date for element {}alkaa. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}alkaa. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_hoito->loppuu != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "loppuu", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}loppuu. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {}date for element {}loppuu...\n");
#endif
    status = xmlTextWriterWriteNs0DateType(writer, (_hoito->loppuu));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {}date for element {}loppuu. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}loppuu. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_hoito->maaraaja != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "maaraaja", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}maaraaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}maaraaja...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, (_hoito->maaraaja));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}maaraaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}maaraaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_hoito->tekija != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tekija", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}tekija. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}tekija...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, (_hoito->tekija));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}tekija. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}tekija. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_hoito->otsikko != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "otsikko", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}otsikko. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}otsikko...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_hoito->otsikko));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}otsikko. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}otsikko. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_hoito->vakio != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "vakio", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}vakio. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}vakio...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_hoito->vakio));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}vakio. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}vakio. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_hoito->vapaa != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "vapaa", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}vapaa. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}vapaa...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_hoito->vapaa));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}vapaa. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}vapaa. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_hoito->huomautuksia != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "huomautuksia", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}huomautuksia. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}huomautuksia...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_hoito->huomautuksia));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}huomautuksia. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}huomautuksia. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_hoito->kellonajat != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kellonajat", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}kellonajat. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}kellonajat...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_hoito->kellonajat));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}kellonajat. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}kellonajat. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_hoito->kirjaaja != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kirjaaja", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}kirjaaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}kirjaaja...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, (_hoito->kirjaaja));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}kirjaaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}kirjaaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_hoito->lopettaja != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "lopettaja", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}lopettaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}lopettaja...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, (_hoito->lopettaja));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}lopettaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}lopettaja. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_hoito->lopetettu != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "lopetettu", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}lopetettu. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}dateTime for element {}lopetettu...\n");
#endif
    status = xmlTextWriterWriteXsDateTimeType(writer, (_hoito->lopetettu));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}dateTime for element {}lopetettu. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}lopetettu. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (1) { //always write the primitive element.
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kerta", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}kerta. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}unsignedShort for element {}kerta...\n");
#endif
    status = xmlTextWriterWriteXsUnsignedShortType(writer, &(_hoito->kerta));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}unsignedShort for element {}kerta. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}kerta. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_hoito->tehty != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tehty", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}tehty. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}dateTime for element {}tehty...\n");
#endif
    status = xmlTextWriterWriteXsDateTimeType(writer, (_hoito->tehty));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}dateTime for element {}tehty. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}tehty. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (1) { //always write the primitive element.
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "lomake", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}lomake. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}lomake...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, &(_hoito->lomake));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}lomake. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}lomake. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (1) { //always write the primitive element.
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "rivi", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}rivi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}int for element {}rivi...\n");
#endif
    status = xmlTextWriterWriteXsIntType(writer, &(_hoito->rivi));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}int for element {}rivi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}rivi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_hoito->muutosaika != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "muutosaika", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}muutosaika. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}dateTime for element {}muutosaika...\n");
#endif
    status = xmlTextWriterWriteXsDateTimeType(writer, (_hoito->muutosaika));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}dateTime for element {}muutosaika. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}muutosaika. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_hoito->maaraajaNimi != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "maaraajaNimi", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}maaraajaNimi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}maaraajaNimi...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_hoito->maaraajaNimi));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}maaraajaNimi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}maaraajaNimi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_hoito->kirjaajaNimi != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kirjaajaNimi", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}kirjaajaNimi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}kirjaajaNimi...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_hoito->kirjaajaNimi));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}kirjaajaNimi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}kirjaajaNimi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_hoito->tekijaNimi != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tekijaNimi", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}tekijaNimi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}tekijaNimi...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_hoito->tekijaNimi));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}tekijaNimi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}tekijaNimi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_hoito->lopettajaNimi != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "lopettajaNimi", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}lopettajaNimi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}lopettajaNimi...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_hoito->lopettajaNimi));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}lopettajaNimi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}lopettajaNimi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }
  if (_hoito->lomakeNimi != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "lomakeNimi", NULL);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write start element {}lomakeNimi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
#if DEBUG_ENUNCIATE > 1
    printf("writing type {http://www.w3.org/2001/XMLSchema}string for element {}lomakeNimi...\n");
#endif
    status = xmlTextWriterWriteXsStringType(writer, (_hoito->lomakeNimi));
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write type {http://www.w3.org/2001/XMLSchema}string for element {}lomakeNimi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
#if DEBUG_ENUNCIATE
      printf("Failed to write end element {}lomakeNimi. status: %i\n", status);
#endif
      return status;
    }
    totalBytes += status;
  }

  return totalBytes;
}

/**
 * Frees the elements of a Hoito.
 *
 * @param _hoito The Hoito to free.
 */
static void freeNs0HoitoType(struct CoreWEB_ns0_hoito *_hoito) {
  int i;
  if (_hoito->alkaa != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor alkaa of type CoreWEB_ns0_hoito...\n");
#endif
    freeNs0DateType(_hoito->alkaa);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor alkaa of type CoreWEB_ns0_hoito...\n");
#endif
    free(_hoito->alkaa);
  }
  if (_hoito->loppuu != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor loppuu of type CoreWEB_ns0_hoito...\n");
#endif
    freeNs0DateType(_hoito->loppuu);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor loppuu of type CoreWEB_ns0_hoito...\n");
#endif
    free(_hoito->loppuu);
  }
  if (_hoito->maaraaja != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor maaraaja of type CoreWEB_ns0_hoito...\n");
#endif
    freeXsIntType(_hoito->maaraaja);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor maaraaja of type CoreWEB_ns0_hoito...\n");
#endif
    free(_hoito->maaraaja);
  }
  if (_hoito->tekija != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor tekija of type CoreWEB_ns0_hoito...\n");
#endif
    freeXsIntType(_hoito->tekija);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor tekija of type CoreWEB_ns0_hoito...\n");
#endif
    free(_hoito->tekija);
  }
  if (_hoito->otsikko != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor otsikko of type CoreWEB_ns0_hoito...\n");
#endif
    freeXsStringType(_hoito->otsikko);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor otsikko of type CoreWEB_ns0_hoito...\n");
#endif
    free(_hoito->otsikko);
  }
  if (_hoito->vakio != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor vakio of type CoreWEB_ns0_hoito...\n");
#endif
    freeXsStringType(_hoito->vakio);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor vakio of type CoreWEB_ns0_hoito...\n");
#endif
    free(_hoito->vakio);
  }
  if (_hoito->vapaa != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor vapaa of type CoreWEB_ns0_hoito...\n");
#endif
    freeXsStringType(_hoito->vapaa);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor vapaa of type CoreWEB_ns0_hoito...\n");
#endif
    free(_hoito->vapaa);
  }
  if (_hoito->huomautuksia != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor huomautuksia of type CoreWEB_ns0_hoito...\n");
#endif
    freeXsStringType(_hoito->huomautuksia);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor huomautuksia of type CoreWEB_ns0_hoito...\n");
#endif
    free(_hoito->huomautuksia);
  }
  if (_hoito->kellonajat != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor kellonajat of type CoreWEB_ns0_hoito...\n");
#endif
    freeXsStringType(_hoito->kellonajat);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor kellonajat of type CoreWEB_ns0_hoito...\n");
#endif
    free(_hoito->kellonajat);
  }
  if (_hoito->kirjaaja != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor kirjaaja of type CoreWEB_ns0_hoito...\n");
#endif
    freeXsIntType(_hoito->kirjaaja);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor kirjaaja of type CoreWEB_ns0_hoito...\n");
#endif
    free(_hoito->kirjaaja);
  }
  if (_hoito->lopettaja != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor lopettaja of type CoreWEB_ns0_hoito...\n");
#endif
    freeXsIntType(_hoito->lopettaja);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor lopettaja of type CoreWEB_ns0_hoito...\n");
#endif
    free(_hoito->lopettaja);
  }
  if (_hoito->lopetettu != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor lopetettu of type CoreWEB_ns0_hoito...\n");
#endif
    freeXsDateTimeType(_hoito->lopetettu);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor lopetettu of type CoreWEB_ns0_hoito...\n");
#endif
    free(_hoito->lopetettu);
  }
  if (_hoito->tehty != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor tehty of type CoreWEB_ns0_hoito...\n");
#endif
    freeXsDateTimeType(_hoito->tehty);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor tehty of type CoreWEB_ns0_hoito...\n");
#endif
    free(_hoito->tehty);
  }
  if (_hoito->muutosaika != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor muutosaika of type CoreWEB_ns0_hoito...\n");
#endif
    freeXsDateTimeType(_hoito->muutosaika);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor muutosaika of type CoreWEB_ns0_hoito...\n");
#endif
    free(_hoito->muutosaika);
  }
  if (_hoito->maaraajaNimi != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor maaraajaNimi of type CoreWEB_ns0_hoito...\n");
#endif
    freeXsStringType(_hoito->maaraajaNimi);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor maaraajaNimi of type CoreWEB_ns0_hoito...\n");
#endif
    free(_hoito->maaraajaNimi);
  }
  if (_hoito->kirjaajaNimi != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor kirjaajaNimi of type CoreWEB_ns0_hoito...\n");
#endif
    freeXsStringType(_hoito->kirjaajaNimi);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor kirjaajaNimi of type CoreWEB_ns0_hoito...\n");
#endif
    free(_hoito->kirjaajaNimi);
  }
  if (_hoito->tekijaNimi != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor tekijaNimi of type CoreWEB_ns0_hoito...\n");
#endif
    freeXsStringType(_hoito->tekijaNimi);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor tekijaNimi of type CoreWEB_ns0_hoito...\n");
#endif
    free(_hoito->tekijaNimi);
  }
  if (_hoito->lopettajaNimi != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor lopettajaNimi of type CoreWEB_ns0_hoito...\n");
#endif
    freeXsStringType(_hoito->lopettajaNimi);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor lopettajaNimi of type CoreWEB_ns0_hoito...\n");
#endif
    free(_hoito->lopettajaNimi);
  }
  if (_hoito->lomakeNimi != NULL) {
#if DEBUG_ENUNCIATE > 1
    printf("Freeing type of accessor lomakeNimi of type CoreWEB_ns0_hoito...\n");
#endif
    freeXsStringType(_hoito->lomakeNimi);
#if DEBUG_ENUNCIATE > 1
    printf("Freeing accessor lomakeNimi of type CoreWEB_ns0_hoito...\n");
#endif
    free(_hoito->lomakeNimi);
  }
}
#endif /* DEF_CoreWEB_ns0_hoito_M */
#ifndef DEF_CoreWEB_ns0_date_M
#define DEF_CoreWEB_ns0_date_M

/**
 * Reads a Date from XML. The reader is assumed to be at the start element.
 *
 * @return the Date, or NULL in case of error.
 */
static struct CoreWEB_ns0_date *xmlTextReaderReadNs0DateType(xmlTextReaderPtr reader) {
  int status, depth;
  void *_child_accessor;
  struct CoreWEB_ns0_date *_date = calloc(1, sizeof(struct CoreWEB_ns0_date));




  return _date;
}

/**
 * Writes a Date to XML.
 *
 * @param writer The XML writer.
 * @param _date The Date to write.
 * @return The total bytes written, or -1 on error;
 */
static int xmlTextWriterWriteNs0DateType(xmlTextWriterPtr writer, struct CoreWEB_ns0_date *_date) {
  int status, totalBytes = 0, i;
  xmlChar *binaryData;

  return totalBytes;
}

/**
 * Frees the elements of a Date.
 *
 * @param _date The Date to free.
 */
static void freeNs0DateType(struct CoreWEB_ns0_date *_date) {
  int i;
}
#endif /* DEF_CoreWEB_ns0_date_M */
