#import "CoreWEB.h"
#ifndef DEF_COREWEBNS0Date_M
#define DEF_COREWEBNS0Date_M

/**
 * (no documentation provided)
 */
@implementation COREWEBNS0Date

- (void) dealloc
{
  [super dealloc];
}
@end /* implementation COREWEBNS0Date */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0Date (JAXB) <JAXBReading, JAXBWriting, JAXBType>

@end /*interface COREWEBNS0Date (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0Date (JAXB)

/**
 * Read an instance of COREWEBNS0Date from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0Date defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0Date *_cOREWEBNS0Date = [[COREWEBNS0Date alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0Date initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0Date = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0Date autorelease];
  return _cOREWEBNS0Date;
}

/**
 * Initialize this instance of COREWEBNS0Date according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0Date to the writer.
 * Note that since we're only writing the XML type,
 * No start/end element will be written.
 *
 * @param reader The reader.
 */
- (void) writeXMLType: (xmlTextWriterPtr) writer
{
  [super writeXMLType:writer];
}

//documentation inherited.
- (BOOL) readJAXBAttribute: (xmlTextReaderPtr) reader
{
  void *_child_accessor;

  if ([super readJAXBAttribute: reader]) {
    return YES;
  }

  return NO;
}

//documentation inherited.
- (BOOL) readJAXBValue: (xmlTextReaderPtr) reader
{
  return [super readJAXBValue: reader];
}

//documentation inherited.
- (BOOL) readJAXBChildElement: (xmlTextReaderPtr) reader
{
  id __child;
  void *_child_accessor;
  int status, depth;

  if ([super readJAXBChildElement: reader]) {
    return YES;
  }

  return NO;
}

//documentation inherited.
- (int) readUnknownJAXBChildElement: (xmlTextReaderPtr) reader
{
  return [super readUnknownJAXBChildElement: reader];
}

//documentation inherited.
- (void) readUnknownJAXBAttribute: (xmlTextReaderPtr) reader
{
  [super readUnknownJAXBAttribute: reader];
}

//documentation inherited.
- (void) writeJAXBAttributes: (xmlTextWriterPtr) writer
{
  int status;

  [super writeJAXBAttributes: writer];

}

//documentation inherited.
- (void) writeJAXBValue: (xmlTextWriterPtr) writer
{
  [super writeJAXBValue: writer];
}

/**
 * Method for writing the child elements.
 *
 * @param writer The writer.
 */
- (void) writeJAXBChildElements: (xmlTextWriterPtr) writer
{
  int status;
  id __item;
  id __item_copy;
  NSEnumerator *__enumerator;

  [super writeJAXBChildElements: writer];

}
@end /* implementation COREWEBNS0Date (JAXB) */

#endif /* DEF_COREWEBNS0Date_M */
#ifndef DEF_COREWEBNS0AbstractDTO_M
#define DEF_COREWEBNS0AbstractDTO_M

/**
 * (no documentation provided)
 */
@implementation COREWEBNS0AbstractDTO

- (void) dealloc
{
  [super dealloc];
}
@end /* implementation COREWEBNS0AbstractDTO */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0AbstractDTO (JAXB) <JAXBReading, JAXBWriting, JAXBType>

@end /*interface COREWEBNS0AbstractDTO (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0AbstractDTO (JAXB)

/**
 * Read an instance of COREWEBNS0AbstractDTO from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0AbstractDTO defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0AbstractDTO *_cOREWEBNS0AbstractDTO = [[COREWEBNS0AbstractDTO alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0AbstractDTO initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0AbstractDTO = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0AbstractDTO autorelease];
  return _cOREWEBNS0AbstractDTO;
}

/**
 * Initialize this instance of COREWEBNS0AbstractDTO according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0AbstractDTO to the writer.
 * Note that since we're only writing the XML type,
 * No start/end element will be written.
 *
 * @param reader The reader.
 */
- (void) writeXMLType: (xmlTextWriterPtr) writer
{
  [super writeXMLType:writer];
}

//documentation inherited.
- (BOOL) readJAXBAttribute: (xmlTextReaderPtr) reader
{
  void *_child_accessor;

  if ([super readJAXBAttribute: reader]) {
    return YES;
  }

  return NO;
}

//documentation inherited.
- (BOOL) readJAXBValue: (xmlTextReaderPtr) reader
{
  return [super readJAXBValue: reader];
}

//documentation inherited.
- (BOOL) readJAXBChildElement: (xmlTextReaderPtr) reader
{
  id __child;
  void *_child_accessor;
  int status, depth;

  if ([super readJAXBChildElement: reader]) {
    return YES;
  }

  return NO;
}

//documentation inherited.
- (int) readUnknownJAXBChildElement: (xmlTextReaderPtr) reader
{
  return [super readUnknownJAXBChildElement: reader];
}

//documentation inherited.
- (void) readUnknownJAXBAttribute: (xmlTextReaderPtr) reader
{
  [super readUnknownJAXBAttribute: reader];
}

//documentation inherited.
- (void) writeJAXBAttributes: (xmlTextWriterPtr) writer
{
  int status;

  [super writeJAXBAttributes: writer];

}

//documentation inherited.
- (void) writeJAXBValue: (xmlTextWriterPtr) writer
{
  [super writeJAXBValue: writer];
}

/**
 * Method for writing the child elements.
 *
 * @param writer The writer.
 */
- (void) writeJAXBChildElements: (xmlTextWriterPtr) writer
{
  int status;
  id __item;
  id __item_copy;
  NSEnumerator *__enumerator;

  [super writeJAXBChildElements: writer];

}
@end /* implementation COREWEBNS0AbstractDTO (JAXB) */

#endif /* DEF_COREWEBNS0AbstractDTO_M */
#ifndef DEF_COREWEBNS0TutkimuspyyntoMikrobi_M
#define DEF_COREWEBNS0TutkimuspyyntoMikrobi_M

/**
 *  DTO for Lab Examination Microbe

 A class to present TUTKIMUSPYYNTOMIKROBI table in laboratory examination functionality.
 Used to carry the data from database to the client side.


 */
@implementation COREWEBNS0TutkimuspyyntoMikrobi

/**
 * (no documentation provided)
 */
- (short) rivi
{
  return _rivi;
}

/**
 * (no documentation provided)
 */
- (void) setRivi: (short) newRivi
{
  _rivi = newRivi;
}

/**
 * (no documentation provided)
 */
- (NSString *) mikrobi
{
  return _mikrobi;
}

/**
 * (no documentation provided)
 */
- (void) setMikrobi: (NSString *) newMikrobi
{
  [newMikrobi retain];
  [_mikrobi release];
  _mikrobi = newMikrobi;
}

/**
 * (no documentation provided)
 */
- (unsigned short *) tutkimustyyppi
{
  return _tutkimustyyppi;
}

/**
 * (no documentation provided)
 */
- (void) setTutkimustyyppi: (unsigned short *) newTutkimustyyppi
{
  if (_tutkimustyyppi != NULL) {
    free(_tutkimustyyppi);
  }
  _tutkimustyyppi = newTutkimustyyppi;
}

/**
 * (no documentation provided)
 */
- (NSString *) maara
{
  return _maara;
}

/**
 * (no documentation provided)
 */
- (void) setMaara: (NSString *) newMaara
{
  [newMaara retain];
  [_maara release];
  _maara = newMaara;
}

/**
 * (no documentation provided)
 */
- (NSString *) numero
{
  return _numero;
}

/**
 * (no documentation provided)
 */
- (void) setNumero: (NSString *) newNumero
{
  [newNumero retain];
  [_numero release];
  _numero = newNumero;
}

/**
 * (no documentation provided)
 */
- (NSString *) kommentti
{
  return _kommentti;
}

/**
 * (no documentation provided)
 */
- (void) setKommentti: (NSString *) newKommentti
{
  [newKommentti retain];
  [_kommentti release];
  _kommentti = newKommentti;
}

/**
 * (no documentation provided)
 */
- (unsigned short) poistettu
{
  return _poistettu;
}

/**
 * (no documentation provided)
 */
- (void) setPoistettu: (unsigned short) newPoistettu
{
  _poistettu = newPoistettu;
}

/**
 * (no documentation provided)
 */
- (NSDate *) muutosaika
{
  return _muutosaika;
}

/**
 * (no documentation provided)
 */
- (void) setMuutosaika: (NSDate *) newMuutosaika
{
  [newMuutosaika retain];
  [_muutosaika release];
  _muutosaika = newMuutosaika;
}

/**
 * (no documentation provided)
 */
- (short) muutospaikka
{
  return _muutospaikka;
}

/**
 * (no documentation provided)
 */
- (void) setMuutospaikka: (short) newMuutospaikka
{
  _muutospaikka = newMuutospaikka;
}

/**
 * (no documentation provided)
 */
- (NSArray *) herkkyydet
{
  return _herkkyydet;
}

/**
 * (no documentation provided)
 */
- (void) setHerkkyydet: (NSArray *) newHerkkyydet
{
  [newHerkkyydet retain];
  [_herkkyydet release];
  _herkkyydet = newHerkkyydet;
}

- (void) dealloc
{
  [self setMikrobi: nil];
  [self setTutkimustyyppi: NULL];
  [self setMaara: nil];
  [self setNumero: nil];
  [self setKommentti: nil];
  [self setMuutosaika: nil];
  [self setHerkkyydet: nil];
  [super dealloc];
}

//documentation inherited.
+ (id<EnunciateXML>) readFromXML: (NSData *) xml
{
  COREWEBNS0TutkimuspyyntoMikrobi *_cOREWEBNS0TutkimuspyyntoMikrobi;
  xmlTextReaderPtr reader = xmlReaderForMemory([xml bytes], [xml length], NULL, NULL, 0);
  if (reader == NULL) {
    [NSException raise: @"XMLReadError"
                 format: @"Error instantiating an XML reader."];
    return nil;
  }

  _cOREWEBNS0TutkimuspyyntoMikrobi = (COREWEBNS0TutkimuspyyntoMikrobi *) [COREWEBNS0TutkimuspyyntoMikrobi readXMLElement: reader];
  xmlFreeTextReader(reader); //free the reader
  return _cOREWEBNS0TutkimuspyyntoMikrobi;
}

//documentation inherited.
- (NSData *) writeToXML
{
  xmlBufferPtr buf;
  xmlTextWriterPtr writer;
  int rc;
  NSData *data;

  buf = xmlBufferCreate();
  if (buf == NULL) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error creating an XML buffer."];
    return nil;
  }

  writer = xmlNewTextWriterMemory(buf, 0);
  if (writer == NULL) {
    xmlBufferFree(buf);
    [NSException raise: @"XMLWriteError"
                 format: @"Error creating an XML writer."];
    return nil;
  }

  rc = xmlTextWriterStartDocument(writer, NULL, "utf-8", NULL);
  if (rc < 0) {
    xmlFreeTextWriter(writer);
    xmlBufferFree(buf);
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing XML start document."];
    return nil;
  }

  NS_DURING
  {
    [self writeXMLElement: writer];
  }
  NS_HANDLER
  {
    xmlFreeTextWriter(writer);
    xmlBufferFree(buf);
    [localException raise];
  }
  NS_ENDHANDLER

  rc = xmlTextWriterEndDocument(writer);
  if (rc < 0) {
    xmlFreeTextWriter(writer);
    xmlBufferFree(buf);
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing XML end document."];
    return nil;
  }

  xmlFreeTextWriter(writer);
  data = [NSData dataWithBytes: buf->content length: buf->use];
  xmlBufferFree(buf);
  return data;
}
@end /* implementation COREWEBNS0TutkimuspyyntoMikrobi */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0TutkimuspyyntoMikrobi (JAXB) <JAXBReading, JAXBWriting, JAXBType, JAXBElement>

@end /*interface COREWEBNS0TutkimuspyyntoMikrobi (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0TutkimuspyyntoMikrobi (JAXB)

/**
 * Read an instance of COREWEBNS0TutkimuspyyntoMikrobi from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0TutkimuspyyntoMikrobi defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0TutkimuspyyntoMikrobi *_cOREWEBNS0TutkimuspyyntoMikrobi = [[COREWEBNS0TutkimuspyyntoMikrobi alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0TutkimuspyyntoMikrobi initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0TutkimuspyyntoMikrobi = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0TutkimuspyyntoMikrobi autorelease];
  return _cOREWEBNS0TutkimuspyyntoMikrobi;
}

/**
 * Initialize this instance of COREWEBNS0TutkimuspyyntoMikrobi according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0TutkimuspyyntoMikrobi to the writer.
 * Note that since we're only writing the XML type,
 * No start/end element will be written.
 *
 * @param reader The reader.
 */
- (void) writeXMLType: (xmlTextWriterPtr) writer
{
  [super writeXMLType:writer];
}

/**
 * Reads a COREWEBNS0TutkimuspyyntoMikrobi from an XML reader. The element to be read is
 * "tutkimuspyyntoMikrobi".
 *
 * @param reader The XML reader.
 * @return The COREWEBNS0TutkimuspyyntoMikrobi.
 */
+ (id<JAXBElement>) readXMLElement: (xmlTextReaderPtr) reader {
  int status;
  COREWEBNS0TutkimuspyyntoMikrobi *_tutkimuspyyntoMikrobi = nil;

  if (xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) {
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
    if (status < 1) {
      [NSException raise: @"XMLReadError"
                   format: @"Error advancing the reader to start element tutkimuspyyntoMikrobi."];
    }
  }

  if (xmlStrcmp(BAD_CAST "tutkimuspyyntoMikrobi", xmlTextReaderConstLocalName(reader)) == 0
      && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read root element {}tutkimuspyyntoMikrobi.");
#endif
    _tutkimuspyyntoMikrobi = (COREWEBNS0TutkimuspyyntoMikrobi *)[COREWEBNS0TutkimuspyyntoMikrobi readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Successfully read root element {}tutkimuspyyntoMikrobi.");
#endif
  }
  else {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0TutkimuspyyntoMikrobi. Expected element tutkimuspyyntoMikrobi. Current element: {}%s", xmlTextReaderConstLocalName(reader)];
    }
    else {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0TutkimuspyyntoMikrobi. Expected element tutkimuspyyntoMikrobi. Current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader)];
    }
  }

  return _tutkimuspyyntoMikrobi;
}

/**
 * Writes this COREWEBNS0TutkimuspyyntoMikrobi to XML under element name "tutkimuspyyntoMikrobi".
 * The namespace declarations for the element will be written.
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoMikrobi The TutkimuspyyntoMikrobi to write.
 * @return 1 if successful, 0 otherwise.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer
{
  [self writeXMLElement: writer writeNamespaces: YES];
}

/**
 * Writes this COREWEBNS0TutkimuspyyntoMikrobi to an XML writer.
 *
 * @param writer The writer.
 * @param writeNs Whether to write the namespaces for this element to the xml writer.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer writeNamespaces: (BOOL) writeNs
{
  int rc = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tutkimuspyyntoMikrobi", NULL);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing start element {}tutkimuspyyntoMikrobi. XML writer status: %i\n", rc];
  }

#if DEBUG_ENUNCIATE > 1
  NSLog(@"writing type {}tutkimuspyyntoMikrobi for root element {}tutkimuspyyntoMikrobi...");
#endif
  [self writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
  NSLog(@"successfully wrote type {}tutkimuspyyntoMikrobi for root element {}tutkimuspyyntoMikrobi...");
#endif
  rc = xmlTextWriterEndElement(writer);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing end element {}tutkimuspyyntoMikrobi. XML writer status: %i\n", rc];
  }
}

//documentation inherited.
- (BOOL) readJAXBAttribute: (xmlTextReaderPtr) reader
{
  void *_child_accessor;

  if ([super readJAXBAttribute: reader]) {
    return YES;
  }

  return NO;
}

//documentation inherited.
- (BOOL) readJAXBValue: (xmlTextReaderPtr) reader
{
  return [super readJAXBValue: reader];
}

//documentation inherited.
- (BOOL) readJAXBChildElement: (xmlTextReaderPtr) reader
{
  id __child;
  void *_child_accessor;
  int status, depth;

  if ([super readJAXBChildElement: reader]) {
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "rivi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setRivi: *((short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "mikrobi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}mikrobi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}mikrobi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setMikrobi: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tutkimustyyppi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setTutkimustyyppi: ((unsigned short*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "maara", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}maara of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}maara of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setMaara: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "numero", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}numero of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}numero of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setNumero: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kommentti", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}kommentti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}kommentti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setKommentti: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "poistettu", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setPoistettu: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "muutosaika", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}muutosaika of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif
    __child = [NSDate readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}muutosaika of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif

    [self setMuutosaika: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "muutospaikka", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setMuutospaikka: *((short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "herkkyydet", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}herkkyydet of type {}tutkimuspyyntoHerkkyys.");
#endif

     __child = [COREWEBNS0TutkimuspyyntoHerkkyys readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}herkkyydet of type {}tutkimuspyyntoHerkkyys.");
#endif

    if ([self herkkyydet]) {
      [self setHerkkyydet: [[self herkkyydet] arrayByAddingObject: __child]];
    }
    else {
      [self setHerkkyydet: [NSArray arrayWithObject: __child]];
    }
    return YES;
  } //end "if choice"


  return NO;
}

//documentation inherited.
- (int) readUnknownJAXBChildElement: (xmlTextReaderPtr) reader
{
  return [super readUnknownJAXBChildElement: reader];
}

//documentation inherited.
- (void) readUnknownJAXBAttribute: (xmlTextReaderPtr) reader
{
  [super readUnknownJAXBAttribute: reader];
}

//documentation inherited.
- (void) writeJAXBAttributes: (xmlTextWriterPtr) writer
{
  int status;

  [super writeJAXBAttributes: writer];

}

//documentation inherited.
- (void) writeJAXBValue: (xmlTextWriterPtr) writer
{
  [super writeJAXBValue: writer];
}

/**
 * Method for writing the child elements.
 *
 * @param writer The writer.
 */
- (void) writeJAXBChildElements: (xmlTextWriterPtr) writer
{
  int status;
  id __item;
  id __item_copy;
  NSEnumerator *__enumerator;

  [super writeJAXBChildElements: writer];

  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "rivi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}rivi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}rivi...");
#endif
    status = xmlTextWriterWriteShortType(writer, &_rivi);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}rivi...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}rivi."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}rivi."];
    }
  }
  if ([self mikrobi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "mikrobi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}mikrobi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}mikrobi...");
#endif
    [[self mikrobi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}mikrobi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}mikrobi."];
    }
  }
  if ([self tutkimustyyppi] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tutkimustyyppi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tutkimustyyppi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tutkimustyyppi...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self tutkimustyyppi]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tutkimustyyppi...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}tutkimustyyppi."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tutkimustyyppi."];
    }
  }
  if ([self maara]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "maara", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}maara."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}maara...");
#endif
    [[self maara] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}maara...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}maara."];
    }
  }
  if ([self numero]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "numero", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}numero."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}numero...");
#endif
    [[self numero] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}numero...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}numero."];
    }
  }
  if ([self kommentti]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kommentti", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kommentti."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kommentti...");
#endif
    [[self kommentti] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kommentti...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kommentti."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "poistettu", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}poistettu."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}poistettu...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_poistettu);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}poistettu...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}poistettu."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}poistettu."];
    }
  }
  if ([self muutosaika]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "muutosaika", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}muutosaika."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}muutosaika...");
#endif
    [[self muutosaika] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}muutosaika...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}muutosaika."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "muutospaikka", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}muutospaikka."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}muutospaikka...");
#endif
    status = xmlTextWriterWriteShortType(writer, &_muutospaikka);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}muutospaikka...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}muutospaikka."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}muutospaikka."];
    }
  }
  if ([self herkkyydet]) {
    __enumerator = [[self herkkyydet] objectEnumerator];

    while ( (__item = [__enumerator nextObject]) ) {
      status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "herkkyydet", NULL);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing start child element {}herkkyydet."];
      }

#if DEBUG_ENUNCIATE > 1
      NSLog(@"writing element {}herkkyydet...");
#endif
      [__item writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
      NSLog(@"successfully wrote element {}herkkyydet...");
#endif

      status = xmlTextWriterEndElement(writer);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing end child element {}herkkyydet."];
      }
    } //end item iterator.
  }
}
@end /* implementation COREWEBNS0TutkimuspyyntoMikrobi (JAXB) */

#endif /* DEF_COREWEBNS0TutkimuspyyntoMikrobi_M */
#ifndef DEF_COREWEBNS0Hoito_M
#define DEF_COREWEBNS0Hoito_M

/**
 *  DTO for Hoito

 A class to present HOITO table in hoito-ohjeet ja -m��r�ykset functionality.
 Used to carry the data from database to the client side.


 */
@implementation COREWEBNS0Hoito

/**
 * Returns the alkaa date
 */
- (COREWEBNS0Date *) alkaa
{
  return _alkaa;
}

/**
 * Returns the alkaa date
 */
- (void) setAlkaa: (COREWEBNS0Date *) newAlkaa
{
  [newAlkaa retain];
  [_alkaa release];
  _alkaa = newAlkaa;
}

/**
 * Returns the loppuu date
 */
- (COREWEBNS0Date *) loppuu
{
  return _loppuu;
}

/**
 * Returns the loppuu date
 */
- (void) setLoppuu: (COREWEBNS0Date *) newLoppuu
{
  [newLoppuu retain];
  [_loppuu release];
  _loppuu = newLoppuu;
}

/**
 * Returns the maaraaja id
 */
- (int *) maaraaja
{
  return _maaraaja;
}

/**
 * Returns the maaraaja id
 */
- (void) setMaaraaja: (int *) newMaaraaja
{
  if (_maaraaja != NULL) {
    free(_maaraaja);
  }
  _maaraaja = newMaaraaja;
}

/**
 * Returns the tekija id
 */
- (int *) tekija
{
  return _tekija;
}

/**
 * Returns the tekija id
 */
- (void) setTekija: (int *) newTekija
{
  if (_tekija != NULL) {
    free(_tekija);
  }
  _tekija = newTekija;
}

/**
 * Returns the header (otsikko)
 */
- (NSString *) otsikko
{
  return _otsikko;
}

/**
 * Returns the header (otsikko)
 */
- (void) setOtsikko: (NSString *) newOtsikko
{
  [newOtsikko retain];
  [_otsikko release];
  _otsikko = newOtsikko;
}

/**
 * Returns the constant string (vakio)
 */
- (NSString *) vakio
{
  return _vakio;
}

/**
 * Returns the constant string (vakio)
 */
- (void) setVakio: (NSString *) newVakio
{
  [newVakio retain];
  [_vakio release];
  _vakio = newVakio;
}

/**
 * Returns the free string (vapaa)
 */
- (NSString *) vapaa
{
  return _vapaa;
}

/**
 * Returns the free string (vapaa)
 */
- (void) setVapaa: (NSString *) newVapaa
{
  [newVapaa retain];
  [_vapaa release];
  _vapaa = newVapaa;
}

/**
 * Returns the notifications (huomautuksia)
 */
- (NSString *) huomautuksia
{
  return _huomautuksia;
}

/**
 * Returns the notifications (huomautuksia)
 */
- (void) setHuomautuksia: (NSString *) newHuomautuksia
{
  [newHuomautuksia retain];
  [_huomautuksia release];
  _huomautuksia = newHuomautuksia;
}

/**
 * Returns the times as a string
 */
- (NSString *) kellonajat
{
  return _kellonajat;
}

/**
 * Returns the times as a string
 */
- (void) setKellonajat: (NSString *) newKellonajat
{
  [newKellonajat retain];
  [_kellonajat release];
  _kellonajat = newKellonajat;
}

/**
 * Returns the recorder (kirjaaja)
 */
- (int *) kirjaaja
{
  return _kirjaaja;
}

/**
 * Returns the recorder (kirjaaja)
 */
- (void) setKirjaaja: (int *) newKirjaaja
{
  if (_kirjaaja != NULL) {
    free(_kirjaaja);
  }
  _kirjaaja = newKirjaaja;
}

/**
 * Returns the ender (lopettaja)
 */
- (int *) lopettaja
{
  return _lopettaja;
}

/**
 * Returns the ender (lopettaja)
 */
- (void) setLopettaja: (int *) newLopettaja
{
  if (_lopettaja != NULL) {
    free(_lopettaja);
  }
  _lopettaja = newLopettaja;
}

/**
 * Returns the time of ending (lopetettu)
 */
- (NSDate *) lopetettu
{
  return _lopetettu;
}

/**
 * Returns the time of ending (lopetettu)
 */
- (void) setLopetettu: (NSDate *) newLopetettu
{
  [newLopetettu retain];
  [_lopetettu release];
  _lopetettu = newLopetettu;
}

/**
 * 
 */
- (unsigned short) kerta
{
  return _kerta;
}

/**
 * 
 */
- (void) setKerta: (unsigned short) newKerta
{
  _kerta = newKerta;
}

/**
 * Returns the time when Hoito is done
 */
- (NSDate *) tehty
{
  return _tehty;
}

/**
 * Returns the time when Hoito is done
 */
- (void) setTehty: (NSDate *) newTehty
{
  [newTehty retain];
  [_tehty release];
  _tehty = newTehty;
}

/**
 * 
 */
- (int) lomake
{
  return _lomake;
}

/**
 * 
 */
- (void) setLomake: (int) newLomake
{
  _lomake = newLomake;
}

/**
 * Returns the row number (rivi)
 */
- (int) rivi
{
  return _rivi;
}

/**
 * Returns the row number (rivi)
 */
- (void) setRivi: (int) newRivi
{
  _rivi = newRivi;
}

/**
 * Returns the time of change
 */
- (NSDate *) muutosaika
{
  return _muutosaika;
}

/**
 * Returns the time of change
 */
- (void) setMuutosaika: (NSDate *) newMuutosaika
{
  [newMuutosaika retain];
  [_muutosaika release];
  _muutosaika = newMuutosaika;
}

/**
 * (no documentation provided)
 */
- (NSString *) maaraajaNimi
{
  return _maaraajaNimi;
}

/**
 * (no documentation provided)
 */
- (void) setMaaraajaNimi: (NSString *) newMaaraajaNimi
{
  [newMaaraajaNimi retain];
  [_maaraajaNimi release];
  _maaraajaNimi = newMaaraajaNimi;
}

/**
 * (no documentation provided)
 */
- (NSString *) kirjaajaNimi
{
  return _kirjaajaNimi;
}

/**
 * (no documentation provided)
 */
- (void) setKirjaajaNimi: (NSString *) newKirjaajaNimi
{
  [newKirjaajaNimi retain];
  [_kirjaajaNimi release];
  _kirjaajaNimi = newKirjaajaNimi;
}

/**
 * (no documentation provided)
 */
- (NSString *) tekijaNimi
{
  return _tekijaNimi;
}

/**
 * (no documentation provided)
 */
- (void) setTekijaNimi: (NSString *) newTekijaNimi
{
  [newTekijaNimi retain];
  [_tekijaNimi release];
  _tekijaNimi = newTekijaNimi;
}

/**
 * (no documentation provided)
 */
- (NSString *) lopettajaNimi
{
  return _lopettajaNimi;
}

/**
 * (no documentation provided)
 */
- (void) setLopettajaNimi: (NSString *) newLopettajaNimi
{
  [newLopettajaNimi retain];
  [_lopettajaNimi release];
  _lopettajaNimi = newLopettajaNimi;
}

/**
 * (no documentation provided)
 */
- (NSString *) lomakeNimi
{
  return _lomakeNimi;
}

/**
 * (no documentation provided)
 */
- (void) setLomakeNimi: (NSString *) newLomakeNimi
{
  [newLomakeNimi retain];
  [_lomakeNimi release];
  _lomakeNimi = newLomakeNimi;
}

- (void) dealloc
{
  [self setAlkaa: nil];
  [self setLoppuu: nil];
  [self setMaaraaja: NULL];
  [self setTekija: NULL];
  [self setOtsikko: nil];
  [self setVakio: nil];
  [self setVapaa: nil];
  [self setHuomautuksia: nil];
  [self setKellonajat: nil];
  [self setKirjaaja: NULL];
  [self setLopettaja: NULL];
  [self setLopetettu: nil];
  [self setTehty: nil];
  [self setMuutosaika: nil];
  [self setMaaraajaNimi: nil];
  [self setKirjaajaNimi: nil];
  [self setTekijaNimi: nil];
  [self setLopettajaNimi: nil];
  [self setLomakeNimi: nil];
  [super dealloc];
}

//documentation inherited.
+ (id<EnunciateXML>) readFromXML: (NSData *) xml
{
  COREWEBNS0Hoito *_cOREWEBNS0Hoito;
  xmlTextReaderPtr reader = xmlReaderForMemory([xml bytes], [xml length], NULL, NULL, 0);
  if (reader == NULL) {
    [NSException raise: @"XMLReadError"
                 format: @"Error instantiating an XML reader."];
    return nil;
  }

  _cOREWEBNS0Hoito = (COREWEBNS0Hoito *) [COREWEBNS0Hoito readXMLElement: reader];
  xmlFreeTextReader(reader); //free the reader
  return _cOREWEBNS0Hoito;
}

//documentation inherited.
- (NSData *) writeToXML
{
  xmlBufferPtr buf;
  xmlTextWriterPtr writer;
  int rc;
  NSData *data;

  buf = xmlBufferCreate();
  if (buf == NULL) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error creating an XML buffer."];
    return nil;
  }

  writer = xmlNewTextWriterMemory(buf, 0);
  if (writer == NULL) {
    xmlBufferFree(buf);
    [NSException raise: @"XMLWriteError"
                 format: @"Error creating an XML writer."];
    return nil;
  }

  rc = xmlTextWriterStartDocument(writer, NULL, "utf-8", NULL);
  if (rc < 0) {
    xmlFreeTextWriter(writer);
    xmlBufferFree(buf);
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing XML start document."];
    return nil;
  }

  NS_DURING
  {
    [self writeXMLElement: writer];
  }
  NS_HANDLER
  {
    xmlFreeTextWriter(writer);
    xmlBufferFree(buf);
    [localException raise];
  }
  NS_ENDHANDLER

  rc = xmlTextWriterEndDocument(writer);
  if (rc < 0) {
    xmlFreeTextWriter(writer);
    xmlBufferFree(buf);
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing XML end document."];
    return nil;
  }

  xmlFreeTextWriter(writer);
  data = [NSData dataWithBytes: buf->content length: buf->use];
  xmlBufferFree(buf);
  return data;
}
@end /* implementation COREWEBNS0Hoito */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0Hoito (JAXB) <JAXBReading, JAXBWriting, JAXBType, JAXBElement>

@end /*interface COREWEBNS0Hoito (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0Hoito (JAXB)

/**
 * Read an instance of COREWEBNS0Hoito from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0Hoito defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0Hoito *_cOREWEBNS0Hoito = [[COREWEBNS0Hoito alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0Hoito initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0Hoito = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0Hoito autorelease];
  return _cOREWEBNS0Hoito;
}

/**
 * Initialize this instance of COREWEBNS0Hoito according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0Hoito to the writer.
 * Note that since we're only writing the XML type,
 * No start/end element will be written.
 *
 * @param reader The reader.
 */
- (void) writeXMLType: (xmlTextWriterPtr) writer
{
  [super writeXMLType:writer];
}

/**
 * Reads a COREWEBNS0Hoito from an XML reader. The element to be read is
 * "hoito".
 *
 * @param reader The XML reader.
 * @return The COREWEBNS0Hoito.
 */
+ (id<JAXBElement>) readXMLElement: (xmlTextReaderPtr) reader {
  int status;
  COREWEBNS0Hoito *_hoito = nil;

  if (xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) {
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
    if (status < 1) {
      [NSException raise: @"XMLReadError"
                   format: @"Error advancing the reader to start element hoito."];
    }
  }

  if (xmlStrcmp(BAD_CAST "hoito", xmlTextReaderConstLocalName(reader)) == 0
      && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read root element {}hoito.");
#endif
    _hoito = (COREWEBNS0Hoito *)[COREWEBNS0Hoito readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Successfully read root element {}hoito.");
#endif
  }
  else {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0Hoito. Expected element hoito. Current element: {}%s", xmlTextReaderConstLocalName(reader)];
    }
    else {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0Hoito. Expected element hoito. Current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader)];
    }
  }

  return _hoito;
}

/**
 * Writes this COREWEBNS0Hoito to XML under element name "hoito".
 * The namespace declarations for the element will be written.
 *
 * @param writer The XML writer.
 * @param _hoito The Hoito to write.
 * @return 1 if successful, 0 otherwise.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer
{
  [self writeXMLElement: writer writeNamespaces: YES];
}

/**
 * Writes this COREWEBNS0Hoito to an XML writer.
 *
 * @param writer The writer.
 * @param writeNs Whether to write the namespaces for this element to the xml writer.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer writeNamespaces: (BOOL) writeNs
{
  int rc = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "hoito", NULL);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing start element {}hoito. XML writer status: %i\n", rc];
  }

#if DEBUG_ENUNCIATE > 1
  NSLog(@"writing type {}hoito for root element {}hoito...");
#endif
  [self writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
  NSLog(@"successfully wrote type {}hoito for root element {}hoito...");
#endif
  rc = xmlTextWriterEndElement(writer);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing end element {}hoito. XML writer status: %i\n", rc];
  }
}

//documentation inherited.
- (BOOL) readJAXBAttribute: (xmlTextReaderPtr) reader
{
  void *_child_accessor;

  if ([super readJAXBAttribute: reader]) {
    return YES;
  }

  return NO;
}

//documentation inherited.
- (BOOL) readJAXBValue: (xmlTextReaderPtr) reader
{
  return [super readJAXBValue: reader];
}

//documentation inherited.
- (BOOL) readJAXBChildElement: (xmlTextReaderPtr) reader
{
  id __child;
  void *_child_accessor;
  int status, depth;

  if ([super readJAXBChildElement: reader]) {
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "alkaa", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}alkaa of type {}date.");
#endif
    __child = [COREWEBNS0Date readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}alkaa of type {}date.");
#endif

    [self setAlkaa: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "loppuu", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}loppuu of type {}date.");
#endif
    __child = [COREWEBNS0Date readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}loppuu of type {}date.");
#endif

    [self setLoppuu: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "maaraaja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setMaaraaja: ((int*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tekija", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setTekija: ((int*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "otsikko", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}otsikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}otsikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setOtsikko: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "vakio", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}vakio of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}vakio of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setVakio: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "vapaa", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}vapaa of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}vapaa of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setVapaa: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "huomautuksia", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}huomautuksia of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}huomautuksia of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setHuomautuksia: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kellonajat", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}kellonajat of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}kellonajat of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setKellonajat: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kirjaaja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setKirjaaja: ((int*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "lopettaja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setLopettaja: ((int*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "lopetettu", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}lopetettu of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif
    __child = [NSDate readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}lopetettu of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif

    [self setLopetettu: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kerta", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setKerta: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tehty", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tehty of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif
    __child = [NSDate readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tehty of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif

    [self setTehty: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "lomake", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setLomake: *((int*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "rivi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setRivi: *((int*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "muutosaika", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}muutosaika of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif
    __child = [NSDate readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}muutosaika of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif

    [self setMuutosaika: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "maaraajaNimi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}maaraajaNimi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}maaraajaNimi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setMaaraajaNimi: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kirjaajaNimi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}kirjaajaNimi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}kirjaajaNimi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setKirjaajaNimi: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tekijaNimi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tekijaNimi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tekijaNimi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setTekijaNimi: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "lopettajaNimi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}lopettajaNimi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}lopettajaNimi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setLopettajaNimi: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "lomakeNimi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}lomakeNimi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}lomakeNimi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setLomakeNimi: __child];
    return YES;
  } //end "if choice"


  return NO;
}

//documentation inherited.
- (int) readUnknownJAXBChildElement: (xmlTextReaderPtr) reader
{
  return [super readUnknownJAXBChildElement: reader];
}

//documentation inherited.
- (void) readUnknownJAXBAttribute: (xmlTextReaderPtr) reader
{
  [super readUnknownJAXBAttribute: reader];
}

//documentation inherited.
- (void) writeJAXBAttributes: (xmlTextWriterPtr) writer
{
  int status;

  [super writeJAXBAttributes: writer];

}

//documentation inherited.
- (void) writeJAXBValue: (xmlTextWriterPtr) writer
{
  [super writeJAXBValue: writer];
}

/**
 * Method for writing the child elements.
 *
 * @param writer The writer.
 */
- (void) writeJAXBChildElements: (xmlTextWriterPtr) writer
{
  int status;
  id __item;
  id __item_copy;
  NSEnumerator *__enumerator;

  [super writeJAXBChildElements: writer];

  if ([self alkaa]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "alkaa", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}alkaa."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}alkaa...");
#endif
    [[self alkaa] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}alkaa...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}alkaa."];
    }
  }
  if ([self loppuu]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "loppuu", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}loppuu."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}loppuu...");
#endif
    [[self loppuu] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}loppuu...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}loppuu."];
    }
  }
  if ([self maaraaja] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "maaraaja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}maaraaja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}maaraaja...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self maaraaja]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}maaraaja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}maaraaja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}maaraaja."];
    }
  }
  if ([self tekija] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tekija", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tekija."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tekija...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self tekija]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tekija...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}tekija."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tekija."];
    }
  }
  if ([self otsikko]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "otsikko", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}otsikko."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}otsikko...");
#endif
    [[self otsikko] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}otsikko...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}otsikko."];
    }
  }
  if ([self vakio]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "vakio", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}vakio."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}vakio...");
#endif
    [[self vakio] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}vakio...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}vakio."];
    }
  }
  if ([self vapaa]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "vapaa", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}vapaa."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}vapaa...");
#endif
    [[self vapaa] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}vapaa...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}vapaa."];
    }
  }
  if ([self huomautuksia]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "huomautuksia", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}huomautuksia."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}huomautuksia...");
#endif
    [[self huomautuksia] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}huomautuksia...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}huomautuksia."];
    }
  }
  if ([self kellonajat]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kellonajat", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kellonajat."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kellonajat...");
#endif
    [[self kellonajat] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kellonajat...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kellonajat."];
    }
  }
  if ([self kirjaaja] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kirjaaja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kirjaaja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kirjaaja...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self kirjaaja]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kirjaaja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}kirjaaja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kirjaaja."];
    }
  }
  if ([self lopettaja] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "lopettaja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}lopettaja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}lopettaja...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self lopettaja]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}lopettaja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}lopettaja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}lopettaja."];
    }
  }
  if ([self lopetettu]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "lopetettu", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}lopetettu."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}lopetettu...");
#endif
    [[self lopetettu] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}lopetettu...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}lopetettu."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kerta", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kerta."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kerta...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_kerta);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kerta...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}kerta."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kerta."];
    }
  }
  if ([self tehty]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tehty", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tehty."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tehty...");
#endif
    [[self tehty] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tehty...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tehty."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "lomake", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}lomake."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}lomake...");
#endif
    status = xmlTextWriterWriteIntType(writer, &_lomake);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}lomake...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}lomake."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}lomake."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "rivi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}rivi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}rivi...");
#endif
    status = xmlTextWriterWriteIntType(writer, &_rivi);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}rivi...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}rivi."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}rivi."];
    }
  }
  if ([self muutosaika]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "muutosaika", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}muutosaika."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}muutosaika...");
#endif
    [[self muutosaika] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}muutosaika...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}muutosaika."];
    }
  }
  if ([self maaraajaNimi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "maaraajaNimi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}maaraajaNimi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}maaraajaNimi...");
#endif
    [[self maaraajaNimi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}maaraajaNimi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}maaraajaNimi."];
    }
  }
  if ([self kirjaajaNimi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kirjaajaNimi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kirjaajaNimi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kirjaajaNimi...");
#endif
    [[self kirjaajaNimi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kirjaajaNimi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kirjaajaNimi."];
    }
  }
  if ([self tekijaNimi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tekijaNimi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tekijaNimi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tekijaNimi...");
#endif
    [[self tekijaNimi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tekijaNimi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tekijaNimi."];
    }
  }
  if ([self lopettajaNimi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "lopettajaNimi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}lopettajaNimi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}lopettajaNimi...");
#endif
    [[self lopettajaNimi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}lopettajaNimi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}lopettajaNimi."];
    }
  }
  if ([self lomakeNimi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "lomakeNimi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}lomakeNimi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}lomakeNimi...");
#endif
    [[self lomakeNimi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}lomakeNimi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}lomakeNimi."];
    }
  }
}
@end /* implementation COREWEBNS0Hoito (JAXB) */

#endif /* DEF_COREWEBNS0Hoito_M */
#ifndef DEF_COREWEBNS0TutkimuspyyntoTiedot_M
#define DEF_COREWEBNS0TutkimuspyyntoTiedot_M

/**
 *  DTO for Lab Examination Details

 A class to present TUTKIMUSPYYNTO table in laboratory examination functionality.
 Used to carry the data from database to the client side.


 */
@implementation COREWEBNS0TutkimuspyyntoTiedot

/**
 * Returns the pyynto id
 */
- (int) pyynto
{
  return _pyynto;
}

/**
 * Returns the pyynto id
 */
- (void) setPyynto: (int) newPyynto
{
  _pyynto = newPyynto;
}

/**
 * Returns the row number
 */
- (short) rivi
{
  return _rivi;
}

/**
 * Returns the row number
 */
- (void) setRivi: (short) newRivi
{
  _rivi = newRivi;
}

/**
 * Returns the Tutkimus name
 */
- (NSString *) tutkimus
{
  return _tutkimus;
}

/**
 * Returns the Tutkimus name
 */
- (void) setTutkimus: (NSString *) newTutkimus
{
  [newTutkimus retain];
  [_tutkimus release];
  _tutkimus = newTutkimus;
}

/**
 * Returns the version
 */
- (NSString *) versio
{
  return _versio;
}

/**
 * Returns the version
 */
- (void) setVersio: (NSString *) newVersio
{
  [newVersio retain];
  [_versio release];
  _versio = newVersio;
}

/**
 * Returns the char value for Hajautettu
 */
- (unsigned short *) hajautettu
{
  return _hajautettu;
}

/**
 * Returns the char value for Hajautettu
 */
- (void) setHajautettu: (unsigned short *) newHajautettu
{
  if (_hajautettu != NULL) {
    free(_hajautettu);
  }
  _hajautettu = newHajautettu;
}

/**
 * Returns the Hoitojakso
 */
- (int *) hoitojakso
{
  return _hoitojakso;
}

/**
 * Returns the Hoitojakso
 */
- (void) setHoitojakso: (int *) newHoitojakso
{
  if (_hoitojakso != NULL) {
    free(_hoitojakso);
  }
  _hoitojakso = newHoitojakso;
}

/**
 * Returns the notifications
 */
- (NSString *) huomautuksia
{
  return _huomautuksia;
}

/**
 * Returns the notifications
 */
- (void) setHuomautuksia: (NSString *) newHuomautuksia
{
  [newHuomautuksia retain];
  [_huomautuksia release];
  _huomautuksia = newHuomautuksia;
}

/**
 * Returns the possible control date
 */
- (COREWEBNS0Date *) kontrolloitava
{
  return _kontrolloitava;
}

/**
 * Returns the possible control date
 */
- (void) setKontrolloitava: (COREWEBNS0Date *) newKontrolloitava
{
  [newKontrolloitava retain];
  [_kontrolloitava release];
  _kontrolloitava = newKontrolloitava;
}

/**
 * Returns the korvausluokka
 */
- (unsigned short *) korvausluokka
{
  return _korvausluokka;
}

/**
 * Returns the korvausluokka
 */
- (void) setKorvausluokka: (unsigned short *) newKorvausluokka
{
  if (_korvausluokka != NULL) {
    free(_korvausluokka);
  }
  _korvausluokka = newKorvausluokka;
}

/**
 * Returns the county council
 */
- (int *) kunta
{
  return _kunta;
}

/**
 * Returns the county council
 */
- (void) setKunta: (int *) newKunta
{
  if (_kunta != NULL) {
    free(_kunta);
  }
  _kunta = newKunta;
}

/**
 * Returns the Kustannuslinkki
 */
- (int *) kustannuslinkki
{
  return _kustannuslinkki;
}

/**
 * Returns the Kustannuslinkki
 */
- (void) setKustannuslinkki: (int *) newKustannuslinkki
{
  if (_kustannuslinkki != NULL) {
    free(_kustannuslinkki);
  }
  _kustannuslinkki = newKustannuslinkki;
}

/**
 * Return the info about if there is some extra information
 */
- (unsigned short *) lisatietoja
{
  return _lisatietoja;
}

/**
 * Return the info about if there is some extra information
 */
- (void) setLisatietoja: (unsigned short *) newLisatietoja
{
  if (_lisatietoja != NULL) {
    free(_lisatietoja);
  }
  _lisatietoja = newLisatietoja;
}

/**
 * Return the Lomakelinkki
 */
- (int *) lomakelinkki
{
  return _lomakelinkki;
}

/**
 * Return the Lomakelinkki
 */
- (void) setLomakelinkki: (int *) newLomakelinkki
{
  if (_lomakelinkki != NULL) {
    free(_lomakelinkki);
  }
  _lomakelinkki = newLomakelinkki;
}

/**
 * Return the payer
 */
- (int *) maksaja
{
  return _maksaja;
}

/**
 * Return the payer
 */
- (void) setMaksaja: (int *) newMaksaja
{
  if (_maksaja != NULL) {
    free(_maksaja);
  }
  _maksaja = newMaksaja;
}

/**
 * Return the info about if there is Mikrobitietoja available
 */
- (unsigned short *) mikrobitietoja
{
  return _mikrobitietoja;
}

/**
 * Return the info about if there is Mikrobitietoja available
 */
- (void) setMikrobitietoja: (unsigned short *) newMikrobitietoja
{
  if (_mikrobitietoja != NULL) {
    free(_mikrobitietoja);
  }
  _mikrobitietoja = newMikrobitietoja;
}

/**
 * Return the time of change
 */
- (NSDate *) muutosaika
{
  return _muutosaika;
}

/**
 * Return the time of change
 */
- (void) setMuutosaika: (NSDate *) newMuutosaika
{
  [newMuutosaika retain];
  [_muutosaika release];
  _muutosaika = newMuutosaika;
}

/**
 * Return the place of change
 */
- (short) muutospaikka
{
  return _muutospaikka;
}

/**
 * Return the place of change
 */
- (void) setMuutospaikka: (short) newMuutospaikka
{
  _muutospaikka = newMuutospaikka;
}

/**
 * Return the sample
 */
- (int *) nayte
{
  return _nayte;
}

/**
 * Return the sample
 */
- (void) setNayte: (int *) newNayte
{
  if (_nayte != NULL) {
    free(_nayte);
  }
  _nayte = newNayte;
}

/**
 * Return the info about if there is sample information
 */
- (unsigned short *) naytetietoja
{
  return _naytetietoja;
}

/**
 * Return the info about if there is sample information
 */
- (void) setNaytetietoja: (unsigned short *) newNaytetietoja
{
  if (_naytetietoja != NULL) {
    free(_naytetietoja);
  }
  _naytetietoja = newNaytetietoja;
}

/**
 * Return the result in numeric format
 */
- (double *) numerotulos
{
  return _numerotulos;
}

/**
 * Return the result in numeric format
 */
- (void) setNumerotulos: (double *) newNumerotulos
{
  if (_numerotulos != NULL) {
    free(_numerotulos);
  }
  _numerotulos = newNumerotulos;
}

/**
 * Return the unit of the result
 */
- (NSString *) numeroyksikko
{
  return _numeroyksikko;
}

/**
 * Return the unit of the result
 */
- (void) setNumeroyksikko: (NSString *) newNumeroyksikko
{
  [newNumeroyksikko retain];
  [_numeroyksikko release];
  _numeroyksikko = newNumeroyksikko;
}

/**
 * Return the Osalinkki
 */
- (int *) osalinkki
{
  return _osalinkki;
}

/**
 * Return the Osalinkki
 */
- (void) setOsalinkki: (int *) newOsalinkki
{
  if (_osalinkki != NULL) {
    free(_osalinkki);
  }
  _osalinkki = newOsalinkki;
}

/**
 * Return the department
 */
- (int *) osasto
{
  return _osasto;
}

/**
 * Return the department
 */
- (void) setOsasto: (int *) newOsasto
{
  if (_osasto != NULL) {
    free(_osasto);
  }
  _osasto = newOsasto;
}

/**
 * Return the time when the lab examination is done
 */
- (NSDate *) ottoaika
{
  return _ottoaika;
}

/**
 * Return the time when the lab examination is done
 */
- (void) setOttoaika: (NSDate *) newOttoaika
{
  [newOttoaika retain];
  [_ottoaika release];
  _ottoaika = newOttoaika;
}

/**
 * Return the package
 */
- (NSString *) paketti
{
  return _paketti;
}

/**
 * Return the package
 */
- (void) setPaketti: (NSString *) newPaketti
{
  [newPaketti retain];
  [_paketti release];
  _paketti = newPaketti;
}

/**
 * Return the V�est�vastuupiiri
 */
- (int *) piiri
{
  return _piiri;
}

/**
 * Return the V�est�vastuupiiri
 */
- (void) setPiiri: (int *) newPiiri
{
  if (_piiri != NULL) {
    free(_piiri);
  }
  _piiri = newPiiri;
}

/**
 * Return the info about if the result is removed
 */
- (NSString *) poistettu
{
  return _poistettu;
}

/**
 * Return the info about if the result is removed
 */
- (void) setPoistettu: (NSString *) newPoistettu
{
  [newPoistettu retain];
  [_poistettu release];
  _poistettu = newPoistettu;
}

/**
 * 
 */
- (NSDate *) pyydetty
{
  return _pyydetty;
}

/**
 * 
 */
- (void) setPyydetty: (NSDate *) newPyydetty
{
  [newPyydetty retain];
  [_pyydetty release];
  _pyydetty = newPyydetty;
}

/**
 * Return the verbal result
 */
- (NSString *) sanallinenvastaus
{
  return _sanallinenvastaus;
}

/**
 * Return the verbal result
 */
- (void) setSanallinenvastaus: (NSString *) newSanallinenvastaus
{
  [newSanallinenvastaus retain];
  [_sanallinenvastaus release];
  _sanallinenvastaus = newSanallinenvastaus;
}

/**
 * Return the location (department)
 */
- (NSString *) sijaintiosasto
{
  return _sijaintiosasto;
}

/**
 * Return the location (department)
 */
- (void) setSijaintiosasto: (NSString *) newSijaintiosasto
{
  [newSijaintiosasto retain];
  [_sijaintiosasto release];
  _sijaintiosasto = newSijaintiosasto;
}

/**
 * Return the location (place)
 */
- (NSString *) sijaintipaikka
{
  return _sijaintipaikka;
}

/**
 * Return the location (place)
 */
- (void) setSijaintipaikka: (NSString *) newSijaintipaikka
{
  [newSijaintipaikka retain];
  [_sijaintipaikka release];
  _sijaintipaikka = newSijaintipaikka;
}

/**
 * Return the internal payer
 */
- (NSString *) sisainenMaksaja
{
  return _sisainenMaksaja;
}

/**
 * Return the internal payer
 */
- (void) setSisainenMaksaja: (NSString *) newSisainenMaksaja
{
  [newSisainenMaksaja retain];
  [_sisainenMaksaja release];
  _sisainenMaksaja = newSisainenMaksaja;
}

/**
 * Return the Suoritelinkki
 */
- (int *) suoritelinkki
{
  return _suoritelinkki;
}

/**
 * Return the Suoritelinkki
 */
- (void) setSuoritelinkki: (int *) newSuoritelinkki
{
  if (_suoritelinkki != NULL) {
    free(_suoritelinkki);
  }
  _suoritelinkki = newSuoritelinkki;
}

/**
 * Return the time when lab examination is done
 */
- (NSDate *) tehty
{
  return _tehty;
}

/**
 * Return the time when lab examination is done
 */
- (void) setTehty: (NSDate *) newTehty
{
  [newTehty retain];
  [_tehty release];
  _tehty = newTehty;
}

/**
 * Return the place where lab examination is done
 */
- (int *) tekopaikka
{
  return _tekopaikka;
}

/**
 * Return the place where lab examination is done
 */
- (void) setTekopaikka: (int *) newTekopaikka
{
  if (_tekopaikka != NULL) {
    free(_tekopaikka);
  }
  _tekopaikka = newTekopaikka;
}

/**
 * Return the result in textual format
 */
- (NSString *) tekstitulos
{
  return _tekstitulos;
}

/**
 * Return the result in textual format
 */
- (void) setTekstitulos: (NSString *) newTekstitulos
{
  [newTekstitulos retain];
  [_tekstitulos release];
  _tekstitulos = newTekstitulos;
}

/**
 * Return the SMS
 */
- (int *) tekstiviesti
{
  return _tekstiviesti;
}

/**
 * Return the SMS
 */
- (void) setTekstiviesti: (int *) newTekstiviesti
{
  if (_tekstiviesti != NULL) {
    free(_tekstiviesti);
  }
  _tekstiviesti = newTekstiviesti;
}

/**
 * Return the state
 */
- (unsigned short) tila
{
  return _tila;
}

/**
 * Return the state
 */
- (void) setTila: (unsigned short) newTila
{
  _tila = newTila;
}

/**
 * Return the orderer
 */
- (int) tilaaja
{
  return _tilaaja;
}

/**
 * Return the orderer
 */
- (void) setTilaaja: (int) newTilaaja
{
  _tilaaja = newTilaaja;
}

/**
 * Return the name of the orderer
 */
- (NSString *) tilaajaNimi
{
  return _tilaajaNimi;
}

/**
 * Return the name of the orderer
 */
- (void) setTilaajaNimi: (NSString *) newTilaajaNimi
{
  [newTilaajaNimi retain];
  [_tilaajaNimi release];
  _tilaajaNimi = newTilaajaNimi;
}

/**
 * Return the unit of the orderer
 */
- (int *) tilaajayksikko
{
  return _tilaajayksikko;
}

/**
 * Return the unit of the orderer
 */
- (void) setTilaajayksikko: (int *) newTilaajayksikko
{
  if (_tilaajayksikko != NULL) {
    free(_tilaajayksikko);
  }
  _tilaajayksikko = newTilaajayksikko;
}

/**
 * Return the identifier of the order
 */
- (NSString *) tilaustunnus
{
  return _tilaustunnus;
}

/**
 * Return the identifier of the order
 */
- (void) setTilaustunnus: (NSString *) newTilaustunnus
{
  [newTilaustunnus retain];
  [_tilaustunnus release];
  _tilaustunnus = newTilaustunnus;
}

/**
 * Return the date when the repetition ends
 */
- (COREWEBNS0Date *) toistoloppuu
{
  return _toistoloppuu;
}

/**
 * Return the date when the repetition ends
 */
- (void) setToistoloppuu: (COREWEBNS0Date *) newToistoloppuu
{
  [newToistoloppuu retain];
  [_toistoloppuu release];
  _toistoloppuu = newToistoloppuu;
}

/**
 * Return the interval of the repetition
 */
- (int *) toistovali
{
  return _toistovali;
}

/**
 * Return the interval of the repetition
 */
- (void) setToistovali: (int *) newToistovali
{
  if (_toistovali != NULL) {
    free(_toistovali);
  }
  _toistovali = newToistovali;
}

/**
 * Return the interpretation
 */
- (NSString *) tulkinta
{
  return _tulkinta;
}

/**
 * Return the interpretation
 */
- (void) setTulkinta: (NSString *) newTulkinta
{
  [newTulkinta retain];
  [_tulkinta release];
  _tulkinta = newTulkinta;
}

/**
 * Return the producer
 */
- (int *) tuottaja
{
  return _tuottaja;
}

/**
 * Return the producer
 */
- (void) setTuottaja: (int *) newTuottaja
{
  if (_tuottaja != NULL) {
    free(_tuottaja);
  }
  _tuottaja = newTuottaja;
}

/**
 * Return the employer
 */
- (int *) tyonantaja
{
  return _tyonantaja;
}

/**
 * Return the employer
 */
- (void) setTyonantaja: (int *) newTyonantaja
{
  if (_tyonantaja != NULL) {
    free(_tyonantaja);
  }
  _tyonantaja = newTyonantaja;
}

/**
 * Return the info about if there is Vastaustietoja available
 */
- (unsigned short *) vastaustietoja
{
  return _vastaustietoja;
}

/**
 * Return the info about if there is Vastaustietoja available
 */
- (void) setVastaustietoja: (unsigned short *) newVastaustietoja
{
  if (_vastaustietoja != NULL) {
    free(_vastaustietoja);
  }
  _vastaustietoja = newVastaustietoja;
}

/**
 * Return the Viitearvot, which contains min and max values for the
 * result. Result is normal, if the value is between the min and max values.
 */
- (NSString *) viitearvot
{
  return _viitearvot;
}

/**
 * Return the Viitearvot, which contains min and max values for the
 * result. Result is normal, if the value is between the min and max values.
 */
- (void) setViitearvot: (NSString *) newViitearvot
{
  [newViitearvot retain];
  [_viitearvot release];
  _viitearvot = newViitearvot;
}

/**
 * Return the recorder of the result
 */
- (int *) kirjaaja
{
  return _kirjaaja;
}

/**
 * Return the recorder of the result
 */
- (void) setKirjaaja: (int *) newKirjaaja
{
  if (_kirjaaja != NULL) {
    free(_kirjaaja);
  }
  _kirjaaja = newKirjaaja;
}

/**
 * (no documentation provided)
 */
- (NSString *) tilaKoodi
{
  return _tilaKoodi;
}

/**
 * (no documentation provided)
 */
- (void) setTilaKoodi: (NSString *) newTilaKoodi
{
  [newTilaKoodi retain];
  [_tilaKoodi release];
  _tilaKoodi = newTilaKoodi;
}

/**
 * (no documentation provided)
 */
- (int *) poikkeava
{
  return _poikkeava;
}

/**
 * (no documentation provided)
 */
- (void) setPoikkeava: (int *) newPoikkeava
{
  if (_poikkeava != NULL) {
    free(_poikkeava);
  }
  _poikkeava = newPoikkeava;
}

/**
 * (no documentation provided)
 */
- (NSArray *) mikrobit
{
  return _mikrobit;
}

/**
 * (no documentation provided)
 */
- (void) setMikrobit: (NSArray *) newMikrobit
{
  [newMikrobit retain];
  [_mikrobit release];
  _mikrobit = newMikrobit;
}

- (void) dealloc
{
  [self setTutkimus: nil];
  [self setVersio: nil];
  [self setHajautettu: NULL];
  [self setHoitojakso: NULL];
  [self setHuomautuksia: nil];
  [self setKontrolloitava: nil];
  [self setKorvausluokka: NULL];
  [self setKunta: NULL];
  [self setKustannuslinkki: NULL];
  [self setLisatietoja: NULL];
  [self setLomakelinkki: NULL];
  [self setMaksaja: NULL];
  [self setMikrobitietoja: NULL];
  [self setMuutosaika: nil];
  [self setNayte: NULL];
  [self setNaytetietoja: NULL];
  [self setNumerotulos: NULL];
  [self setNumeroyksikko: nil];
  [self setOsalinkki: NULL];
  [self setOsasto: NULL];
  [self setOttoaika: nil];
  [self setPaketti: nil];
  [self setPiiri: NULL];
  [self setPoistettu: nil];
  [self setPyydetty: nil];
  [self setSanallinenvastaus: nil];
  [self setSijaintiosasto: nil];
  [self setSijaintipaikka: nil];
  [self setSisainenMaksaja: nil];
  [self setSuoritelinkki: NULL];
  [self setTehty: nil];
  [self setTekopaikka: NULL];
  [self setTekstitulos: nil];
  [self setTekstiviesti: NULL];
  [self setTilaajaNimi: nil];
  [self setTilaajayksikko: NULL];
  [self setTilaustunnus: nil];
  [self setToistoloppuu: nil];
  [self setToistovali: NULL];
  [self setTulkinta: nil];
  [self setTuottaja: NULL];
  [self setTyonantaja: NULL];
  [self setVastaustietoja: NULL];
  [self setViitearvot: nil];
  [self setKirjaaja: NULL];
  [self setTilaKoodi: nil];
  [self setPoikkeava: NULL];
  [self setMikrobit: nil];
  [super dealloc];
}

//documentation inherited.
+ (id<EnunciateXML>) readFromXML: (NSData *) xml
{
  COREWEBNS0TutkimuspyyntoTiedot *_cOREWEBNS0TutkimuspyyntoTiedot;
  xmlTextReaderPtr reader = xmlReaderForMemory([xml bytes], [xml length], NULL, NULL, 0);
  if (reader == NULL) {
    [NSException raise: @"XMLReadError"
                 format: @"Error instantiating an XML reader."];
    return nil;
  }

  _cOREWEBNS0TutkimuspyyntoTiedot = (COREWEBNS0TutkimuspyyntoTiedot *) [COREWEBNS0TutkimuspyyntoTiedot readXMLElement: reader];
  xmlFreeTextReader(reader); //free the reader
  return _cOREWEBNS0TutkimuspyyntoTiedot;
}

//documentation inherited.
- (NSData *) writeToXML
{
  xmlBufferPtr buf;
  xmlTextWriterPtr writer;
  int rc;
  NSData *data;

  buf = xmlBufferCreate();
  if (buf == NULL) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error creating an XML buffer."];
    return nil;
  }

  writer = xmlNewTextWriterMemory(buf, 0);
  if (writer == NULL) {
    xmlBufferFree(buf);
    [NSException raise: @"XMLWriteError"
                 format: @"Error creating an XML writer."];
    return nil;
  }

  rc = xmlTextWriterStartDocument(writer, NULL, "utf-8", NULL);
  if (rc < 0) {
    xmlFreeTextWriter(writer);
    xmlBufferFree(buf);
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing XML start document."];
    return nil;
  }

  NS_DURING
  {
    [self writeXMLElement: writer];
  }
  NS_HANDLER
  {
    xmlFreeTextWriter(writer);
    xmlBufferFree(buf);
    [localException raise];
  }
  NS_ENDHANDLER

  rc = xmlTextWriterEndDocument(writer);
  if (rc < 0) {
    xmlFreeTextWriter(writer);
    xmlBufferFree(buf);
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing XML end document."];
    return nil;
  }

  xmlFreeTextWriter(writer);
  data = [NSData dataWithBytes: buf->content length: buf->use];
  xmlBufferFree(buf);
  return data;
}
@end /* implementation COREWEBNS0TutkimuspyyntoTiedot */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0TutkimuspyyntoTiedot (JAXB) <JAXBReading, JAXBWriting, JAXBType, JAXBElement>

@end /*interface COREWEBNS0TutkimuspyyntoTiedot (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0TutkimuspyyntoTiedot (JAXB)

/**
 * Read an instance of COREWEBNS0TutkimuspyyntoTiedot from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0TutkimuspyyntoTiedot defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0TutkimuspyyntoTiedot *_cOREWEBNS0TutkimuspyyntoTiedot = [[COREWEBNS0TutkimuspyyntoTiedot alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0TutkimuspyyntoTiedot initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0TutkimuspyyntoTiedot = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0TutkimuspyyntoTiedot autorelease];
  return _cOREWEBNS0TutkimuspyyntoTiedot;
}

/**
 * Initialize this instance of COREWEBNS0TutkimuspyyntoTiedot according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0TutkimuspyyntoTiedot to the writer.
 * Note that since we're only writing the XML type,
 * No start/end element will be written.
 *
 * @param reader The reader.
 */
- (void) writeXMLType: (xmlTextWriterPtr) writer
{
  [super writeXMLType:writer];
}

/**
 * Reads a COREWEBNS0TutkimuspyyntoTiedot from an XML reader. The element to be read is
 * "tutkimuspyyntoTiedot".
 *
 * @param reader The XML reader.
 * @return The COREWEBNS0TutkimuspyyntoTiedot.
 */
+ (id<JAXBElement>) readXMLElement: (xmlTextReaderPtr) reader {
  int status;
  COREWEBNS0TutkimuspyyntoTiedot *_tutkimuspyyntoTiedot = nil;

  if (xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) {
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
    if (status < 1) {
      [NSException raise: @"XMLReadError"
                   format: @"Error advancing the reader to start element tutkimuspyyntoTiedot."];
    }
  }

  if (xmlStrcmp(BAD_CAST "tutkimuspyyntoTiedot", xmlTextReaderConstLocalName(reader)) == 0
      && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read root element {}tutkimuspyyntoTiedot.");
#endif
    _tutkimuspyyntoTiedot = (COREWEBNS0TutkimuspyyntoTiedot *)[COREWEBNS0TutkimuspyyntoTiedot readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Successfully read root element {}tutkimuspyyntoTiedot.");
#endif
  }
  else {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0TutkimuspyyntoTiedot. Expected element tutkimuspyyntoTiedot. Current element: {}%s", xmlTextReaderConstLocalName(reader)];
    }
    else {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0TutkimuspyyntoTiedot. Expected element tutkimuspyyntoTiedot. Current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader)];
    }
  }

  return _tutkimuspyyntoTiedot;
}

/**
 * Writes this COREWEBNS0TutkimuspyyntoTiedot to XML under element name "tutkimuspyyntoTiedot".
 * The namespace declarations for the element will be written.
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoTiedot The TutkimuspyyntoTiedot to write.
 * @return 1 if successful, 0 otherwise.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer
{
  [self writeXMLElement: writer writeNamespaces: YES];
}

/**
 * Writes this COREWEBNS0TutkimuspyyntoTiedot to an XML writer.
 *
 * @param writer The writer.
 * @param writeNs Whether to write the namespaces for this element to the xml writer.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer writeNamespaces: (BOOL) writeNs
{
  int rc = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tutkimuspyyntoTiedot", NULL);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing start element {}tutkimuspyyntoTiedot. XML writer status: %i\n", rc];
  }

#if DEBUG_ENUNCIATE > 1
  NSLog(@"writing type {}tutkimuspyyntoTiedot for root element {}tutkimuspyyntoTiedot...");
#endif
  [self writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
  NSLog(@"successfully wrote type {}tutkimuspyyntoTiedot for root element {}tutkimuspyyntoTiedot...");
#endif
  rc = xmlTextWriterEndElement(writer);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing end element {}tutkimuspyyntoTiedot. XML writer status: %i\n", rc];
  }
}

//documentation inherited.
- (BOOL) readJAXBAttribute: (xmlTextReaderPtr) reader
{
  void *_child_accessor;

  if ([super readJAXBAttribute: reader]) {
    return YES;
  }

  return NO;
}

//documentation inherited.
- (BOOL) readJAXBValue: (xmlTextReaderPtr) reader
{
  return [super readJAXBValue: reader];
}

//documentation inherited.
- (BOOL) readJAXBChildElement: (xmlTextReaderPtr) reader
{
  id __child;
  void *_child_accessor;
  int status, depth;

  if ([super readJAXBChildElement: reader]) {
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "pyynto", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setPyynto: *((int*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "rivi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setRivi: *((short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tutkimus", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tutkimus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tutkimus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setTutkimus: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "versio", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}versio of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}versio of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setVersio: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "hajautettu", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setHajautettu: ((unsigned short*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "hoitojakso", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setHoitojakso: ((int*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "huomautuksia", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}huomautuksia of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}huomautuksia of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setHuomautuksia: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kontrolloitava", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}kontrolloitava of type {}date.");
#endif
    __child = [COREWEBNS0Date readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}kontrolloitava of type {}date.");
#endif

    [self setKontrolloitava: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "korvausluokka", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setKorvausluokka: ((unsigned short*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kunta", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setKunta: ((int*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kustannuslinkki", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setKustannuslinkki: ((int*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "lisatietoja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setLisatietoja: ((unsigned short*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "lomakelinkki", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setLomakelinkki: ((int*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "maksaja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setMaksaja: ((int*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "mikrobitietoja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setMikrobitietoja: ((unsigned short*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "muutosaika", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}muutosaika of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif
    __child = [NSDate readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}muutosaika of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif

    [self setMuutosaika: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "muutospaikka", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setMuutospaikka: *((short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "nayte", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setNayte: ((int*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "naytetietoja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setNaytetietoja: ((unsigned short*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "numerotulos", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadDoubleType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setNumerotulos: ((double*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "numeroyksikko", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}numeroyksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}numeroyksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setNumeroyksikko: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "osalinkki", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setOsalinkki: ((int*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "osasto", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setOsasto: ((int*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "ottoaika", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}ottoaika of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif
    __child = [NSDate readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}ottoaika of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif

    [self setOttoaika: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "paketti", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}paketti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}paketti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setPaketti: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "piiri", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setPiiri: ((int*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "poistettu", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}poistettu of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}poistettu of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setPoistettu: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "pyydetty", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}pyydetty of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif
    __child = [NSDate readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}pyydetty of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif

    [self setPyydetty: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "sanallinenvastaus", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}sanallinenvastaus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}sanallinenvastaus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setSanallinenvastaus: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "sijaintiosasto", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}sijaintiosasto of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}sijaintiosasto of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setSijaintiosasto: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "sijaintipaikka", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}sijaintipaikka of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}sijaintipaikka of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setSijaintipaikka: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "sisainenMaksaja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}sisainenMaksaja of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}sisainenMaksaja of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setSisainenMaksaja: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "suoritelinkki", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setSuoritelinkki: ((int*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tehty", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tehty of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif
    __child = [NSDate readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tehty of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif

    [self setTehty: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tekopaikka", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setTekopaikka: ((int*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tekstitulos", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tekstitulos of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tekstitulos of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setTekstitulos: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tekstiviesti", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setTekstiviesti: ((int*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tila", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setTila: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tilaaja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setTilaaja: *((int*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tilaajaNimi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tilaajaNimi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tilaajaNimi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setTilaajaNimi: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tilaajayksikko", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setTilaajayksikko: ((int*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tilaustunnus", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tilaustunnus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tilaustunnus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setTilaustunnus: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "toistoloppuu", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}toistoloppuu of type {}date.");
#endif
    __child = [COREWEBNS0Date readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}toistoloppuu of type {}date.");
#endif

    [self setToistoloppuu: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "toistovali", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setToistovali: ((int*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tulkinta", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tulkinta of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tulkinta of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setTulkinta: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tuottaja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setTuottaja: ((int*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tyonantaja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setTyonantaja: ((int*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "vastaustietoja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setVastaustietoja: ((unsigned short*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "viitearvot", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}viitearvot of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}viitearvot of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setViitearvot: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kirjaaja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setKirjaaja: ((int*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tilaKoodi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tilaKoodi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tilaKoodi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setTilaKoodi: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "poikkeava", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setPoikkeava: ((int*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "mikrobit", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}mikrobit of type {}tutkimuspyyntoMikrobi.");
#endif

     __child = [COREWEBNS0TutkimuspyyntoMikrobi readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}mikrobit of type {}tutkimuspyyntoMikrobi.");
#endif

    if ([self mikrobit]) {
      [self setMikrobit: [[self mikrobit] arrayByAddingObject: __child]];
    }
    else {
      [self setMikrobit: [NSArray arrayWithObject: __child]];
    }
    return YES;
  } //end "if choice"


  return NO;
}

//documentation inherited.
- (int) readUnknownJAXBChildElement: (xmlTextReaderPtr) reader
{
  return [super readUnknownJAXBChildElement: reader];
}

//documentation inherited.
- (void) readUnknownJAXBAttribute: (xmlTextReaderPtr) reader
{
  [super readUnknownJAXBAttribute: reader];
}

//documentation inherited.
- (void) writeJAXBAttributes: (xmlTextWriterPtr) writer
{
  int status;

  [super writeJAXBAttributes: writer];

}

//documentation inherited.
- (void) writeJAXBValue: (xmlTextWriterPtr) writer
{
  [super writeJAXBValue: writer];
}

/**
 * Method for writing the child elements.
 *
 * @param writer The writer.
 */
- (void) writeJAXBChildElements: (xmlTextWriterPtr) writer
{
  int status;
  id __item;
  id __item_copy;
  NSEnumerator *__enumerator;

  [super writeJAXBChildElements: writer];

  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "pyynto", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}pyynto."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}pyynto...");
#endif
    status = xmlTextWriterWriteIntType(writer, &_pyynto);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}pyynto...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}pyynto."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}pyynto."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "rivi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}rivi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}rivi...");
#endif
    status = xmlTextWriterWriteShortType(writer, &_rivi);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}rivi...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}rivi."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}rivi."];
    }
  }
  if ([self tutkimus]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tutkimus", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tutkimus."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tutkimus...");
#endif
    [[self tutkimus] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tutkimus...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tutkimus."];
    }
  }
  if ([self versio]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "versio", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}versio."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}versio...");
#endif
    [[self versio] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}versio...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}versio."];
    }
  }
  if ([self hajautettu] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "hajautettu", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}hajautettu."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}hajautettu...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self hajautettu]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}hajautettu...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}hajautettu."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}hajautettu."];
    }
  }
  if ([self hoitojakso] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "hoitojakso", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}hoitojakso."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}hoitojakso...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self hoitojakso]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}hoitojakso...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}hoitojakso."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}hoitojakso."];
    }
  }
  if ([self huomautuksia]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "huomautuksia", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}huomautuksia."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}huomautuksia...");
#endif
    [[self huomautuksia] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}huomautuksia...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}huomautuksia."];
    }
  }
  if ([self kontrolloitava]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kontrolloitava", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kontrolloitava."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kontrolloitava...");
#endif
    [[self kontrolloitava] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kontrolloitava...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kontrolloitava."];
    }
  }
  if ([self korvausluokka] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "korvausluokka", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}korvausluokka."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}korvausluokka...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self korvausluokka]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}korvausluokka...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}korvausluokka."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}korvausluokka."];
    }
  }
  if ([self kunta] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kunta", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kunta."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kunta...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self kunta]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kunta...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}kunta."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kunta."];
    }
  }
  if ([self kustannuslinkki] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kustannuslinkki", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kustannuslinkki."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kustannuslinkki...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self kustannuslinkki]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kustannuslinkki...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}kustannuslinkki."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kustannuslinkki."];
    }
  }
  if ([self lisatietoja] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "lisatietoja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}lisatietoja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}lisatietoja...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self lisatietoja]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}lisatietoja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}lisatietoja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}lisatietoja."];
    }
  }
  if ([self lomakelinkki] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "lomakelinkki", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}lomakelinkki."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}lomakelinkki...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self lomakelinkki]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}lomakelinkki...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}lomakelinkki."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}lomakelinkki."];
    }
  }
  if ([self maksaja] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "maksaja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}maksaja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}maksaja...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self maksaja]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}maksaja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}maksaja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}maksaja."];
    }
  }
  if ([self mikrobitietoja] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "mikrobitietoja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}mikrobitietoja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}mikrobitietoja...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self mikrobitietoja]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}mikrobitietoja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}mikrobitietoja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}mikrobitietoja."];
    }
  }
  if ([self muutosaika]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "muutosaika", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}muutosaika."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}muutosaika...");
#endif
    [[self muutosaika] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}muutosaika...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}muutosaika."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "muutospaikka", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}muutospaikka."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}muutospaikka...");
#endif
    status = xmlTextWriterWriteShortType(writer, &_muutospaikka);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}muutospaikka...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}muutospaikka."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}muutospaikka."];
    }
  }
  if ([self nayte] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "nayte", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}nayte."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}nayte...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self nayte]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}nayte...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}nayte."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}nayte."];
    }
  }
  if ([self naytetietoja] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "naytetietoja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}naytetietoja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}naytetietoja...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self naytetietoja]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}naytetietoja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}naytetietoja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}naytetietoja."];
    }
  }
  if ([self numerotulos] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "numerotulos", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}numerotulos."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}numerotulos...");
#endif
    status = xmlTextWriterWriteDoubleType(writer, [self numerotulos]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}numerotulos...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}numerotulos."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}numerotulos."];
    }
  }
  if ([self numeroyksikko]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "numeroyksikko", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}numeroyksikko."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}numeroyksikko...");
#endif
    [[self numeroyksikko] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}numeroyksikko...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}numeroyksikko."];
    }
  }
  if ([self osalinkki] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "osalinkki", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}osalinkki."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}osalinkki...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self osalinkki]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}osalinkki...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}osalinkki."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}osalinkki."];
    }
  }
  if ([self osasto] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "osasto", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}osasto."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}osasto...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self osasto]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}osasto...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}osasto."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}osasto."];
    }
  }
  if ([self ottoaika]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "ottoaika", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}ottoaika."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}ottoaika...");
#endif
    [[self ottoaika] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}ottoaika...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}ottoaika."];
    }
  }
  if ([self paketti]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "paketti", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}paketti."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}paketti...");
#endif
    [[self paketti] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}paketti...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}paketti."];
    }
  }
  if ([self piiri] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "piiri", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}piiri."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}piiri...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self piiri]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}piiri...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}piiri."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}piiri."];
    }
  }
  if ([self poistettu]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "poistettu", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}poistettu."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}poistettu...");
#endif
    [[self poistettu] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}poistettu...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}poistettu."];
    }
  }
  if ([self pyydetty]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "pyydetty", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}pyydetty."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}pyydetty...");
#endif
    [[self pyydetty] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}pyydetty...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}pyydetty."];
    }
  }
  if ([self sanallinenvastaus]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "sanallinenvastaus", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}sanallinenvastaus."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}sanallinenvastaus...");
#endif
    [[self sanallinenvastaus] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}sanallinenvastaus...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}sanallinenvastaus."];
    }
  }
  if ([self sijaintiosasto]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "sijaintiosasto", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}sijaintiosasto."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}sijaintiosasto...");
#endif
    [[self sijaintiosasto] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}sijaintiosasto...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}sijaintiosasto."];
    }
  }
  if ([self sijaintipaikka]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "sijaintipaikka", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}sijaintipaikka."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}sijaintipaikka...");
#endif
    [[self sijaintipaikka] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}sijaintipaikka...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}sijaintipaikka."];
    }
  }
  if ([self sisainenMaksaja]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "sisainenMaksaja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}sisainenMaksaja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}sisainenMaksaja...");
#endif
    [[self sisainenMaksaja] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}sisainenMaksaja...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}sisainenMaksaja."];
    }
  }
  if ([self suoritelinkki] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "suoritelinkki", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}suoritelinkki."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}suoritelinkki...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self suoritelinkki]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}suoritelinkki...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}suoritelinkki."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}suoritelinkki."];
    }
  }
  if ([self tehty]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tehty", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tehty."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tehty...");
#endif
    [[self tehty] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tehty...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tehty."];
    }
  }
  if ([self tekopaikka] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tekopaikka", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tekopaikka."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tekopaikka...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self tekopaikka]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tekopaikka...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}tekopaikka."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tekopaikka."];
    }
  }
  if ([self tekstitulos]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tekstitulos", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tekstitulos."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tekstitulos...");
#endif
    [[self tekstitulos] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tekstitulos...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tekstitulos."];
    }
  }
  if ([self tekstiviesti] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tekstiviesti", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tekstiviesti."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tekstiviesti...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self tekstiviesti]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tekstiviesti...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}tekstiviesti."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tekstiviesti."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tila", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tila."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tila...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_tila);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tila...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}tila."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tila."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tilaaja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tilaaja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tilaaja...");
#endif
    status = xmlTextWriterWriteIntType(writer, &_tilaaja);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tilaaja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}tilaaja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tilaaja."];
    }
  }
  if ([self tilaajaNimi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tilaajaNimi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tilaajaNimi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tilaajaNimi...");
#endif
    [[self tilaajaNimi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tilaajaNimi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tilaajaNimi."];
    }
  }
  if ([self tilaajayksikko] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tilaajayksikko", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tilaajayksikko."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tilaajayksikko...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self tilaajayksikko]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tilaajayksikko...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}tilaajayksikko."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tilaajayksikko."];
    }
  }
  if ([self tilaustunnus]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tilaustunnus", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tilaustunnus."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tilaustunnus...");
#endif
    [[self tilaustunnus] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tilaustunnus...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tilaustunnus."];
    }
  }
  if ([self toistoloppuu]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "toistoloppuu", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}toistoloppuu."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}toistoloppuu...");
#endif
    [[self toistoloppuu] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}toistoloppuu...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}toistoloppuu."];
    }
  }
  if ([self toistovali] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "toistovali", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}toistovali."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}toistovali...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self toistovali]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}toistovali...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}toistovali."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}toistovali."];
    }
  }
  if ([self tulkinta]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tulkinta", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tulkinta."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tulkinta...");
#endif
    [[self tulkinta] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tulkinta...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tulkinta."];
    }
  }
  if ([self tuottaja] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tuottaja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tuottaja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tuottaja...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self tuottaja]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tuottaja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}tuottaja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tuottaja."];
    }
  }
  if ([self tyonantaja] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tyonantaja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tyonantaja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tyonantaja...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self tyonantaja]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tyonantaja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}tyonantaja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tyonantaja."];
    }
  }
  if ([self vastaustietoja] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "vastaustietoja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}vastaustietoja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}vastaustietoja...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self vastaustietoja]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}vastaustietoja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}vastaustietoja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}vastaustietoja."];
    }
  }
  if ([self viitearvot]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "viitearvot", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}viitearvot."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}viitearvot...");
#endif
    [[self viitearvot] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}viitearvot...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}viitearvot."];
    }
  }
  if ([self kirjaaja] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kirjaaja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kirjaaja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kirjaaja...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self kirjaaja]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kirjaaja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}kirjaaja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kirjaaja."];
    }
  }
  if ([self tilaKoodi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tilaKoodi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tilaKoodi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tilaKoodi...");
#endif
    [[self tilaKoodi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tilaKoodi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tilaKoodi."];
    }
  }
  if ([self poikkeava] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "poikkeava", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}poikkeava."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}poikkeava...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self poikkeava]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}poikkeava...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}poikkeava."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}poikkeava."];
    }
  }
  if ([self mikrobit]) {
    __enumerator = [[self mikrobit] objectEnumerator];

    while ( (__item = [__enumerator nextObject]) ) {
      status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "mikrobit", NULL);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing start child element {}mikrobit."];
      }

#if DEBUG_ENUNCIATE > 1
      NSLog(@"writing element {}mikrobit...");
#endif
      [__item writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
      NSLog(@"successfully wrote element {}mikrobit...");
#endif

      status = xmlTextWriterEndElement(writer);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing end child element {}mikrobit."];
      }
    } //end item iterator.
  }
}
@end /* implementation COREWEBNS0TutkimuspyyntoTiedot (JAXB) */

#endif /* DEF_COREWEBNS0TutkimuspyyntoTiedot_M */
#ifndef DEF_COREWEBNS0TutkimuspyyntoHerkkyys_M
#define DEF_COREWEBNS0TutkimuspyyntoHerkkyys_M

/**
 *  DTO for TutkimuspyyntoHerkkyys

 A class to present TUTKIMUSPYYNTOHERKKYYS table in laboratory examination functionality.
 Used to carry the data from database to the client side.


 */
@implementation COREWEBNS0TutkimuspyyntoHerkkyys

/**
 * (no documentation provided)
 */
- (short) rivi
{
  return _rivi;
}

/**
 * (no documentation provided)
 */
- (void) setRivi: (short) newRivi
{
  _rivi = newRivi;
}

/**
 * (no documentation provided)
 */
- (NSString *) antibiootti
{
  return _antibiootti;
}

/**
 * (no documentation provided)
 */
- (void) setAntibiootti: (NSString *) newAntibiootti
{
  [newAntibiootti retain];
  [_antibiootti release];
  _antibiootti = newAntibiootti;
}

/**
 * (no documentation provided)
 */
- (unsigned short *) kiekkoherkkyys
{
  return _kiekkoherkkyys;
}

/**
 * (no documentation provided)
 */
- (void) setKiekkoherkkyys: (unsigned short *) newKiekkoherkkyys
{
  if (_kiekkoherkkyys != NULL) {
    free(_kiekkoherkkyys);
  }
  _kiekkoherkkyys = newKiekkoherkkyys;
}

/**
 * (no documentation provided)
 */
- (NSString *) micherkkyys
{
  return _micherkkyys;
}

/**
 * (no documentation provided)
 */
- (void) setMicherkkyys: (NSString *) newMicherkkyys
{
  [newMicherkkyys retain];
  [_micherkkyys release];
  _micherkkyys = newMicherkkyys;
}

/**
 * (no documentation provided)
 */
- (NSString *) lyhenne
{
  return _lyhenne;
}

/**
 * (no documentation provided)
 */
- (void) setLyhenne: (NSString *) newLyhenne
{
  [newLyhenne retain];
  [_lyhenne release];
  _lyhenne = newLyhenne;
}

/**
 * (no documentation provided)
 */
- (NSString *) numero
{
  return _numero;
}

/**
 * (no documentation provided)
 */
- (void) setNumero: (NSString *) newNumero
{
  [newNumero retain];
  [_numero release];
  _numero = newNumero;
}

/**
 * (no documentation provided)
 */
- (NSString *) ryhma
{
  return _ryhma;
}

/**
 * (no documentation provided)
 */
- (void) setRyhma: (NSString *) newRyhma
{
  [newRyhma retain];
  [_ryhma release];
  _ryhma = newRyhma;
}

- (void) dealloc
{
  [self setAntibiootti: nil];
  [self setKiekkoherkkyys: NULL];
  [self setMicherkkyys: nil];
  [self setLyhenne: nil];
  [self setNumero: nil];
  [self setRyhma: nil];
  [super dealloc];
}

//documentation inherited.
+ (id<EnunciateXML>) readFromXML: (NSData *) xml
{
  COREWEBNS0TutkimuspyyntoHerkkyys *_cOREWEBNS0TutkimuspyyntoHerkkyys;
  xmlTextReaderPtr reader = xmlReaderForMemory([xml bytes], [xml length], NULL, NULL, 0);
  if (reader == NULL) {
    [NSException raise: @"XMLReadError"
                 format: @"Error instantiating an XML reader."];
    return nil;
  }

  _cOREWEBNS0TutkimuspyyntoHerkkyys = (COREWEBNS0TutkimuspyyntoHerkkyys *) [COREWEBNS0TutkimuspyyntoHerkkyys readXMLElement: reader];
  xmlFreeTextReader(reader); //free the reader
  return _cOREWEBNS0TutkimuspyyntoHerkkyys;
}

//documentation inherited.
- (NSData *) writeToXML
{
  xmlBufferPtr buf;
  xmlTextWriterPtr writer;
  int rc;
  NSData *data;

  buf = xmlBufferCreate();
  if (buf == NULL) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error creating an XML buffer."];
    return nil;
  }

  writer = xmlNewTextWriterMemory(buf, 0);
  if (writer == NULL) {
    xmlBufferFree(buf);
    [NSException raise: @"XMLWriteError"
                 format: @"Error creating an XML writer."];
    return nil;
  }

  rc = xmlTextWriterStartDocument(writer, NULL, "utf-8", NULL);
  if (rc < 0) {
    xmlFreeTextWriter(writer);
    xmlBufferFree(buf);
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing XML start document."];
    return nil;
  }

  NS_DURING
  {
    [self writeXMLElement: writer];
  }
  NS_HANDLER
  {
    xmlFreeTextWriter(writer);
    xmlBufferFree(buf);
    [localException raise];
  }
  NS_ENDHANDLER

  rc = xmlTextWriterEndDocument(writer);
  if (rc < 0) {
    xmlFreeTextWriter(writer);
    xmlBufferFree(buf);
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing XML end document."];
    return nil;
  }

  xmlFreeTextWriter(writer);
  data = [NSData dataWithBytes: buf->content length: buf->use];
  xmlBufferFree(buf);
  return data;
}
@end /* implementation COREWEBNS0TutkimuspyyntoHerkkyys */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0TutkimuspyyntoHerkkyys (JAXB) <JAXBReading, JAXBWriting, JAXBType, JAXBElement>

@end /*interface COREWEBNS0TutkimuspyyntoHerkkyys (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0TutkimuspyyntoHerkkyys (JAXB)

/**
 * Read an instance of COREWEBNS0TutkimuspyyntoHerkkyys from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0TutkimuspyyntoHerkkyys defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0TutkimuspyyntoHerkkyys *_cOREWEBNS0TutkimuspyyntoHerkkyys = [[COREWEBNS0TutkimuspyyntoHerkkyys alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0TutkimuspyyntoHerkkyys initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0TutkimuspyyntoHerkkyys = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0TutkimuspyyntoHerkkyys autorelease];
  return _cOREWEBNS0TutkimuspyyntoHerkkyys;
}

/**
 * Initialize this instance of COREWEBNS0TutkimuspyyntoHerkkyys according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0TutkimuspyyntoHerkkyys to the writer.
 * Note that since we're only writing the XML type,
 * No start/end element will be written.
 *
 * @param reader The reader.
 */
- (void) writeXMLType: (xmlTextWriterPtr) writer
{
  [super writeXMLType:writer];
}

/**
 * Reads a COREWEBNS0TutkimuspyyntoHerkkyys from an XML reader. The element to be read is
 * "tutkimuspyyntoHerkkyys".
 *
 * @param reader The XML reader.
 * @return The COREWEBNS0TutkimuspyyntoHerkkyys.
 */
+ (id<JAXBElement>) readXMLElement: (xmlTextReaderPtr) reader {
  int status;
  COREWEBNS0TutkimuspyyntoHerkkyys *_tutkimuspyyntoHerkkyys = nil;

  if (xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) {
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
    if (status < 1) {
      [NSException raise: @"XMLReadError"
                   format: @"Error advancing the reader to start element tutkimuspyyntoHerkkyys."];
    }
  }

  if (xmlStrcmp(BAD_CAST "tutkimuspyyntoHerkkyys", xmlTextReaderConstLocalName(reader)) == 0
      && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read root element {}tutkimuspyyntoHerkkyys.");
#endif
    _tutkimuspyyntoHerkkyys = (COREWEBNS0TutkimuspyyntoHerkkyys *)[COREWEBNS0TutkimuspyyntoHerkkyys readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Successfully read root element {}tutkimuspyyntoHerkkyys.");
#endif
  }
  else {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0TutkimuspyyntoHerkkyys. Expected element tutkimuspyyntoHerkkyys. Current element: {}%s", xmlTextReaderConstLocalName(reader)];
    }
    else {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0TutkimuspyyntoHerkkyys. Expected element tutkimuspyyntoHerkkyys. Current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader)];
    }
  }

  return _tutkimuspyyntoHerkkyys;
}

/**
 * Writes this COREWEBNS0TutkimuspyyntoHerkkyys to XML under element name "tutkimuspyyntoHerkkyys".
 * The namespace declarations for the element will be written.
 *
 * @param writer The XML writer.
 * @param _tutkimuspyyntoHerkkyys The TutkimuspyyntoHerkkyys to write.
 * @return 1 if successful, 0 otherwise.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer
{
  [self writeXMLElement: writer writeNamespaces: YES];
}

/**
 * Writes this COREWEBNS0TutkimuspyyntoHerkkyys to an XML writer.
 *
 * @param writer The writer.
 * @param writeNs Whether to write the namespaces for this element to the xml writer.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer writeNamespaces: (BOOL) writeNs
{
  int rc = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tutkimuspyyntoHerkkyys", NULL);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing start element {}tutkimuspyyntoHerkkyys. XML writer status: %i\n", rc];
  }

#if DEBUG_ENUNCIATE > 1
  NSLog(@"writing type {}tutkimuspyyntoHerkkyys for root element {}tutkimuspyyntoHerkkyys...");
#endif
  [self writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
  NSLog(@"successfully wrote type {}tutkimuspyyntoHerkkyys for root element {}tutkimuspyyntoHerkkyys...");
#endif
  rc = xmlTextWriterEndElement(writer);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing end element {}tutkimuspyyntoHerkkyys. XML writer status: %i\n", rc];
  }
}

//documentation inherited.
- (BOOL) readJAXBAttribute: (xmlTextReaderPtr) reader
{
  void *_child_accessor;

  if ([super readJAXBAttribute: reader]) {
    return YES;
  }

  return NO;
}

//documentation inherited.
- (BOOL) readJAXBValue: (xmlTextReaderPtr) reader
{
  return [super readJAXBValue: reader];
}

//documentation inherited.
- (BOOL) readJAXBChildElement: (xmlTextReaderPtr) reader
{
  id __child;
  void *_child_accessor;
  int status, depth;

  if ([super readJAXBChildElement: reader]) {
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "rivi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setRivi: *((short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "antibiootti", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}antibiootti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}antibiootti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setAntibiootti: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kiekkoherkkyys", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setKiekkoherkkyys: ((unsigned short*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "micherkkyys", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}micherkkyys of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}micherkkyys of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setMicherkkyys: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "lyhenne", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}lyhenne of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}lyhenne of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setLyhenne: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "numero", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}numero of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}numero of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setNumero: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "ryhma", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}ryhma of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}ryhma of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setRyhma: __child];
    return YES;
  } //end "if choice"


  return NO;
}

//documentation inherited.
- (int) readUnknownJAXBChildElement: (xmlTextReaderPtr) reader
{
  return [super readUnknownJAXBChildElement: reader];
}

//documentation inherited.
- (void) readUnknownJAXBAttribute: (xmlTextReaderPtr) reader
{
  [super readUnknownJAXBAttribute: reader];
}

//documentation inherited.
- (void) writeJAXBAttributes: (xmlTextWriterPtr) writer
{
  int status;

  [super writeJAXBAttributes: writer];

}

//documentation inherited.
- (void) writeJAXBValue: (xmlTextWriterPtr) writer
{
  [super writeJAXBValue: writer];
}

/**
 * Method for writing the child elements.
 *
 * @param writer The writer.
 */
- (void) writeJAXBChildElements: (xmlTextWriterPtr) writer
{
  int status;
  id __item;
  id __item_copy;
  NSEnumerator *__enumerator;

  [super writeJAXBChildElements: writer];

  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "rivi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}rivi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}rivi...");
#endif
    status = xmlTextWriterWriteShortType(writer, &_rivi);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}rivi...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}rivi."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}rivi."];
    }
  }
  if ([self antibiootti]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "antibiootti", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}antibiootti."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}antibiootti...");
#endif
    [[self antibiootti] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}antibiootti...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}antibiootti."];
    }
  }
  if ([self kiekkoherkkyys] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kiekkoherkkyys", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kiekkoherkkyys."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kiekkoherkkyys...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self kiekkoherkkyys]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kiekkoherkkyys...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}kiekkoherkkyys."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kiekkoherkkyys."];
    }
  }
  if ([self micherkkyys]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "micherkkyys", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}micherkkyys."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}micherkkyys...");
#endif
    [[self micherkkyys] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}micherkkyys...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}micherkkyys."];
    }
  }
  if ([self lyhenne]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "lyhenne", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}lyhenne."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}lyhenne...");
#endif
    [[self lyhenne] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}lyhenne...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}lyhenne."];
    }
  }
  if ([self numero]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "numero", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}numero."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}numero...");
#endif
    [[self numero] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}numero...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}numero."];
    }
  }
  if ([self ryhma]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "ryhma", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}ryhma."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}ryhma...");
#endif
    [[self ryhma] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}ryhma...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}ryhma."];
    }
  }
}
@end /* implementation COREWEBNS0TutkimuspyyntoHerkkyys (JAXB) */

#endif /* DEF_COREWEBNS0TutkimuspyyntoHerkkyys_M */
#ifndef DEF_COREWEBNS0Tutkimuspyynto_M
#define DEF_COREWEBNS0Tutkimuspyynto_M

/**
 *  DTO for LabExamination

 A class to present TUTKIMUSPYYNTO table in laboratory examination functionality.
 Used to carry the data from database to the client side.


 */
@implementation COREWEBNS0Tutkimuspyynto

/**
 * Returns the name of the Tutkimus
 */
- (NSString *) tutkimus
{
  return _tutkimus;
}

/**
 * Returns the name of the Tutkimus
 */
- (void) setTutkimus: (NSString *) newTutkimus
{
  [newTutkimus retain];
  [_tutkimus release];
  _tutkimus = newTutkimus;
}

/**
 * Returns a list of Tutkimus details under the same tutkimus name
 */
- (NSArray *) tutkimuspyyntoTiedotList
{
  return _tutkimuspyyntoTiedotList;
}

/**
 * Returns a list of Tutkimus details under the same tutkimus name
 */
- (void) setTutkimuspyyntoTiedotList: (NSArray *) newTutkimuspyyntoTiedotList
{
  [newTutkimuspyyntoTiedotList retain];
  [_tutkimuspyyntoTiedotList release];
  _tutkimuspyyntoTiedotList = newTutkimuspyyntoTiedotList;
}

/**
 * Returns the category of the tutkimus. Category could be
 * "tilattu", "kuittaamaton" or "tulos"
 */
- (NSString *) kategoria
{
  return _kategoria;
}

/**
 * Returns the category of the tutkimus. Category could be
 * "tilattu", "kuittaamaton" or "tulos"
 */
- (void) setKategoria: (NSString *) newKategoria
{
  [newKategoria retain];
  [_kategoria release];
  _kategoria = newKategoria;
}

/**
 * (no documentation provided)
 */
- (NSDate *) latestTime
{
  return _latestTime;
}

/**
 * (no documentation provided)
 */
- (void) setLatestTime: (NSDate *) newLatestTime
{
  [newLatestTime retain];
  [_latestTime release];
  _latestTime = newLatestTime;
}

- (void) dealloc
{
  [self setTutkimus: nil];
  [self setTutkimuspyyntoTiedotList: nil];
  [self setKategoria: nil];
  [self setLatestTime: nil];
  [super dealloc];
}

//documentation inherited.
+ (id<EnunciateXML>) readFromXML: (NSData *) xml
{
  COREWEBNS0Tutkimuspyynto *_cOREWEBNS0Tutkimuspyynto;
  xmlTextReaderPtr reader = xmlReaderForMemory([xml bytes], [xml length], NULL, NULL, 0);
  if (reader == NULL) {
    [NSException raise: @"XMLReadError"
                 format: @"Error instantiating an XML reader."];
    return nil;
  }

  _cOREWEBNS0Tutkimuspyynto = (COREWEBNS0Tutkimuspyynto *) [COREWEBNS0Tutkimuspyynto readXMLElement: reader];
  xmlFreeTextReader(reader); //free the reader
  return _cOREWEBNS0Tutkimuspyynto;
}

//documentation inherited.
- (NSData *) writeToXML
{
  xmlBufferPtr buf;
  xmlTextWriterPtr writer;
  int rc;
  NSData *data;

  buf = xmlBufferCreate();
  if (buf == NULL) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error creating an XML buffer."];
    return nil;
  }

  writer = xmlNewTextWriterMemory(buf, 0);
  if (writer == NULL) {
    xmlBufferFree(buf);
    [NSException raise: @"XMLWriteError"
                 format: @"Error creating an XML writer."];
    return nil;
  }

  rc = xmlTextWriterStartDocument(writer, NULL, "utf-8", NULL);
  if (rc < 0) {
    xmlFreeTextWriter(writer);
    xmlBufferFree(buf);
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing XML start document."];
    return nil;
  }

  NS_DURING
  {
    [self writeXMLElement: writer];
  }
  NS_HANDLER
  {
    xmlFreeTextWriter(writer);
    xmlBufferFree(buf);
    [localException raise];
  }
  NS_ENDHANDLER

  rc = xmlTextWriterEndDocument(writer);
  if (rc < 0) {
    xmlFreeTextWriter(writer);
    xmlBufferFree(buf);
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing XML end document."];
    return nil;
  }

  xmlFreeTextWriter(writer);
  data = [NSData dataWithBytes: buf->content length: buf->use];
  xmlBufferFree(buf);
  return data;
}
@end /* implementation COREWEBNS0Tutkimuspyynto */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0Tutkimuspyynto (JAXB) <JAXBReading, JAXBWriting, JAXBType, JAXBElement>

@end /*interface COREWEBNS0Tutkimuspyynto (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0Tutkimuspyynto (JAXB)

/**
 * Read an instance of COREWEBNS0Tutkimuspyynto from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0Tutkimuspyynto defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0Tutkimuspyynto *_cOREWEBNS0Tutkimuspyynto = [[COREWEBNS0Tutkimuspyynto alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0Tutkimuspyynto initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0Tutkimuspyynto = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0Tutkimuspyynto autorelease];
  return _cOREWEBNS0Tutkimuspyynto;
}

/**
 * Initialize this instance of COREWEBNS0Tutkimuspyynto according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0Tutkimuspyynto to the writer.
 * Note that since we're only writing the XML type,
 * No start/end element will be written.
 *
 * @param reader The reader.
 */
- (void) writeXMLType: (xmlTextWriterPtr) writer
{
  [super writeXMLType:writer];
}

/**
 * Reads a COREWEBNS0Tutkimuspyynto from an XML reader. The element to be read is
 * "tutkimuspyynto".
 *
 * @param reader The XML reader.
 * @return The COREWEBNS0Tutkimuspyynto.
 */
+ (id<JAXBElement>) readXMLElement: (xmlTextReaderPtr) reader {
  int status;
  COREWEBNS0Tutkimuspyynto *_tutkimuspyynto = nil;

  if (xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) {
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
    if (status < 1) {
      [NSException raise: @"XMLReadError"
                   format: @"Error advancing the reader to start element tutkimuspyynto."];
    }
  }

  if (xmlStrcmp(BAD_CAST "tutkimuspyynto", xmlTextReaderConstLocalName(reader)) == 0
      && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read root element {}tutkimuspyynto.");
#endif
    _tutkimuspyynto = (COREWEBNS0Tutkimuspyynto *)[COREWEBNS0Tutkimuspyynto readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Successfully read root element {}tutkimuspyynto.");
#endif
  }
  else {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0Tutkimuspyynto. Expected element tutkimuspyynto. Current element: {}%s", xmlTextReaderConstLocalName(reader)];
    }
    else {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0Tutkimuspyynto. Expected element tutkimuspyynto. Current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader)];
    }
  }

  return _tutkimuspyynto;
}

/**
 * Writes this COREWEBNS0Tutkimuspyynto to XML under element name "tutkimuspyynto".
 * The namespace declarations for the element will be written.
 *
 * @param writer The XML writer.
 * @param _tutkimuspyynto The Tutkimuspyynto to write.
 * @return 1 if successful, 0 otherwise.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer
{
  [self writeXMLElement: writer writeNamespaces: YES];
}

/**
 * Writes this COREWEBNS0Tutkimuspyynto to an XML writer.
 *
 * @param writer The writer.
 * @param writeNs Whether to write the namespaces for this element to the xml writer.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer writeNamespaces: (BOOL) writeNs
{
  int rc = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tutkimuspyynto", NULL);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing start element {}tutkimuspyynto. XML writer status: %i\n", rc];
  }

#if DEBUG_ENUNCIATE > 1
  NSLog(@"writing type {}tutkimuspyynto for root element {}tutkimuspyynto...");
#endif
  [self writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
  NSLog(@"successfully wrote type {}tutkimuspyynto for root element {}tutkimuspyynto...");
#endif
  rc = xmlTextWriterEndElement(writer);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing end element {}tutkimuspyynto. XML writer status: %i\n", rc];
  }
}

//documentation inherited.
- (BOOL) readJAXBAttribute: (xmlTextReaderPtr) reader
{
  void *_child_accessor;

  if ([super readJAXBAttribute: reader]) {
    return YES;
  }

  return NO;
}

//documentation inherited.
- (BOOL) readJAXBValue: (xmlTextReaderPtr) reader
{
  return [super readJAXBValue: reader];
}

//documentation inherited.
- (BOOL) readJAXBChildElement: (xmlTextReaderPtr) reader
{
  id __child;
  void *_child_accessor;
  int status, depth;

  if ([super readJAXBChildElement: reader]) {
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tutkimus", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tutkimus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tutkimus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setTutkimus: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tutkimuspyyntoTiedotList", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tutkimuspyyntoTiedotList of type {}tutkimuspyyntoTiedot.");
#endif

     __child = [COREWEBNS0TutkimuspyyntoTiedot readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tutkimuspyyntoTiedotList of type {}tutkimuspyyntoTiedot.");
#endif

    if ([self tutkimuspyyntoTiedotList]) {
      [self setTutkimuspyyntoTiedotList: [[self tutkimuspyyntoTiedotList] arrayByAddingObject: __child]];
    }
    else {
      [self setTutkimuspyyntoTiedotList: [NSArray arrayWithObject: __child]];
    }
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kategoria", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}kategoria of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}kategoria of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setKategoria: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "latestTime", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}latestTime of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif
    __child = [NSDate readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}latestTime of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif

    [self setLatestTime: __child];
    return YES;
  } //end "if choice"


  return NO;
}

//documentation inherited.
- (int) readUnknownJAXBChildElement: (xmlTextReaderPtr) reader
{
  return [super readUnknownJAXBChildElement: reader];
}

//documentation inherited.
- (void) readUnknownJAXBAttribute: (xmlTextReaderPtr) reader
{
  [super readUnknownJAXBAttribute: reader];
}

//documentation inherited.
- (void) writeJAXBAttributes: (xmlTextWriterPtr) writer
{
  int status;

  [super writeJAXBAttributes: writer];

}

//documentation inherited.
- (void) writeJAXBValue: (xmlTextWriterPtr) writer
{
  [super writeJAXBValue: writer];
}

/**
 * Method for writing the child elements.
 *
 * @param writer The writer.
 */
- (void) writeJAXBChildElements: (xmlTextWriterPtr) writer
{
  int status;
  id __item;
  id __item_copy;
  NSEnumerator *__enumerator;

  [super writeJAXBChildElements: writer];

  if ([self tutkimus]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tutkimus", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tutkimus."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tutkimus...");
#endif
    [[self tutkimus] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tutkimus...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tutkimus."];
    }
  }
  if ([self tutkimuspyyntoTiedotList]) {
    __enumerator = [[self tutkimuspyyntoTiedotList] objectEnumerator];

    while ( (__item = [__enumerator nextObject]) ) {
      status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tutkimuspyyntoTiedotList", NULL);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing start child element {}tutkimuspyyntoTiedotList."];
      }

#if DEBUG_ENUNCIATE > 1
      NSLog(@"writing element {}tutkimuspyyntoTiedotList...");
#endif
      [__item writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
      NSLog(@"successfully wrote element {}tutkimuspyyntoTiedotList...");
#endif

      status = xmlTextWriterEndElement(writer);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing end child element {}tutkimuspyyntoTiedotList."];
      }
    } //end item iterator.
  }
  if ([self kategoria]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kategoria", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kategoria."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kategoria...");
#endif
    [[self kategoria] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kategoria...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kategoria."];
    }
  }
  if ([self latestTime]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "latestTime", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}latestTime."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}latestTime...");
#endif
    [[self latestTime] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}latestTime...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}latestTime."];
    }
  }
}
@end /* implementation COREWEBNS0Tutkimuspyynto (JAXB) */

#endif /* DEF_COREWEBNS0Tutkimuspyynto_M */
#ifndef DEF_COREWEBNS0LaakitysAnto_M
#define DEF_COREWEBNS0LaakitysAnto_M

/**
 *  DTO for LaakitysAnto.

  * A class to present LAAKITYS_ANTO table in medication functionality.
 Used to carry the data from database to the client side.

 <table style="border: 1px solid black;">
 <tr><th>property</th><th>only for frontend</th><th>obligatory from api</th><th>editable</th><th>must be same as laakityshistorias</th></tr>
 <tr><td>antaja</td><td>no</td><td>yes</td><td>yes</td><td>no</td></tr>
 <tr><td>huomautuksia</td><td>no</td><td>no</td><td>yes</td><td>no</td></tr>
 <tr><td>kello</td><td>no</td><td>yes (in planned)</td><td>yes</td><td>yes (all in one field)</td></tr>
 <tr><td>kirjaaja</td><td>no</td><td>no (added by api)</td><td>no</td><td>no</td></tr>
 <tr><td>laake</td><td>yes</td><td>no (added by api)</td><td>no</td><td>yes</td></tr>
 <tr><td>maara</td><td>no</td><td>yes</td><td>yes</td><td>no</td></tr>
 <tr><td>muutosAika</td><td>no</td><td>no (added by api)</td><td>no</td><td>no</td></tr>
 <tr><td>omistaja</td><td>no</td><td>yes (doublechecked)</td><td>no</td><td>yes</td></tr>
 <tr><td>osa</td><td>no</td><td>yes (doublechecked)</td><td>no</td><td>yes</td></tr>
 <tr><td>poistettu</td><td>no</td><td>no (added by api)</td><td>no</td><td>no</td></tr>
 <tr><td>toteutunutAika</td><td>no</td><td>yes</td><td>yes</td><td>no</td></tr>
 <tr><td>toteutunutAikaOriginal</td><td>no</td><td>yes (only for editing)</td><td>no</td><td>no</td></tr>
 <tr><td>toteutunutAikaLoppu</td><td>no</td><td>no</td><td>yes</td><td>no</td></tr>
 <tr><td>tyyppi</td><td>no</td><td>yes</td><td>no</td><td>no</td></tr>
 <tr><td>yksikko</td><td>no</td><td>yes (doublechecked)</td><td>no</td><td>yes</td></tr>
 <tr><td>kirjaajaName</td><td>yes</td><td>no</td><td>no</td><td>no</td></tr>
 <tr><td>antajaName</td><td>yes</td><td>no</td><td>no</td><td>no</td></tr>
 <tr><td>annettavaMaara</td><td>yes</td><td>no</td><td>no</td><td>no</td></tr>
 <tr><td>annettavaYksikko</td><td>yes</td><td>no</td><td>no</td><td>no</td></tr>
 <tr><td>annettavaMaksimi</td><td>yes</td><td>no</td><td>no</td><td>no</td></tr>
 </table>

 */
@implementation COREWEBNS0LaakitysAnto

/**
 * Returns the id of the medication giver
 */
- (int) antaja
{
  return _antaja;
}

/**
 * Returns the id of the medication giver
 */
- (void) setAntaja: (int) newAntaja
{
  _antaja = newAntaja;
}

/**
 * Returns the observetion comments related to the medication giving
 */
- (NSString *) huomautuksia
{
  return _huomautuksia;
}

/**
 * Returns the observetion comments related to the medication giving
 */
- (void) setHuomautuksia: (NSString *) newHuomautuksia
{
  [newHuomautuksia retain];
  [_huomautuksia release];
  _huomautuksia = newHuomautuksia;
}

/**
 * Returns the id of the actual person that fed this info to the DB/system
 */
- (int) kirjaaja
{
  return _kirjaaja;
}

/**
 * Returns the id of the actual person that fed this info to the DB/system
 */
- (void) setKirjaaja: (int) newKirjaaja
{
  _kirjaaja = newKirjaaja;
}

/**
 * Returns the laake VNR. VNR is a code that is used to identify the medication. @see http://www.laaketietokeskus.fi/vnr
 */
- (NSString *) laake
{
  return _laake;
}

/**
 * Returns the laake VNR. VNR is a code that is used to identify the medication. @see http://www.laaketietokeskus.fi/vnr
 */
- (void) setLaake: (NSString *) newLaake
{
  [newLaake retain];
  [_laake release];
  _laake = newLaake;
}

/**
 * Returns the medication amount
 */
- (float) maara
{
  return _maara;
}

/**
 * Returns the medication amount
 */
- (void) setMaara: (float) newMaara
{
  _maara = newMaara;
}

/**
 * Returns the owner ie. patients mediatri id.
 */
- (int) omistaja
{
  return _omistaja;
}

/**
 * Returns the owner ie. patients mediatri id.
 */
- (void) setOmistaja: (int) newOmistaja
{
  _omistaja = newOmistaja;
}

/**
 * Retuns the part number that is the id of the medication together with alku and omistaja
 */
- (int) osa
{
  return _osa;
}

/**
 * Retuns the part number that is the id of the medication together with alku and omistaja
 */
- (void) setOsa: (int) newOsa
{
  _osa = newOsa;
}

/**
 * Returns the code of the medication time removal. 'E' - not removed, 'K' = removed
 */
- (unsigned short) poistettu
{
  return _poistettu;
}

/**
 * Returns the code of the medication time removal. 'E' - not removed, 'K' = removed
 */
- (void) setPoistettu: (unsigned short) newPoistettu
{
  _poistettu = newPoistettu;
}

/**
 * Returns the planned time for medication. Tells which time the medication should be given
 */
- (NSDate *) suunniteltuAika
{
  return _suunniteltuAika;
}

/**
 * Returns the planned time for medication. Tells which time the medication should be given
 */
- (void) setSuunniteltuAika: (NSDate *) newSuunniteltuAika
{
  [newSuunniteltuAika retain];
  [_suunniteltuAika release];
  _suunniteltuAika = newSuunniteltuAika;
}

/**
 * Returns the actual time of medication. Mapped from PK id ALKU
 */
- (NSDate *) toteutunutAika
{
  return _toteutunutAika;
}

/**
 * Returns the actual time of medication. Mapped from PK id ALKU
 */
- (void) setToteutunutAika: (NSDate *) newToteutunutAika
{
  [newToteutunutAika retain];
  [_toteutunutAika release];
  _toteutunutAika = newToteutunutAika;
}

/**
 * Returns the type of LaakitysAnto object, 1 = planned and given, 2 = planned but not yet given, 3 = extra
 */
- (int) tyyppi
{
  return _tyyppi;
}

/**
 * Returns the type of LaakitysAnto object, 1 = planned and given, 2 = planned but not yet given, 3 = extra
 */
- (void) setTyyppi: (int) newTyyppi
{
  _tyyppi = newTyyppi;
}

/**
 * Returns the used unit. ml, l, etc.
 */
- (NSString *) yksikko
{
  return _yksikko;
}

/**
 * Returns the used unit. ml, l, etc.
 */
- (void) setYksikko: (NSString *) newYksikko
{
  [newYksikko retain];
  [_yksikko release];
  _yksikko = newYksikko;
}

/**
 * Returns the name of the actual person that fed this info to the DB/system
 */
- (NSString *) kirjaajaName
{
  return _kirjaajaName;
}

/**
 * Returns the name of the actual person that fed this info to the DB/system
 */
- (void) setKirjaajaName: (NSString *) newKirjaajaName
{
  [newKirjaajaName retain];
  [_kirjaajaName release];
  _kirjaajaName = newKirjaajaName;
}

/**
 * Returns the name of the medication giver
 */
- (NSString *) antajaName
{
  return _antajaName;
}

/**
 * Returns the name of the medication giver
 */
- (void) setAntajaName: (NSString *) newAntajaName
{
  [newAntajaName retain];
  [_antajaName release];
  _antajaName = newAntajaName;
}

/**
 * Returns the base amount that is given if swiped. Also the lower border of the amount.
 */
- (NSDecimalNumber *) annettavaMaara
{
  return _annettavaMaara;
}

/**
 * Returns the base amount that is given if swiped. Also the lower border of the amount.
 */
- (void) setAnnettavaMaara: (NSDecimalNumber *) newAnnettavaMaara
{
  [newAnnettavaMaara retain];
  [_annettavaMaara release];
  _annettavaMaara = newAnnettavaMaara;
}

/**
 * Returns the base unit that is described by laakityshistoria.
 */
- (NSString *) annettavaYksikko
{
  return _annettavaYksikko;
}

/**
 * Returns the base unit that is described by laakityshistoria.
 */
- (void) setAnnettavaYksikko: (NSString *) newAnnettavaYksikko
{
  [newAnnettavaYksikko retain];
  [_annettavaYksikko release];
  _annettavaYksikko = newAnnettavaYksikko;
}

/**
 * Returns the uuper border of the amount.
 */
- (NSDecimalNumber *) annettavaMaksimi
{
  return _annettavaMaksimi;
}

/**
 * Returns the uuper border of the amount.
 */
- (void) setAnnettavaMaksimi: (NSDecimalNumber *) newAnnettavaMaksimi
{
  [newAnnettavaMaksimi retain];
  [_annettavaMaksimi release];
  _annettavaMaksimi = newAnnettavaMaksimi;
}

/**
 * Original time of medication. mapped from PK id ALKU. This PK is modified so to find the modifiable row the old row must be also given.
 */
- (NSDate *) toteutunutAikaOriginal
{
  return _toteutunutAikaOriginal;
}

/**
 * Original time of medication. mapped from PK id ALKU. This PK is modified so to find the modifiable row the old row must be also given.
 */
- (void) setToteutunutAikaOriginal: (NSDate *) newToteutunutAikaOriginal
{
  [newToteutunutAikaOriginal retain];
  [_toteutunutAikaOriginal release];
  _toteutunutAikaOriginal = newToteutunutAikaOriginal;
}

- (void) dealloc
{
  [self setHuomautuksia: nil];
  [self setLaake: nil];
  [self setSuunniteltuAika: nil];
  [self setToteutunutAika: nil];
  [self setYksikko: nil];
  [self setKirjaajaName: nil];
  [self setAntajaName: nil];
  [self setAnnettavaMaara: nil];
  [self setAnnettavaYksikko: nil];
  [self setAnnettavaMaksimi: nil];
  [self setToteutunutAikaOriginal: nil];
  [super dealloc];
}

//documentation inherited.
+ (id<EnunciateXML>) readFromXML: (NSData *) xml
{
  COREWEBNS0LaakitysAnto *_cOREWEBNS0LaakitysAnto;
  xmlTextReaderPtr reader = xmlReaderForMemory([xml bytes], [xml length], NULL, NULL, 0);
  if (reader == NULL) {
    [NSException raise: @"XMLReadError"
                 format: @"Error instantiating an XML reader."];
    return nil;
  }

  _cOREWEBNS0LaakitysAnto = (COREWEBNS0LaakitysAnto *) [COREWEBNS0LaakitysAnto readXMLElement: reader];
  xmlFreeTextReader(reader); //free the reader
  return _cOREWEBNS0LaakitysAnto;
}

//documentation inherited.
- (NSData *) writeToXML
{
  xmlBufferPtr buf;
  xmlTextWriterPtr writer;
  int rc;
  NSData *data;

  buf = xmlBufferCreate();
  if (buf == NULL) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error creating an XML buffer."];
    return nil;
  }

  writer = xmlNewTextWriterMemory(buf, 0);
  if (writer == NULL) {
    xmlBufferFree(buf);
    [NSException raise: @"XMLWriteError"
                 format: @"Error creating an XML writer."];
    return nil;
  }

  rc = xmlTextWriterStartDocument(writer, NULL, "utf-8", NULL);
  if (rc < 0) {
    xmlFreeTextWriter(writer);
    xmlBufferFree(buf);
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing XML start document."];
    return nil;
  }

  NS_DURING
  {
    [self writeXMLElement: writer];
  }
  NS_HANDLER
  {
    xmlFreeTextWriter(writer);
    xmlBufferFree(buf);
    [localException raise];
  }
  NS_ENDHANDLER

  rc = xmlTextWriterEndDocument(writer);
  if (rc < 0) {
    xmlFreeTextWriter(writer);
    xmlBufferFree(buf);
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing XML end document."];
    return nil;
  }

  xmlFreeTextWriter(writer);
  data = [NSData dataWithBytes: buf->content length: buf->use];
  xmlBufferFree(buf);
  return data;
}
@end /* implementation COREWEBNS0LaakitysAnto */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0LaakitysAnto (JAXB) <JAXBReading, JAXBWriting, JAXBType, JAXBElement>

@end /*interface COREWEBNS0LaakitysAnto (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0LaakitysAnto (JAXB)

/**
 * Read an instance of COREWEBNS0LaakitysAnto from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0LaakitysAnto defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0LaakitysAnto *_cOREWEBNS0LaakitysAnto = [[COREWEBNS0LaakitysAnto alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0LaakitysAnto initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0LaakitysAnto = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0LaakitysAnto autorelease];
  return _cOREWEBNS0LaakitysAnto;
}

/**
 * Initialize this instance of COREWEBNS0LaakitysAnto according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0LaakitysAnto to the writer.
 * Note that since we're only writing the XML type,
 * No start/end element will be written.
 *
 * @param reader The reader.
 */
- (void) writeXMLType: (xmlTextWriterPtr) writer
{
  [super writeXMLType:writer];
}

/**
 * Reads a COREWEBNS0LaakitysAnto from an XML reader. The element to be read is
 * "laakitysAnto".
 *
 * @param reader The XML reader.
 * @return The COREWEBNS0LaakitysAnto.
 */
+ (id<JAXBElement>) readXMLElement: (xmlTextReaderPtr) reader {
  int status;
  COREWEBNS0LaakitysAnto *_laakitysAnto = nil;

  if (xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) {
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
    if (status < 1) {
      [NSException raise: @"XMLReadError"
                   format: @"Error advancing the reader to start element laakitysAnto."];
    }
  }

  if (xmlStrcmp(BAD_CAST "laakitysAnto", xmlTextReaderConstLocalName(reader)) == 0
      && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read root element {}laakitysAnto.");
#endif
    _laakitysAnto = (COREWEBNS0LaakitysAnto *)[COREWEBNS0LaakitysAnto readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Successfully read root element {}laakitysAnto.");
#endif
  }
  else {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakitysAnto. Expected element laakitysAnto. Current element: {}%s", xmlTextReaderConstLocalName(reader)];
    }
    else {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakitysAnto. Expected element laakitysAnto. Current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader)];
    }
  }

  return _laakitysAnto;
}

/**
 * Writes this COREWEBNS0LaakitysAnto to XML under element name "laakitysAnto".
 * The namespace declarations for the element will be written.
 *
 * @param writer The XML writer.
 * @param _laakitysAnto The LaakitysAnto to write.
 * @return 1 if successful, 0 otherwise.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer
{
  [self writeXMLElement: writer writeNamespaces: YES];
}

/**
 * Writes this COREWEBNS0LaakitysAnto to an XML writer.
 *
 * @param writer The writer.
 * @param writeNs Whether to write the namespaces for this element to the xml writer.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer writeNamespaces: (BOOL) writeNs
{
  int rc = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakitysAnto", NULL);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing start element {}laakitysAnto. XML writer status: %i\n", rc];
  }

#if DEBUG_ENUNCIATE > 1
  NSLog(@"writing type {}laakitysAnto for root element {}laakitysAnto...");
#endif
  [self writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
  NSLog(@"successfully wrote type {}laakitysAnto for root element {}laakitysAnto...");
#endif
  rc = xmlTextWriterEndElement(writer);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing end element {}laakitysAnto. XML writer status: %i\n", rc];
  }
}

//documentation inherited.
- (BOOL) readJAXBAttribute: (xmlTextReaderPtr) reader
{
  void *_child_accessor;

  if ([super readJAXBAttribute: reader]) {
    return YES;
  }

  return NO;
}

//documentation inherited.
- (BOOL) readJAXBValue: (xmlTextReaderPtr) reader
{
  return [super readJAXBValue: reader];
}

//documentation inherited.
- (BOOL) readJAXBChildElement: (xmlTextReaderPtr) reader
{
  id __child;
  void *_child_accessor;
  int status, depth;

  if ([super readJAXBChildElement: reader]) {
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "antaja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setAntaja: *((int*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "huomautuksia", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}huomautuksia of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}huomautuksia of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setHuomautuksia: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kirjaaja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setKirjaaja: *((int*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "laake", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}laake of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}laake of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setLaake: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "maara", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadFloatType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setMaara: *((float*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "omistaja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setOmistaja: *((int*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "osa", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setOsa: *((int*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "poistettu", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setPoistettu: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "suunniteltuAika", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}suunniteltuAika of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif
    __child = [NSDate readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}suunniteltuAika of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif

    [self setSuunniteltuAika: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "toteutunutAika", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}toteutunutAika of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif
    __child = [NSDate readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}toteutunutAika of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif

    [self setToteutunutAika: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tyyppi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setTyyppi: *((int*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "yksikko", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}yksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}yksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setYksikko: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kirjaajaName", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}kirjaajaName of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}kirjaajaName of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setKirjaajaName: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "antajaName", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}antajaName of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}antajaName of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setAntajaName: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "annettavaMaara", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}annettavaMaara of type {http://www.w3.org/2001/XMLSchema}decimal.");
#endif
    __child = [NSDecimalNumber readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}annettavaMaara of type {http://www.w3.org/2001/XMLSchema}decimal.");
#endif

    [self setAnnettavaMaara: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "annettavaYksikko", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}annettavaYksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}annettavaYksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setAnnettavaYksikko: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "annettavaMaksimi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}annettavaMaksimi of type {http://www.w3.org/2001/XMLSchema}decimal.");
#endif
    __child = [NSDecimalNumber readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}annettavaMaksimi of type {http://www.w3.org/2001/XMLSchema}decimal.");
#endif

    [self setAnnettavaMaksimi: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "toteutunutAikaOriginal", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}toteutunutAikaOriginal of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif
    __child = [NSDate readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}toteutunutAikaOriginal of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif

    [self setToteutunutAikaOriginal: __child];
    return YES;
  } //end "if choice"


  return NO;
}

//documentation inherited.
- (int) readUnknownJAXBChildElement: (xmlTextReaderPtr) reader
{
  return [super readUnknownJAXBChildElement: reader];
}

//documentation inherited.
- (void) readUnknownJAXBAttribute: (xmlTextReaderPtr) reader
{
  [super readUnknownJAXBAttribute: reader];
}

//documentation inherited.
- (void) writeJAXBAttributes: (xmlTextWriterPtr) writer
{
  int status;

  [super writeJAXBAttributes: writer];

}

//documentation inherited.
- (void) writeJAXBValue: (xmlTextWriterPtr) writer
{
  [super writeJAXBValue: writer];
}

/**
 * Method for writing the child elements.
 *
 * @param writer The writer.
 */
- (void) writeJAXBChildElements: (xmlTextWriterPtr) writer
{
  int status;
  id __item;
  id __item_copy;
  NSEnumerator *__enumerator;

  [super writeJAXBChildElements: writer];

  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "antaja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}antaja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}antaja...");
#endif
    status = xmlTextWriterWriteIntType(writer, &_antaja);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}antaja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}antaja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}antaja."];
    }
  }
  if ([self huomautuksia]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "huomautuksia", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}huomautuksia."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}huomautuksia...");
#endif
    [[self huomautuksia] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}huomautuksia...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}huomautuksia."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kirjaaja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kirjaaja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kirjaaja...");
#endif
    status = xmlTextWriterWriteIntType(writer, &_kirjaaja);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kirjaaja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}kirjaaja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kirjaaja."];
    }
  }
  if ([self laake]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laake", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}laake."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}laake...");
#endif
    [[self laake] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}laake...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}laake."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "maara", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}maara."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}maara...");
#endif
    status = xmlTextWriterWriteFloatType(writer, &_maara);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}maara...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}maara."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}maara."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "omistaja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}omistaja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}omistaja...");
#endif
    status = xmlTextWriterWriteIntType(writer, &_omistaja);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}omistaja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}omistaja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}omistaja."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "osa", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}osa."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}osa...");
#endif
    status = xmlTextWriterWriteIntType(writer, &_osa);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}osa...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}osa."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}osa."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "poistettu", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}poistettu."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}poistettu...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_poistettu);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}poistettu...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}poistettu."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}poistettu."];
    }
  }
  if ([self suunniteltuAika]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "suunniteltuAika", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}suunniteltuAika."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}suunniteltuAika...");
#endif
    [[self suunniteltuAika] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}suunniteltuAika...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}suunniteltuAika."];
    }
  }
  if ([self toteutunutAika]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "toteutunutAika", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}toteutunutAika."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}toteutunutAika...");
#endif
    [[self toteutunutAika] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}toteutunutAika...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}toteutunutAika."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tyyppi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tyyppi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tyyppi...");
#endif
    status = xmlTextWriterWriteIntType(writer, &_tyyppi);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tyyppi...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}tyyppi."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tyyppi."];
    }
  }
  if ([self yksikko]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "yksikko", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}yksikko."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}yksikko...");
#endif
    [[self yksikko] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}yksikko...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}yksikko."];
    }
  }
  if ([self kirjaajaName]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kirjaajaName", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kirjaajaName."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kirjaajaName...");
#endif
    [[self kirjaajaName] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kirjaajaName...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kirjaajaName."];
    }
  }
  if ([self antajaName]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "antajaName", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}antajaName."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}antajaName...");
#endif
    [[self antajaName] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}antajaName...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}antajaName."];
    }
  }
  if ([self annettavaMaara]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "annettavaMaara", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}annettavaMaara."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}annettavaMaara...");
#endif
    [[self annettavaMaara] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}annettavaMaara...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}annettavaMaara."];
    }
  }
  if ([self annettavaYksikko]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "annettavaYksikko", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}annettavaYksikko."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}annettavaYksikko...");
#endif
    [[self annettavaYksikko] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}annettavaYksikko...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}annettavaYksikko."];
    }
  }
  if ([self annettavaMaksimi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "annettavaMaksimi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}annettavaMaksimi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}annettavaMaksimi...");
#endif
    [[self annettavaMaksimi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}annettavaMaksimi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}annettavaMaksimi."];
    }
  }
  if ([self toteutunutAikaOriginal]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "toteutunutAikaOriginal", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}toteutunutAikaOriginal."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}toteutunutAikaOriginal...");
#endif
    [[self toteutunutAikaOriginal] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}toteutunutAikaOriginal...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}toteutunutAikaOriginal."];
    }
  }
}
@end /* implementation COREWEBNS0LaakitysAnto (JAXB) */

#endif /* DEF_COREWEBNS0LaakitysAnto_M */
