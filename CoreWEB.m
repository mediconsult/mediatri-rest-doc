#import "CoreWEB.h"
#ifndef DEF_COREWEBNS0LaakitysKayttoaiheView_M
#define DEF_COREWEBNS0LaakitysKayttoaiheView_M

/**
 *  DTO for LaakitysKayttoaihe

 A class to present LAAKITYS_KAYTTOAIHE and KAYTTOAIHE tables in medication functionality
 Used to carry the data from database to the client side.


 */
@implementation COREWEBNS0LaakitysKayttoaiheView

/**
 * (no documentation provided)
 */
- (int) omistaja
{
  return _omistaja;
}

/**
 * (no documentation provided)
 */
- (void) setOmistaja: (int) newOmistaja
{
  _omistaja = newOmistaja;
}

/**
 * (no documentation provided)
 */
- (int) osa
{
  return _osa;
}

/**
 * (no documentation provided)
 */
- (void) setOsa: (int) newOsa
{
  _osa = newOsa;
}

/**
 * (no documentation provided)
 */
- (int) rivi
{
  return _rivi;
}

/**
 * (no documentation provided)
 */
- (void) setRivi: (int) newRivi
{
  _rivi = newRivi;
}

/**
 * (no documentation provided)
 */
- (int) numero
{
  return _numero;
}

/**
 * (no documentation provided)
 */
- (void) setNumero: (int) newNumero
{
  _numero = newNumero;
}

/**
 * (no documentation provided)
 */
- (NSString *) selite
{
  return _selite;
}

/**
 * (no documentation provided)
 */
- (void) setSelite: (NSString *) newSelite
{
  [newSelite retain];
  [_selite release];
  _selite = newSelite;
}

/**
 * (no documentation provided)
 */
- (NSString *) reseptiteksti
{
  return _reseptiteksti;
}

/**
 * (no documentation provided)
 */
- (void) setReseptiteksti: (NSString *) newReseptiteksti
{
  [newReseptiteksti retain];
  [_reseptiteksti release];
  _reseptiteksti = newReseptiteksti;
}

/**
 * (no documentation provided)
 */
- (unsigned short) alkupera
{
  return _alkupera;
}

/**
 * (no documentation provided)
 */
- (void) setAlkupera: (unsigned short) newAlkupera
{
  _alkupera = newAlkupera;
}

/**
 * (no documentation provided)
 */
- (unsigned short) tyyppi
{
  return _tyyppi;
}

/**
 * (no documentation provided)
 */
- (void) setTyyppi: (unsigned short) newTyyppi
{
  _tyyppi = newTyyppi;
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
- (int) muutospaikka
{
  return _muutospaikka;
}

/**
 * (no documentation provided)
 */
- (void) setMuutospaikka: (int) newMuutospaikka
{
  _muutospaikka = newMuutospaikka;
}

- (void) dealloc
{
  [self setSelite: nil];
  [self setReseptiteksti: nil];
  [self setMuutosaika: nil];
  [super dealloc];
}

//documentation inherited.
+ (id<EnunciateXML>) readFromXML: (NSData *) xml
{
  COREWEBNS0LaakitysKayttoaiheView *_cOREWEBNS0LaakitysKayttoaiheView;
  xmlTextReaderPtr reader = xmlReaderForMemory([xml bytes], [xml length], NULL, NULL, 0);
  if (reader == NULL) {
    [NSException raise: @"XMLReadError"
                 format: @"Error instantiating an XML reader."];
    return nil;
  }

  _cOREWEBNS0LaakitysKayttoaiheView = (COREWEBNS0LaakitysKayttoaiheView *) [COREWEBNS0LaakitysKayttoaiheView readXMLElement: reader];
  xmlFreeTextReader(reader); //free the reader
  return _cOREWEBNS0LaakitysKayttoaiheView;
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
@end /* implementation COREWEBNS0LaakitysKayttoaiheView */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0LaakitysKayttoaiheView (JAXB) <JAXBReading, JAXBWriting, JAXBType, JAXBElement>

@end /*interface COREWEBNS0LaakitysKayttoaiheView (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0LaakitysKayttoaiheView (JAXB)

/**
 * Read an instance of COREWEBNS0LaakitysKayttoaiheView from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0LaakitysKayttoaiheView defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0LaakitysKayttoaiheView *_cOREWEBNS0LaakitysKayttoaiheView = [[COREWEBNS0LaakitysKayttoaiheView alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0LaakitysKayttoaiheView initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0LaakitysKayttoaiheView = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0LaakitysKayttoaiheView autorelease];
  return _cOREWEBNS0LaakitysKayttoaiheView;
}

/**
 * Initialize this instance of COREWEBNS0LaakitysKayttoaiheView according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0LaakitysKayttoaiheView to the writer.
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
 * Reads a COREWEBNS0LaakitysKayttoaiheView from an XML reader. The element to be read is
 * "laakitysKayttoaiheView".
 *
 * @param reader The XML reader.
 * @return The COREWEBNS0LaakitysKayttoaiheView.
 */
+ (id<JAXBElement>) readXMLElement: (xmlTextReaderPtr) reader {
  int status;
  COREWEBNS0LaakitysKayttoaiheView *_laakitysKayttoaiheView = nil;

  if (xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) {
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
    if (status < 1) {
      [NSException raise: @"XMLReadError"
                   format: @"Error advancing the reader to start element laakitysKayttoaiheView."];
    }
  }

  if (xmlStrcmp(BAD_CAST "laakitysKayttoaiheView", xmlTextReaderConstLocalName(reader)) == 0
      && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read root element {}laakitysKayttoaiheView.");
#endif
    _laakitysKayttoaiheView = (COREWEBNS0LaakitysKayttoaiheView *)[COREWEBNS0LaakitysKayttoaiheView readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Successfully read root element {}laakitysKayttoaiheView.");
#endif
  }
  else {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakitysKayttoaiheView. Expected element laakitysKayttoaiheView. Current element: {}%s", xmlTextReaderConstLocalName(reader)];
    }
    else {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakitysKayttoaiheView. Expected element laakitysKayttoaiheView. Current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader)];
    }
  }

  return _laakitysKayttoaiheView;
}

/**
 * Writes this COREWEBNS0LaakitysKayttoaiheView to XML under element name "laakitysKayttoaiheView".
 * The namespace declarations for the element will be written.
 *
 * @param writer The XML writer.
 * @param _laakitysKayttoaiheView The LaakitysKayttoaiheView to write.
 * @return 1 if successful, 0 otherwise.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer
{
  [self writeXMLElement: writer writeNamespaces: YES];
}

/**
 * Writes this COREWEBNS0LaakitysKayttoaiheView to an XML writer.
 *
 * @param writer The writer.
 * @param writeNs Whether to write the namespaces for this element to the xml writer.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer writeNamespaces: (BOOL) writeNs
{
  int rc = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakitysKayttoaiheView", NULL);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing start element {}laakitysKayttoaiheView. XML writer status: %i\n", rc];
  }

#if DEBUG_ENUNCIATE > 1
  NSLog(@"writing type {}laakitysKayttoaiheView for root element {}laakitysKayttoaiheView...");
#endif
  [self writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
  NSLog(@"successfully wrote type {}laakitysKayttoaiheView for root element {}laakitysKayttoaiheView...");
#endif
  rc = xmlTextWriterEndElement(writer);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing end element {}laakitysKayttoaiheView. XML writer status: %i\n", rc];
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
    && xmlStrcmp(BAD_CAST "numero", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setNumero: *((int*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "selite", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}selite of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}selite of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setSelite: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "reseptiteksti", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}reseptiteksti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}reseptiteksti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setReseptiteksti: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "alkupera", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setAlkupera: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tyyppi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setTyyppi: *((unsigned short*) _child_accessor)];
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

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setMuutospaikka: *((int*) _child_accessor)];
    free(_child_accessor);
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
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "numero", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}numero."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}numero...");
#endif
    status = xmlTextWriterWriteIntType(writer, &_numero);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}numero...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}numero."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}numero."];
    }
  }
  if ([self selite]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "selite", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}selite."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}selite...");
#endif
    [[self selite] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}selite...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}selite."];
    }
  }
  if ([self reseptiteksti]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "reseptiteksti", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}reseptiteksti."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}reseptiteksti...");
#endif
    [[self reseptiteksti] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}reseptiteksti...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}reseptiteksti."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "alkupera", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}alkupera."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}alkupera...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_alkupera);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}alkupera...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}alkupera."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}alkupera."];
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
    status = xmlTextWriterWriteCharacterType(writer, &_tyyppi);
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
    status = xmlTextWriterWriteIntType(writer, &_muutospaikka);
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
}
@end /* implementation COREWEBNS0LaakitysKayttoaiheView (JAXB) */

#endif /* DEF_COREWEBNS0LaakitysKayttoaiheView_M */
#ifndef DEF_COREWEBNS0Laakitys_M
#define DEF_COREWEBNS0Laakitys_M

/**
 * 
 DTO for Laakitys


 */
@implementation COREWEBNS0Laakitys

/**
 * (no documentation provided)
 */
- (int) omistaja
{
  return _omistaja;
}

/**
 * (no documentation provided)
 */
- (void) setOmistaja: (int) newOmistaja
{
  _omistaja = newOmistaja;
}

/**
 * (no documentation provided)
 */
- (int) osa
{
  return _osa;
}

/**
 * (no documentation provided)
 */
- (void) setOsa: (int) newOsa
{
  _osa = newOsa;
}

/**
 * (no documentation provided)
 */
- (COREWEBNS0Laake *) laakevalmiste
{
  return _laakevalmiste;
}

/**
 * (no documentation provided)
 */
- (void) setLaakevalmiste: (COREWEBNS0Laake *) newLaakevalmiste
{
  [newLaakevalmiste retain];
  [_laakevalmiste release];
  _laakevalmiste = newLaakevalmiste;
}

/**
 * (no documentation provided)
 */
- (NSString *) laake
{
  return _laake;
}

/**
 * (no documentation provided)
 */
- (void) setLaake: (NSString *) newLaake
{
  [newLaake retain];
  [_laake release];
  _laake = newLaake;
}

/**
 * (no documentation provided)
 */
- (NSDate *) aloitettu
{
  return _aloitettu;
}

/**
 * (no documentation provided)
 */
- (void) setAloitettu: (NSDate *) newAloitettu
{
  [newAloitettu retain];
  [_aloitettu release];
  _aloitettu = newAloitettu;
}

/**
 * (no documentation provided)
 */
- (NSDate *) tapahtunut
{
  return _tapahtunut;
}

/**
 * (no documentation provided)
 */
- (void) setTapahtunut: (NSDate *) newTapahtunut
{
  [newTapahtunut retain];
  [_tapahtunut release];
  _tapahtunut = newTapahtunut;
}

/**
 * (no documentation provided)
 */
- (unsigned short) tapahtuma
{
  return _tapahtuma;
}

/**
 * (no documentation provided)
 */
- (void) setTapahtuma: (unsigned short) newTapahtuma
{
  _tapahtuma = newTapahtuma;
}

/**
 * (no documentation provided)
 */
- (NSDate *) riittoisuus
{
  return _riittoisuus;
}

/**
 * (no documentation provided)
 */
- (void) setRiittoisuus: (NSDate *) newRiittoisuus
{
  [newRiittoisuus retain];
  [_riittoisuus release];
  _riittoisuus = newRiittoisuus;
}

/**
 * (no documentation provided)
 */
- (NSDate *) lopetettu
{
  return _lopetettu;
}

/**
 * (no documentation provided)
 */
- (void) setLopetettu: (NSDate *) newLopetettu
{
  [newLopetettu retain];
  [_lopetettu release];
  _lopetettu = newLopetettu;
}

/**
 * (no documentation provided)
 */
- (NSString *) lopetussyy
{
  return _lopetussyy;
}

/**
 * (no documentation provided)
 */
- (void) setLopetussyy: (NSString *) newLopetussyy
{
  [newLopetussyy retain];
  [_lopetussyy release];
  _lopetussyy = newLopetussyy;
}

/**
 * (no documentation provided)
 */
- (NSString *) reseptiteksti
{
  return _reseptiteksti;
}

/**
 * (no documentation provided)
 */
- (void) setReseptiteksti: (NSString *) newReseptiteksti
{
  [newReseptiteksti retain];
  [_reseptiteksti release];
  _reseptiteksti = newReseptiteksti;
}

/**
 * (no documentation provided)
 */
- (NSString *) malli
{
  return _malli;
}

/**
 * (no documentation provided)
 */
- (void) setMalli: (NSString *) newMalli
{
  [newMalli retain];
  [_malli release];
  _malli = newMalli;
}

/**
 * (no documentation provided)
 */
- (NSString *) lyhyesti
{
  return _lyhyesti;
}

/**
 * (no documentation provided)
 */
- (void) setLyhyesti: (NSString *) newLyhyesti
{
  [newLyhyesti retain];
  [_lyhyesti release];
  _lyhyesti = newLyhyesti;
}

/**
 * (no documentation provided)
 */
- (unsigned short) vaihdettavuus
{
  return _vaihdettavuus;
}

/**
 * (no documentation provided)
 */
- (void) setVaihdettavuus: (unsigned short) newVaihdettavuus
{
  _vaihdettavuus = newVaihdettavuus;
}

/**
 * (no documentation provided)
 */
- (float) annettavaMaara
{
  return _annettavaMaara;
}

/**
 * (no documentation provided)
 */
- (void) setAnnettavaMaara: (float) newAnnettavaMaara
{
  _annettavaMaara = newAnnettavaMaara;
}

/**
 * (no documentation provided)
 */
- (float *) annettavaMaksimi
{
  return _annettavaMaksimi;
}

/**
 * (no documentation provided)
 */
- (void) setAnnettavaMaksimi: (float *) newAnnettavaMaksimi
{
  if (_annettavaMaksimi != NULL) {
    free(_annettavaMaksimi);
  }
  _annettavaMaksimi = newAnnettavaMaksimi;
}

/**
 * (no documentation provided)
 */
- (NSString *) annettavaYksikko
{
  return _annettavaYksikko;
}

/**
 * (no documentation provided)
 */
- (void) setAnnettavaYksikko: (NSString *) newAnnettavaYksikko
{
  [newAnnettavaYksikko retain];
  [_annettavaYksikko release];
  _annettavaYksikko = newAnnettavaYksikko;
}

/**
 * (no documentation provided)
 */
- (NSString *) kertaAnnos
{
  return _kertaAnnos;
}

/**
 * (no documentation provided)
 */
- (void) setKertaAnnos: (NSString *) newKertaAnnos
{
  [newKertaAnnos retain];
  [_kertaAnnos release];
  _kertaAnnos = newKertaAnnos;
}

/**
 * (no documentation provided)
 */
- (NSString *) annosteluteksti
{
  return _annosteluteksti;
}

/**
 * (no documentation provided)
 */
- (void) setAnnosteluteksti: (NSString *) newAnnosteluteksti
{
  [newAnnosteluteksti retain];
  [_annosteluteksti release];
  _annosteluteksti = newAnnosteluteksti;
}

/**
 * (no documentation provided)
 */
- (short) desimaaleja
{
  return _desimaaleja;
}

/**
 * (no documentation provided)
 */
- (void) setDesimaaleja: (short) newDesimaaleja
{
  _desimaaleja = newDesimaaleja;
}

/**
 * (no documentation provided)
 */
- (float *) paino
{
  return _paino;
}

/**
 * (no documentation provided)
 */
- (void) setPaino: (float *) newPaino
{
  if (_paino != NULL) {
    free(_paino);
  }
  _paino = newPaino;
}

/**
 * (no documentation provided)
 */
- (float *) lapsenPaino
{
  return _lapsenPaino;
}

/**
 * (no documentation provided)
 */
- (void) setLapsenPaino: (float *) newLapsenPaino
{
  if (_lapsenPaino != NULL) {
    free(_lapsenPaino);
  }
  _lapsenPaino = newLapsenPaino;
}

/**
 * (no documentation provided)
 */
- (NSString *) toisto
{
  return _toisto;
}

/**
 * (no documentation provided)
 */
- (void) setToisto: (NSString *) newToisto
{
  [newToisto retain];
  [_toisto release];
  _toisto = newToisto;
}

/**
 * (no documentation provided)
 */
- (NSString *) toistokuvaus
{
  return _toistokuvaus;
}

/**
 * (no documentation provided)
 */
- (void) setToistokuvaus: (NSString *) newToistokuvaus
{
  [newToistokuvaus retain];
  [_toistokuvaus release];
  _toistokuvaus = newToistokuvaus;
}

/**
 * (no documentation provided)
 */
- (NSString *) kellonajat
{
  return _kellonajat;
}

/**
 * (no documentation provided)
 */
- (void) setKellonajat: (NSString *) newKellonajat
{
  [newKellonajat retain];
  [_kellonajat release];
  _kellonajat = newKellonajat;
}

/**
 * (no documentation provided)
 */
- (NSString *) kellonajatString
{
  return _kellonajatString;
}

/**
 * (no documentation provided)
 */
- (void) setKellonajatString: (NSString *) newKellonajatString
{
  [newKellonajatString retain];
  [_kellonajatString release];
  _kellonajatString = newKellonajatString;
}

/**
 * (no documentation provided)
 */
- (NSString *) aikayksikko
{
  return _aikayksikko;
}

/**
 * (no documentation provided)
 */
- (void) setAikayksikko: (NSString *) newAikayksikko
{
  [newAikayksikko retain];
  [_aikayksikko release];
  _aikayksikko = newAikayksikko;
}

/**
 * (no documentation provided)
 */
- (float *) antotahti
{
  return _antotahti;
}

/**
 * (no documentation provided)
 */
- (void) setAntotahti: (float *) newAntotahti
{
  if (_antotahti != NULL) {
    free(_antotahti);
  }
  _antotahti = newAntotahti;
}

/**
 * (no documentation provided)
 */
- (NSString *) antotahtiString
{
  return _antotahtiString;
}

/**
 * (no documentation provided)
 */
- (void) setAntotahtiString: (NSString *) newAntotahtiString
{
  [newAntotahtiString retain];
  [_antotahtiString release];
  _antotahtiString = newAntotahtiString;
}

/**
 * (no documentation provided)
 */
- (NSString *) antotahtiyksikko
{
  return _antotahtiyksikko;
}

/**
 * (no documentation provided)
 */
- (void) setAntotahtiyksikko: (NSString *) newAntotahtiyksikko
{
  [newAntotahtiyksikko retain];
  [_antotahtiyksikko release];
  _antotahtiyksikko = newAntotahtiyksikko;
}

/**
 * (no documentation provided)
 */
- (float *) vrkMaara
{
  return _vrkMaara;
}

/**
 * (no documentation provided)
 */
- (void) setVrkMaara: (float *) newVrkMaara
{
  if (_vrkMaara != NULL) {
    free(_vrkMaara);
  }
  _vrkMaara = newVrkMaara;
}

/**
 * (no documentation provided)
 */
- (NSString *) vrkMaaraYksikko
{
  return _vrkMaaraYksikko;
}

/**
 * (no documentation provided)
 */
- (void) setVrkMaaraYksikko: (NSString *) newVrkMaaraYksikko
{
  [newVrkMaaraYksikko retain];
  [_vrkMaaraYksikko release];
  _vrkMaaraYksikko = newVrkMaaraYksikko;
}

/**
 * (no documentation provided)
 */
- (NSString *) kokonaiskesto
{
  return _kokonaiskesto;
}

/**
 * (no documentation provided)
 */
- (void) setKokonaiskesto: (NSString *) newKokonaiskesto
{
  [newKokonaiskesto retain];
  [_kokonaiskesto release];
  _kokonaiskesto = newKokonaiskesto;
}

/**
 * (no documentation provided)
 */
- (float *) kokonaismaara
{
  return _kokonaismaara;
}

/**
 * (no documentation provided)
 */
- (void) setKokonaismaara: (float *) newKokonaismaara
{
  if (_kokonaismaara != NULL) {
    free(_kokonaismaara);
  }
  _kokonaismaara = newKokonaismaara;
}

/**
 * (no documentation provided)
 */
- (NSString *) kokonaismaarayksikko
{
  return _kokonaismaarayksikko;
}

/**
 * (no documentation provided)
 */
- (void) setKokonaismaarayksikko: (NSString *) newKokonaismaarayksikko
{
  [newKokonaismaarayksikko retain];
  [_kokonaismaarayksikko release];
  _kokonaismaarayksikko = newKokonaismaarayksikko;
}

/**
 * (no documentation provided)
 */
- (int *) pakkauksia
{
  return _pakkauksia;
}

/**
 * (no documentation provided)
 */
- (void) setPakkauksia: (int *) newPakkauksia
{
  if (_pakkauksia != NULL) {
    free(_pakkauksia);
  }
  _pakkauksia = newPakkauksia;
}

/**
 * (no documentation provided)
 */
- (int) kirjaaja
{
  return _kirjaaja;
}

/**
 * (no documentation provided)
 */
- (void) setKirjaaja: (int) newKirjaaja
{
  _kirjaaja = newKirjaaja;
}

/**
 * (no documentation provided)
 */
- (NSString *) kirjaajaString
{
  return _kirjaajaString;
}

/**
 * (no documentation provided)
 */
- (void) setKirjaajaString: (NSString *) newKirjaajaString
{
  [newKirjaajaString retain];
  [_kirjaajaString release];
  _kirjaajaString = newKirjaajaString;
}

/**
 * (no documentation provided)
 */
- (int) maaraaja
{
  return _maaraaja;
}

/**
 * (no documentation provided)
 */
- (void) setMaaraaja: (int) newMaaraaja
{
  _maaraaja = newMaaraaja;
}

/**
 * (no documentation provided)
 */
- (NSString *) maaraajaString
{
  return _maaraajaString;
}

/**
 * (no documentation provided)
 */
- (void) setMaaraajaString: (NSString *) newMaaraajaString
{
  [newMaaraajaString retain];
  [_maaraajaString release];
  _maaraajaString = newMaaraajaString;
}

/**
 * (no documentation provided)
 */
- (int *) maaraysyksikko
{
  return _maaraysyksikko;
}

/**
 * (no documentation provided)
 */
- (void) setMaaraysyksikko: (int *) newMaaraysyksikko
{
  if (_maaraysyksikko != NULL) {
    free(_maaraysyksikko);
  }
  _maaraysyksikko = newMaaraysyksikko;
}

/**
 * (no documentation provided)
 */
- (unsigned short) varmistus
{
  return _varmistus;
}

/**
 * (no documentation provided)
 */
- (void) setVarmistus: (unsigned short) newVarmistus
{
  _varmistus = newVarmistus;
}

/**
 * (no documentation provided)
 */
- (NSString *) kayttotarkoitus
{
  return _kayttotarkoitus;
}

/**
 * (no documentation provided)
 */
- (void) setKayttotarkoitus: (NSString *) newKayttotarkoitus
{
  [newKayttotarkoitus retain];
  [_kayttotarkoitus release];
  _kayttotarkoitus = newKayttotarkoitus;
}

/**
 * (no documentation provided)
 */
- (NSString *) ohjeet
{
  return _ohjeet;
}

/**
 * (no documentation provided)
 */
- (void) setOhjeet: (NSString *) newOhjeet
{
  [newOhjeet retain];
  [_ohjeet release];
  _ohjeet = newOhjeet;
}

/**
 * (no documentation provided)
 */
- (NSString *) perustelu
{
  return _perustelu;
}

/**
 * (no documentation provided)
 */
- (void) setPerustelu: (NSString *) newPerustelu
{
  [newPerustelu retain];
  [_perustelu release];
  _perustelu = newPerustelu;
}

/**
 * (no documentation provided)
 */
- (int *) iterointi
{
  return _iterointi;
}

/**
 * (no documentation provided)
 */
- (void) setIterointi: (int *) newIterointi
{
  if (_iterointi != NULL) {
    free(_iterointi);
  }
  _iterointi = newIterointi;
}

/**
 * (no documentation provided)
 */
- (int *) uusittu
{
  return _uusittu;
}

/**
 * (no documentation provided)
 */
- (void) setUusittu: (int *) newUusittu
{
  if (_uusittu != NULL) {
    free(_uusittu);
  }
  _uusittu = newUusittu;
}

/**
 * (no documentation provided)
 */
- (unsigned short *) kuitattava
{
  return _kuitattava;
}

/**
 * (no documentation provided)
 */
- (void) setKuitattava: (unsigned short *) newKuitattava
{
  if (_kuitattava != NULL) {
    free(_kuitattava);
  }
  _kuitattava = newKuitattava;
}

/**
 * (no documentation provided)
 */
- (unsigned short) pysyva
{
  return _pysyva;
}

/**
 * (no documentation provided)
 */
- (void) setPysyva: (unsigned short) newPysyva
{
  _pysyva = newPysyva;
}

/**
 * (no documentation provided)
 */
- (unsigned short) tarvittaessa
{
  return _tarvittaessa;
}

/**
 * (no documentation provided)
 */
- (void) setTarvittaessa: (unsigned short) newTarvittaessa
{
  _tarvittaessa = newTarvittaessa;
}

/**
 * (no documentation provided)
 */
- (NSString *) terapiaryhma
{
  return _terapiaryhma;
}

/**
 * (no documentation provided)
 */
- (void) setTerapiaryhma: (NSString *) newTerapiaryhma
{
  [newTerapiaryhma retain];
  [_terapiaryhma release];
  _terapiaryhma = newTerapiaryhma;
}

/**
 * (no documentation provided)
 */
- (unsigned short) soveltumaton
{
  return _soveltumaton;
}

/**
 * (no documentation provided)
 */
- (void) setSoveltumaton: (unsigned short) newSoveltumaton
{
  _soveltumaton = newSoveltumaton;
}

/**
 * (no documentation provided)
 */
- (NSString *) vaikutus
{
  return _vaikutus;
}

/**
 * (no documentation provided)
 */
- (void) setVaikutus: (NSString *) newVaikutus
{
  [newVaikutus retain];
  [_vaikutus release];
  _vaikutus = newVaikutus;
}

/**
 * (no documentation provided)
 */
- (NSString *) huomautuksia
{
  return _huomautuksia;
}

/**
 * (no documentation provided)
 */
- (void) setHuomautuksia: (NSString *) newHuomautuksia
{
  [newHuomautuksia retain];
  [_huomautuksia release];
  _huomautuksia = newHuomautuksia;
}

/**
 * (no documentation provided)
 */
- (unsigned short *) reseptityyppi
{
  return _reseptityyppi;
}

/**
 * (no documentation provided)
 */
- (void) setReseptityyppi: (unsigned short *) newReseptityyppi
{
  if (_reseptityyppi != NULL) {
    free(_reseptityyppi);
  }
  _reseptityyppi = newReseptityyppi;
}

/**
 * (no documentation provided)
 */
- (NSString *) reseptityyppiString
{
  return _reseptityyppiString;
}

/**
 * (no documentation provided)
 */
- (void) setReseptityyppiString: (NSString *) newReseptityyppiString
{
  [newReseptityyppiString retain];
  [_reseptityyppiString release];
  _reseptityyppiString = newReseptityyppiString;
}

/**
 * (no documentation provided)
 */
- (int *) tulostaja
{
  return _tulostaja;
}

/**
 * (no documentation provided)
 */
- (void) setTulostaja: (int *) newTulostaja
{
  if (_tulostaja != NULL) {
    free(_tulostaja);
  }
  _tulostaja = newTulostaja;
}

/**
 * (no documentation provided)
 */
- (NSDate *) tulostettu
{
  return _tulostettu;
}

/**
 * (no documentation provided)
 */
- (void) setTulostettu: (NSDate *) newTulostettu
{
  [newTulostettu retain];
  [_tulostettu release];
  _tulostettu = newTulostettu;
}

/**
 * (no documentation provided)
 */
- (NSString *) oid
{
  return _oid;
}

/**
 * (no documentation provided)
 */
- (void) setOid: (NSString *) newOid
{
  [newOid retain];
  [_oid release];
  _oid = newOid;
}

/**
 * (no documentation provided)
 */
- (NSString *) tunnistustapa
{
  return _tunnistustapa;
}

/**
 * (no documentation provided)
 */
- (void) setTunnistustapa: (NSString *) newTunnistustapa
{
  [newTunnistustapa retain];
  [_tunnistustapa release];
  _tunnistustapa = newTunnistustapa;
}

/**
 * (no documentation provided)
 */
- (NSString *) tunnistustapaselite
{
  return _tunnistustapaselite;
}

/**
 * (no documentation provided)
 */
- (void) setTunnistustapaselite: (NSString *) newTunnistustapaselite
{
  [newTunnistustapaselite retain];
  [_tunnistustapaselite release];
  _tunnistustapaselite = newTunnistustapaselite;
}

/**
 * (no documentation provided)
 */
- (NSString *) annosjakeluperuste
{
  return _annosjakeluperuste;
}

/**
 * (no documentation provided)
 */
- (void) setAnnosjakeluperuste: (NSString *) newAnnosjakeluperuste
{
  [newAnnosjakeluperuste retain];
  [_annosjakeluperuste release];
  _annosjakeluperuste = newAnnosjakeluperuste;
}

/**
 * (no documentation provided)
 */
- (int *) iterointivali
{
  return _iterointivali;
}

/**
 * (no documentation provided)
 */
- (void) setIterointivali: (int *) newIterointivali
{
  if (_iterointivali != NULL) {
    free(_iterointivali);
  }
  _iterointivali = newIterointivali;
}

/**
 * (no documentation provided)
 */
- (NSString *) erillisselvityskoodi
{
  return _erillisselvityskoodi;
}

/**
 * (no documentation provided)
 */
- (void) setErillisselvityskoodi: (NSString *) newErillisselvityskoodi
{
  [newErillisselvityskoodi retain];
  [_erillisselvityskoodi release];
  _erillisselvityskoodi = newErillisselvityskoodi;
}

/**
 * (no documentation provided)
 */
- (NSString *) erillisselvitys
{
  return _erillisselvitys;
}

/**
 * (no documentation provided)
 */
- (void) setErillisselvitys: (NSString *) newErillisselvitys
{
  [newErillisselvitys retain];
  [_erillisselvitys release];
  _erillisselvitys = newErillisselvitys;
}

/**
 * (no documentation provided)
 */
- (NSString *) apteekkiviesti
{
  return _apteekkiviesti;
}

/**
 * (no documentation provided)
 */
- (void) setApteekkiviesti: (NSString *) newApteekkiviesti
{
  [newApteekkiviesti retain];
  [_apteekkiviesti release];
  _apteekkiviesti = newApteekkiviesti;
}

/**
 * (no documentation provided)
 */
- (unsigned short *) ereseptikielto
{
  return _ereseptikielto;
}

/**
 * (no documentation provided)
 */
- (void) setEreseptikielto: (unsigned short *) newEreseptikielto
{
  if (_ereseptikielto != NULL) {
    free(_ereseptikielto);
  }
  _ereseptikielto = newEreseptikielto;
}

/**
 * (no documentation provided)
 */
- (NSString *) hoitolaji
{
  return _hoitolaji;
}

/**
 * (no documentation provided)
 */
- (void) setHoitolaji: (NSString *) newHoitolaji
{
  [newHoitolaji retain];
  [_hoitolaji release];
  _hoitolaji = newHoitolaji;
}

/**
 * (no documentation provided)
 */
- (unsigned short *) uusi
{
  return _uusi;
}

/**
 * (no documentation provided)
 */
- (void) setUusi: (unsigned short *) newUusi
{
  if (_uusi != NULL) {
    free(_uusi);
  }
  _uusi = newUusi;
}

/**
 * (no documentation provided)
 */
- (NSDate *) lahetetty
{
  return _lahetetty;
}

/**
 * (no documentation provided)
 */
- (void) setLahetetty: (NSDate *) newLahetetty
{
  [newLahetetty retain];
  [_lahetetty release];
  _lahetetty = newLahetetty;
}

/**
 * (no documentation provided)
 */
- (NSString *) reseptinLaji
{
  return _reseptinLaji;
}

/**
 * (no documentation provided)
 */
- (void) setReseptinLaji: (NSString *) newReseptinLaji
{
  [newReseptinLaji retain];
  [_reseptinLaji release];
  _reseptinLaji = newReseptinLaji;
}

/**
 * (no documentation provided)
 */
- (NSString *) muutoksenSyy
{
  return _muutoksenSyy;
}

/**
 * (no documentation provided)
 */
- (void) setMuutoksenSyy: (NSString *) newMuutoksenSyy
{
  [newMuutoksenSyy retain];
  [_muutoksenSyy release];
  _muutoksenSyy = newMuutoksenSyy;
}

/**
 * (no documentation provided)
 */
- (NSString *) muutoksenPerustelu
{
  return _muutoksenPerustelu;
}

/**
 * (no documentation provided)
 */
- (void) setMuutoksenPerustelu: (NSString *) newMuutoksenPerustelu
{
  [newMuutoksenPerustelu retain];
  [_muutoksenPerustelu release];
  _muutoksenPerustelu = newMuutoksenPerustelu;
}

/**
 * (no documentation provided)
 */
- (unsigned short *) uusimiskielto
{
  return _uusimiskielto;
}

/**
 * (no documentation provided)
 */
- (void) setUusimiskielto: (unsigned short *) newUusimiskielto
{
  if (_uusimiskielto != NULL) {
    free(_uusimiskielto);
  }
  _uusimiskielto = newUusimiskielto;
}

/**
 * (no documentation provided)
 */
- (NSString *) uusimiskiellonSyy
{
  return _uusimiskiellonSyy;
}

/**
 * (no documentation provided)
 */
- (void) setUusimiskiellonSyy: (NSString *) newUusimiskiellonSyy
{
  [newUusimiskiellonSyy retain];
  [_uusimiskiellonSyy release];
  _uusimiskiellonSyy = newUusimiskiellonSyy;
}

/**
 * (no documentation provided)
 */
- (NSString *) uusimiskiellonPerustelu
{
  return _uusimiskiellonPerustelu;
}

/**
 * (no documentation provided)
 */
- (void) setUusimiskiellonPerustelu: (NSString *) newUusimiskiellonPerustelu
{
  [newUusimiskiellonPerustelu retain];
  [_uusimiskiellonPerustelu release];
  _uusimiskiellonPerustelu = newUusimiskiellonPerustelu;
}

/**
 * (no documentation provided)
 */
- (unsigned short *) potilasohjekielto
{
  return _potilasohjekielto;
}

/**
 * (no documentation provided)
 */
- (void) setPotilasohjekielto: (unsigned short *) newPotilasohjekielto
{
  if (_potilasohjekielto != NULL) {
    free(_potilasohjekielto);
  }
  _potilasohjekielto = newPotilasohjekielto;
}

/**
 * (no documentation provided)
 */
- (NSString *) tyonantaja
{
  return _tyonantaja;
}

/**
 * (no documentation provided)
 */
- (void) setTyonantaja: (NSString *) newTyonantaja
{
  [newTyonantaja retain];
  [_tyonantaja release];
  _tyonantaja = newTyonantaja;
}

/**
 * (no documentation provided)
 */
- (NSString *) vakuutusyhtio
{
  return _vakuutusyhtio;
}

/**
 * (no documentation provided)
 */
- (void) setVakuutusyhtio: (NSString *) newVakuutusyhtio
{
  [newVakuutusyhtio retain];
  [_vakuutusyhtio release];
  _vakuutusyhtio = newVakuutusyhtio;
}

/**
 * (no documentation provided)
 */
- (NSDate *) voimassaoloLoppu
{
  return _voimassaoloLoppu;
}

/**
 * (no documentation provided)
 */
- (void) setVoimassaoloLoppu: (NSDate *) newVoimassaoloLoppu
{
  [newVoimassaoloLoppu retain];
  [_voimassaoloLoppu release];
  _voimassaoloLoppu = newVoimassaoloLoppu;
}

/**
 * (no documentation provided)
 */
- (int *) annostuslinkki
{
  return _annostuslinkki;
}

/**
 * (no documentation provided)
 */
- (void) setAnnostuslinkki: (int *) newAnnostuslinkki
{
  if (_annostuslinkki != NULL) {
    free(_annostuslinkki);
  }
  _annostuslinkki = newAnnostuslinkki;
}

/**
 * (no documentation provided)
 */
- (int *) hoitojakso
{
  return _hoitojakso;
}

/**
 * (no documentation provided)
 */
- (void) setHoitojakso: (int *) newHoitojakso
{
  if (_hoitojakso != NULL) {
    free(_hoitojakso);
  }
  _hoitojakso = newHoitojakso;
}

/**
 * (no documentation provided)
 */
- (int *) alkuperainen
{
  return _alkuperainen;
}

/**
 * (no documentation provided)
 */
- (void) setAlkuperainen: (int *) newAlkuperainen
{
  if (_alkuperainen != NULL) {
    free(_alkuperainen);
  }
  _alkuperainen = newAlkuperainen;
}

/**
 * (no documentation provided)
 */
- (float *) palkkio
{
  return _palkkio;
}

/**
 * (no documentation provided)
 */
- (void) setPalkkio: (float *) newPalkkio
{
  if (_palkkio != NULL) {
    free(_palkkio);
  }
  _palkkio = newPalkkio;
}

/**
 * (no documentation provided)
 */
- (unsigned short *) palkkioErikoislaakarina
{
  return _palkkioErikoislaakarina;
}

/**
 * (no documentation provided)
 */
- (void) setPalkkioErikoislaakarina: (unsigned short *) newPalkkioErikoislaakarina
{
  if (_palkkioErikoislaakarina != NULL) {
    free(_palkkioErikoislaakarina);
  }
  _palkkioErikoislaakarina = newPalkkioErikoislaakarina;
}

/**
 * (no documentation provided)
 */
- (unsigned short *) tartuntatautilaake
{
  return _tartuntatautilaake;
}

/**
 * (no documentation provided)
 */
- (void) setTartuntatautilaake: (unsigned short *) newTartuntatautilaake
{
  if (_tartuntatautilaake != NULL) {
    free(_tartuntatautilaake);
  }
  _tartuntatautilaake = newTartuntatautilaake;
}

/**
 * (no documentation provided)
 */
- (int *) palvelutapahtuma
{
  return _palvelutapahtuma;
}

/**
 * (no documentation provided)
 */
- (void) setPalvelutapahtuma: (int *) newPalvelutapahtuma
{
  if (_palvelutapahtuma != NULL) {
    free(_palvelutapahtuma);
  }
  _palvelutapahtuma = newPalvelutapahtuma;
}

/**
 * (no documentation provided)
 */
- (NSString *) palvelutapahtumaOid
{
  return _palvelutapahtumaOid;
}

/**
 * (no documentation provided)
 */
- (void) setPalvelutapahtumaOid: (NSString *) newPalvelutapahtumaOid
{
  [newPalvelutapahtumaOid retain];
  [_palvelutapahtumaOid release];
  _palvelutapahtumaOid = newPalvelutapahtumaOid;
}

/**
 * (no documentation provided)
 */
- (NSString *) sairaalaApteekkiOid
{
  return _sairaalaApteekkiOid;
}

/**
 * (no documentation provided)
 */
- (void) setSairaalaApteekkiOid: (NSString *) newSairaalaApteekkiOid
{
  [newSairaalaApteekkiOid retain];
  [_sairaalaApteekkiOid release];
  _sairaalaApteekkiOid = newSairaalaApteekkiOid;
}

/**
 * (no documentation provided)
 */
- (NSString *) sairaalaApteekkiNimi
{
  return _sairaalaApteekkiNimi;
}

/**
 * (no documentation provided)
 */
- (void) setSairaalaApteekkiNimi: (NSString *) newSairaalaApteekkiNimi
{
  [newSairaalaApteekkiNimi retain];
  [_sairaalaApteekkiNimi release];
  _sairaalaApteekkiNimi = newSairaalaApteekkiNimi;
}

/**
 * (no documentation provided)
 */
- (int *) tarkistus
{
  return _tarkistus;
}

/**
 * (no documentation provided)
 */
- (void) setTarkistus: (int *) newTarkistus
{
  if (_tarkistus != NULL) {
    free(_tarkistus);
  }
  _tarkistus = newTarkistus;
}

/**
 * (no documentation provided)
 */
- (NSString *) poistosyy
{
  return _poistosyy;
}

/**
 * (no documentation provided)
 */
- (void) setPoistosyy: (NSString *) newPoistosyy
{
  [newPoistosyy retain];
  [_poistosyy release];
  _poistosyy = newPoistosyy;
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
- (NSString *) pysyvyys
{
  return _pysyvyys;
}

/**
 * (no documentation provided)
 */
- (void) setPysyvyys: (NSString *) newPysyvyys
{
  [newPysyvyys retain];
  [_pysyvyys release];
  _pysyvyys = newPysyvyys;
}

/**
 * (no documentation provided)
 */
- (NSString *) nimi
{
  return _nimi;
}

/**
 * (no documentation provided)
 */
- (void) setNimi: (NSString *) newNimi
{
  [newNimi retain];
  [_nimi release];
  _nimi = newNimi;
}

/**
 * (no documentation provided)
 */
- (NSString *) annostus
{
  return _annostus;
}

/**
 * (no documentation provided)
 */
- (void) setAnnostus: (NSString *) newAnnostus
{
  [newAnnostus retain];
  [_annostus release];
  _annostus = newAnnostus;
}

/**
 * (no documentation provided)
 */
- (BOOL) vaihteleva
{
  return _vaihteleva;
}

/**
 * (no documentation provided)
 */
- (void) setVaihteleva: (BOOL) newVaihteleva
{
  _vaihteleva = newVaihteleva;
}

/**
 * (no documentation provided)
 */
- (NSString *) vaihtelevaAnnostus
{
  return _vaihtelevaAnnostus;
}

/**
 * (no documentation provided)
 */
- (void) setVaihtelevaAnnostus: (NSString *) newVaihtelevaAnnostus
{
  [newVaihtelevaAnnostus retain];
  [_vaihtelevaAnnostus release];
  _vaihtelevaAnnostus = newVaihtelevaAnnostus;
}

/**
 * (no documentation provided)
 */
- (NSString *) sic
{
  return _sic;
}

/**
 * (no documentation provided)
 */
- (void) setSic: (NSString *) newSic
{
  [newSic retain];
  [_sic release];
  _sic = newSic;
}

/**
 * (no documentation provided)
 */
- (NSString *) kokoNimi
{
  return _kokoNimi;
}

/**
 * (no documentation provided)
 */
- (void) setKokoNimi: (NSString *) newKokoNimi
{
  [newKokoNimi retain];
  [_kokoNimi release];
  _kokoNimi = newKokoNimi;
}

/**
 * (no documentation provided)
 */
- (NSString *) laakeaineet
{
  return _laakeaineet;
}

/**
 * (no documentation provided)
 */
- (void) setLaakeaineet: (NSString *) newLaakeaineet
{
  [newLaakeaineet retain];
  [_laakeaineet release];
  _laakeaineet = newLaakeaineet;
}

/**
 * (no documentation provided)
 */
- (long long) tauonAloitusPvm
{
  return _tauonAloitusPvm;
}

/**
 * (no documentation provided)
 */
- (void) setTauonAloitusPvm: (long long) newTauonAloitusPvm
{
  _tauonAloitusPvm = newTauonAloitusPvm;
}

/**
 * (no documentation provided)
 */
- (long long) tauonLopetusPvm
{
  return _tauonLopetusPvm;
}

/**
 * (no documentation provided)
 */
- (void) setTauonLopetusPvm: (long long) newTauonLopetusPvm
{
  _tauonLopetusPvm = newTauonLopetusPvm;
}

/**
 * (no documentation provided)
 */
- (NSString *) taukohuomautuksia
{
  return _taukohuomautuksia;
}

/**
 * (no documentation provided)
 */
- (void) setTaukohuomautuksia: (NSString *) newTaukohuomautuksia
{
  [newTaukohuomautuksia retain];
  [_taukohuomautuksia release];
  _taukohuomautuksia = newTaukohuomautuksia;
}

/**
 * (no documentation provided)
 */
- (float *) annettavaMaaraTimesPaino
{
  return _annettavaMaaraTimesPaino;
}

/**
 * (no documentation provided)
 */
- (void) setAnnettavaMaaraTimesPaino: (float *) newAnnettavaMaaraTimesPaino
{
  if (_annettavaMaaraTimesPaino != NULL) {
    free(_annettavaMaaraTimesPaino);
  }
  _annettavaMaaraTimesPaino = newAnnettavaMaaraTimesPaino;
}

/**
 * (no documentation provided)
 */
- (float *) vrkmaara
{
  return _vrkmaara;
}

/**
 * (no documentation provided)
 */
- (void) setVrkmaara: (float *) newVrkmaara
{
  if (_vrkmaara != NULL) {
    free(_vrkmaara);
  }
  _vrkmaara = newVrkmaara;
}

/**
 * (no documentation provided)
 */
- (int) vrkkerratCalc
{
  return _vrkkerratCalc;
}

/**
 * (no documentation provided)
 */
- (void) setVrkkerratCalc: (int) newVrkkerratCalc
{
  _vrkkerratCalc = newVrkkerratCalc;
}

/**
 * (no documentation provided)
 */
- (float *) vrkmaaraCalc
{
  return _vrkmaaraCalc;
}

/**
 * (no documentation provided)
 */
- (void) setVrkmaaraCalc: (float *) newVrkmaaraCalc
{
  if (_vrkmaaraCalc != NULL) {
    free(_vrkmaaraCalc);
  }
  _vrkmaaraCalc = newVrkmaaraCalc;
}

/**
 * (no documentation provided)
 */
- (NSString *) vrkmaaraYksikko
{
  return _vrkmaaraYksikko;
}

/**
 * (no documentation provided)
 */
- (void) setVrkmaaraYksikko: (NSString *) newVrkmaaraYksikko
{
  [newVrkmaaraYksikko retain];
  [_vrkmaaraYksikko release];
  _vrkmaaraYksikko = newVrkmaaraYksikko;
}

/**
 * (no documentation provided)
 */
- (NSArray *) tauot
{
  return _tauot;
}

/**
 * (no documentation provided)
 */
- (void) setTauot: (NSArray *) newTauot
{
  [newTauot retain];
  [_tauot release];
  _tauot = newTauot;
}

/**
 * (no documentation provided)
 */
- (NSArray *) annot
{
  return _annot;
}

/**
 * (no documentation provided)
 */
- (void) setAnnot: (NSArray *) newAnnot
{
  [newAnnot retain];
  [_annot release];
  _annot = newAnnot;
}

/**
 * (no documentation provided)
 */
- (NSArray *) tavat
{
  return _tavat;
}

/**
 * (no documentation provided)
 */
- (void) setTavat: (NSArray *) newTavat
{
  [newTavat retain];
  [_tavat release];
  _tavat = newTavat;
}

/**
 * (no documentation provided)
 */
- (NSArray *) kayttoaiheet
{
  return _kayttoaiheet;
}

/**
 * (no documentation provided)
 */
- (void) setKayttoaiheet: (NSArray *) newKayttoaiheet
{
  [newKayttoaiheet retain];
  [_kayttoaiheet release];
  _kayttoaiheet = newKayttoaiheet;
}

/**
 * (no documentation provided)
 */
- (NSArray *) laakitysKayttoaiheList
{
  return _laakitysKayttoaiheList;
}

/**
 * (no documentation provided)
 */
- (void) setLaakitysKayttoaiheList: (NSArray *) newLaakitysKayttoaiheList
{
  [newLaakitysKayttoaiheList retain];
  [_laakitysKayttoaiheList release];
  _laakitysKayttoaiheList = newLaakitysKayttoaiheList;
}

/**
 * (no documentation provided)
 */
- (NSArray *) kuittaukset
{
  return _kuittaukset;
}

/**
 * (no documentation provided)
 */
- (void) setKuittaukset: (NSArray *) newKuittaukset
{
  [newKuittaukset retain];
  [_kuittaukset release];
  _kuittaukset = newKuittaukset;
}

- (void) dealloc
{
  [self setLaakevalmiste: nil];
  [self setLaake: nil];
  [self setAloitettu: nil];
  [self setTapahtunut: nil];
  [self setRiittoisuus: nil];
  [self setLopetettu: nil];
  [self setLopetussyy: nil];
  [self setReseptiteksti: nil];
  [self setMalli: nil];
  [self setLyhyesti: nil];
  [self setAnnettavaMaksimi: NULL];
  [self setAnnettavaYksikko: nil];
  [self setKertaAnnos: nil];
  [self setAnnosteluteksti: nil];
  [self setPaino: NULL];
  [self setLapsenPaino: NULL];
  [self setToisto: nil];
  [self setToistokuvaus: nil];
  [self setKellonajat: nil];
  [self setKellonajatString: nil];
  [self setAikayksikko: nil];
  [self setAntotahti: NULL];
  [self setAntotahtiString: nil];
  [self setAntotahtiyksikko: nil];
  [self setVrkMaara: NULL];
  [self setVrkMaaraYksikko: nil];
  [self setKokonaiskesto: nil];
  [self setKokonaismaara: NULL];
  [self setKokonaismaarayksikko: nil];
  [self setPakkauksia: NULL];
  [self setKirjaajaString: nil];
  [self setMaaraajaString: nil];
  [self setMaaraysyksikko: NULL];
  [self setKayttotarkoitus: nil];
  [self setOhjeet: nil];
  [self setPerustelu: nil];
  [self setIterointi: NULL];
  [self setUusittu: NULL];
  [self setKuitattava: NULL];
  [self setTerapiaryhma: nil];
  [self setVaikutus: nil];
  [self setHuomautuksia: nil];
  [self setReseptityyppi: NULL];
  [self setReseptityyppiString: nil];
  [self setTulostaja: NULL];
  [self setTulostettu: nil];
  [self setOid: nil];
  [self setTunnistustapa: nil];
  [self setTunnistustapaselite: nil];
  [self setAnnosjakeluperuste: nil];
  [self setIterointivali: NULL];
  [self setErillisselvityskoodi: nil];
  [self setErillisselvitys: nil];
  [self setApteekkiviesti: nil];
  [self setEreseptikielto: NULL];
  [self setHoitolaji: nil];
  [self setUusi: NULL];
  [self setLahetetty: nil];
  [self setReseptinLaji: nil];
  [self setMuutoksenSyy: nil];
  [self setMuutoksenPerustelu: nil];
  [self setUusimiskielto: NULL];
  [self setUusimiskiellonSyy: nil];
  [self setUusimiskiellonPerustelu: nil];
  [self setPotilasohjekielto: NULL];
  [self setTyonantaja: nil];
  [self setVakuutusyhtio: nil];
  [self setVoimassaoloLoppu: nil];
  [self setAnnostuslinkki: NULL];
  [self setHoitojakso: NULL];
  [self setAlkuperainen: NULL];
  [self setPalkkio: NULL];
  [self setPalkkioErikoislaakarina: NULL];
  [self setTartuntatautilaake: NULL];
  [self setPalvelutapahtuma: NULL];
  [self setPalvelutapahtumaOid: nil];
  [self setSairaalaApteekkiOid: nil];
  [self setSairaalaApteekkiNimi: nil];
  [self setTarkistus: NULL];
  [self setPoistosyy: nil];
  [self setMuutosaika: nil];
  [self setPysyvyys: nil];
  [self setNimi: nil];
  [self setAnnostus: nil];
  [self setVaihtelevaAnnostus: nil];
  [self setSic: nil];
  [self setKokoNimi: nil];
  [self setLaakeaineet: nil];
  [self setTaukohuomautuksia: nil];
  [self setAnnettavaMaaraTimesPaino: NULL];
  [self setVrkmaara: NULL];
  [self setVrkmaaraCalc: NULL];
  [self setVrkmaaraYksikko: nil];
  [self setTauot: nil];
  [self setAnnot: nil];
  [self setTavat: nil];
  [self setKayttoaiheet: nil];
  [self setLaakitysKayttoaiheList: nil];
  [self setKuittaukset: nil];
  [super dealloc];
}

//documentation inherited.
+ (id<EnunciateXML>) readFromXML: (NSData *) xml
{
  COREWEBNS0Laakitys *_cOREWEBNS0Laakitys;
  xmlTextReaderPtr reader = xmlReaderForMemory([xml bytes], [xml length], NULL, NULL, 0);
  if (reader == NULL) {
    [NSException raise: @"XMLReadError"
                 format: @"Error instantiating an XML reader."];
    return nil;
  }

  _cOREWEBNS0Laakitys = (COREWEBNS0Laakitys *) [COREWEBNS0Laakitys readXMLElement: reader];
  xmlFreeTextReader(reader); //free the reader
  return _cOREWEBNS0Laakitys;
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
@end /* implementation COREWEBNS0Laakitys */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0Laakitys (JAXB) <JAXBReading, JAXBWriting, JAXBType, JAXBElement>

@end /*interface COREWEBNS0Laakitys (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0Laakitys (JAXB)

/**
 * Read an instance of COREWEBNS0Laakitys from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0Laakitys defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0Laakitys *_cOREWEBNS0Laakitys = [[COREWEBNS0Laakitys alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0Laakitys initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0Laakitys = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0Laakitys autorelease];
  return _cOREWEBNS0Laakitys;
}

/**
 * Initialize this instance of COREWEBNS0Laakitys according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0Laakitys to the writer.
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
 * Reads a COREWEBNS0Laakitys from an XML reader. The element to be read is
 * "laakitys".
 *
 * @param reader The XML reader.
 * @return The COREWEBNS0Laakitys.
 */
+ (id<JAXBElement>) readXMLElement: (xmlTextReaderPtr) reader {
  int status;
  COREWEBNS0Laakitys *_laakitys = nil;

  if (xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) {
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
    if (status < 1) {
      [NSException raise: @"XMLReadError"
                   format: @"Error advancing the reader to start element laakitys."];
    }
  }

  if (xmlStrcmp(BAD_CAST "laakitys", xmlTextReaderConstLocalName(reader)) == 0
      && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read root element {}laakitys.");
#endif
    _laakitys = (COREWEBNS0Laakitys *)[COREWEBNS0Laakitys readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Successfully read root element {}laakitys.");
#endif
  }
  else {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0Laakitys. Expected element laakitys. Current element: {}%s", xmlTextReaderConstLocalName(reader)];
    }
    else {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0Laakitys. Expected element laakitys. Current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader)];
    }
  }

  return _laakitys;
}

/**
 * Writes this COREWEBNS0Laakitys to XML under element name "laakitys".
 * The namespace declarations for the element will be written.
 *
 * @param writer The XML writer.
 * @param _laakitys The Laakitys to write.
 * @return 1 if successful, 0 otherwise.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer
{
  [self writeXMLElement: writer writeNamespaces: YES];
}

/**
 * Writes this COREWEBNS0Laakitys to an XML writer.
 *
 * @param writer The writer.
 * @param writeNs Whether to write the namespaces for this element to the xml writer.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer writeNamespaces: (BOOL) writeNs
{
  int rc = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakitys", NULL);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing start element {}laakitys. XML writer status: %i\n", rc];
  }

#if DEBUG_ENUNCIATE > 1
  NSLog(@"writing type {}laakitys for root element {}laakitys...");
#endif
  [self writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
  NSLog(@"successfully wrote type {}laakitys for root element {}laakitys...");
#endif
  rc = xmlTextWriterEndElement(writer);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing end element {}laakitys. XML writer status: %i\n", rc];
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
    && xmlStrcmp(BAD_CAST "laakevalmiste", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}laakevalmiste of type {}laake.");
#endif
    __child = [COREWEBNS0Laake readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}laakevalmiste of type {}laake.");
#endif

    [self setLaakevalmiste: __child];
    return YES;
  } //end "if choice"

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
    && xmlStrcmp(BAD_CAST "aloitettu", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}aloitettu of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif
    __child = [NSDate readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}aloitettu of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif

    [self setAloitettu: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tapahtunut", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tapahtunut of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif
    __child = [NSDate readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tapahtunut of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif

    [self setTapahtunut: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tapahtuma", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setTapahtuma: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "riittoisuus", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}riittoisuus of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif
    __child = [NSDate readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}riittoisuus of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif

    [self setRiittoisuus: __child];
    return YES;
  } //end "if choice"

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
    && xmlStrcmp(BAD_CAST "lopetussyy", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}lopetussyy of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}lopetussyy of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setLopetussyy: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "reseptiteksti", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}reseptiteksti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}reseptiteksti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setReseptiteksti: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "malli", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}malli of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}malli of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setMalli: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "lyhyesti", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}lyhyesti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}lyhyesti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setLyhyesti: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "vaihdettavuus", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setVaihdettavuus: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "annettavaMaara", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadFloatType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setAnnettavaMaara: *((float*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "annettavaMaksimi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadFloatType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setAnnettavaMaksimi: ((float*) _child_accessor)];
    return YES;
  }
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
    && xmlStrcmp(BAD_CAST "kertaAnnos", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}kertaAnnos of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}kertaAnnos of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setKertaAnnos: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "annosteluteksti", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}annosteluteksti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}annosteluteksti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setAnnosteluteksti: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "desimaaleja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setDesimaaleja: *((short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "paino", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadFloatType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setPaino: ((float*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "lapsenPaino", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadFloatType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setLapsenPaino: ((float*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "toisto", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}toisto of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}toisto of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setToisto: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "toistokuvaus", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}toistokuvaus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}toistokuvaus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setToistokuvaus: __child];
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
    && xmlStrcmp(BAD_CAST "kellonajatString", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}kellonajatString of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}kellonajatString of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setKellonajatString: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "aikayksikko", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}aikayksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}aikayksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setAikayksikko: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "antotahti", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadFloatType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setAntotahti: ((float*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "antotahtiString", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}antotahtiString of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}antotahtiString of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setAntotahtiString: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "antotahtiyksikko", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}antotahtiyksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}antotahtiyksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setAntotahtiyksikko: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "vrkMaara", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadFloatType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setVrkMaara: ((float*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "vrkMaaraYksikko", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}vrkMaaraYksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}vrkMaaraYksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setVrkMaaraYksikko: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kokonaiskesto", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}kokonaiskesto of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}kokonaiskesto of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setKokonaiskesto: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kokonaismaara", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadFloatType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setKokonaismaara: ((float*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kokonaismaarayksikko", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}kokonaismaarayksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}kokonaismaarayksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setKokonaismaarayksikko: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "pakkauksia", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setPakkauksia: ((int*) _child_accessor)];
    return YES;
  }

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
    && xmlStrcmp(BAD_CAST "kirjaajaString", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}kirjaajaString of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}kirjaajaString of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setKirjaajaString: __child];
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
    [self setMaaraaja: *((int*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "maaraajaString", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}maaraajaString of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}maaraajaString of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setMaaraajaString: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "maaraysyksikko", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setMaaraysyksikko: ((int*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "varmistus", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setVarmistus: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kayttotarkoitus", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}kayttotarkoitus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}kayttotarkoitus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setKayttotarkoitus: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "ohjeet", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}ohjeet of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}ohjeet of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setOhjeet: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "perustelu", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}perustelu of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}perustelu of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setPerustelu: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "iterointi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setIterointi: ((int*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "uusittu", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setUusittu: ((int*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kuitattava", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setKuitattava: ((unsigned short*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "pysyva", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setPysyva: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tarvittaessa", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setTarvittaessa: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "terapiaryhma", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}terapiaryhma of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}terapiaryhma of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setTerapiaryhma: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "soveltumaton", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setSoveltumaton: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "vaikutus", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}vaikutus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}vaikutus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setVaikutus: __child];
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
    && xmlStrcmp(BAD_CAST "reseptityyppi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setReseptityyppi: ((unsigned short*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "reseptityyppiString", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}reseptityyppiString of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}reseptityyppiString of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setReseptityyppiString: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tulostaja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setTulostaja: ((int*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tulostettu", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tulostettu of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif
    __child = [NSDate readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tulostettu of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif

    [self setTulostettu: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "oid", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}oid of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}oid of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setOid: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tunnistustapa", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tunnistustapa of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tunnistustapa of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setTunnistustapa: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tunnistustapaselite", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tunnistustapaselite of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tunnistustapaselite of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setTunnistustapaselite: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "annosjakeluperuste", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}annosjakeluperuste of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}annosjakeluperuste of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setAnnosjakeluperuste: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "iterointivali", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setIterointivali: ((int*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "erillisselvityskoodi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}erillisselvityskoodi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}erillisselvityskoodi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setErillisselvityskoodi: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "erillisselvitys", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}erillisselvitys of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}erillisselvitys of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setErillisselvitys: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "apteekkiviesti", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}apteekkiviesti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}apteekkiviesti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setApteekkiviesti: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "ereseptikielto", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setEreseptikielto: ((unsigned short*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "hoitolaji", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}hoitolaji of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}hoitolaji of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setHoitolaji: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "uusi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setUusi: ((unsigned short*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "lahetetty", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}lahetetty of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif
    __child = [NSDate readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}lahetetty of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif

    [self setLahetetty: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "reseptinLaji", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}reseptinLaji of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}reseptinLaji of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setReseptinLaji: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "muutoksenSyy", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}muutoksenSyy of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}muutoksenSyy of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setMuutoksenSyy: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "muutoksenPerustelu", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}muutoksenPerustelu of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}muutoksenPerustelu of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setMuutoksenPerustelu: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "uusimiskielto", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setUusimiskielto: ((unsigned short*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "uusimiskiellonSyy", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}uusimiskiellonSyy of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}uusimiskiellonSyy of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setUusimiskiellonSyy: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "uusimiskiellonPerustelu", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}uusimiskiellonPerustelu of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}uusimiskiellonPerustelu of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setUusimiskiellonPerustelu: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "potilasohjekielto", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setPotilasohjekielto: ((unsigned short*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tyonantaja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tyonantaja of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tyonantaja of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setTyonantaja: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "vakuutusyhtio", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}vakuutusyhtio of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}vakuutusyhtio of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setVakuutusyhtio: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "voimassaoloLoppu", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}voimassaoloLoppu of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif
    __child = [NSDate readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}voimassaoloLoppu of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif

    [self setVoimassaoloLoppu: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "annostuslinkki", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setAnnostuslinkki: ((int*) _child_accessor)];
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
    && xmlStrcmp(BAD_CAST "alkuperainen", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setAlkuperainen: ((int*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "palkkio", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadFloatType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setPalkkio: ((float*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "palkkioErikoislaakarina", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setPalkkioErikoislaakarina: ((unsigned short*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tartuntatautilaake", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setTartuntatautilaake: ((unsigned short*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "palvelutapahtuma", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setPalvelutapahtuma: ((int*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "palvelutapahtumaOid", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}palvelutapahtumaOid of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}palvelutapahtumaOid of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setPalvelutapahtumaOid: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "sairaalaApteekkiOid", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}sairaalaApteekkiOid of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}sairaalaApteekkiOid of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setSairaalaApteekkiOid: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "sairaalaApteekkiNimi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}sairaalaApteekkiNimi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}sairaalaApteekkiNimi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setSairaalaApteekkiNimi: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tarkistus", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setTarkistus: ((int*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "poistosyy", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}poistosyy of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}poistosyy of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setPoistosyy: __child];
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
    && xmlStrcmp(BAD_CAST "pysyvyys", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}pysyvyys of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}pysyvyys of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setPysyvyys: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "nimi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}nimi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}nimi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setNimi: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "annostus", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}annostus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}annostus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setAnnostus: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "vaihteleva", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadBooleanType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setVaihteleva: *((BOOL*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "vaihtelevaAnnostus", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}vaihtelevaAnnostus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}vaihtelevaAnnostus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setVaihtelevaAnnostus: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "sic", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}sic of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}sic of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setSic: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kokoNimi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}kokoNimi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}kokoNimi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setKokoNimi: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "laakeaineet", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}laakeaineet of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}laakeaineet of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setLaakeaineet: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tauonAloitusPvm", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadLongType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setTauonAloitusPvm: *((long long*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tauonLopetusPvm", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadLongType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setTauonLopetusPvm: *((long long*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "taukohuomautuksia", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}taukohuomautuksia of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}taukohuomautuksia of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setTaukohuomautuksia: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "annettavaMaaraTimesPaino", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadFloatType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setAnnettavaMaaraTimesPaino: ((float*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "vrkmaara", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadFloatType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setVrkmaara: ((float*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "vrkkerratCalc", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setVrkkerratCalc: *((int*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "vrkmaaraCalc", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadFloatType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setVrkmaaraCalc: ((float*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "vrkmaaraYksikko", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}vrkmaaraYksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}vrkmaaraYksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setVrkmaaraYksikko: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tauot", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tauot of type {}laakitysTauko.");
#endif

     __child = [COREWEBNS0LaakitysTauko readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tauot of type {}laakitysTauko.");
#endif

    if ([self tauot]) {
      [self setTauot: [[self tauot] arrayByAddingObject: __child]];
    }
    else {
      [self setTauot: [NSArray arrayWithObject: __child]];
    }
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "annot", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}annot of type {}laakitysAnto.");
#endif

     __child = [COREWEBNS0LaakitysAnto readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}annot of type {}laakitysAnto.");
#endif

    if ([self annot]) {
      [self setAnnot: [[self annot] arrayByAddingObject: __child]];
    }
    else {
      [self setAnnot: [NSArray arrayWithObject: __child]];
    }
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tavat", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tavat of type {}laakitysTapa.");
#endif

     __child = [COREWEBNS0LaakitysTapa readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tavat of type {}laakitysTapa.");
#endif

    if ([self tavat]) {
      [self setTavat: [[self tavat] arrayByAddingObject: __child]];
    }
    else {
      [self setTavat: [NSArray arrayWithObject: __child]];
    }
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kayttoaiheet", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}kayttoaiheet of type {}laakitysKayttoaihe.");
#endif

     __child = [COREWEBNS0LaakitysKayttoaihe readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}kayttoaiheet of type {}laakitysKayttoaihe.");
#endif

    if ([self kayttoaiheet]) {
      [self setKayttoaiheet: [[self kayttoaiheet] arrayByAddingObject: __child]];
    }
    else {
      [self setKayttoaiheet: [NSArray arrayWithObject: __child]];
    }
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "laakitysKayttoaiheList", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}laakitysKayttoaiheList of type {}laakitysKayttoaiheView.");
#endif

     __child = [COREWEBNS0LaakitysKayttoaiheView readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}laakitysKayttoaiheList of type {}laakitysKayttoaiheView.");
#endif

    if ([self laakitysKayttoaiheList]) {
      [self setLaakitysKayttoaiheList: [[self laakitysKayttoaiheList] arrayByAddingObject: __child]];
    }
    else {
      [self setLaakitysKayttoaiheList: [NSArray arrayWithObject: __child]];
    }
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kuittaukset", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}kuittaukset of type {}laakitysKuittaus.");
#endif

     __child = [COREWEBNS0LaakitysKuittaus readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}kuittaukset of type {}laakitysKuittaus.");
#endif

    if ([self kuittaukset]) {
      [self setKuittaukset: [[self kuittaukset] arrayByAddingObject: __child]];
    }
    else {
      [self setKuittaukset: [NSArray arrayWithObject: __child]];
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
  if ([self laakevalmiste]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakevalmiste", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}laakevalmiste."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}laakevalmiste...");
#endif
    [[self laakevalmiste] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}laakevalmiste...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}laakevalmiste."];
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
  if ([self aloitettu]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "aloitettu", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}aloitettu."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}aloitettu...");
#endif
    [[self aloitettu] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}aloitettu...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}aloitettu."];
    }
  }
  if ([self tapahtunut]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tapahtunut", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tapahtunut."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tapahtunut...");
#endif
    [[self tapahtunut] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tapahtunut...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tapahtunut."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tapahtuma", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tapahtuma."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tapahtuma...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_tapahtuma);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tapahtuma...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}tapahtuma."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tapahtuma."];
    }
  }
  if ([self riittoisuus]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "riittoisuus", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}riittoisuus."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}riittoisuus...");
#endif
    [[self riittoisuus] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}riittoisuus...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}riittoisuus."];
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
  if ([self lopetussyy]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "lopetussyy", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}lopetussyy."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}lopetussyy...");
#endif
    [[self lopetussyy] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}lopetussyy...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}lopetussyy."];
    }
  }
  if ([self reseptiteksti]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "reseptiteksti", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}reseptiteksti."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}reseptiteksti...");
#endif
    [[self reseptiteksti] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}reseptiteksti...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}reseptiteksti."];
    }
  }
  if ([self malli]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "malli", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}malli."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}malli...");
#endif
    [[self malli] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}malli...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}malli."];
    }
  }
  if ([self lyhyesti]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "lyhyesti", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}lyhyesti."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}lyhyesti...");
#endif
    [[self lyhyesti] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}lyhyesti...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}lyhyesti."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "vaihdettavuus", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}vaihdettavuus."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}vaihdettavuus...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_vaihdettavuus);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}vaihdettavuus...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}vaihdettavuus."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}vaihdettavuus."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "annettavaMaara", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}annettavaMaara."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}annettavaMaara...");
#endif
    status = xmlTextWriterWriteFloatType(writer, &_annettavaMaara);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}annettavaMaara...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}annettavaMaara."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}annettavaMaara."];
    }
  }
  if ([self annettavaMaksimi] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "annettavaMaksimi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}annettavaMaksimi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}annettavaMaksimi...");
#endif
    status = xmlTextWriterWriteFloatType(writer, [self annettavaMaksimi]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}annettavaMaksimi...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}annettavaMaksimi."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}annettavaMaksimi."];
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
  if ([self kertaAnnos]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kertaAnnos", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kertaAnnos."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kertaAnnos...");
#endif
    [[self kertaAnnos] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kertaAnnos...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kertaAnnos."];
    }
  }
  if ([self annosteluteksti]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "annosteluteksti", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}annosteluteksti."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}annosteluteksti...");
#endif
    [[self annosteluteksti] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}annosteluteksti...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}annosteluteksti."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "desimaaleja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}desimaaleja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}desimaaleja...");
#endif
    status = xmlTextWriterWriteShortType(writer, &_desimaaleja);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}desimaaleja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}desimaaleja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}desimaaleja."];
    }
  }
  if ([self paino] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "paino", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}paino."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}paino...");
#endif
    status = xmlTextWriterWriteFloatType(writer, [self paino]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}paino...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}paino."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}paino."];
    }
  }
  if ([self lapsenPaino] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "lapsenPaino", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}lapsenPaino."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}lapsenPaino...");
#endif
    status = xmlTextWriterWriteFloatType(writer, [self lapsenPaino]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}lapsenPaino...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}lapsenPaino."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}lapsenPaino."];
    }
  }
  if ([self toisto]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "toisto", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}toisto."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}toisto...");
#endif
    [[self toisto] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}toisto...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}toisto."];
    }
  }
  if ([self toistokuvaus]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "toistokuvaus", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}toistokuvaus."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}toistokuvaus...");
#endif
    [[self toistokuvaus] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}toistokuvaus...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}toistokuvaus."];
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
  if ([self kellonajatString]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kellonajatString", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kellonajatString."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kellonajatString...");
#endif
    [[self kellonajatString] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kellonajatString...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kellonajatString."];
    }
  }
  if ([self aikayksikko]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "aikayksikko", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}aikayksikko."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}aikayksikko...");
#endif
    [[self aikayksikko] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}aikayksikko...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}aikayksikko."];
    }
  }
  if ([self antotahti] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "antotahti", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}antotahti."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}antotahti...");
#endif
    status = xmlTextWriterWriteFloatType(writer, [self antotahti]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}antotahti...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}antotahti."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}antotahti."];
    }
  }
  if ([self antotahtiString]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "antotahtiString", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}antotahtiString."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}antotahtiString...");
#endif
    [[self antotahtiString] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}antotahtiString...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}antotahtiString."];
    }
  }
  if ([self antotahtiyksikko]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "antotahtiyksikko", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}antotahtiyksikko."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}antotahtiyksikko...");
#endif
    [[self antotahtiyksikko] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}antotahtiyksikko...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}antotahtiyksikko."];
    }
  }
  if ([self vrkMaara] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "vrkMaara", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}vrkMaara."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}vrkMaara...");
#endif
    status = xmlTextWriterWriteFloatType(writer, [self vrkMaara]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}vrkMaara...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}vrkMaara."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}vrkMaara."];
    }
  }
  if ([self vrkMaaraYksikko]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "vrkMaaraYksikko", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}vrkMaaraYksikko."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}vrkMaaraYksikko...");
#endif
    [[self vrkMaaraYksikko] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}vrkMaaraYksikko...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}vrkMaaraYksikko."];
    }
  }
  if ([self kokonaiskesto]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kokonaiskesto", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kokonaiskesto."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kokonaiskesto...");
#endif
    [[self kokonaiskesto] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kokonaiskesto...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kokonaiskesto."];
    }
  }
  if ([self kokonaismaara] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kokonaismaara", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kokonaismaara."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kokonaismaara...");
#endif
    status = xmlTextWriterWriteFloatType(writer, [self kokonaismaara]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kokonaismaara...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}kokonaismaara."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kokonaismaara."];
    }
  }
  if ([self kokonaismaarayksikko]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kokonaismaarayksikko", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kokonaismaarayksikko."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kokonaismaarayksikko...");
#endif
    [[self kokonaismaarayksikko] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kokonaismaarayksikko...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kokonaismaarayksikko."];
    }
  }
  if ([self pakkauksia] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "pakkauksia", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}pakkauksia."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}pakkauksia...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self pakkauksia]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}pakkauksia...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}pakkauksia."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}pakkauksia."];
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
  if ([self kirjaajaString]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kirjaajaString", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kirjaajaString."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kirjaajaString...");
#endif
    [[self kirjaajaString] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kirjaajaString...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kirjaajaString."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "maaraaja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}maaraaja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}maaraaja...");
#endif
    status = xmlTextWriterWriteIntType(writer, &_maaraaja);
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
  if ([self maaraajaString]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "maaraajaString", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}maaraajaString."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}maaraajaString...");
#endif
    [[self maaraajaString] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}maaraajaString...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}maaraajaString."];
    }
  }
  if ([self maaraysyksikko] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "maaraysyksikko", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}maaraysyksikko."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}maaraysyksikko...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self maaraysyksikko]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}maaraysyksikko...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}maaraysyksikko."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}maaraysyksikko."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "varmistus", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}varmistus."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}varmistus...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_varmistus);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}varmistus...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}varmistus."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}varmistus."];
    }
  }
  if ([self kayttotarkoitus]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kayttotarkoitus", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kayttotarkoitus."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kayttotarkoitus...");
#endif
    [[self kayttotarkoitus] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kayttotarkoitus...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kayttotarkoitus."];
    }
  }
  if ([self ohjeet]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "ohjeet", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}ohjeet."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}ohjeet...");
#endif
    [[self ohjeet] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}ohjeet...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}ohjeet."];
    }
  }
  if ([self perustelu]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "perustelu", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}perustelu."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}perustelu...");
#endif
    [[self perustelu] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}perustelu...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}perustelu."];
    }
  }
  if ([self iterointi] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "iterointi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}iterointi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}iterointi...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self iterointi]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}iterointi...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}iterointi."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}iterointi."];
    }
  }
  if ([self uusittu] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "uusittu", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}uusittu."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}uusittu...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self uusittu]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}uusittu...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}uusittu."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}uusittu."];
    }
  }
  if ([self kuitattava] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kuitattava", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kuitattava."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kuitattava...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self kuitattava]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kuitattava...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}kuitattava."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kuitattava."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "pysyva", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}pysyva."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}pysyva...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_pysyva);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}pysyva...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}pysyva."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}pysyva."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tarvittaessa", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tarvittaessa."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tarvittaessa...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_tarvittaessa);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tarvittaessa...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}tarvittaessa."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tarvittaessa."];
    }
  }
  if ([self terapiaryhma]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "terapiaryhma", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}terapiaryhma."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}terapiaryhma...");
#endif
    [[self terapiaryhma] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}terapiaryhma...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}terapiaryhma."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "soveltumaton", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}soveltumaton."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}soveltumaton...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_soveltumaton);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}soveltumaton...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}soveltumaton."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}soveltumaton."];
    }
  }
  if ([self vaikutus]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "vaikutus", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}vaikutus."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}vaikutus...");
#endif
    [[self vaikutus] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}vaikutus...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}vaikutus."];
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
  if ([self reseptityyppi] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "reseptityyppi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}reseptityyppi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}reseptityyppi...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self reseptityyppi]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}reseptityyppi...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}reseptityyppi."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}reseptityyppi."];
    }
  }
  if ([self reseptityyppiString]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "reseptityyppiString", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}reseptityyppiString."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}reseptityyppiString...");
#endif
    [[self reseptityyppiString] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}reseptityyppiString...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}reseptityyppiString."];
    }
  }
  if ([self tulostaja] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tulostaja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tulostaja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tulostaja...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self tulostaja]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tulostaja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}tulostaja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tulostaja."];
    }
  }
  if ([self tulostettu]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tulostettu", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tulostettu."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tulostettu...");
#endif
    [[self tulostettu] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tulostettu...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tulostettu."];
    }
  }
  if ([self oid]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "oid", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}oid."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}oid...");
#endif
    [[self oid] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}oid...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}oid."];
    }
  }
  if ([self tunnistustapa]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tunnistustapa", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tunnistustapa."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tunnistustapa...");
#endif
    [[self tunnistustapa] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tunnistustapa...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tunnistustapa."];
    }
  }
  if ([self tunnistustapaselite]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tunnistustapaselite", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tunnistustapaselite."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tunnistustapaselite...");
#endif
    [[self tunnistustapaselite] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tunnistustapaselite...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tunnistustapaselite."];
    }
  }
  if ([self annosjakeluperuste]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "annosjakeluperuste", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}annosjakeluperuste."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}annosjakeluperuste...");
#endif
    [[self annosjakeluperuste] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}annosjakeluperuste...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}annosjakeluperuste."];
    }
  }
  if ([self iterointivali] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "iterointivali", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}iterointivali."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}iterointivali...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self iterointivali]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}iterointivali...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}iterointivali."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}iterointivali."];
    }
  }
  if ([self erillisselvityskoodi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "erillisselvityskoodi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}erillisselvityskoodi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}erillisselvityskoodi...");
#endif
    [[self erillisselvityskoodi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}erillisselvityskoodi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}erillisselvityskoodi."];
    }
  }
  if ([self erillisselvitys]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "erillisselvitys", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}erillisselvitys."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}erillisselvitys...");
#endif
    [[self erillisselvitys] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}erillisselvitys...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}erillisselvitys."];
    }
  }
  if ([self apteekkiviesti]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "apteekkiviesti", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}apteekkiviesti."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}apteekkiviesti...");
#endif
    [[self apteekkiviesti] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}apteekkiviesti...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}apteekkiviesti."];
    }
  }
  if ([self ereseptikielto] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "ereseptikielto", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}ereseptikielto."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}ereseptikielto...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self ereseptikielto]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}ereseptikielto...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}ereseptikielto."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}ereseptikielto."];
    }
  }
  if ([self hoitolaji]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "hoitolaji", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}hoitolaji."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}hoitolaji...");
#endif
    [[self hoitolaji] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}hoitolaji...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}hoitolaji."];
    }
  }
  if ([self uusi] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "uusi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}uusi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}uusi...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self uusi]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}uusi...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}uusi."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}uusi."];
    }
  }
  if ([self lahetetty]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "lahetetty", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}lahetetty."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}lahetetty...");
#endif
    [[self lahetetty] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}lahetetty...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}lahetetty."];
    }
  }
  if ([self reseptinLaji]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "reseptinLaji", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}reseptinLaji."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}reseptinLaji...");
#endif
    [[self reseptinLaji] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}reseptinLaji...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}reseptinLaji."];
    }
  }
  if ([self muutoksenSyy]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "muutoksenSyy", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}muutoksenSyy."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}muutoksenSyy...");
#endif
    [[self muutoksenSyy] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}muutoksenSyy...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}muutoksenSyy."];
    }
  }
  if ([self muutoksenPerustelu]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "muutoksenPerustelu", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}muutoksenPerustelu."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}muutoksenPerustelu...");
#endif
    [[self muutoksenPerustelu] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}muutoksenPerustelu...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}muutoksenPerustelu."];
    }
  }
  if ([self uusimiskielto] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "uusimiskielto", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}uusimiskielto."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}uusimiskielto...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self uusimiskielto]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}uusimiskielto...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}uusimiskielto."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}uusimiskielto."];
    }
  }
  if ([self uusimiskiellonSyy]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "uusimiskiellonSyy", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}uusimiskiellonSyy."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}uusimiskiellonSyy...");
#endif
    [[self uusimiskiellonSyy] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}uusimiskiellonSyy...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}uusimiskiellonSyy."];
    }
  }
  if ([self uusimiskiellonPerustelu]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "uusimiskiellonPerustelu", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}uusimiskiellonPerustelu."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}uusimiskiellonPerustelu...");
#endif
    [[self uusimiskiellonPerustelu] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}uusimiskiellonPerustelu...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}uusimiskiellonPerustelu."];
    }
  }
  if ([self potilasohjekielto] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "potilasohjekielto", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}potilasohjekielto."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}potilasohjekielto...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self potilasohjekielto]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}potilasohjekielto...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}potilasohjekielto."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}potilasohjekielto."];
    }
  }
  if ([self tyonantaja]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tyonantaja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tyonantaja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tyonantaja...");
#endif
    [[self tyonantaja] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tyonantaja...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tyonantaja."];
    }
  }
  if ([self vakuutusyhtio]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "vakuutusyhtio", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}vakuutusyhtio."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}vakuutusyhtio...");
#endif
    [[self vakuutusyhtio] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}vakuutusyhtio...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}vakuutusyhtio."];
    }
  }
  if ([self voimassaoloLoppu]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "voimassaoloLoppu", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}voimassaoloLoppu."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}voimassaoloLoppu...");
#endif
    [[self voimassaoloLoppu] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}voimassaoloLoppu...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}voimassaoloLoppu."];
    }
  }
  if ([self annostuslinkki] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "annostuslinkki", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}annostuslinkki."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}annostuslinkki...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self annostuslinkki]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}annostuslinkki...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}annostuslinkki."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}annostuslinkki."];
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
  if ([self alkuperainen] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "alkuperainen", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}alkuperainen."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}alkuperainen...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self alkuperainen]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}alkuperainen...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}alkuperainen."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}alkuperainen."];
    }
  }
  if ([self palkkio] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "palkkio", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}palkkio."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}palkkio...");
#endif
    status = xmlTextWriterWriteFloatType(writer, [self palkkio]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}palkkio...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}palkkio."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}palkkio."];
    }
  }
  if ([self palkkioErikoislaakarina] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "palkkioErikoislaakarina", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}palkkioErikoislaakarina."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}palkkioErikoislaakarina...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self palkkioErikoislaakarina]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}palkkioErikoislaakarina...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}palkkioErikoislaakarina."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}palkkioErikoislaakarina."];
    }
  }
  if ([self tartuntatautilaake] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tartuntatautilaake", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tartuntatautilaake."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tartuntatautilaake...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self tartuntatautilaake]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tartuntatautilaake...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}tartuntatautilaake."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tartuntatautilaake."];
    }
  }
  if ([self palvelutapahtuma] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "palvelutapahtuma", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}palvelutapahtuma."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}palvelutapahtuma...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self palvelutapahtuma]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}palvelutapahtuma...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}palvelutapahtuma."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}palvelutapahtuma."];
    }
  }
  if ([self palvelutapahtumaOid]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "palvelutapahtumaOid", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}palvelutapahtumaOid."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}palvelutapahtumaOid...");
#endif
    [[self palvelutapahtumaOid] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}palvelutapahtumaOid...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}palvelutapahtumaOid."];
    }
  }
  if ([self sairaalaApteekkiOid]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "sairaalaApteekkiOid", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}sairaalaApteekkiOid."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}sairaalaApteekkiOid...");
#endif
    [[self sairaalaApteekkiOid] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}sairaalaApteekkiOid...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}sairaalaApteekkiOid."];
    }
  }
  if ([self sairaalaApteekkiNimi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "sairaalaApteekkiNimi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}sairaalaApteekkiNimi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}sairaalaApteekkiNimi...");
#endif
    [[self sairaalaApteekkiNimi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}sairaalaApteekkiNimi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}sairaalaApteekkiNimi."];
    }
  }
  if ([self tarkistus] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tarkistus", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tarkistus."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tarkistus...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self tarkistus]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tarkistus...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}tarkistus."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tarkistus."];
    }
  }
  if ([self poistosyy]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "poistosyy", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}poistosyy."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}poistosyy...");
#endif
    [[self poistosyy] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}poistosyy...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}poistosyy."];
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
  if ([self pysyvyys]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "pysyvyys", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}pysyvyys."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}pysyvyys...");
#endif
    [[self pysyvyys] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}pysyvyys...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}pysyvyys."];
    }
  }
  if ([self nimi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "nimi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}nimi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}nimi...");
#endif
    [[self nimi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}nimi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}nimi."];
    }
  }
  if ([self annostus]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "annostus", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}annostus."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}annostus...");
#endif
    [[self annostus] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}annostus...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}annostus."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "vaihteleva", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}vaihteleva."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}vaihteleva...");
#endif
    status = xmlTextWriterWriteBooleanType(writer, &_vaihteleva);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}vaihteleva...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}vaihteleva."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}vaihteleva."];
    }
  }
  if ([self vaihtelevaAnnostus]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "vaihtelevaAnnostus", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}vaihtelevaAnnostus."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}vaihtelevaAnnostus...");
#endif
    [[self vaihtelevaAnnostus] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}vaihtelevaAnnostus...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}vaihtelevaAnnostus."];
    }
  }
  if ([self sic]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "sic", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}sic."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}sic...");
#endif
    [[self sic] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}sic...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}sic."];
    }
  }
  if ([self kokoNimi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kokoNimi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kokoNimi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kokoNimi...");
#endif
    [[self kokoNimi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kokoNimi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kokoNimi."];
    }
  }
  if ([self laakeaineet]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakeaineet", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}laakeaineet."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}laakeaineet...");
#endif
    [[self laakeaineet] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}laakeaineet...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}laakeaineet."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tauonAloitusPvm", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tauonAloitusPvm."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tauonAloitusPvm...");
#endif
    status = xmlTextWriterWriteLongType(writer, &_tauonAloitusPvm);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tauonAloitusPvm...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}tauonAloitusPvm."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tauonAloitusPvm."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tauonLopetusPvm", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tauonLopetusPvm."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tauonLopetusPvm...");
#endif
    status = xmlTextWriterWriteLongType(writer, &_tauonLopetusPvm);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tauonLopetusPvm...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}tauonLopetusPvm."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tauonLopetusPvm."];
    }
  }
  if ([self taukohuomautuksia]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "taukohuomautuksia", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}taukohuomautuksia."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}taukohuomautuksia...");
#endif
    [[self taukohuomautuksia] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}taukohuomautuksia...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}taukohuomautuksia."];
    }
  }
  if ([self annettavaMaaraTimesPaino] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "annettavaMaaraTimesPaino", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}annettavaMaaraTimesPaino."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}annettavaMaaraTimesPaino...");
#endif
    status = xmlTextWriterWriteFloatType(writer, [self annettavaMaaraTimesPaino]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}annettavaMaaraTimesPaino...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}annettavaMaaraTimesPaino."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}annettavaMaaraTimesPaino."];
    }
  }
  if ([self vrkmaara] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "vrkmaara", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}vrkmaara."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}vrkmaara...");
#endif
    status = xmlTextWriterWriteFloatType(writer, [self vrkmaara]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}vrkmaara...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}vrkmaara."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}vrkmaara."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "vrkkerratCalc", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}vrkkerratCalc."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}vrkkerratCalc...");
#endif
    status = xmlTextWriterWriteIntType(writer, &_vrkkerratCalc);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}vrkkerratCalc...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}vrkkerratCalc."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}vrkkerratCalc."];
    }
  }
  if ([self vrkmaaraCalc] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "vrkmaaraCalc", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}vrkmaaraCalc."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}vrkmaaraCalc...");
#endif
    status = xmlTextWriterWriteFloatType(writer, [self vrkmaaraCalc]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}vrkmaaraCalc...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}vrkmaaraCalc."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}vrkmaaraCalc."];
    }
  }
  if ([self vrkmaaraYksikko]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "vrkmaaraYksikko", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}vrkmaaraYksikko."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}vrkmaaraYksikko...");
#endif
    [[self vrkmaaraYksikko] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}vrkmaaraYksikko...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}vrkmaaraYksikko."];
    }
  }
  if ([self tauot]) {
    __enumerator = [[self tauot] objectEnumerator];

    while ( (__item = [__enumerator nextObject]) ) {
      status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tauot", NULL);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing start child element {}tauot."];
      }

#if DEBUG_ENUNCIATE > 1
      NSLog(@"writing element {}tauot...");
#endif
      [__item writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
      NSLog(@"successfully wrote element {}tauot...");
#endif

      status = xmlTextWriterEndElement(writer);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing end child element {}tauot."];
      }
    } //end item iterator.
  }
  if ([self annot]) {
    __enumerator = [[self annot] objectEnumerator];

    while ( (__item = [__enumerator nextObject]) ) {
      status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "annot", NULL);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing start child element {}annot."];
      }

#if DEBUG_ENUNCIATE > 1
      NSLog(@"writing element {}annot...");
#endif
      [__item writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
      NSLog(@"successfully wrote element {}annot...");
#endif

      status = xmlTextWriterEndElement(writer);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing end child element {}annot."];
      }
    } //end item iterator.
  }
  if ([self tavat]) {
    __enumerator = [[self tavat] objectEnumerator];

    while ( (__item = [__enumerator nextObject]) ) {
      status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tavat", NULL);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing start child element {}tavat."];
      }

#if DEBUG_ENUNCIATE > 1
      NSLog(@"writing element {}tavat...");
#endif
      [__item writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
      NSLog(@"successfully wrote element {}tavat...");
#endif

      status = xmlTextWriterEndElement(writer);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing end child element {}tavat."];
      }
    } //end item iterator.
  }
  if ([self kayttoaiheet]) {
    __enumerator = [[self kayttoaiheet] objectEnumerator];

    while ( (__item = [__enumerator nextObject]) ) {
      status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kayttoaiheet", NULL);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing start child element {}kayttoaiheet."];
      }

#if DEBUG_ENUNCIATE > 1
      NSLog(@"writing element {}kayttoaiheet...");
#endif
      [__item writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
      NSLog(@"successfully wrote element {}kayttoaiheet...");
#endif

      status = xmlTextWriterEndElement(writer);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing end child element {}kayttoaiheet."];
      }
    } //end item iterator.
  }
  if ([self laakitysKayttoaiheList]) {
    __enumerator = [[self laakitysKayttoaiheList] objectEnumerator];

    while ( (__item = [__enumerator nextObject]) ) {
      status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakitysKayttoaiheList", NULL);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing start child element {}laakitysKayttoaiheList."];
      }

#if DEBUG_ENUNCIATE > 1
      NSLog(@"writing element {}laakitysKayttoaiheList...");
#endif
      [__item writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
      NSLog(@"successfully wrote element {}laakitysKayttoaiheList...");
#endif

      status = xmlTextWriterEndElement(writer);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing end child element {}laakitysKayttoaiheList."];
      }
    } //end item iterator.
  }
  if ([self kuittaukset]) {
    __enumerator = [[self kuittaukset] objectEnumerator];

    while ( (__item = [__enumerator nextObject]) ) {
      status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kuittaukset", NULL);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing start child element {}kuittaukset."];
      }

#if DEBUG_ENUNCIATE > 1
      NSLog(@"writing element {}kuittaukset...");
#endif
      [__item writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
      NSLog(@"successfully wrote element {}kuittaukset...");
#endif

      status = xmlTextWriterEndElement(writer);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing end child element {}kuittaukset."];
      }
    } //end item iterator.
  }
}
@end /* implementation COREWEBNS0Laakitys (JAXB) */

#endif /* DEF_COREWEBNS0Laakitys_M */
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
#ifndef DEF_COREWEBNS0Laake_M
#define DEF_COREWEBNS0Laake_M

/**
 *  DTO for Laake, data base table LAAKE_VALMISTE

 */
@implementation COREWEBNS0Laake

/**
 * (no documentation provided)
 */
- (NSString *) koodi
{
  return _koodi;
}

/**
 * (no documentation provided)
 */
- (void) setKoodi: (NSString *) newKoodi
{
  [newKoodi retain];
  [_koodi release];
  _koodi = newKoodi;
}

/**
 * (no documentation provided)
 */
- (NSString *) nimi
{
  return _nimi;
}

/**
 * (no documentation provided)
 */
- (void) setNimi: (NSString *) newNimi
{
  [newNimi retain];
  [_nimi release];
  _nimi = newNimi;
}

/**
 * (no documentation provided)
 */
- (int *) valmistaja
{
  return _valmistaja;
}

/**
 * (no documentation provided)
 */
- (void) setValmistaja: (int *) newValmistaja
{
  if (_valmistaja != NULL) {
    free(_valmistaja);
  }
  _valmistaja = newValmistaja;
}

/**
 * (no documentation provided)
 */
- (NSString *) ehto
{
  return _ehto;
}

/**
 * (no documentation provided)
 */
- (void) setEhto: (NSString *) newEhto
{
  [newEhto retain];
  [_ehto release];
  _ehto = newEhto;
}

/**
 * (no documentation provided)
 */
- (NSString *) varoituksia
{
  return _varoituksia;
}

/**
 * (no documentation provided)
 */
- (void) setVaroituksia: (NSString *) newVaroituksia
{
  [newVaroituksia retain];
  [_varoituksia release];
  _varoituksia = newVaroituksia;
}

/**
 * (no documentation provided)
 */
- (NSString *) erityispiirre
{
  return _erityispiirre;
}

/**
 * (no documentation provided)
 */
- (void) setErityispiirre: (NSString *) newErityispiirre
{
  [newErityispiirre retain];
  [_erityispiirre release];
  _erityispiirre = newErityispiirre;
}

/**
 * (no documentation provided)
 */
- (unsigned short) erityisluvallinen
{
  return _erityisluvallinen;
}

/**
 * (no documentation provided)
 */
- (void) setErityisluvallinen: (unsigned short) newErityisluvallinen
{
  _erityisluvallinen = newErityisluvallinen;
}

/**
 * (no documentation provided)
 */
- (NSString *) laakemuoto
{
  return _laakemuoto;
}

/**
 * (no documentation provided)
 */
- (void) setLaakemuoto: (NSString *) newLaakemuoto
{
  [newLaakemuoto retain];
  [_laakemuoto release];
  _laakemuoto = newLaakemuoto;
}

/**
 * (no documentation provided)
 */
- (NSString *) vahvuus
{
  return _vahvuus;
}

/**
 * (no documentation provided)
 */
- (void) setVahvuus: (NSString *) newVahvuus
{
  [newVahvuus retain];
  [_vahvuus release];
  _vahvuus = newVahvuus;
}

/**
 * (no documentation provided)
 */
- (float *) vahvuusarvo
{
  return _vahvuusarvo;
}

/**
 * (no documentation provided)
 */
- (void) setVahvuusarvo: (float *) newVahvuusarvo
{
  if (_vahvuusarvo != NULL) {
    free(_vahvuusarvo);
  }
  _vahvuusarvo = newVahvuusarvo;
}

/**
 * (no documentation provided)
 */
- (NSString *) vahvuusyksikko
{
  return _vahvuusyksikko;
}

/**
 * (no documentation provided)
 */
- (void) setVahvuusyksikko: (NSString *) newVahvuusyksikko
{
  [newVahvuusyksikko retain];
  [_vahvuusyksikko release];
  _vahvuusyksikko = newVahvuusyksikko;
}

/**
 * (no documentation provided)
 */
- (NSString *) pakkaus
{
  return _pakkaus;
}

/**
 * (no documentation provided)
 */
- (void) setPakkaus: (NSString *) newPakkaus
{
  [newPakkaus retain];
  [_pakkaus release];
  _pakkaus = newPakkaus;
}

/**
 * (no documentation provided)
 */
- (float *) pakkauskerroin
{
  return _pakkauskerroin;
}

/**
 * (no documentation provided)
 */
- (void) setPakkauskerroin: (float *) newPakkauskerroin
{
  if (_pakkauskerroin != NULL) {
    free(_pakkauskerroin);
  }
  _pakkauskerroin = newPakkauskerroin;
}

/**
 * (no documentation provided)
 */
- (float *) pakkausarvo
{
  return _pakkausarvo;
}

/**
 * (no documentation provided)
 */
- (void) setPakkausarvo: (float *) newPakkausarvo
{
  if (_pakkausarvo != NULL) {
    free(_pakkausarvo);
  }
  _pakkausarvo = newPakkausarvo;
}

/**
 * (no documentation provided)
 */
- (NSString *) pakkausyksikko
{
  return _pakkausyksikko;
}

/**
 * (no documentation provided)
 */
- (void) setPakkausyksikko: (NSString *) newPakkausyksikko
{
  [newPakkausyksikko retain];
  [_pakkausyksikko release];
  _pakkausyksikko = newPakkausyksikko;
}

/**
 * (no documentation provided)
 */
- (NSString *) pakkaustyyppi
{
  return _pakkaustyyppi;
}

/**
 * (no documentation provided)
 */
- (void) setPakkaustyyppi: (NSString *) newPakkaustyyppi
{
  [newPakkaustyyppi retain];
  [_pakkaustyyppi release];
  _pakkaustyyppi = newPakkaustyyppi;
}

/**
 * (no documentation provided)
 */
- (NSString *) laite
{
  return _laite;
}

/**
 * (no documentation provided)
 */
- (void) setLaite: (NSString *) newLaite
{
  [newLaite retain];
  [_laite release];
  _laite = newLaite;
}

/**
 * (no documentation provided)
 */
- (float *) hinta
{
  return _hinta;
}

/**
 * (no documentation provided)
 */
- (void) setHinta: (float *) newHinta
{
  if (_hinta != NULL) {
    free(_hinta);
  }
  _hinta = newHinta;
}

/**
 * (no documentation provided)
 */
- (NSString *) reseptiteksti
{
  return _reseptiteksti;
}

/**
 * (no documentation provided)
 */
- (void) setReseptiteksti: (NSString *) newReseptiteksti
{
  [newReseptiteksti retain];
  [_reseptiteksti release];
  _reseptiteksti = newReseptiteksti;
}

/**
 * (no documentation provided)
 */
- (NSString *) korvattavuus
{
  return _korvattavuus;
}

/**
 * (no documentation provided)
 */
- (void) setKorvattavuus: (NSString *) newKorvattavuus
{
  [newKorvattavuus retain];
  [_korvattavuus release];
  _korvattavuus = newKorvattavuus;
}

/**
 * (no documentation provided)
 */
- (NSString *) substituutioryhma
{
  return _substituutioryhma;
}

/**
 * (no documentation provided)
 */
- (void) setSubstituutioryhma: (NSString *) newSubstituutioryhma
{
  [newSubstituutioryhma retain];
  [_substituutioryhma release];
  _substituutioryhma = newSubstituutioryhma;
}

/**
 * (no documentation provided)
 */
- (unsigned short) alkupera
{
  return _alkupera;
}

/**
 * (no documentation provided)
 */
- (void) setAlkupera: (unsigned short) newAlkupera
{
  _alkupera = newAlkupera;
}

/**
 * (no documentation provided)
 */
- (unsigned short) tila
{
  return _tila;
}

/**
 * (no documentation provided)
 */
- (void) setTila: (unsigned short) newTila
{
  _tila = newTila;
}

/**
 * (no documentation provided)
 */
- (NSString *) halytys
{
  return _halytys;
}

/**
 * (no documentation provided)
 */
- (void) setHalytys: (NSString *) newHalytys
{
  [newHalytys retain];
  [_halytys release];
  _halytys = newHalytys;
}

/**
 * (no documentation provided)
 */
- (NSDate *) erityislupaVanhenee
{
  return _erityislupaVanhenee;
}

/**
 * (no documentation provided)
 */
- (void) setErityislupaVanhenee: (NSDate *) newErityislupaVanhenee
{
  [newErityislupaVanhenee retain];
  [_erityislupaVanhenee release];
  _erityislupaVanhenee = newErityislupaVanhenee;
}

/**
 * (no documentation provided)
 */
- (NSString *) vero
{
  return _vero;
}

/**
 * (no documentation provided)
 */
- (void) setVero: (NSString *) newVero
{
  [newVero retain];
  [_vero release];
  _vero = newVero;
}

/**
 * (no documentation provided)
 */
- (unsigned short *) peruslaakevalikoima
{
  return _peruslaakevalikoima;
}

/**
 * (no documentation provided)
 */
- (void) setPeruslaakevalikoima: (unsigned short *) newPeruslaakevalikoima
{
  if (_peruslaakevalikoima != NULL) {
    free(_peruslaakevalikoima);
  }
  _peruslaakevalikoima = newPeruslaakevalikoima;
}

/**
 * (no documentation provided)
 */
- (NSString *) kelpoisuusaika
{
  return _kelpoisuusaika;
}

/**
 * (no documentation provided)
 */
- (void) setKelpoisuusaika: (NSString *) newKelpoisuusaika
{
  [newKelpoisuusaika retain];
  [_kelpoisuusaika release];
  _kelpoisuusaika = newKelpoisuusaika;
}

/**
 * (no documentation provided)
 */
- (NSString *) sailytys
{
  return _sailytys;
}

/**
 * (no documentation provided)
 */
- (void) setSailytys: (NSString *) newSailytys
{
  [newSailytys retain];
  [_sailytys release];
  _sailytys = newSailytys;
}

/**
 * (no documentation provided)
 */
- (int *) velvoitevarasto
{
  return _velvoitevarasto;
}

/**
 * (no documentation provided)
 */
- (void) setVelvoitevarasto: (int *) newVelvoitevarasto
{
  if (_velvoitevarasto != NULL) {
    free(_velvoitevarasto);
  }
  _velvoitevarasto = newVelvoitevarasto;
}

/**
 * (no documentation provided)
 */
- (int *) varoitusraja
{
  return _varoitusraja;
}

/**
 * (no documentation provided)
 */
- (void) setVaroitusraja: (int *) newVaroitusraja
{
  if (_varoitusraja != NULL) {
    free(_varoitusraja);
  }
  _varoitusraja = newVaroitusraja;
}

/**
 * (no documentation provided)
 */
- (unsigned short *) kappalevarasto
{
  return _kappalevarasto;
}

/**
 * (no documentation provided)
 */
- (void) setKappalevarasto: (unsigned short *) newKappalevarasto
{
  if (_kappalevarasto != NULL) {
    free(_kappalevarasto);
  }
  _kappalevarasto = newKappalevarasto;
}

/**
 * (no documentation provided)
 */
- (float *) tukkuhinta
{
  return _tukkuhinta;
}

/**
 * (no documentation provided)
 */
- (void) setTukkuhinta: (float *) newTukkuhinta
{
  if (_tukkuhinta != NULL) {
    free(_tukkuhinta);
  }
  _tukkuhinta = newTukkuhinta;
}

/**
 * (no documentation provided)
 */
- (float *) tarjoushinta
{
  return _tarjoushinta;
}

/**
 * (no documentation provided)
 */
- (void) setTarjoushinta: (float *) newTarjoushinta
{
  if (_tarjoushinta != NULL) {
    free(_tarjoushinta);
  }
  _tarjoushinta = newTarjoushinta;
}

/**
 * (no documentation provided)
 */
- (int *) sopimustoimittaja
{
  return _sopimustoimittaja;
}

/**
 * (no documentation provided)
 */
- (void) setSopimustoimittaja: (int *) newSopimustoimittaja
{
  if (_sopimustoimittaja != NULL) {
    free(_sopimustoimittaja);
  }
  _sopimustoimittaja = newSopimustoimittaja;
}

/**
 * (no documentation provided)
 */
- (NSString *) huomautuksia
{
  return _huomautuksia;
}

/**
 * (no documentation provided)
 */
- (void) setHuomautuksia: (NSString *) newHuomautuksia
{
  [newHuomautuksia retain];
  [_huomautuksia release];
  _huomautuksia = newHuomautuksia;
}

/**
 * (no documentation provided)
 */
- (int *) suoritelinkki
{
  return _suoritelinkki;
}

/**
 * (no documentation provided)
 */
- (void) setSuoritelinkki: (int *) newSuoritelinkki
{
  if (_suoritelinkki != NULL) {
    free(_suoritelinkki);
  }
  _suoritelinkki = newSuoritelinkki;
}

/**
 * (no documentation provided)
 */
- (int *) kustannuslinkki
{
  return _kustannuslinkki;
}

/**
 * (no documentation provided)
 */
- (void) setKustannuslinkki: (int *) newKustannuslinkki
{
  if (_kustannuslinkki != NULL) {
    free(_kustannuslinkki);
  }
  _kustannuslinkki = newKustannuslinkki;
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
- (NSString *) tilasto1
{
  return _tilasto1;
}

/**
 * (no documentation provided)
 */
- (void) setTilasto1: (NSString *) newTilasto1
{
  [newTilasto1 retain];
  [_tilasto1 release];
  _tilasto1 = newTilasto1;
}

/**
 * (no documentation provided)
 */
- (NSString *) tilasto2
{
  return _tilasto2;
}

/**
 * (no documentation provided)
 */
- (void) setTilasto2: (NSString *) newTilasto2
{
  [newTilasto2 retain];
  [_tilasto2 release];
  _tilasto2 = newTilasto2;
}

/**
 * (no documentation provided)
 */
- (NSString *) tilasto3
{
  return _tilasto3;
}

/**
 * (no documentation provided)
 */
- (void) setTilasto3: (NSString *) newTilasto3
{
  [newTilasto3 retain];
  [_tilasto3 release];
  _tilasto3 = newTilasto3;
}

/**
 * (no documentation provided)
 */
- (NSString *) laaketietokantaversio
{
  return _laaketietokantaversio;
}

/**
 * (no documentation provided)
 */
- (void) setLaaketietokantaversio: (NSString *) newLaaketietokantaversio
{
  [newLaaketietokantaversio retain];
  [_laaketietokantaversio release];
  _laaketietokantaversio = newLaaketietokantaversio;
}

/**
 * (no documentation provided)
 */
- (NSString *) koodityyppi
{
  return _koodityyppi;
}

/**
 * (no documentation provided)
 */
- (void) setKoodityyppi: (NSString *) newKoodityyppi
{
  [newKoodityyppi retain];
  [_koodityyppi release];
  _koodityyppi = newKoodityyppi;
}

/**
 * (no documentation provided)
 */
- (NSString *) tukkunumero
{
  return _tukkunumero;
}

/**
 * (no documentation provided)
 */
- (void) setTukkunumero: (NSString *) newTukkunumero
{
  [newTukkunumero retain];
  [_tukkunumero release];
  _tukkunumero = newTukkunumero;
}

/**
 * (no documentation provided)
 */
- (NSString *) laji
{
  return _laji;
}

/**
 * (no documentation provided)
 */
- (void) setLaji: (NSString *) newLaji
{
  [newLaji retain];
  [_laji release];
  _laji = newLaji;
}

/**
 * (no documentation provided)
 */
- (NSString *) myyntiluvanHaltija
{
  return _myyntiluvanHaltija;
}

/**
 * (no documentation provided)
 */
- (void) setMyyntiluvanHaltija: (NSString *) newMyyntiluvanHaltija
{
  [newMyyntiluvanHaltija retain];
  [_myyntiluvanHaltija release];
  _myyntiluvanHaltija = newMyyntiluvanHaltija;
}

/**
 * (no documentation provided)
 */
- (NSString *) myyntilupanumero
{
  return _myyntilupanumero;
}

/**
 * (no documentation provided)
 */
- (void) setMyyntilupanumero: (NSString *) newMyyntilupanumero
{
  [newMyyntilupanumero retain];
  [_myyntilupanumero release];
  _myyntilupanumero = newMyyntilupanumero;
}

/**
 * (no documentation provided)
 */
- (unsigned short *) rinnakkaisvalmiste
{
  return _rinnakkaisvalmiste;
}

/**
 * (no documentation provided)
 */
- (void) setRinnakkaisvalmiste: (unsigned short *) newRinnakkaisvalmiste
{
  if (_rinnakkaisvalmiste != NULL) {
    free(_rinnakkaisvalmiste);
  }
  _rinnakkaisvalmiste = newRinnakkaisvalmiste;
}

/**
 * (no documentation provided)
 */
- (NSString *) laakemuototunnus
{
  return _laakemuototunnus;
}

/**
 * (no documentation provided)
 */
- (void) setLaakemuototunnus: (NSString *) newLaakemuototunnus
{
  [newLaakemuototunnus retain];
  [_laakemuototunnus release];
  _laakemuototunnus = newLaakemuototunnus;
}

/**
 * (no documentation provided)
 */
- (NSString *) substituutiokoodi
{
  return _substituutiokoodi;
}

/**
 * (no documentation provided)
 */
- (void) setSubstituutiokoodi: (NSString *) newSubstituutiokoodi
{
  [newSubstituutiokoodi retain];
  [_substituutiokoodi release];
  _substituutiokoodi = newSubstituutiokoodi;
}

/**
 * (no documentation provided)
 */
- (unsigned short *) laakevaihto
{
  return _laakevaihto;
}

/**
 * (no documentation provided)
 */
- (void) setLaakevaihto: (unsigned short *) newLaakevaihto
{
  if (_laakevaihto != NULL) {
    free(_laakevaihto);
  }
  _laakevaihto = newLaakevaihto;
}

/**
 * (no documentation provided)
 */
- (float *) viitehinta
{
  return _viitehinta;
}

/**
 * (no documentation provided)
 */
- (void) setViitehinta: (float *) newViitehinta
{
  if (_viitehinta != NULL) {
    free(_viitehinta);
  }
  _viitehinta = newViitehinta;
}

/**
 * (no documentation provided)
 */
- (float *) hintaputki
{
  return _hintaputki;
}

/**
 * (no documentation provided)
 */
- (void) setHintaputki: (float *) newHintaputki
{
  if (_hintaputki != NULL) {
    free(_hintaputki);
  }
  _hintaputki = newHintaputki;
}

/**
 * (no documentation provided)
 */
- (unsigned short *) reseptivalmiste
{
  return _reseptivalmiste;
}

/**
 * (no documentation provided)
 */
- (void) setReseptivalmiste: (unsigned short *) newReseptivalmiste
{
  if (_reseptivalmiste != NULL) {
    free(_reseptivalmiste);
  }
  _reseptivalmiste = newReseptivalmiste;
}

/**
 * (no documentation provided)
 */
- (NSString *) maaraamisehto
{
  return _maaraamisehto;
}

/**
 * (no documentation provided)
 */
- (void) setMaaraamisehto: (NSString *) newMaaraamisehto
{
  [newMaaraamisehto retain];
  [_maaraamisehto release];
  _maaraamisehto = newMaaraamisehto;
}

/**
 * (no documentation provided)
 */
- (unsigned short *) huume
{
  return _huume;
}

/**
 * (no documentation provided)
 */
- (void) setHuume: (unsigned short *) newHuume
{
  if (_huume != NULL) {
    free(_huume);
  }
  _huume = newHuume;
}

/**
 * (no documentation provided)
 */
- (unsigned short *) liikennevaara
{
  return _liikennevaara;
}

/**
 * (no documentation provided)
 */
- (void) setLiikennevaara: (unsigned short *) newLiikennevaara
{
  if (_liikennevaara != NULL) {
    free(_liikennevaara);
  }
  _liikennevaara = newLiikennevaara;
}

/**
 * (no documentation provided)
 */
- (unsigned short *) lapsille
{
  return _lapsille;
}

/**
 * (no documentation provided)
 */
- (void) setLapsille: (unsigned short *) newLapsille
{
  if (_lapsille != NULL) {
    free(_lapsille);
  }
  _lapsille = newLapsille;
}

/**
 * (no documentation provided)
 */
- (unsigned short *) annosjakelu
{
  return _annosjakelu;
}

/**
 * (no documentation provided)
 */
- (void) setAnnosjakelu: (unsigned short *) newAnnosjakelu
{
  if (_annosjakelu != NULL) {
    free(_annosjakelu);
  }
  _annosjakelu = newAnnosjakelu;
}

/**
 * (no documentation provided)
 */
- (unsigned short *) jakouurre
{
  return _jakouurre;
}

/**
 * (no documentation provided)
 */
- (void) setJakouurre: (unsigned short *) newJakouurre
{
  if (_jakouurre != NULL) {
    free(_jakouurre);
  }
  _jakouurre = newJakouurre;
}

/**
 * (no documentation provided)
 */
- (NSString *) hintamuutos
{
  return _hintamuutos;
}

/**
 * (no documentation provided)
 */
- (void) setHintamuutos: (NSString *) newHintamuutos
{
  [newHintamuutos retain];
  [_hintamuutos release];
  _hintamuutos = newHintamuutos;
}

/**
 * (no documentation provided)
 */
- (NSString *) suorakorvauskoodi
{
  return _suorakorvauskoodi;
}

/**
 * (no documentation provided)
 */
- (void) setSuorakorvauskoodi: (NSString *) newSuorakorvauskoodi
{
  [newSuorakorvauskoodi retain];
  [_suorakorvauskoodi release];
  _suorakorvauskoodi = newSuorakorvauskoodi;
}

/**
 * (no documentation provided)
 */
- (NSString *) pkv
{
  return _pkv;
}

/**
 * (no documentation provided)
 */
- (void) setPkv: (NSString *) newPkv
{
  [newPkv retain];
  [_pkv release];
  _pkv = newPkv;
}

/**
 * (no documentation provided)
 */
- (NSString *) valmistusohje
{
  return _valmistusohje;
}

/**
 * (no documentation provided)
 */
- (void) setValmistusohje: (NSString *) newValmistusohje
{
  [newValmistusohje retain];
  [_valmistusohje release];
  _valmistusohje = newValmistusohje;
}

/**
 * (no documentation provided)
 */
- (NSString *) markkinoija
{
  return _markkinoija;
}

/**
 * (no documentation provided)
 */
- (void) setMarkkinoija: (NSString *) newMarkkinoija
{
  [newMarkkinoija retain];
  [_markkinoija release];
  _markkinoija = newMarkkinoija;
}

/**
 * (no documentation provided)
 */
- (unsigned short *) veriplasmavalmiste
{
  return _veriplasmavalmiste;
}

/**
 * (no documentation provided)
 */
- (void) setVeriplasmavalmiste: (unsigned short *) newVeriplasmavalmiste
{
  if (_veriplasmavalmiste != NULL) {
    free(_veriplasmavalmiste);
  }
  _veriplasmavalmiste = newVeriplasmavalmiste;
}

/**
 * (no documentation provided)
 */
- (unsigned short *) biologinenLaake
{
  return _biologinenLaake;
}

/**
 * (no documentation provided)
 */
- (void) setBiologinenLaake: (unsigned short *) newBiologinenLaake
{
  if (_biologinenLaake != NULL) {
    free(_biologinenLaake);
  }
  _biologinenLaake = newBiologinenLaake;
}

/**
 * (no documentation provided)
 */
- (unsigned short *) lisaseurannassa
{
  return _lisaseurannassa;
}

/**
 * (no documentation provided)
 */
- (void) setLisaseurannassa: (unsigned short *) newLisaseurannassa
{
  if (_lisaseurannassa != NULL) {
    free(_lisaseurannassa);
  }
  _lisaseurannassa = newLisaseurannassa;
}

/**
 * (no documentation provided)
 */
- (NSString *) lisatiedot
{
  return _lisatiedot;
}

/**
 * (no documentation provided)
 */
- (void) setLisatiedot: (NSString *) newLisatiedot
{
  [newLisatiedot retain];
  [_lisatiedot release];
  _lisatiedot = newLisatiedot;
}

/**
 * (no documentation provided)
 */
- (NSArray *) atc
{
  return _atc;
}

/**
 * (no documentation provided)
 */
- (void) setAtc: (NSArray *) newAtc
{
  [newAtc retain];
  [_atc release];
  _atc = newAtc;
}

/**
 * (no documentation provided)
 */
- (NSArray *) annostusSoveltuvuus
{
  return _annostusSoveltuvuus;
}

/**
 * (no documentation provided)
 */
- (void) setAnnostusSoveltuvuus: (NSArray *) newAnnostusSoveltuvuus
{
  [newAnnostusSoveltuvuus retain];
  [_annostusSoveltuvuus release];
  _annostusSoveltuvuus = newAnnostusSoveltuvuus;
}

/**
 * (no documentation provided)
 */
- (NSArray *) yhteisvaikutus
{
  return _yhteisvaikutus;
}

/**
 * (no documentation provided)
 */
- (void) setYhteisvaikutus: (NSArray *) newYhteisvaikutus
{
  [newYhteisvaikutus retain];
  [_yhteisvaikutus release];
  _yhteisvaikutus = newYhteisvaikutus;
}

/**
 * (no documentation provided)
 */
- (NSArray *) vastaAihe
{
  return _vastaAihe;
}

/**
 * (no documentation provided)
 */
- (void) setVastaAihe: (NSArray *) newVastaAihe
{
  [newVastaAihe retain];
  [_vastaAihe release];
  _vastaAihe = newVastaAihe;
}

/**
 * (no documentation provided)
 */
- (NSArray *) terapiaryhma
{
  return _terapiaryhma;
}

/**
 * (no documentation provided)
 */
- (void) setTerapiaryhma: (NSArray *) newTerapiaryhma
{
  [newTerapiaryhma retain];
  [_terapiaryhma release];
  _terapiaryhma = newTerapiaryhma;
}

/**
 * (no documentation provided)
 */
- (NSArray *) koostumus
{
  return _koostumus;
}

/**
 * (no documentation provided)
 */
- (void) setKoostumus: (NSArray *) newKoostumus
{
  [newKoostumus retain];
  [_koostumus release];
  _koostumus = newKoostumus;
}

/**
 * (no documentation provided)
 */
- (NSArray *) tiivistelma
{
  return _tiivistelma;
}

/**
 * (no documentation provided)
 */
- (void) setTiivistelma: (NSArray *) newTiivistelma
{
  [newTiivistelma retain];
  [_tiivistelma release];
  _tiivistelma = newTiivistelma;
}

/**
 * (no documentation provided)
 */
- (NSArray *) seloste
{
  return _seloste;
}

/**
 * (no documentation provided)
 */
- (void) setSeloste: (NSArray *) newSeloste
{
  [newSeloste retain];
  [_seloste release];
  _seloste = newSeloste;
}

/**
 * (no documentation provided)
 */
- (NSArray *) laakeaineet
{
  return _laakeaineet;
}

/**
 * (no documentation provided)
 */
- (void) setLaakeaineet: (NSArray *) newLaakeaineet
{
  [newLaakeaineet retain];
  [_laakeaineet release];
  _laakeaineet = newLaakeaineet;
}

- (void) dealloc
{
  [self setKoodi: nil];
  [self setNimi: nil];
  [self setValmistaja: NULL];
  [self setEhto: nil];
  [self setVaroituksia: nil];
  [self setErityispiirre: nil];
  [self setLaakemuoto: nil];
  [self setVahvuus: nil];
  [self setVahvuusarvo: NULL];
  [self setVahvuusyksikko: nil];
  [self setPakkaus: nil];
  [self setPakkauskerroin: NULL];
  [self setPakkausarvo: NULL];
  [self setPakkausyksikko: nil];
  [self setPakkaustyyppi: nil];
  [self setLaite: nil];
  [self setHinta: NULL];
  [self setReseptiteksti: nil];
  [self setKorvattavuus: nil];
  [self setSubstituutioryhma: nil];
  [self setHalytys: nil];
  [self setErityislupaVanhenee: nil];
  [self setVero: nil];
  [self setPeruslaakevalikoima: NULL];
  [self setKelpoisuusaika: nil];
  [self setSailytys: nil];
  [self setVelvoitevarasto: NULL];
  [self setVaroitusraja: NULL];
  [self setKappalevarasto: NULL];
  [self setTukkuhinta: NULL];
  [self setTarjoushinta: NULL];
  [self setSopimustoimittaja: NULL];
  [self setHuomautuksia: nil];
  [self setSuoritelinkki: NULL];
  [self setKustannuslinkki: NULL];
  [self setMuutosaika: nil];
  [self setTilasto1: nil];
  [self setTilasto2: nil];
  [self setTilasto3: nil];
  [self setLaaketietokantaversio: nil];
  [self setKoodityyppi: nil];
  [self setTukkunumero: nil];
  [self setLaji: nil];
  [self setMyyntiluvanHaltija: nil];
  [self setMyyntilupanumero: nil];
  [self setRinnakkaisvalmiste: NULL];
  [self setLaakemuototunnus: nil];
  [self setSubstituutiokoodi: nil];
  [self setLaakevaihto: NULL];
  [self setViitehinta: NULL];
  [self setHintaputki: NULL];
  [self setReseptivalmiste: NULL];
  [self setMaaraamisehto: nil];
  [self setHuume: NULL];
  [self setLiikennevaara: NULL];
  [self setLapsille: NULL];
  [self setAnnosjakelu: NULL];
  [self setJakouurre: NULL];
  [self setHintamuutos: nil];
  [self setSuorakorvauskoodi: nil];
  [self setPkv: nil];
  [self setValmistusohje: nil];
  [self setMarkkinoija: nil];
  [self setVeriplasmavalmiste: NULL];
  [self setBiologinenLaake: NULL];
  [self setLisaseurannassa: NULL];
  [self setLisatiedot: nil];
  [self setAtc: nil];
  [self setAnnostusSoveltuvuus: nil];
  [self setYhteisvaikutus: nil];
  [self setVastaAihe: nil];
  [self setTerapiaryhma: nil];
  [self setKoostumus: nil];
  [self setTiivistelma: nil];
  [self setSeloste: nil];
  [self setLaakeaineet: nil];
  [super dealloc];
}

//documentation inherited.
+ (id<EnunciateXML>) readFromXML: (NSData *) xml
{
  COREWEBNS0Laake *_cOREWEBNS0Laake;
  xmlTextReaderPtr reader = xmlReaderForMemory([xml bytes], [xml length], NULL, NULL, 0);
  if (reader == NULL) {
    [NSException raise: @"XMLReadError"
                 format: @"Error instantiating an XML reader."];
    return nil;
  }

  _cOREWEBNS0Laake = (COREWEBNS0Laake *) [COREWEBNS0Laake readXMLElement: reader];
  xmlFreeTextReader(reader); //free the reader
  return _cOREWEBNS0Laake;
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
@end /* implementation COREWEBNS0Laake */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0Laake (JAXB) <JAXBReading, JAXBWriting, JAXBType, JAXBElement>

@end /*interface COREWEBNS0Laake (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0Laake (JAXB)

/**
 * Read an instance of COREWEBNS0Laake from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0Laake defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0Laake *_cOREWEBNS0Laake = [[COREWEBNS0Laake alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0Laake initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0Laake = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0Laake autorelease];
  return _cOREWEBNS0Laake;
}

/**
 * Initialize this instance of COREWEBNS0Laake according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0Laake to the writer.
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
 * Reads a COREWEBNS0Laake from an XML reader. The element to be read is
 * "laake".
 *
 * @param reader The XML reader.
 * @return The COREWEBNS0Laake.
 */
+ (id<JAXBElement>) readXMLElement: (xmlTextReaderPtr) reader {
  int status;
  COREWEBNS0Laake *_laake = nil;

  if (xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) {
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
    if (status < 1) {
      [NSException raise: @"XMLReadError"
                   format: @"Error advancing the reader to start element laake."];
    }
  }

  if (xmlStrcmp(BAD_CAST "laake", xmlTextReaderConstLocalName(reader)) == 0
      && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read root element {}laake.");
#endif
    _laake = (COREWEBNS0Laake *)[COREWEBNS0Laake readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Successfully read root element {}laake.");
#endif
  }
  else {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0Laake. Expected element laake. Current element: {}%s", xmlTextReaderConstLocalName(reader)];
    }
    else {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0Laake. Expected element laake. Current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader)];
    }
  }

  return _laake;
}

/**
 * Writes this COREWEBNS0Laake to XML under element name "laake".
 * The namespace declarations for the element will be written.
 *
 * @param writer The XML writer.
 * @param _laake The Laake to write.
 * @return 1 if successful, 0 otherwise.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer
{
  [self writeXMLElement: writer writeNamespaces: YES];
}

/**
 * Writes this COREWEBNS0Laake to an XML writer.
 *
 * @param writer The writer.
 * @param writeNs Whether to write the namespaces for this element to the xml writer.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer writeNamespaces: (BOOL) writeNs
{
  int rc = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laake", NULL);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing start element {}laake. XML writer status: %i\n", rc];
  }

#if DEBUG_ENUNCIATE > 1
  NSLog(@"writing type {}laake for root element {}laake...");
#endif
  [self writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
  NSLog(@"successfully wrote type {}laake for root element {}laake...");
#endif
  rc = xmlTextWriterEndElement(writer);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing end element {}laake. XML writer status: %i\n", rc];
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
    && xmlStrcmp(BAD_CAST "koodi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}koodi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}koodi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setKoodi: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "nimi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}nimi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}nimi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setNimi: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "valmistaja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setValmistaja: ((int*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "ehto", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}ehto of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}ehto of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setEhto: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "varoituksia", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}varoituksia of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}varoituksia of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setVaroituksia: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "erityispiirre", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}erityispiirre of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}erityispiirre of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setErityispiirre: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "erityisluvallinen", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setErityisluvallinen: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "laakemuoto", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}laakemuoto of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}laakemuoto of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setLaakemuoto: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "vahvuus", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}vahvuus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}vahvuus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setVahvuus: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "vahvuusarvo", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadFloatType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setVahvuusarvo: ((float*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "vahvuusyksikko", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}vahvuusyksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}vahvuusyksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setVahvuusyksikko: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "pakkaus", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}pakkaus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}pakkaus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setPakkaus: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "pakkauskerroin", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadFloatType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setPakkauskerroin: ((float*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "pakkausarvo", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadFloatType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setPakkausarvo: ((float*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "pakkausyksikko", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}pakkausyksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}pakkausyksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setPakkausyksikko: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "pakkaustyyppi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}pakkaustyyppi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}pakkaustyyppi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setPakkaustyyppi: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "laite", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}laite of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}laite of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setLaite: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "hinta", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadFloatType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setHinta: ((float*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "reseptiteksti", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}reseptiteksti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}reseptiteksti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setReseptiteksti: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "korvattavuus", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}korvattavuus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}korvattavuus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setKorvattavuus: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "substituutioryhma", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}substituutioryhma of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}substituutioryhma of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setSubstituutioryhma: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "alkupera", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setAlkupera: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
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
    && xmlStrcmp(BAD_CAST "halytys", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}halytys of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}halytys of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setHalytys: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "erityislupaVanhenee", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}erityislupaVanhenee of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif
    __child = [NSDate readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}erityislupaVanhenee of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif

    [self setErityislupaVanhenee: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "vero", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}vero of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}vero of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setVero: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "peruslaakevalikoima", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setPeruslaakevalikoima: ((unsigned short*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kelpoisuusaika", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}kelpoisuusaika of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}kelpoisuusaika of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setKelpoisuusaika: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "sailytys", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}sailytys of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}sailytys of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setSailytys: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "velvoitevarasto", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setVelvoitevarasto: ((int*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "varoitusraja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setVaroitusraja: ((int*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kappalevarasto", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setKappalevarasto: ((unsigned short*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tukkuhinta", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadFloatType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setTukkuhinta: ((float*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tarjoushinta", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadFloatType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setTarjoushinta: ((float*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "sopimustoimittaja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setSopimustoimittaja: ((int*) _child_accessor)];
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
    && xmlStrcmp(BAD_CAST "tilasto1", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tilasto1 of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tilasto1 of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setTilasto1: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tilasto2", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tilasto2 of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tilasto2 of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setTilasto2: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tilasto3", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tilasto3 of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tilasto3 of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setTilasto3: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "laaketietokantaversio", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}laaketietokantaversio of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}laaketietokantaversio of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setLaaketietokantaversio: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "koodityyppi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}koodityyppi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}koodityyppi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setKoodityyppi: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tukkunumero", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tukkunumero of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tukkunumero of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setTukkunumero: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "laji", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}laji of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}laji of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setLaji: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "myyntiluvanHaltija", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}myyntiluvanHaltija of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}myyntiluvanHaltija of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setMyyntiluvanHaltija: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "myyntilupanumero", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}myyntilupanumero of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}myyntilupanumero of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setMyyntilupanumero: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "rinnakkaisvalmiste", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setRinnakkaisvalmiste: ((unsigned short*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "laakemuototunnus", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}laakemuototunnus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}laakemuototunnus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setLaakemuototunnus: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "substituutiokoodi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}substituutiokoodi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}substituutiokoodi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setSubstituutiokoodi: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "laakevaihto", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setLaakevaihto: ((unsigned short*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "viitehinta", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadFloatType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setViitehinta: ((float*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "hintaputki", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadFloatType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setHintaputki: ((float*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "reseptivalmiste", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setReseptivalmiste: ((unsigned short*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "maaraamisehto", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}maaraamisehto of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}maaraamisehto of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setMaaraamisehto: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "huume", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setHuume: ((unsigned short*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "liikennevaara", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setLiikennevaara: ((unsigned short*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "lapsille", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setLapsille: ((unsigned short*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "annosjakelu", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setAnnosjakelu: ((unsigned short*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "jakouurre", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setJakouurre: ((unsigned short*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "hintamuutos", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}hintamuutos of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}hintamuutos of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setHintamuutos: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "suorakorvauskoodi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}suorakorvauskoodi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}suorakorvauskoodi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setSuorakorvauskoodi: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "pkv", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}pkv of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}pkv of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setPkv: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "valmistusohje", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}valmistusohje of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}valmistusohje of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setValmistusohje: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "markkinoija", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}markkinoija of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}markkinoija of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setMarkkinoija: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "veriplasmavalmiste", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setVeriplasmavalmiste: ((unsigned short*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "biologinenLaake", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setBiologinenLaake: ((unsigned short*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "lisaseurannassa", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setLisaseurannassa: ((unsigned short*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "lisatiedot", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}lisatiedot of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}lisatiedot of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setLisatiedot: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "atc", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}atc of type {}laakeAtc.");
#endif

     __child = [COREWEBNS0LaakeAtc readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}atc of type {}laakeAtc.");
#endif

    if ([self atc]) {
      [self setAtc: [[self atc] arrayByAddingObject: __child]];
    }
    else {
      [self setAtc: [NSArray arrayWithObject: __child]];
    }
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "annostusSoveltuvuus", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}annostusSoveltuvuus of type {}laakeAnnostusSoveltuvuus.");
#endif

     __child = [COREWEBNS0LaakeAnnostusSoveltuvuus readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}annostusSoveltuvuus of type {}laakeAnnostusSoveltuvuus.");
#endif

    if ([self annostusSoveltuvuus]) {
      [self setAnnostusSoveltuvuus: [[self annostusSoveltuvuus] arrayByAddingObject: __child]];
    }
    else {
      [self setAnnostusSoveltuvuus: [NSArray arrayWithObject: __child]];
    }
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "yhteisvaikutus", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}yhteisvaikutus of type {}laakeYhteisvaikutus.");
#endif

     __child = [COREWEBNS0LaakeYhteisvaikutus readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}yhteisvaikutus of type {}laakeYhteisvaikutus.");
#endif

    if ([self yhteisvaikutus]) {
      [self setYhteisvaikutus: [[self yhteisvaikutus] arrayByAddingObject: __child]];
    }
    else {
      [self setYhteisvaikutus: [NSArray arrayWithObject: __child]];
    }
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "vastaAihe", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}vastaAihe of type {}laakeVastaAihe.");
#endif

     __child = [COREWEBNS0LaakeVastaAihe readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}vastaAihe of type {}laakeVastaAihe.");
#endif

    if ([self vastaAihe]) {
      [self setVastaAihe: [[self vastaAihe] arrayByAddingObject: __child]];
    }
    else {
      [self setVastaAihe: [NSArray arrayWithObject: __child]];
    }
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "terapiaryhma", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}terapiaryhma of type {}laakeTerapiaryhma.");
#endif

     __child = [COREWEBNS0LaakeTerapiaryhma readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}terapiaryhma of type {}laakeTerapiaryhma.");
#endif

    if ([self terapiaryhma]) {
      [self setTerapiaryhma: [[self terapiaryhma] arrayByAddingObject: __child]];
    }
    else {
      [self setTerapiaryhma: [NSArray arrayWithObject: __child]];
    }
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "koostumus", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}koostumus of type {}laakeKoostumus.");
#endif

     __child = [COREWEBNS0LaakeKoostumus readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}koostumus of type {}laakeKoostumus.");
#endif

    if ([self koostumus]) {
      [self setKoostumus: [[self koostumus] arrayByAddingObject: __child]];
    }
    else {
      [self setKoostumus: [NSArray arrayWithObject: __child]];
    }
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tiivistelma", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tiivistelma of type {}laakeTiivistelma.");
#endif

     __child = [COREWEBNS0LaakeTiivistelma readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tiivistelma of type {}laakeTiivistelma.");
#endif

    if ([self tiivistelma]) {
      [self setTiivistelma: [[self tiivistelma] arrayByAddingObject: __child]];
    }
    else {
      [self setTiivistelma: [NSArray arrayWithObject: __child]];
    }
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "seloste", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}seloste of type {}laakeSeloste.");
#endif

     __child = [COREWEBNS0LaakeSeloste readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}seloste of type {}laakeSeloste.");
#endif

    if ([self seloste]) {
      [self setSeloste: [[self seloste] arrayByAddingObject: __child]];
    }
    else {
      [self setSeloste: [NSArray arrayWithObject: __child]];
    }
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "laakeaineet", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}laakeaineet of type {}laakeAine.");
#endif

     __child = [COREWEBNS0LaakeAine readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}laakeaineet of type {}laakeAine.");
#endif

    if ([self laakeaineet]) {
      [self setLaakeaineet: [[self laakeaineet] arrayByAddingObject: __child]];
    }
    else {
      [self setLaakeaineet: [NSArray arrayWithObject: __child]];
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

  if ([self koodi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "koodi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}koodi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}koodi...");
#endif
    [[self koodi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}koodi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}koodi."];
    }
  }
  if ([self nimi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "nimi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}nimi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}nimi...");
#endif
    [[self nimi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}nimi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}nimi."];
    }
  }
  if ([self valmistaja] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "valmistaja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}valmistaja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}valmistaja...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self valmistaja]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}valmistaja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}valmistaja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}valmistaja."];
    }
  }
  if ([self ehto]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "ehto", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}ehto."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}ehto...");
#endif
    [[self ehto] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}ehto...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}ehto."];
    }
  }
  if ([self varoituksia]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "varoituksia", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}varoituksia."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}varoituksia...");
#endif
    [[self varoituksia] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}varoituksia...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}varoituksia."];
    }
  }
  if ([self erityispiirre]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "erityispiirre", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}erityispiirre."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}erityispiirre...");
#endif
    [[self erityispiirre] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}erityispiirre...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}erityispiirre."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "erityisluvallinen", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}erityisluvallinen."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}erityisluvallinen...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_erityisluvallinen);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}erityisluvallinen...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}erityisluvallinen."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}erityisluvallinen."];
    }
  }
  if ([self laakemuoto]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakemuoto", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}laakemuoto."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}laakemuoto...");
#endif
    [[self laakemuoto] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}laakemuoto...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}laakemuoto."];
    }
  }
  if ([self vahvuus]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "vahvuus", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}vahvuus."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}vahvuus...");
#endif
    [[self vahvuus] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}vahvuus...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}vahvuus."];
    }
  }
  if ([self vahvuusarvo] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "vahvuusarvo", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}vahvuusarvo."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}vahvuusarvo...");
#endif
    status = xmlTextWriterWriteFloatType(writer, [self vahvuusarvo]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}vahvuusarvo...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}vahvuusarvo."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}vahvuusarvo."];
    }
  }
  if ([self vahvuusyksikko]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "vahvuusyksikko", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}vahvuusyksikko."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}vahvuusyksikko...");
#endif
    [[self vahvuusyksikko] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}vahvuusyksikko...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}vahvuusyksikko."];
    }
  }
  if ([self pakkaus]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "pakkaus", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}pakkaus."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}pakkaus...");
#endif
    [[self pakkaus] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}pakkaus...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}pakkaus."];
    }
  }
  if ([self pakkauskerroin] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "pakkauskerroin", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}pakkauskerroin."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}pakkauskerroin...");
#endif
    status = xmlTextWriterWriteFloatType(writer, [self pakkauskerroin]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}pakkauskerroin...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}pakkauskerroin."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}pakkauskerroin."];
    }
  }
  if ([self pakkausarvo] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "pakkausarvo", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}pakkausarvo."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}pakkausarvo...");
#endif
    status = xmlTextWriterWriteFloatType(writer, [self pakkausarvo]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}pakkausarvo...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}pakkausarvo."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}pakkausarvo."];
    }
  }
  if ([self pakkausyksikko]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "pakkausyksikko", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}pakkausyksikko."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}pakkausyksikko...");
#endif
    [[self pakkausyksikko] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}pakkausyksikko...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}pakkausyksikko."];
    }
  }
  if ([self pakkaustyyppi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "pakkaustyyppi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}pakkaustyyppi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}pakkaustyyppi...");
#endif
    [[self pakkaustyyppi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}pakkaustyyppi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}pakkaustyyppi."];
    }
  }
  if ([self laite]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laite", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}laite."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}laite...");
#endif
    [[self laite] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}laite...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}laite."];
    }
  }
  if ([self hinta] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "hinta", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}hinta."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}hinta...");
#endif
    status = xmlTextWriterWriteFloatType(writer, [self hinta]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}hinta...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}hinta."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}hinta."];
    }
  }
  if ([self reseptiteksti]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "reseptiteksti", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}reseptiteksti."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}reseptiteksti...");
#endif
    [[self reseptiteksti] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}reseptiteksti...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}reseptiteksti."];
    }
  }
  if ([self korvattavuus]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "korvattavuus", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}korvattavuus."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}korvattavuus...");
#endif
    [[self korvattavuus] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}korvattavuus...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}korvattavuus."];
    }
  }
  if ([self substituutioryhma]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "substituutioryhma", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}substituutioryhma."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}substituutioryhma...");
#endif
    [[self substituutioryhma] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}substituutioryhma...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}substituutioryhma."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "alkupera", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}alkupera."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}alkupera...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_alkupera);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}alkupera...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}alkupera."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}alkupera."];
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
  if ([self halytys]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "halytys", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}halytys."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}halytys...");
#endif
    [[self halytys] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}halytys...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}halytys."];
    }
  }
  if ([self erityislupaVanhenee]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "erityislupaVanhenee", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}erityislupaVanhenee."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}erityislupaVanhenee...");
#endif
    [[self erityislupaVanhenee] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}erityislupaVanhenee...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}erityislupaVanhenee."];
    }
  }
  if ([self vero]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "vero", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}vero."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}vero...");
#endif
    [[self vero] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}vero...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}vero."];
    }
  }
  if ([self peruslaakevalikoima] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "peruslaakevalikoima", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}peruslaakevalikoima."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}peruslaakevalikoima...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self peruslaakevalikoima]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}peruslaakevalikoima...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}peruslaakevalikoima."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}peruslaakevalikoima."];
    }
  }
  if ([self kelpoisuusaika]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kelpoisuusaika", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kelpoisuusaika."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kelpoisuusaika...");
#endif
    [[self kelpoisuusaika] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kelpoisuusaika...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kelpoisuusaika."];
    }
  }
  if ([self sailytys]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "sailytys", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}sailytys."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}sailytys...");
#endif
    [[self sailytys] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}sailytys...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}sailytys."];
    }
  }
  if ([self velvoitevarasto] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "velvoitevarasto", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}velvoitevarasto."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}velvoitevarasto...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self velvoitevarasto]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}velvoitevarasto...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}velvoitevarasto."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}velvoitevarasto."];
    }
  }
  if ([self varoitusraja] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "varoitusraja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}varoitusraja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}varoitusraja...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self varoitusraja]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}varoitusraja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}varoitusraja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}varoitusraja."];
    }
  }
  if ([self kappalevarasto] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kappalevarasto", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kappalevarasto."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kappalevarasto...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self kappalevarasto]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kappalevarasto...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}kappalevarasto."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kappalevarasto."];
    }
  }
  if ([self tukkuhinta] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tukkuhinta", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tukkuhinta."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tukkuhinta...");
#endif
    status = xmlTextWriterWriteFloatType(writer, [self tukkuhinta]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tukkuhinta...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}tukkuhinta."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tukkuhinta."];
    }
  }
  if ([self tarjoushinta] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tarjoushinta", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tarjoushinta."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tarjoushinta...");
#endif
    status = xmlTextWriterWriteFloatType(writer, [self tarjoushinta]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tarjoushinta...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}tarjoushinta."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tarjoushinta."];
    }
  }
  if ([self sopimustoimittaja] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "sopimustoimittaja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}sopimustoimittaja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}sopimustoimittaja...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self sopimustoimittaja]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}sopimustoimittaja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}sopimustoimittaja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}sopimustoimittaja."];
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
  if ([self tilasto1]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tilasto1", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tilasto1."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tilasto1...");
#endif
    [[self tilasto1] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tilasto1...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tilasto1."];
    }
  }
  if ([self tilasto2]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tilasto2", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tilasto2."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tilasto2...");
#endif
    [[self tilasto2] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tilasto2...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tilasto2."];
    }
  }
  if ([self tilasto3]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tilasto3", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tilasto3."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tilasto3...");
#endif
    [[self tilasto3] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tilasto3...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tilasto3."];
    }
  }
  if ([self laaketietokantaversio]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laaketietokantaversio", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}laaketietokantaversio."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}laaketietokantaversio...");
#endif
    [[self laaketietokantaversio] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}laaketietokantaversio...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}laaketietokantaversio."];
    }
  }
  if ([self koodityyppi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "koodityyppi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}koodityyppi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}koodityyppi...");
#endif
    [[self koodityyppi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}koodityyppi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}koodityyppi."];
    }
  }
  if ([self tukkunumero]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tukkunumero", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tukkunumero."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tukkunumero...");
#endif
    [[self tukkunumero] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tukkunumero...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tukkunumero."];
    }
  }
  if ([self laji]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laji", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}laji."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}laji...");
#endif
    [[self laji] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}laji...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}laji."];
    }
  }
  if ([self myyntiluvanHaltija]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "myyntiluvanHaltija", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}myyntiluvanHaltija."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}myyntiluvanHaltija...");
#endif
    [[self myyntiluvanHaltija] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}myyntiluvanHaltija...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}myyntiluvanHaltija."];
    }
  }
  if ([self myyntilupanumero]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "myyntilupanumero", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}myyntilupanumero."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}myyntilupanumero...");
#endif
    [[self myyntilupanumero] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}myyntilupanumero...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}myyntilupanumero."];
    }
  }
  if ([self rinnakkaisvalmiste] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "rinnakkaisvalmiste", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}rinnakkaisvalmiste."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}rinnakkaisvalmiste...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self rinnakkaisvalmiste]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}rinnakkaisvalmiste...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}rinnakkaisvalmiste."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}rinnakkaisvalmiste."];
    }
  }
  if ([self laakemuototunnus]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakemuototunnus", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}laakemuototunnus."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}laakemuototunnus...");
#endif
    [[self laakemuototunnus] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}laakemuototunnus...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}laakemuototunnus."];
    }
  }
  if ([self substituutiokoodi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "substituutiokoodi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}substituutiokoodi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}substituutiokoodi...");
#endif
    [[self substituutiokoodi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}substituutiokoodi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}substituutiokoodi."];
    }
  }
  if ([self laakevaihto] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakevaihto", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}laakevaihto."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}laakevaihto...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self laakevaihto]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}laakevaihto...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}laakevaihto."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}laakevaihto."];
    }
  }
  if ([self viitehinta] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "viitehinta", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}viitehinta."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}viitehinta...");
#endif
    status = xmlTextWriterWriteFloatType(writer, [self viitehinta]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}viitehinta...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}viitehinta."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}viitehinta."];
    }
  }
  if ([self hintaputki] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "hintaputki", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}hintaputki."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}hintaputki...");
#endif
    status = xmlTextWriterWriteFloatType(writer, [self hintaputki]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}hintaputki...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}hintaputki."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}hintaputki."];
    }
  }
  if ([self reseptivalmiste] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "reseptivalmiste", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}reseptivalmiste."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}reseptivalmiste...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self reseptivalmiste]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}reseptivalmiste...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}reseptivalmiste."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}reseptivalmiste."];
    }
  }
  if ([self maaraamisehto]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "maaraamisehto", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}maaraamisehto."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}maaraamisehto...");
#endif
    [[self maaraamisehto] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}maaraamisehto...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}maaraamisehto."];
    }
  }
  if ([self huume] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "huume", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}huume."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}huume...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self huume]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}huume...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}huume."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}huume."];
    }
  }
  if ([self liikennevaara] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "liikennevaara", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}liikennevaara."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}liikennevaara...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self liikennevaara]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}liikennevaara...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}liikennevaara."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}liikennevaara."];
    }
  }
  if ([self lapsille] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "lapsille", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}lapsille."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}lapsille...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self lapsille]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}lapsille...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}lapsille."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}lapsille."];
    }
  }
  if ([self annosjakelu] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "annosjakelu", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}annosjakelu."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}annosjakelu...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self annosjakelu]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}annosjakelu...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}annosjakelu."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}annosjakelu."];
    }
  }
  if ([self jakouurre] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "jakouurre", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}jakouurre."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}jakouurre...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self jakouurre]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}jakouurre...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}jakouurre."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}jakouurre."];
    }
  }
  if ([self hintamuutos]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "hintamuutos", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}hintamuutos."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}hintamuutos...");
#endif
    [[self hintamuutos] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}hintamuutos...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}hintamuutos."];
    }
  }
  if ([self suorakorvauskoodi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "suorakorvauskoodi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}suorakorvauskoodi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}suorakorvauskoodi...");
#endif
    [[self suorakorvauskoodi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}suorakorvauskoodi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}suorakorvauskoodi."];
    }
  }
  if ([self pkv]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "pkv", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}pkv."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}pkv...");
#endif
    [[self pkv] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}pkv...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}pkv."];
    }
  }
  if ([self valmistusohje]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "valmistusohje", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}valmistusohje."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}valmistusohje...");
#endif
    [[self valmistusohje] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}valmistusohje...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}valmistusohje."];
    }
  }
  if ([self markkinoija]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "markkinoija", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}markkinoija."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}markkinoija...");
#endif
    [[self markkinoija] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}markkinoija...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}markkinoija."];
    }
  }
  if ([self veriplasmavalmiste] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "veriplasmavalmiste", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}veriplasmavalmiste."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}veriplasmavalmiste...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self veriplasmavalmiste]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}veriplasmavalmiste...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}veriplasmavalmiste."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}veriplasmavalmiste."];
    }
  }
  if ([self biologinenLaake] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "biologinenLaake", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}biologinenLaake."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}biologinenLaake...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self biologinenLaake]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}biologinenLaake...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}biologinenLaake."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}biologinenLaake."];
    }
  }
  if ([self lisaseurannassa] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "lisaseurannassa", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}lisaseurannassa."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}lisaseurannassa...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self lisaseurannassa]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}lisaseurannassa...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}lisaseurannassa."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}lisaseurannassa."];
    }
  }
  if ([self lisatiedot]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "lisatiedot", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}lisatiedot."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}lisatiedot...");
#endif
    [[self lisatiedot] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}lisatiedot...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}lisatiedot."];
    }
  }
  if ([self atc]) {
    __enumerator = [[self atc] objectEnumerator];

    while ( (__item = [__enumerator nextObject]) ) {
      status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "atc", NULL);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing start child element {}atc."];
      }

#if DEBUG_ENUNCIATE > 1
      NSLog(@"writing element {}atc...");
#endif
      [__item writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
      NSLog(@"successfully wrote element {}atc...");
#endif

      status = xmlTextWriterEndElement(writer);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing end child element {}atc."];
      }
    } //end item iterator.
  }
  if ([self annostusSoveltuvuus]) {
    __enumerator = [[self annostusSoveltuvuus] objectEnumerator];

    while ( (__item = [__enumerator nextObject]) ) {
      status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "annostusSoveltuvuus", NULL);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing start child element {}annostusSoveltuvuus."];
      }

#if DEBUG_ENUNCIATE > 1
      NSLog(@"writing element {}annostusSoveltuvuus...");
#endif
      [__item writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
      NSLog(@"successfully wrote element {}annostusSoveltuvuus...");
#endif

      status = xmlTextWriterEndElement(writer);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing end child element {}annostusSoveltuvuus."];
      }
    } //end item iterator.
  }
  if ([self yhteisvaikutus]) {
    __enumerator = [[self yhteisvaikutus] objectEnumerator];

    while ( (__item = [__enumerator nextObject]) ) {
      status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "yhteisvaikutus", NULL);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing start child element {}yhteisvaikutus."];
      }

#if DEBUG_ENUNCIATE > 1
      NSLog(@"writing element {}yhteisvaikutus...");
#endif
      [__item writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
      NSLog(@"successfully wrote element {}yhteisvaikutus...");
#endif

      status = xmlTextWriterEndElement(writer);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing end child element {}yhteisvaikutus."];
      }
    } //end item iterator.
  }
  if ([self vastaAihe]) {
    __enumerator = [[self vastaAihe] objectEnumerator];

    while ( (__item = [__enumerator nextObject]) ) {
      status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "vastaAihe", NULL);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing start child element {}vastaAihe."];
      }

#if DEBUG_ENUNCIATE > 1
      NSLog(@"writing element {}vastaAihe...");
#endif
      [__item writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
      NSLog(@"successfully wrote element {}vastaAihe...");
#endif

      status = xmlTextWriterEndElement(writer);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing end child element {}vastaAihe."];
      }
    } //end item iterator.
  }
  if ([self terapiaryhma]) {
    __enumerator = [[self terapiaryhma] objectEnumerator];

    while ( (__item = [__enumerator nextObject]) ) {
      status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "terapiaryhma", NULL);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing start child element {}terapiaryhma."];
      }

#if DEBUG_ENUNCIATE > 1
      NSLog(@"writing element {}terapiaryhma...");
#endif
      [__item writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
      NSLog(@"successfully wrote element {}terapiaryhma...");
#endif

      status = xmlTextWriterEndElement(writer);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing end child element {}terapiaryhma."];
      }
    } //end item iterator.
  }
  if ([self koostumus]) {
    __enumerator = [[self koostumus] objectEnumerator];

    while ( (__item = [__enumerator nextObject]) ) {
      status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "koostumus", NULL);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing start child element {}koostumus."];
      }

#if DEBUG_ENUNCIATE > 1
      NSLog(@"writing element {}koostumus...");
#endif
      [__item writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
      NSLog(@"successfully wrote element {}koostumus...");
#endif

      status = xmlTextWriterEndElement(writer);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing end child element {}koostumus."];
      }
    } //end item iterator.
  }
  if ([self tiivistelma]) {
    __enumerator = [[self tiivistelma] objectEnumerator];

    while ( (__item = [__enumerator nextObject]) ) {
      status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tiivistelma", NULL);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing start child element {}tiivistelma."];
      }

#if DEBUG_ENUNCIATE > 1
      NSLog(@"writing element {}tiivistelma...");
#endif
      [__item writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
      NSLog(@"successfully wrote element {}tiivistelma...");
#endif

      status = xmlTextWriterEndElement(writer);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing end child element {}tiivistelma."];
      }
    } //end item iterator.
  }
  if ([self seloste]) {
    __enumerator = [[self seloste] objectEnumerator];

    while ( (__item = [__enumerator nextObject]) ) {
      status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "seloste", NULL);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing start child element {}seloste."];
      }

#if DEBUG_ENUNCIATE > 1
      NSLog(@"writing element {}seloste...");
#endif
      [__item writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
      NSLog(@"successfully wrote element {}seloste...");
#endif

      status = xmlTextWriterEndElement(writer);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing end child element {}seloste."];
      }
    } //end item iterator.
  }
  if ([self laakeaineet]) {
    __enumerator = [[self laakeaineet] objectEnumerator];

    while ( (__item = [__enumerator nextObject]) ) {
      status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakeaineet", NULL);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing start child element {}laakeaineet."];
      }

#if DEBUG_ENUNCIATE > 1
      NSLog(@"writing element {}laakeaineet...");
#endif
      [__item writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
      NSLog(@"successfully wrote element {}laakeaineet...");
#endif

      status = xmlTextWriterEndElement(writer);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing end child element {}laakeaineet."];
      }
    } //end item iterator.
  }
}
@end /* implementation COREWEBNS0Laake (JAXB) */

#endif /* DEF_COREWEBNS0Laake_M */
#ifndef DEF_COREWEBNS0LaakeAnnostus_M
#define DEF_COREWEBNS0LaakeAnnostus_M

/**
 *  DTO for LaakeAnnostus

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKE_ANNOSTUS.html

 */
@implementation COREWEBNS0LaakeAnnostus

/**
 * Returns the id of the dosage
 */
- (int) numero
{
  return _numero;
}

/**
 * Returns the id of the dosage
 */
- (void) setNumero: (int) newNumero
{
  _numero = newNumero;
}

/**
 * Returns the explanation of the dosage
 */
- (NSString *) selite
{
  return _selite;
}

/**
 * Returns the explanation of the dosage
 */
- (void) setSelite: (NSString *) newSelite
{
  [newSelite retain];
  [_selite release];
  _selite = newSelite;
}

/**
 * Returns the lower age limit
 */
- (int *) alaikaraja
{
  return _alaikaraja;
}

/**
 * Returns the lower age limit
 */
- (void) setAlaikaraja: (int *) newAlaikaraja
{
  if (_alaikaraja != NULL) {
    free(_alaikaraja);
  }
  _alaikaraja = newAlaikaraja;
}

/**
 * Returns the upper age limit
 */
- (int *) ylaikaraja
{
  return _ylaikaraja;
}

/**
 * Returns the upper age limit
 */
- (void) setYlaikaraja: (int *) newYlaikaraja
{
  if (_ylaikaraja != NULL) {
    free(_ylaikaraja);
  }
  _ylaikaraja = newYlaikaraja;
}

/**
 * Returns the lower weight limit
 */
- (int *) alapainoraja
{
  return _alapainoraja;
}

/**
 * Returns the lower weight limit
 */
- (void) setAlapainoraja: (int *) newAlapainoraja
{
  if (_alapainoraja != NULL) {
    free(_alapainoraja);
  }
  _alapainoraja = newAlapainoraja;
}

/**
 * Returns the upper weight limit
 */
- (int *) ylapainoraja
{
  return _ylapainoraja;
}

/**
 * Returns the upper weight limit
 */
- (void) setYlapainoraja: (int *) newYlapainoraja
{
  if (_ylapainoraja != NULL) {
    free(_ylapainoraja);
  }
  _ylapainoraja = newYlapainoraja;
}

/**
 * Returns the model for the prescription text
 */
- (NSString *) malli
{
  return _malli;
}

/**
 * Returns the model for the prescription text
 */
- (void) setMalli: (NSString *) newMalli
{
  [newMalli retain];
  [_malli release];
  _malli = newMalli;
}

/**
 * Returns the amount of decimals in prescription text
 */
- (short) desimaaleja
{
  return _desimaaleja;
}

/**
 * Returns the amount of decimals in prescription text
 */
- (void) setDesimaaleja: (short) newDesimaaleja
{
  _desimaaleja = newDesimaaleja;
}

/**
 * Returns 'K' if dosage should be multiplied by patients weight
 */
- (unsigned short) painokerroin
{
  return _painokerroin;
}

/**
 * Returns 'K' if dosage should be multiplied by patients weight
 */
- (void) setPainokerroin: (unsigned short) newPainokerroin
{
  _painokerroin = newPainokerroin;
}

/**
 * Returns the size of the single dosage
 */
- (float) annettavaMaara
{
  return _annettavaMaara;
}

/**
 * Returns the size of the single dosage
 */
- (void) setAnnettavaMaara: (float) newAnnettavaMaara
{
  _annettavaMaara = newAnnettavaMaara;
}

/**
 * Returns the maximum size of a single dosage
 */
- (float *) annettavaMaksimi
{
  return _annettavaMaksimi;
}

/**
 * Returns the maximum size of a single dosage
 */
- (void) setAnnettavaMaksimi: (float *) newAnnettavaMaksimi
{
  if (_annettavaMaksimi != NULL) {
    free(_annettavaMaksimi);
  }
  _annettavaMaksimi = newAnnettavaMaksimi;
}

/**
 * Returns the unit of the single dosage
 */
- (NSString *) annettavaYksikko
{
  return _annettavaYksikko;
}

/**
 * Returns the unit of the single dosage
 */
- (void) setAnnettavaYksikko: (NSString *) newAnnettavaYksikko
{
  [newAnnettavaYksikko retain];
  [_annettavaYksikko release];
  _annettavaYksikko = newAnnettavaYksikko;
}

/**
 * Returns the speed of dosing
 */
- (float *) antotahti
{
  return _antotahti;
}

/**
 * Returns the speed of dosing
 */
- (void) setAntotahti: (float *) newAntotahti
{
  if (_antotahti != NULL) {
    free(_antotahti);
  }
  _antotahti = newAntotahti;
}

/**
 * Returns the unit of the dosing speed
 */
- (NSString *) antotahtiYksikko
{
  return _antotahtiYksikko;
}

/**
 * Returns the unit of the dosing speed
 */
- (void) setAntotahtiYksikko: (NSString *) newAntotahtiYksikko
{
  [newAntotahtiYksikko retain];
  [_antotahtiYksikko release];
  _antotahtiYksikko = newAntotahtiYksikko;
}

/**
 * Returns the total duratio of the dosage
 */
- (NSString *) kokonaiskesto
{
  return _kokonaiskesto;
}

/**
 * Returns the total duratio of the dosage
 */
- (void) setKokonaiskesto: (NSString *) newKokonaiskesto
{
  [newKokonaiskesto retain];
  [_kokonaiskesto release];
  _kokonaiskesto = newKokonaiskesto;
}

/**
 * Returns the total amount of the dosage
 */
- (float *) kokonaismaara
{
  return _kokonaismaara;
}

/**
 * Returns the total amount of the dosage
 */
- (void) setKokonaismaara: (float *) newKokonaismaara
{
  if (_kokonaismaara != NULL) {
    free(_kokonaismaara);
  }
  _kokonaismaara = newKokonaismaara;
}

/**
 * Returns the unit of total amount of the dosage
 */
- (NSString *) kokonaismaaraYksikko
{
  return _kokonaismaaraYksikko;
}

/**
 * Returns the unit of total amount of the dosage
 */
- (void) setKokonaismaaraYksikko: (NSString *) newKokonaismaaraYksikko
{
  [newKokonaismaaraYksikko retain];
  [_kokonaismaaraYksikko release];
  _kokonaismaaraYksikko = newKokonaismaaraYksikko;
}

/**
 * Returns the confirmation for the dosage
 * -'K' if "sic!" should be added to the prescription text
 * -'E' otherwise
 */
- (unsigned short) varmistus
{
  return _varmistus;
}

/**
 * Returns the confirmation for the dosage
 * -'K' if "sic!" should be added to the prescription text
 * -'E' otherwise
 */
- (void) setVarmistus: (unsigned short) newVarmistus
{
  _varmistus = newVarmistus;
}

/**
 * Returns the use of the dosage
 */
- (NSString *) kayttotarkoitus
{
  return _kayttotarkoitus;
}

/**
 * Returns the use of the dosage
 */
- (void) setKayttotarkoitus: (NSString *) newKayttotarkoitus
{
  [newKayttotarkoitus retain];
  [_kayttotarkoitus release];
  _kayttotarkoitus = newKayttotarkoitus;
}

/**
 * Returns the instructions of the dosage
 */
- (NSString *) ohjeet
{
  return _ohjeet;
}

/**
 * Returns the instructions of the dosage
 */
- (void) setOhjeet: (NSString *) newOhjeet
{
  [newOhjeet retain];
  [_ohjeet release];
  _ohjeet = newOhjeet;
}

/**
 * Returns the iteration
 */
- (int *) iterointi
{
  return _iterointi;
}

/**
 * Returns the iteration
 */
- (void) setIterointi: (int *) newIterointi
{
  if (_iterointi != NULL) {
    free(_iterointi);
  }
  _iterointi = newIterointi;
}

/**
 * Returns the permanence of the dosage
 * -'K' pysyv�
 * -'E' otherwise
 */
- (unsigned short) pysyva
{
  return _pysyva;
}

/**
 * Returns the permanence of the dosage
 * -'K' pysyv�
 * -'E' otherwise
 */
- (void) setPysyva: (unsigned short) newPysyva
{
  _pysyva = newPysyva;
}

/**
 * Returns if the medicine is taken when needed
 * -'K' tarvittaessa
 * -'E' otherwise
 */
- (unsigned short) tarvittaessa
{
  return _tarvittaessa;
}

/**
 * Returns if the medicine is taken when needed
 * -'K' tarvittaessa
 * -'E' otherwise
 */
- (void) setTarvittaessa: (unsigned short) newTarvittaessa
{
  _tarvittaessa = newTarvittaessa;
}

/**
 * Returns 'K' if Kela wants user to explain the usage of medicine. 'E' otherwise.
 */
- (unsigned short) perusteluVaaditaan
{
  return _perusteluVaaditaan;
}

/**
 * Returns 'K' if Kela wants user to explain the usage of medicine. 'E' otherwise.
 */
- (void) setPerusteluVaaditaan: (unsigned short) newPerusteluVaaditaan
{
  _perusteluVaaditaan = newPerusteluVaaditaan;
}

/**
 * Returns "antoreitit" for the medicine
 */
- (NSString *) antoreitit
{
  return _antoreitit;
}

/**
 * Returns "antoreitit" for the medicine
 */
- (void) setAntoreitit: (NSString *) newAntoreitit
{
  [newAntoreitit retain];
  [_antoreitit release];
  _antoreitit = newAntoreitit;
}

/**
 * Returns "antopaikat" for the medicine
 */
- (NSString *) antopaikat
{
  return _antopaikat;
}

/**
 * Returns "antopaikat" for the medicine
 */
- (void) setAntopaikat: (NSString *) newAntopaikat
{
  [newAntopaikat retain];
  [_antopaikat release];
  _antopaikat = newAntopaikat;
}

/**
 * Returns "antov�lineet" for the medicine
 */
- (NSString *) antovalineet
{
  return _antovalineet;
}

/**
 * Returns "antov�lineet" for the medicine
 */
- (void) setAntovalineet: (NSString *) newAntovalineet
{
  [newAntovalineet retain];
  [_antovalineet release];
  _antovalineet = newAntovalineet;
}

/**
 * Returns "antotavat" for the medicine
 */
- (NSString *) antotavat
{
  return _antotavat;
}

/**
 * Returns "antotavat" for the medicine
 */
- (void) setAntotavat: (NSString *) newAntotavat
{
  [newAntotavat retain];
  [_antotavat release];
  _antotavat = newAntotavat;
}

/**
 * Returns the origin of the dosage
 * -'O' if current organization
 * -'A' or 'M' otherwise
 */
- (unsigned short) alkupera
{
  return _alkupera;
}

/**
 * Returns the origin of the dosage
 * -'O' if current organization
 * -'A' or 'M' otherwise
 */
- (void) setAlkupera: (unsigned short) newAlkupera
{
  _alkupera = newAlkupera;
}

/**
 * Returns the code of the dosage removal. 'E' - not removed, 'K' = removed
 */
- (unsigned short) poistettu
{
  return _poistettu;
}

/**
 * Returns the code of the dosage removal. 'E' - not removed, 'K' = removed
 */
- (void) setPoistettu: (unsigned short) newPoistettu
{
  _poistettu = newPoistettu;
}

/**
 * Returns the actual DB-change time of the dosage
 */
- (NSDate *) muutosaika
{
  return _muutosaika;
}

/**
 * Returns the actual DB-change time of the dosage
 */
- (void) setMuutosaika: (NSDate *) newMuutosaika
{
  [newMuutosaika retain];
  [_muutosaika release];
  _muutosaika = newMuutosaika;
}

/**
 * Returns the organization in which the change has been made
 */
- (int) muutospaikka
{
  return _muutospaikka;
}

/**
 * Returns the organization in which the change has been made
 */
- (void) setMuutospaikka: (int) newMuutospaikka
{
  _muutospaikka = newMuutospaikka;
}

/**
 * Returns whose dosage it is
 */
- (int *) kenen
{
  return _kenen;
}

/**
 * Returns whose dosage it is
 */
- (void) setKenen: (int *) newKenen
{
  if (_kenen != NULL) {
    free(_kenen);
  }
  _kenen = newKenen;
}

/**
 * Returns a summary of the dosage
 */
- (NSString *) lyhyesti
{
  return _lyhyesti;
}

/**
 * Returns a summary of the dosage
 */
- (void) setLyhyesti: (NSString *) newLyhyesti
{
  [newLyhyesti retain];
  [_lyhyesti release];
  _lyhyesti = newLyhyesti;
}

/**
 * Returns the repetition of the dosage
 */
- (NSString *) toisto
{
  return _toisto;
}

/**
 * Returns the repetition of the dosage
 */
- (void) setToisto: (NSString *) newToisto
{
  [newToisto retain];
  [_toisto release];
  _toisto = newToisto;
}

/**
 * Returns the repetition in plain language
 */
- (NSString *) toistokuvaus
{
  return _toistokuvaus;
}

/**
 * Returns the repetition in plain language
 */
- (void) setToistokuvaus: (NSString *) newToistokuvaus
{
  [newToistokuvaus retain];
  [_toistokuvaus release];
  _toistokuvaus = newToistokuvaus;
}

/**
 * Returns the time unit used
 */
- (NSString *) aikayksikko
{
  return _aikayksikko;
}

/**
 * Returns the time unit used
 */
- (void) setAikayksikko: (NSString *) newAikayksikko
{
  [newAikayksikko retain];
  [_aikayksikko release];
  _aikayksikko = newAikayksikko;
}

- (void) dealloc
{
  [self setSelite: nil];
  [self setAlaikaraja: NULL];
  [self setYlaikaraja: NULL];
  [self setAlapainoraja: NULL];
  [self setYlapainoraja: NULL];
  [self setMalli: nil];
  [self setAnnettavaMaksimi: NULL];
  [self setAnnettavaYksikko: nil];
  [self setAntotahti: NULL];
  [self setAntotahtiYksikko: nil];
  [self setKokonaiskesto: nil];
  [self setKokonaismaara: NULL];
  [self setKokonaismaaraYksikko: nil];
  [self setKayttotarkoitus: nil];
  [self setOhjeet: nil];
  [self setIterointi: NULL];
  [self setAntoreitit: nil];
  [self setAntopaikat: nil];
  [self setAntovalineet: nil];
  [self setAntotavat: nil];
  [self setMuutosaika: nil];
  [self setKenen: NULL];
  [self setLyhyesti: nil];
  [self setToisto: nil];
  [self setToistokuvaus: nil];
  [self setAikayksikko: nil];
  [super dealloc];
}

//documentation inherited.
+ (id<EnunciateXML>) readFromXML: (NSData *) xml
{
  COREWEBNS0LaakeAnnostus *_cOREWEBNS0LaakeAnnostus;
  xmlTextReaderPtr reader = xmlReaderForMemory([xml bytes], [xml length], NULL, NULL, 0);
  if (reader == NULL) {
    [NSException raise: @"XMLReadError"
                 format: @"Error instantiating an XML reader."];
    return nil;
  }

  _cOREWEBNS0LaakeAnnostus = (COREWEBNS0LaakeAnnostus *) [COREWEBNS0LaakeAnnostus readXMLElement: reader];
  xmlFreeTextReader(reader); //free the reader
  return _cOREWEBNS0LaakeAnnostus;
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
@end /* implementation COREWEBNS0LaakeAnnostus */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0LaakeAnnostus (JAXB) <JAXBReading, JAXBWriting, JAXBType, JAXBElement>

@end /*interface COREWEBNS0LaakeAnnostus (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0LaakeAnnostus (JAXB)

/**
 * Read an instance of COREWEBNS0LaakeAnnostus from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0LaakeAnnostus defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0LaakeAnnostus *_cOREWEBNS0LaakeAnnostus = [[COREWEBNS0LaakeAnnostus alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0LaakeAnnostus initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0LaakeAnnostus = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0LaakeAnnostus autorelease];
  return _cOREWEBNS0LaakeAnnostus;
}

/**
 * Initialize this instance of COREWEBNS0LaakeAnnostus according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0LaakeAnnostus to the writer.
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
 * Reads a COREWEBNS0LaakeAnnostus from an XML reader. The element to be read is
 * "laakeAnnostus".
 *
 * @param reader The XML reader.
 * @return The COREWEBNS0LaakeAnnostus.
 */
+ (id<JAXBElement>) readXMLElement: (xmlTextReaderPtr) reader {
  int status;
  COREWEBNS0LaakeAnnostus *_laakeAnnostus = nil;

  if (xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) {
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
    if (status < 1) {
      [NSException raise: @"XMLReadError"
                   format: @"Error advancing the reader to start element laakeAnnostus."];
    }
  }

  if (xmlStrcmp(BAD_CAST "laakeAnnostus", xmlTextReaderConstLocalName(reader)) == 0
      && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read root element {}laakeAnnostus.");
#endif
    _laakeAnnostus = (COREWEBNS0LaakeAnnostus *)[COREWEBNS0LaakeAnnostus readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Successfully read root element {}laakeAnnostus.");
#endif
  }
  else {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakeAnnostus. Expected element laakeAnnostus. Current element: {}%s", xmlTextReaderConstLocalName(reader)];
    }
    else {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakeAnnostus. Expected element laakeAnnostus. Current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader)];
    }
  }

  return _laakeAnnostus;
}

/**
 * Writes this COREWEBNS0LaakeAnnostus to XML under element name "laakeAnnostus".
 * The namespace declarations for the element will be written.
 *
 * @param writer The XML writer.
 * @param _laakeAnnostus The LaakeAnnostus to write.
 * @return 1 if successful, 0 otherwise.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer
{
  [self writeXMLElement: writer writeNamespaces: YES];
}

/**
 * Writes this COREWEBNS0LaakeAnnostus to an XML writer.
 *
 * @param writer The writer.
 * @param writeNs Whether to write the namespaces for this element to the xml writer.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer writeNamespaces: (BOOL) writeNs
{
  int rc = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakeAnnostus", NULL);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing start element {}laakeAnnostus. XML writer status: %i\n", rc];
  }

#if DEBUG_ENUNCIATE > 1
  NSLog(@"writing type {}laakeAnnostus for root element {}laakeAnnostus...");
#endif
  [self writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
  NSLog(@"successfully wrote type {}laakeAnnostus for root element {}laakeAnnostus...");
#endif
  rc = xmlTextWriterEndElement(writer);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing end element {}laakeAnnostus. XML writer status: %i\n", rc];
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
    && xmlStrcmp(BAD_CAST "numero", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setNumero: *((int*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "selite", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}selite of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}selite of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setSelite: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "alaikaraja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setAlaikaraja: ((int*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "ylaikaraja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setYlaikaraja: ((int*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "alapainoraja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setAlapainoraja: ((int*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "ylapainoraja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setYlapainoraja: ((int*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "malli", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}malli of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}malli of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setMalli: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "desimaaleja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setDesimaaleja: *((short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "painokerroin", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setPainokerroin: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "annettavaMaara", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadFloatType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setAnnettavaMaara: *((float*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "annettavaMaksimi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadFloatType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setAnnettavaMaksimi: ((float*) _child_accessor)];
    return YES;
  }
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
    && xmlStrcmp(BAD_CAST "antotahti", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadFloatType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setAntotahti: ((float*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "antotahtiYksikko", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}antotahtiYksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}antotahtiYksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setAntotahtiYksikko: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kokonaiskesto", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}kokonaiskesto of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}kokonaiskesto of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setKokonaiskesto: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kokonaismaara", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadFloatType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setKokonaismaara: ((float*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kokonaismaaraYksikko", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}kokonaismaaraYksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}kokonaismaaraYksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setKokonaismaaraYksikko: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "varmistus", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setVarmistus: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kayttotarkoitus", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}kayttotarkoitus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}kayttotarkoitus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setKayttotarkoitus: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "ohjeet", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}ohjeet of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}ohjeet of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setOhjeet: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "iterointi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setIterointi: ((int*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "pysyva", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setPysyva: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tarvittaessa", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setTarvittaessa: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "perusteluVaaditaan", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setPerusteluVaaditaan: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "antoreitit", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}antoreitit of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}antoreitit of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setAntoreitit: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "antopaikat", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}antopaikat of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}antopaikat of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setAntopaikat: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "antovalineet", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}antovalineet of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}antovalineet of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setAntovalineet: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "antotavat", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}antotavat of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}antotavat of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setAntotavat: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "alkupera", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setAlkupera: *((unsigned short*) _child_accessor)];
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

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setMuutospaikka: *((int*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kenen", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setKenen: ((int*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "lyhyesti", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}lyhyesti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}lyhyesti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setLyhyesti: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "toisto", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}toisto of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}toisto of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setToisto: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "toistokuvaus", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}toistokuvaus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}toistokuvaus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setToistokuvaus: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "aikayksikko", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}aikayksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}aikayksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setAikayksikko: __child];
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
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "numero", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}numero."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}numero...");
#endif
    status = xmlTextWriterWriteIntType(writer, &_numero);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}numero...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}numero."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}numero."];
    }
  }
  if ([self selite]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "selite", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}selite."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}selite...");
#endif
    [[self selite] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}selite...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}selite."];
    }
  }
  if ([self alaikaraja] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "alaikaraja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}alaikaraja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}alaikaraja...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self alaikaraja]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}alaikaraja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}alaikaraja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}alaikaraja."];
    }
  }
  if ([self ylaikaraja] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "ylaikaraja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}ylaikaraja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}ylaikaraja...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self ylaikaraja]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}ylaikaraja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}ylaikaraja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}ylaikaraja."];
    }
  }
  if ([self alapainoraja] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "alapainoraja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}alapainoraja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}alapainoraja...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self alapainoraja]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}alapainoraja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}alapainoraja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}alapainoraja."];
    }
  }
  if ([self ylapainoraja] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "ylapainoraja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}ylapainoraja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}ylapainoraja...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self ylapainoraja]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}ylapainoraja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}ylapainoraja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}ylapainoraja."];
    }
  }
  if ([self malli]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "malli", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}malli."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}malli...");
#endif
    [[self malli] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}malli...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}malli."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "desimaaleja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}desimaaleja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}desimaaleja...");
#endif
    status = xmlTextWriterWriteShortType(writer, &_desimaaleja);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}desimaaleja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}desimaaleja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}desimaaleja."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "painokerroin", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}painokerroin."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}painokerroin...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_painokerroin);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}painokerroin...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}painokerroin."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}painokerroin."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "annettavaMaara", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}annettavaMaara."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}annettavaMaara...");
#endif
    status = xmlTextWriterWriteFloatType(writer, &_annettavaMaara);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}annettavaMaara...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}annettavaMaara."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}annettavaMaara."];
    }
  }
  if ([self annettavaMaksimi] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "annettavaMaksimi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}annettavaMaksimi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}annettavaMaksimi...");
#endif
    status = xmlTextWriterWriteFloatType(writer, [self annettavaMaksimi]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}annettavaMaksimi...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}annettavaMaksimi."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}annettavaMaksimi."];
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
  if ([self antotahti] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "antotahti", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}antotahti."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}antotahti...");
#endif
    status = xmlTextWriterWriteFloatType(writer, [self antotahti]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}antotahti...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}antotahti."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}antotahti."];
    }
  }
  if ([self antotahtiYksikko]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "antotahtiYksikko", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}antotahtiYksikko."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}antotahtiYksikko...");
#endif
    [[self antotahtiYksikko] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}antotahtiYksikko...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}antotahtiYksikko."];
    }
  }
  if ([self kokonaiskesto]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kokonaiskesto", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kokonaiskesto."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kokonaiskesto...");
#endif
    [[self kokonaiskesto] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kokonaiskesto...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kokonaiskesto."];
    }
  }
  if ([self kokonaismaara] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kokonaismaara", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kokonaismaara."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kokonaismaara...");
#endif
    status = xmlTextWriterWriteFloatType(writer, [self kokonaismaara]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kokonaismaara...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}kokonaismaara."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kokonaismaara."];
    }
  }
  if ([self kokonaismaaraYksikko]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kokonaismaaraYksikko", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kokonaismaaraYksikko."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kokonaismaaraYksikko...");
#endif
    [[self kokonaismaaraYksikko] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kokonaismaaraYksikko...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kokonaismaaraYksikko."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "varmistus", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}varmistus."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}varmistus...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_varmistus);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}varmistus...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}varmistus."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}varmistus."];
    }
  }
  if ([self kayttotarkoitus]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kayttotarkoitus", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kayttotarkoitus."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kayttotarkoitus...");
#endif
    [[self kayttotarkoitus] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kayttotarkoitus...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kayttotarkoitus."];
    }
  }
  if ([self ohjeet]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "ohjeet", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}ohjeet."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}ohjeet...");
#endif
    [[self ohjeet] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}ohjeet...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}ohjeet."];
    }
  }
  if ([self iterointi] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "iterointi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}iterointi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}iterointi...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self iterointi]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}iterointi...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}iterointi."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}iterointi."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "pysyva", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}pysyva."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}pysyva...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_pysyva);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}pysyva...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}pysyva."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}pysyva."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tarvittaessa", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tarvittaessa."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tarvittaessa...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_tarvittaessa);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tarvittaessa...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}tarvittaessa."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tarvittaessa."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "perusteluVaaditaan", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}perusteluVaaditaan."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}perusteluVaaditaan...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_perusteluVaaditaan);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}perusteluVaaditaan...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}perusteluVaaditaan."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}perusteluVaaditaan."];
    }
  }
  if ([self antoreitit]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "antoreitit", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}antoreitit."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}antoreitit...");
#endif
    [[self antoreitit] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}antoreitit...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}antoreitit."];
    }
  }
  if ([self antopaikat]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "antopaikat", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}antopaikat."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}antopaikat...");
#endif
    [[self antopaikat] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}antopaikat...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}antopaikat."];
    }
  }
  if ([self antovalineet]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "antovalineet", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}antovalineet."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}antovalineet...");
#endif
    [[self antovalineet] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}antovalineet...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}antovalineet."];
    }
  }
  if ([self antotavat]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "antotavat", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}antotavat."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}antotavat...");
#endif
    [[self antotavat] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}antotavat...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}antotavat."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "alkupera", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}alkupera."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}alkupera...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_alkupera);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}alkupera...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}alkupera."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}alkupera."];
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
    status = xmlTextWriterWriteIntType(writer, &_muutospaikka);
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
  if ([self kenen] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kenen", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kenen."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kenen...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self kenen]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kenen...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}kenen."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kenen."];
    }
  }
  if ([self lyhyesti]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "lyhyesti", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}lyhyesti."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}lyhyesti...");
#endif
    [[self lyhyesti] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}lyhyesti...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}lyhyesti."];
    }
  }
  if ([self toisto]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "toisto", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}toisto."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}toisto...");
#endif
    [[self toisto] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}toisto...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}toisto."];
    }
  }
  if ([self toistokuvaus]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "toistokuvaus", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}toistokuvaus."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}toistokuvaus...");
#endif
    [[self toistokuvaus] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}toistokuvaus...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}toistokuvaus."];
    }
  }
  if ([self aikayksikko]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "aikayksikko", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}aikayksikko."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}aikayksikko...");
#endif
    [[self aikayksikko] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}aikayksikko...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}aikayksikko."];
    }
  }
}
@end /* implementation COREWEBNS0LaakeAnnostus (JAXB) */

#endif /* DEF_COREWEBNS0LaakeAnnostus_M */
#ifndef DEF_COREWEBNS0LaakeAtc_M
#define DEF_COREWEBNS0LaakeAtc_M

/**
 *  DTO for LaakeAtc, data base table LAAKE_ATC

 */
@implementation COREWEBNS0LaakeAtc

/**
 * (no documentation provided)
 */
- (NSString *) atc
{
  return _atc;
}

/**
 * (no documentation provided)
 */
- (void) setAtc: (NSString *) newAtc
{
  [newAtc retain];
  [_atc release];
  _atc = newAtc;
}

/**
 * (no documentation provided)
 */
- (unsigned short) alkupera
{
  return _alkupera;
}

/**
 * (no documentation provided)
 */
- (void) setAlkupera: (unsigned short) newAlkupera
{
  _alkupera = newAlkupera;
}

- (void) dealloc
{
  [self setAtc: nil];
  [super dealloc];
}

//documentation inherited.
+ (id<EnunciateXML>) readFromXML: (NSData *) xml
{
  COREWEBNS0LaakeAtc *_cOREWEBNS0LaakeAtc;
  xmlTextReaderPtr reader = xmlReaderForMemory([xml bytes], [xml length], NULL, NULL, 0);
  if (reader == NULL) {
    [NSException raise: @"XMLReadError"
                 format: @"Error instantiating an XML reader."];
    return nil;
  }

  _cOREWEBNS0LaakeAtc = (COREWEBNS0LaakeAtc *) [COREWEBNS0LaakeAtc readXMLElement: reader];
  xmlFreeTextReader(reader); //free the reader
  return _cOREWEBNS0LaakeAtc;
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
@end /* implementation COREWEBNS0LaakeAtc */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0LaakeAtc (JAXB) <JAXBReading, JAXBWriting, JAXBType, JAXBElement>

@end /*interface COREWEBNS0LaakeAtc (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0LaakeAtc (JAXB)

/**
 * Read an instance of COREWEBNS0LaakeAtc from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0LaakeAtc defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0LaakeAtc *_cOREWEBNS0LaakeAtc = [[COREWEBNS0LaakeAtc alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0LaakeAtc initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0LaakeAtc = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0LaakeAtc autorelease];
  return _cOREWEBNS0LaakeAtc;
}

/**
 * Initialize this instance of COREWEBNS0LaakeAtc according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0LaakeAtc to the writer.
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
 * Reads a COREWEBNS0LaakeAtc from an XML reader. The element to be read is
 * "laakeAtc".
 *
 * @param reader The XML reader.
 * @return The COREWEBNS0LaakeAtc.
 */
+ (id<JAXBElement>) readXMLElement: (xmlTextReaderPtr) reader {
  int status;
  COREWEBNS0LaakeAtc *_laakeAtc = nil;

  if (xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) {
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
    if (status < 1) {
      [NSException raise: @"XMLReadError"
                   format: @"Error advancing the reader to start element laakeAtc."];
    }
  }

  if (xmlStrcmp(BAD_CAST "laakeAtc", xmlTextReaderConstLocalName(reader)) == 0
      && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read root element {}laakeAtc.");
#endif
    _laakeAtc = (COREWEBNS0LaakeAtc *)[COREWEBNS0LaakeAtc readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Successfully read root element {}laakeAtc.");
#endif
  }
  else {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakeAtc. Expected element laakeAtc. Current element: {}%s", xmlTextReaderConstLocalName(reader)];
    }
    else {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakeAtc. Expected element laakeAtc. Current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader)];
    }
  }

  return _laakeAtc;
}

/**
 * Writes this COREWEBNS0LaakeAtc to XML under element name "laakeAtc".
 * The namespace declarations for the element will be written.
 *
 * @param writer The XML writer.
 * @param _laakeAtc The LaakeAtc to write.
 * @return 1 if successful, 0 otherwise.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer
{
  [self writeXMLElement: writer writeNamespaces: YES];
}

/**
 * Writes this COREWEBNS0LaakeAtc to an XML writer.
 *
 * @param writer The writer.
 * @param writeNs Whether to write the namespaces for this element to the xml writer.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer writeNamespaces: (BOOL) writeNs
{
  int rc = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakeAtc", NULL);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing start element {}laakeAtc. XML writer status: %i\n", rc];
  }

#if DEBUG_ENUNCIATE > 1
  NSLog(@"writing type {}laakeAtc for root element {}laakeAtc...");
#endif
  [self writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
  NSLog(@"successfully wrote type {}laakeAtc for root element {}laakeAtc...");
#endif
  rc = xmlTextWriterEndElement(writer);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing end element {}laakeAtc. XML writer status: %i\n", rc];
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
    && xmlStrcmp(BAD_CAST "atc", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}atc of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}atc of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setAtc: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "alkupera", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setAlkupera: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
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

  if ([self atc]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "atc", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}atc."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}atc...");
#endif
    [[self atc] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}atc...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}atc."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "alkupera", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}alkupera."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}alkupera...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_alkupera);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}alkupera...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}alkupera."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}alkupera."];
    }
  }
}
@end /* implementation COREWEBNS0LaakeAtc (JAXB) */

#endif /* DEF_COREWEBNS0LaakeAtc_M */
#ifndef DEF_COREWEBNS0LaakeSeloste_M
#define DEF_COREWEBNS0LaakeSeloste_M

/**
 *  DTO for LaakeSeloste

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKE_SELOSTE.html
 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKE_SELOSTE_SOVELTUVUUS.html

 */
@implementation COREWEBNS0LaakeSeloste

/**
 * Returns the id of the medication description
 */
- (int) seloste
{
  return _seloste;
}

/**
 * Returns the id of the medication description
 */
- (void) setSeloste: (int) newSeloste
{
  _seloste = newSeloste;
}

/**
 * Returns the name of the medication
 */
- (NSString *) nimi
{
  return _nimi;
}

/**
 * Returns the name of the medication
 */
- (void) setNimi: (NSString *) newNimi
{
  [newNimi retain];
  [_nimi release];
  _nimi = newNimi;
}

/**
 * Returns the preconditions for the medicine
 * (m��r�ys-/toimitusehto)
 */
- (NSString *) ehto
{
  return _ehto;
}

/**
 * Returns the preconditions for the medicine
 * (m��r�ys-/toimitusehto)
 */
- (void) setEhto: (NSString *) newEhto
{
  [newEhto retain];
  [_ehto release];
  _ehto = newEhto;
}

/**
 * Returns the manufacturer of the medicine
 */
- (NSString *) valmistaja
{
  return _valmistaja;
}

/**
 * Returns the manufacturer of the medicine
 */
- (void) setValmistaja: (NSString *) newValmistaja
{
  [newValmistaja retain];
  [_valmistaja release];
  _valmistaja = newValmistaja;
}

/**
 * Returns the code of the description removal. 'E' - not removed, 'K' = removed
 */
- (unsigned short) poistettu
{
  return _poistettu;
}

/**
 * Returns the code of the description removal. 'E' - not removed, 'K' = removed
 */
- (void) setPoistettu: (unsigned short) newPoistettu
{
  _poistettu = newPoistettu;
}

/**
 * Returns the actual DB-change time of the desctription
 */
- (NSDate *) muutosaika
{
  return _muutosaika;
}

/**
 * Returns the actual DB-change time of the desctription
 */
- (void) setMuutosaika: (NSDate *) newMuutosaika
{
  [newMuutosaika retain];
  [_muutosaika release];
  _muutosaika = newMuutosaika;
}

/**
 * Returns the organization in which the change has been made
 */
- (short) muutospaikka
{
  return _muutospaikka;
}

/**
 * Returns the organization in which the change has been made
 */
- (void) setMuutospaikka: (short) newMuutospaikka
{
  _muutospaikka = newMuutospaikka;
}

/**
 * Returns a list of description texts
 */
- (NSArray *) tekstit
{
  return _tekstit;
}

/**
 * Returns a list of description texts
 */
- (void) setTekstit: (NSArray *) newTekstit
{
  [newTekstit retain];
  [_tekstit release];
  _tekstit = newTekstit;
}

- (void) dealloc
{
  [self setNimi: nil];
  [self setEhto: nil];
  [self setValmistaja: nil];
  [self setMuutosaika: nil];
  [self setTekstit: nil];
  [super dealloc];
}

//documentation inherited.
+ (id<EnunciateXML>) readFromXML: (NSData *) xml
{
  COREWEBNS0LaakeSeloste *_cOREWEBNS0LaakeSeloste;
  xmlTextReaderPtr reader = xmlReaderForMemory([xml bytes], [xml length], NULL, NULL, 0);
  if (reader == NULL) {
    [NSException raise: @"XMLReadError"
                 format: @"Error instantiating an XML reader."];
    return nil;
  }

  _cOREWEBNS0LaakeSeloste = (COREWEBNS0LaakeSeloste *) [COREWEBNS0LaakeSeloste readXMLElement: reader];
  xmlFreeTextReader(reader); //free the reader
  return _cOREWEBNS0LaakeSeloste;
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
@end /* implementation COREWEBNS0LaakeSeloste */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0LaakeSeloste (JAXB) <JAXBReading, JAXBWriting, JAXBType, JAXBElement>

@end /*interface COREWEBNS0LaakeSeloste (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0LaakeSeloste (JAXB)

/**
 * Read an instance of COREWEBNS0LaakeSeloste from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0LaakeSeloste defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0LaakeSeloste *_cOREWEBNS0LaakeSeloste = [[COREWEBNS0LaakeSeloste alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0LaakeSeloste initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0LaakeSeloste = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0LaakeSeloste autorelease];
  return _cOREWEBNS0LaakeSeloste;
}

/**
 * Initialize this instance of COREWEBNS0LaakeSeloste according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0LaakeSeloste to the writer.
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
 * Reads a COREWEBNS0LaakeSeloste from an XML reader. The element to be read is
 * "laakeSeloste".
 *
 * @param reader The XML reader.
 * @return The COREWEBNS0LaakeSeloste.
 */
+ (id<JAXBElement>) readXMLElement: (xmlTextReaderPtr) reader {
  int status;
  COREWEBNS0LaakeSeloste *_laakeSeloste = nil;

  if (xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) {
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
    if (status < 1) {
      [NSException raise: @"XMLReadError"
                   format: @"Error advancing the reader to start element laakeSeloste."];
    }
  }

  if (xmlStrcmp(BAD_CAST "laakeSeloste", xmlTextReaderConstLocalName(reader)) == 0
      && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read root element {}laakeSeloste.");
#endif
    _laakeSeloste = (COREWEBNS0LaakeSeloste *)[COREWEBNS0LaakeSeloste readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Successfully read root element {}laakeSeloste.");
#endif
  }
  else {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakeSeloste. Expected element laakeSeloste. Current element: {}%s", xmlTextReaderConstLocalName(reader)];
    }
    else {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakeSeloste. Expected element laakeSeloste. Current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader)];
    }
  }

  return _laakeSeloste;
}

/**
 * Writes this COREWEBNS0LaakeSeloste to XML under element name "laakeSeloste".
 * The namespace declarations for the element will be written.
 *
 * @param writer The XML writer.
 * @param _laakeSeloste The LaakeSeloste to write.
 * @return 1 if successful, 0 otherwise.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer
{
  [self writeXMLElement: writer writeNamespaces: YES];
}

/**
 * Writes this COREWEBNS0LaakeSeloste to an XML writer.
 *
 * @param writer The writer.
 * @param writeNs Whether to write the namespaces for this element to the xml writer.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer writeNamespaces: (BOOL) writeNs
{
  int rc = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakeSeloste", NULL);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing start element {}laakeSeloste. XML writer status: %i\n", rc];
  }

#if DEBUG_ENUNCIATE > 1
  NSLog(@"writing type {}laakeSeloste for root element {}laakeSeloste...");
#endif
  [self writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
  NSLog(@"successfully wrote type {}laakeSeloste for root element {}laakeSeloste...");
#endif
  rc = xmlTextWriterEndElement(writer);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing end element {}laakeSeloste. XML writer status: %i\n", rc];
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
    && xmlStrcmp(BAD_CAST "seloste", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setSeloste: *((int*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "nimi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}nimi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}nimi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setNimi: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "ehto", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}ehto of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}ehto of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setEhto: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "valmistaja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}valmistaja of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}valmistaja of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setValmistaja: __child];
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
    && xmlStrcmp(BAD_CAST "tekstit", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tekstit of type {}laakeSelosteTeksti.");
#endif

     __child = [COREWEBNS0LaakeSelosteTeksti readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tekstit of type {}laakeSelosteTeksti.");
#endif

    if ([self tekstit]) {
      [self setTekstit: [[self tekstit] arrayByAddingObject: __child]];
    }
    else {
      [self setTekstit: [NSArray arrayWithObject: __child]];
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
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "seloste", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}seloste."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}seloste...");
#endif
    status = xmlTextWriterWriteIntType(writer, &_seloste);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}seloste...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}seloste."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}seloste."];
    }
  }
  if ([self nimi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "nimi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}nimi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}nimi...");
#endif
    [[self nimi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}nimi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}nimi."];
    }
  }
  if ([self ehto]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "ehto", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}ehto."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}ehto...");
#endif
    [[self ehto] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}ehto...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}ehto."];
    }
  }
  if ([self valmistaja]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "valmistaja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}valmistaja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}valmistaja...");
#endif
    [[self valmistaja] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}valmistaja...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}valmistaja."];
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
  if ([self tekstit]) {
    __enumerator = [[self tekstit] objectEnumerator];

    while ( (__item = [__enumerator nextObject]) ) {
      status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tekstit", NULL);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing start child element {}tekstit."];
      }

#if DEBUG_ENUNCIATE > 1
      NSLog(@"writing element {}tekstit...");
#endif
      [__item writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
      NSLog(@"successfully wrote element {}tekstit...");
#endif

      status = xmlTextWriterEndElement(writer);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing end child element {}tekstit."];
      }
    } //end item iterator.
  }
}
@end /* implementation COREWEBNS0LaakeSeloste (JAXB) */

#endif /* DEF_COREWEBNS0LaakeSeloste_M */
#ifndef DEF_COREWEBNS0LaakeTerapiaryhma_M
#define DEF_COREWEBNS0LaakeTerapiaryhma_M

/**
 *  DTO for LaakeTerapiaryhma

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKE_TERAPIARYHMA.html
 http://vc-buildsrv1/documents/mediatridocs/latest/tables/TERAPIARYHMA.html

 */
@implementation COREWEBNS0LaakeTerapiaryhma

/**
 * Returns the code of the therapy group
 */
- (NSString *) terapiaryhma
{
  return _terapiaryhma;
}

/**
 * Returns the code of the therapy group
 */
- (void) setTerapiaryhma: (NSString *) newTerapiaryhma
{
  [newTerapiaryhma retain];
  [_terapiaryhma release];
  _terapiaryhma = newTerapiaryhma;
}

/**
 * Returns the origin of the therapy group
 * -'O' if therapy group is linked in the current organization
 * -'A' or 'M' otherwise
 */
- (unsigned short) alkupera
{
  return _alkupera;
}

/**
 * Returns the origin of the therapy group
 * -'O' if therapy group is linked in the current organization
 * -'A' or 'M' otherwise
 */
- (void) setAlkupera: (unsigned short) newAlkupera
{
  _alkupera = newAlkupera;
}

/**
 * Returns the name of the therapy group
 */
- (NSString *) nimi
{
  return _nimi;
}

/**
 * Returns the name of the therapy group
 */
- (void) setNimi: (NSString *) newNimi
{
  [newNimi retain];
  [_nimi release];
  _nimi = newNimi;
}

/**
 * Returns the level of the therapy group
 * -1 is the highest level, lower levels are >1
 */
- (int *) taso
{
  return _taso;
}

/**
 * Returns the level of the therapy group
 * -1 is the highest level, lower levels are >1
 */
- (void) setTaso: (int *) newTaso
{
  if (_taso != NULL) {
    free(_taso);
  }
  _taso = newTaso;
}

/**
 * Returns the code of the therapy group removal. 'E' - not removed, 'K' = removed
 */
- (unsigned short) poistettu
{
  return _poistettu;
}

/**
 * Returns the code of the therapy group removal. 'E' - not removed, 'K' = removed
 */
- (void) setPoistettu: (unsigned short) newPoistettu
{
  _poistettu = newPoistettu;
}

- (void) dealloc
{
  [self setTerapiaryhma: nil];
  [self setNimi: nil];
  [self setTaso: NULL];
  [super dealloc];
}

//documentation inherited.
+ (id<EnunciateXML>) readFromXML: (NSData *) xml
{
  COREWEBNS0LaakeTerapiaryhma *_cOREWEBNS0LaakeTerapiaryhma;
  xmlTextReaderPtr reader = xmlReaderForMemory([xml bytes], [xml length], NULL, NULL, 0);
  if (reader == NULL) {
    [NSException raise: @"XMLReadError"
                 format: @"Error instantiating an XML reader."];
    return nil;
  }

  _cOREWEBNS0LaakeTerapiaryhma = (COREWEBNS0LaakeTerapiaryhma *) [COREWEBNS0LaakeTerapiaryhma readXMLElement: reader];
  xmlFreeTextReader(reader); //free the reader
  return _cOREWEBNS0LaakeTerapiaryhma;
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
@end /* implementation COREWEBNS0LaakeTerapiaryhma */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0LaakeTerapiaryhma (JAXB) <JAXBReading, JAXBWriting, JAXBType, JAXBElement>

@end /*interface COREWEBNS0LaakeTerapiaryhma (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0LaakeTerapiaryhma (JAXB)

/**
 * Read an instance of COREWEBNS0LaakeTerapiaryhma from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0LaakeTerapiaryhma defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0LaakeTerapiaryhma *_cOREWEBNS0LaakeTerapiaryhma = [[COREWEBNS0LaakeTerapiaryhma alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0LaakeTerapiaryhma initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0LaakeTerapiaryhma = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0LaakeTerapiaryhma autorelease];
  return _cOREWEBNS0LaakeTerapiaryhma;
}

/**
 * Initialize this instance of COREWEBNS0LaakeTerapiaryhma according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0LaakeTerapiaryhma to the writer.
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
 * Reads a COREWEBNS0LaakeTerapiaryhma from an XML reader. The element to be read is
 * "laakeTerapiaryhma".
 *
 * @param reader The XML reader.
 * @return The COREWEBNS0LaakeTerapiaryhma.
 */
+ (id<JAXBElement>) readXMLElement: (xmlTextReaderPtr) reader {
  int status;
  COREWEBNS0LaakeTerapiaryhma *_laakeTerapiaryhma = nil;

  if (xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) {
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
    if (status < 1) {
      [NSException raise: @"XMLReadError"
                   format: @"Error advancing the reader to start element laakeTerapiaryhma."];
    }
  }

  if (xmlStrcmp(BAD_CAST "laakeTerapiaryhma", xmlTextReaderConstLocalName(reader)) == 0
      && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read root element {}laakeTerapiaryhma.");
#endif
    _laakeTerapiaryhma = (COREWEBNS0LaakeTerapiaryhma *)[COREWEBNS0LaakeTerapiaryhma readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Successfully read root element {}laakeTerapiaryhma.");
#endif
  }
  else {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakeTerapiaryhma. Expected element laakeTerapiaryhma. Current element: {}%s", xmlTextReaderConstLocalName(reader)];
    }
    else {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakeTerapiaryhma. Expected element laakeTerapiaryhma. Current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader)];
    }
  }

  return _laakeTerapiaryhma;
}

/**
 * Writes this COREWEBNS0LaakeTerapiaryhma to XML under element name "laakeTerapiaryhma".
 * The namespace declarations for the element will be written.
 *
 * @param writer The XML writer.
 * @param _laakeTerapiaryhma The LaakeTerapiaryhma to write.
 * @return 1 if successful, 0 otherwise.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer
{
  [self writeXMLElement: writer writeNamespaces: YES];
}

/**
 * Writes this COREWEBNS0LaakeTerapiaryhma to an XML writer.
 *
 * @param writer The writer.
 * @param writeNs Whether to write the namespaces for this element to the xml writer.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer writeNamespaces: (BOOL) writeNs
{
  int rc = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakeTerapiaryhma", NULL);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing start element {}laakeTerapiaryhma. XML writer status: %i\n", rc];
  }

#if DEBUG_ENUNCIATE > 1
  NSLog(@"writing type {}laakeTerapiaryhma for root element {}laakeTerapiaryhma...");
#endif
  [self writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
  NSLog(@"successfully wrote type {}laakeTerapiaryhma for root element {}laakeTerapiaryhma...");
#endif
  rc = xmlTextWriterEndElement(writer);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing end element {}laakeTerapiaryhma. XML writer status: %i\n", rc];
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
    && xmlStrcmp(BAD_CAST "terapiaryhma", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}terapiaryhma of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}terapiaryhma of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setTerapiaryhma: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "alkupera", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setAlkupera: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "nimi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}nimi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}nimi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setNimi: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "taso", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setTaso: ((int*) _child_accessor)];
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

  if ([self terapiaryhma]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "terapiaryhma", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}terapiaryhma."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}terapiaryhma...");
#endif
    [[self terapiaryhma] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}terapiaryhma...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}terapiaryhma."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "alkupera", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}alkupera."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}alkupera...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_alkupera);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}alkupera...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}alkupera."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}alkupera."];
    }
  }
  if ([self nimi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "nimi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}nimi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}nimi...");
#endif
    [[self nimi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}nimi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}nimi."];
    }
  }
  if ([self taso] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "taso", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}taso."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}taso...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self taso]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}taso...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}taso."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}taso."];
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
}
@end /* implementation COREWEBNS0LaakeTerapiaryhma (JAXB) */

#endif /* DEF_COREWEBNS0LaakeTerapiaryhma_M */
#ifndef DEF_COREWEBNS0LaakeTiivistelmaTeksti_M
#define DEF_COREWEBNS0LaakeTiivistelmaTeksti_M

/**
 *  DTO for LaakeTiivistelmaTeksti

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKE_TIIVISTELMA_TEKSTI.html

 */
@implementation COREWEBNS0LaakeTiivistelmaTeksti

/**
 * Returns the part number of the summary text, can be used to order summaries
 */
- (int) osa
{
  return _osa;
}

/**
 * Returns the part number of the summary text, can be used to order summaries
 */
- (void) setOsa: (int) newOsa
{
  _osa = newOsa;
}

/**
 * Returns the header of the
 */
- (int) otsikko
{
  return _otsikko;
}

/**
 * Returns the header of the
 */
- (void) setOtsikko: (int) newOtsikko
{
  _otsikko = newOtsikko;
}

/**
 * Returns the summary text
 */
- (NSString *) teksti
{
  return _teksti;
}

/**
 * Returns the summary text
 */
- (void) setTeksti: (NSString *) newTeksti
{
  [newTeksti retain];
  [_teksti release];
  _teksti = newTeksti;
}

- (void) dealloc
{
  [self setTeksti: nil];
  [super dealloc];
}

//documentation inherited.
+ (id<EnunciateXML>) readFromXML: (NSData *) xml
{
  COREWEBNS0LaakeTiivistelmaTeksti *_cOREWEBNS0LaakeTiivistelmaTeksti;
  xmlTextReaderPtr reader = xmlReaderForMemory([xml bytes], [xml length], NULL, NULL, 0);
  if (reader == NULL) {
    [NSException raise: @"XMLReadError"
                 format: @"Error instantiating an XML reader."];
    return nil;
  }

  _cOREWEBNS0LaakeTiivistelmaTeksti = (COREWEBNS0LaakeTiivistelmaTeksti *) [COREWEBNS0LaakeTiivistelmaTeksti readXMLElement: reader];
  xmlFreeTextReader(reader); //free the reader
  return _cOREWEBNS0LaakeTiivistelmaTeksti;
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
@end /* implementation COREWEBNS0LaakeTiivistelmaTeksti */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0LaakeTiivistelmaTeksti (JAXB) <JAXBReading, JAXBWriting, JAXBType, JAXBElement>

@end /*interface COREWEBNS0LaakeTiivistelmaTeksti (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0LaakeTiivistelmaTeksti (JAXB)

/**
 * Read an instance of COREWEBNS0LaakeTiivistelmaTeksti from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0LaakeTiivistelmaTeksti defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0LaakeTiivistelmaTeksti *_cOREWEBNS0LaakeTiivistelmaTeksti = [[COREWEBNS0LaakeTiivistelmaTeksti alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0LaakeTiivistelmaTeksti initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0LaakeTiivistelmaTeksti = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0LaakeTiivistelmaTeksti autorelease];
  return _cOREWEBNS0LaakeTiivistelmaTeksti;
}

/**
 * Initialize this instance of COREWEBNS0LaakeTiivistelmaTeksti according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0LaakeTiivistelmaTeksti to the writer.
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
 * Reads a COREWEBNS0LaakeTiivistelmaTeksti from an XML reader. The element to be read is
 * "laakeTiivistelmaTeksti".
 *
 * @param reader The XML reader.
 * @return The COREWEBNS0LaakeTiivistelmaTeksti.
 */
+ (id<JAXBElement>) readXMLElement: (xmlTextReaderPtr) reader {
  int status;
  COREWEBNS0LaakeTiivistelmaTeksti *_laakeTiivistelmaTeksti = nil;

  if (xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) {
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
    if (status < 1) {
      [NSException raise: @"XMLReadError"
                   format: @"Error advancing the reader to start element laakeTiivistelmaTeksti."];
    }
  }

  if (xmlStrcmp(BAD_CAST "laakeTiivistelmaTeksti", xmlTextReaderConstLocalName(reader)) == 0
      && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read root element {}laakeTiivistelmaTeksti.");
#endif
    _laakeTiivistelmaTeksti = (COREWEBNS0LaakeTiivistelmaTeksti *)[COREWEBNS0LaakeTiivistelmaTeksti readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Successfully read root element {}laakeTiivistelmaTeksti.");
#endif
  }
  else {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakeTiivistelmaTeksti. Expected element laakeTiivistelmaTeksti. Current element: {}%s", xmlTextReaderConstLocalName(reader)];
    }
    else {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakeTiivistelmaTeksti. Expected element laakeTiivistelmaTeksti. Current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader)];
    }
  }

  return _laakeTiivistelmaTeksti;
}

/**
 * Writes this COREWEBNS0LaakeTiivistelmaTeksti to XML under element name "laakeTiivistelmaTeksti".
 * The namespace declarations for the element will be written.
 *
 * @param writer The XML writer.
 * @param _laakeTiivistelmaTeksti The LaakeTiivistelmaTeksti to write.
 * @return 1 if successful, 0 otherwise.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer
{
  [self writeXMLElement: writer writeNamespaces: YES];
}

/**
 * Writes this COREWEBNS0LaakeTiivistelmaTeksti to an XML writer.
 *
 * @param writer The writer.
 * @param writeNs Whether to write the namespaces for this element to the xml writer.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer writeNamespaces: (BOOL) writeNs
{
  int rc = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakeTiivistelmaTeksti", NULL);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing start element {}laakeTiivistelmaTeksti. XML writer status: %i\n", rc];
  }

#if DEBUG_ENUNCIATE > 1
  NSLog(@"writing type {}laakeTiivistelmaTeksti for root element {}laakeTiivistelmaTeksti...");
#endif
  [self writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
  NSLog(@"successfully wrote type {}laakeTiivistelmaTeksti for root element {}laakeTiivistelmaTeksti...");
#endif
  rc = xmlTextWriterEndElement(writer);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing end element {}laakeTiivistelmaTeksti. XML writer status: %i\n", rc];
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
    && xmlStrcmp(BAD_CAST "otsikko", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setOtsikko: *((int*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "teksti", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}teksti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}teksti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setTeksti: __child];
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
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "otsikko", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}otsikko."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}otsikko...");
#endif
    status = xmlTextWriterWriteIntType(writer, &_otsikko);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}otsikko...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}otsikko."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}otsikko."];
    }
  }
  if ([self teksti]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "teksti", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}teksti."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}teksti...");
#endif
    [[self teksti] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}teksti...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}teksti."];
    }
  }
}
@end /* implementation COREWEBNS0LaakeTiivistelmaTeksti (JAXB) */

#endif /* DEF_COREWEBNS0LaakeTiivistelmaTeksti_M */
#ifndef DEF_COREWEBNS0LaakitysKayttoaihe_M
#define DEF_COREWEBNS0LaakitysKayttoaihe_M

/**
 *  DTO for LAAKITYS_KAYTTOAIHE and KAYTTOAIHE database tables

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKITYS_KAYTTOAIHE.html
 http://vc-buildsrv1/documents/mediatridocs/latest/tables/KAYTTOAIHE.html

 */
@implementation COREWEBNS0LaakitysKayttoaihe

/**
 * Returns the row number, which arranges the LaakitysKayttoaihe entities in order of importance
 */
- (int) rivi
{
  return _rivi;
}

/**
 * Returns the row number, which arranges the LaakitysKayttoaihe entities in order of importance
 */
- (void) setRivi: (int) newRivi
{
  _rivi = newRivi;
}

/**
 * Returns the unique id of Kayttoaihe
 */
- (int) numero
{
  return _numero;
}

/**
 * Returns the unique id of Kayttoaihe
 */
- (void) setNumero: (int) newNumero
{
  _numero = newNumero;
}

/**
 * Returns the name of the Kayttoaihe in plain languate
 */
- (NSString *) selite
{
  return _selite;
}

/**
 * Returns the name of the Kayttoaihe in plain languate
 */
- (void) setSelite: (NSString *) newSelite
{
  [newSelite retain];
  [_selite release];
  _selite = newSelite;
}

/**
 * Returns the name of the Kayttoaihe which is printed to the prescription
 */
- (NSString *) reseptiteksti
{
  return _reseptiteksti;
}

/**
 * Returns the name of the Kayttoaihe which is printed to the prescription
 */
- (void) setReseptiteksti: (NSString *) newReseptiteksti
{
  [newReseptiteksti retain];
  [_reseptiteksti release];
  _reseptiteksti = newReseptiteksti;
}

/**
 * Returns the origin of the Kayttoaihe
 * -"O" if added by organization itself
 * -"A" or "M" otherwise
 */
- (unsigned short) alkupera
{
  return _alkupera;
}

/**
 * Returns the origin of the Kayttoaihe
 * -"O" if added by organization itself
 * -"A" or "M" otherwise
 */
- (void) setAlkupera: (unsigned short) newAlkupera
{
  _alkupera = newAlkupera;
}

/**
 * Returns the type of the Kayttoaihe
 * -"C" if Kayttoaihe
 * -"G" if group
 * -"D" if deleted
 */
- (unsigned short) tyyppi
{
  return _tyyppi;
}

/**
 * Returns the type of the Kayttoaihe
 * -"C" if Kayttoaihe
 * -"G" if group
 * -"D" if deleted
 */
- (void) setTyyppi: (unsigned short) newTyyppi
{
  _tyyppi = newTyyppi;
}

/**
 * Returns the code of the kayttoaihe removal. 'E' - not removed, 'K' = removed
 */
- (unsigned short) poistettu
{
  return _poistettu;
}

/**
 * Returns the code of the kayttoaihe removal. 'E' - not removed, 'K' = removed
 */
- (void) setPoistettu: (unsigned short) newPoistettu
{
  _poistettu = newPoistettu;
}

/**
 * Returns the actual DB-change time of the Kayttoaihe
 */
- (NSDate *) muutosaika
{
  return _muutosaika;
}

/**
 * Returns the actual DB-change time of the Kayttoaihe
 */
- (void) setMuutosaika: (NSDate *) newMuutosaika
{
  [newMuutosaika retain];
  [_muutosaika release];
  _muutosaika = newMuutosaika;
}

/**
 * Returns the organization in which the change has been made
 */
- (short) muutospaikka
{
  return _muutospaikka;
}

/**
 * Returns the organization in which the change has been made
 */
- (void) setMuutospaikka: (short) newMuutospaikka
{
  _muutospaikka = newMuutospaikka;
}

- (void) dealloc
{
  [self setSelite: nil];
  [self setReseptiteksti: nil];
  [self setMuutosaika: nil];
  [super dealloc];
}

//documentation inherited.
+ (id<EnunciateXML>) readFromXML: (NSData *) xml
{
  COREWEBNS0LaakitysKayttoaihe *_cOREWEBNS0LaakitysKayttoaihe;
  xmlTextReaderPtr reader = xmlReaderForMemory([xml bytes], [xml length], NULL, NULL, 0);
  if (reader == NULL) {
    [NSException raise: @"XMLReadError"
                 format: @"Error instantiating an XML reader."];
    return nil;
  }

  _cOREWEBNS0LaakitysKayttoaihe = (COREWEBNS0LaakitysKayttoaihe *) [COREWEBNS0LaakitysKayttoaihe readXMLElement: reader];
  xmlFreeTextReader(reader); //free the reader
  return _cOREWEBNS0LaakitysKayttoaihe;
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
@end /* implementation COREWEBNS0LaakitysKayttoaihe */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0LaakitysKayttoaihe (JAXB) <JAXBReading, JAXBWriting, JAXBType, JAXBElement>

@end /*interface COREWEBNS0LaakitysKayttoaihe (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0LaakitysKayttoaihe (JAXB)

/**
 * Read an instance of COREWEBNS0LaakitysKayttoaihe from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0LaakitysKayttoaihe defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0LaakitysKayttoaihe *_cOREWEBNS0LaakitysKayttoaihe = [[COREWEBNS0LaakitysKayttoaihe alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0LaakitysKayttoaihe initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0LaakitysKayttoaihe = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0LaakitysKayttoaihe autorelease];
  return _cOREWEBNS0LaakitysKayttoaihe;
}

/**
 * Initialize this instance of COREWEBNS0LaakitysKayttoaihe according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0LaakitysKayttoaihe to the writer.
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
 * Reads a COREWEBNS0LaakitysKayttoaihe from an XML reader. The element to be read is
 * "laakitysKayttoaihe".
 *
 * @param reader The XML reader.
 * @return The COREWEBNS0LaakitysKayttoaihe.
 */
+ (id<JAXBElement>) readXMLElement: (xmlTextReaderPtr) reader {
  int status;
  COREWEBNS0LaakitysKayttoaihe *_laakitysKayttoaihe = nil;

  if (xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) {
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
    if (status < 1) {
      [NSException raise: @"XMLReadError"
                   format: @"Error advancing the reader to start element laakitysKayttoaihe."];
    }
  }

  if (xmlStrcmp(BAD_CAST "laakitysKayttoaihe", xmlTextReaderConstLocalName(reader)) == 0
      && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read root element {}laakitysKayttoaihe.");
#endif
    _laakitysKayttoaihe = (COREWEBNS0LaakitysKayttoaihe *)[COREWEBNS0LaakitysKayttoaihe readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Successfully read root element {}laakitysKayttoaihe.");
#endif
  }
  else {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakitysKayttoaihe. Expected element laakitysKayttoaihe. Current element: {}%s", xmlTextReaderConstLocalName(reader)];
    }
    else {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakitysKayttoaihe. Expected element laakitysKayttoaihe. Current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader)];
    }
  }

  return _laakitysKayttoaihe;
}

/**
 * Writes this COREWEBNS0LaakitysKayttoaihe to XML under element name "laakitysKayttoaihe".
 * The namespace declarations for the element will be written.
 *
 * @param writer The XML writer.
 * @param _laakitysKayttoaihe The LaakitysKayttoaihe to write.
 * @return 1 if successful, 0 otherwise.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer
{
  [self writeXMLElement: writer writeNamespaces: YES];
}

/**
 * Writes this COREWEBNS0LaakitysKayttoaihe to an XML writer.
 *
 * @param writer The writer.
 * @param writeNs Whether to write the namespaces for this element to the xml writer.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer writeNamespaces: (BOOL) writeNs
{
  int rc = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakitysKayttoaihe", NULL);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing start element {}laakitysKayttoaihe. XML writer status: %i\n", rc];
  }

#if DEBUG_ENUNCIATE > 1
  NSLog(@"writing type {}laakitysKayttoaihe for root element {}laakitysKayttoaihe...");
#endif
  [self writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
  NSLog(@"successfully wrote type {}laakitysKayttoaihe for root element {}laakitysKayttoaihe...");
#endif
  rc = xmlTextWriterEndElement(writer);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing end element {}laakitysKayttoaihe. XML writer status: %i\n", rc];
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
    && xmlStrcmp(BAD_CAST "numero", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setNumero: *((int*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "selite", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}selite of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}selite of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setSelite: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "reseptiteksti", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}reseptiteksti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}reseptiteksti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setReseptiteksti: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "alkupera", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setAlkupera: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tyyppi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setTyyppi: *((unsigned short*) _child_accessor)];
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
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "numero", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}numero."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}numero...");
#endif
    status = xmlTextWriterWriteIntType(writer, &_numero);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}numero...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}numero."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}numero."];
    }
  }
  if ([self selite]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "selite", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}selite."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}selite...");
#endif
    [[self selite] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}selite...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}selite."];
    }
  }
  if ([self reseptiteksti]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "reseptiteksti", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}reseptiteksti."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}reseptiteksti...");
#endif
    [[self reseptiteksti] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}reseptiteksti...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}reseptiteksti."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "alkupera", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}alkupera."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}alkupera...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_alkupera);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}alkupera...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}alkupera."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}alkupera."];
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
    status = xmlTextWriterWriteCharacterType(writer, &_tyyppi);
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
}
@end /* implementation COREWEBNS0LaakitysKayttoaihe (JAXB) */

#endif /* DEF_COREWEBNS0LaakitysKayttoaihe_M */
#ifndef DEF_COREWEBNS0LaakitysTapa_M
#define DEF_COREWEBNS0LaakitysTapa_M

/**
 *  DTO for LAAKITYS_TAPA

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKITYS_TAPA.html

 */
@implementation COREWEBNS0LaakitysTapa

/**
 * Returns the "antoreitti" in code
 */
- (NSString *) reittikoodi
{
  return _reittikoodi;
}

/**
 * Returns the "antoreitti" in code
 */
- (void) setReittikoodi: (NSString *) newReittikoodi
{
  [newReittikoodi retain];
  [_reittikoodi release];
  _reittikoodi = newReittikoodi;
}

/**
 * Returns the "antoreitti" in text
 */
- (NSString *) reittiteksti
{
  return _reittiteksti;
}

/**
 * Returns the "antoreitti" in text
 */
- (void) setReittiteksti: (NSString *) newReittiteksti
{
  [newReittiteksti retain];
  [_reittiteksti release];
  _reittiteksti = newReittiteksti;
}

/**
 * Returns the "antopaikka" in code
 */
- (NSString *) paikkakoodi
{
  return _paikkakoodi;
}

/**
 * Returns the "antopaikka" in code
 */
- (void) setPaikkakoodi: (NSString *) newPaikkakoodi
{
  [newPaikkakoodi retain];
  [_paikkakoodi release];
  _paikkakoodi = newPaikkakoodi;
}

/**
 * Returns the "antopaikka" in text
 */
- (NSString *) paikkateksti
{
  return _paikkateksti;
}

/**
 * Returns the "antopaikka" in text
 */
- (void) setPaikkateksti: (NSString *) newPaikkateksti
{
  [newPaikkateksti retain];
  [_paikkateksti release];
  _paikkateksti = newPaikkateksti;
}

/**
 * Returns the "antov�line" in code
 */
- (NSString *) valinekoodi
{
  return _valinekoodi;
}

/**
 * Returns the "antov�line" in code
 */
- (void) setValinekoodi: (NSString *) newValinekoodi
{
  [newValinekoodi retain];
  [_valinekoodi release];
  _valinekoodi = newValinekoodi;
}

/**
 * Returns the "antov�line" in text
 */
- (NSString *) valineteksti
{
  return _valineteksti;
}

/**
 * Returns the "antov�line" in text
 */
- (void) setValineteksti: (NSString *) newValineteksti
{
  [newValineteksti retain];
  [_valineteksti release];
  _valineteksti = newValineteksti;
}

/**
 * Returns the "antotapa" in code
 */
- (NSString *) tapakoodi
{
  return _tapakoodi;
}

/**
 * Returns the "antotapa" in code
 */
- (void) setTapakoodi: (NSString *) newTapakoodi
{
  [newTapakoodi retain];
  [_tapakoodi release];
  _tapakoodi = newTapakoodi;
}

/**
 * Returns the "antotapa" in text
 */
- (NSString *) tapateksti
{
  return _tapateksti;
}

/**
 * Returns the "antotapa" in text
 */
- (void) setTapateksti: (NSString *) newTapateksti
{
  [newTapateksti retain];
  [_tapateksti release];
  _tapateksti = newTapateksti;
}

- (void) dealloc
{
  [self setReittikoodi: nil];
  [self setReittiteksti: nil];
  [self setPaikkakoodi: nil];
  [self setPaikkateksti: nil];
  [self setValinekoodi: nil];
  [self setValineteksti: nil];
  [self setTapakoodi: nil];
  [self setTapateksti: nil];
  [super dealloc];
}

//documentation inherited.
+ (id<EnunciateXML>) readFromXML: (NSData *) xml
{
  COREWEBNS0LaakitysTapa *_cOREWEBNS0LaakitysTapa;
  xmlTextReaderPtr reader = xmlReaderForMemory([xml bytes], [xml length], NULL, NULL, 0);
  if (reader == NULL) {
    [NSException raise: @"XMLReadError"
                 format: @"Error instantiating an XML reader."];
    return nil;
  }

  _cOREWEBNS0LaakitysTapa = (COREWEBNS0LaakitysTapa *) [COREWEBNS0LaakitysTapa readXMLElement: reader];
  xmlFreeTextReader(reader); //free the reader
  return _cOREWEBNS0LaakitysTapa;
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
@end /* implementation COREWEBNS0LaakitysTapa */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0LaakitysTapa (JAXB) <JAXBReading, JAXBWriting, JAXBType, JAXBElement>

@end /*interface COREWEBNS0LaakitysTapa (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0LaakitysTapa (JAXB)

/**
 * Read an instance of COREWEBNS0LaakitysTapa from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0LaakitysTapa defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0LaakitysTapa *_cOREWEBNS0LaakitysTapa = [[COREWEBNS0LaakitysTapa alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0LaakitysTapa initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0LaakitysTapa = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0LaakitysTapa autorelease];
  return _cOREWEBNS0LaakitysTapa;
}

/**
 * Initialize this instance of COREWEBNS0LaakitysTapa according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0LaakitysTapa to the writer.
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
 * Reads a COREWEBNS0LaakitysTapa from an XML reader. The element to be read is
 * "laakitysTapa".
 *
 * @param reader The XML reader.
 * @return The COREWEBNS0LaakitysTapa.
 */
+ (id<JAXBElement>) readXMLElement: (xmlTextReaderPtr) reader {
  int status;
  COREWEBNS0LaakitysTapa *_laakitysTapa = nil;

  if (xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) {
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
    if (status < 1) {
      [NSException raise: @"XMLReadError"
                   format: @"Error advancing the reader to start element laakitysTapa."];
    }
  }

  if (xmlStrcmp(BAD_CAST "laakitysTapa", xmlTextReaderConstLocalName(reader)) == 0
      && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read root element {}laakitysTapa.");
#endif
    _laakitysTapa = (COREWEBNS0LaakitysTapa *)[COREWEBNS0LaakitysTapa readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Successfully read root element {}laakitysTapa.");
#endif
  }
  else {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakitysTapa. Expected element laakitysTapa. Current element: {}%s", xmlTextReaderConstLocalName(reader)];
    }
    else {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakitysTapa. Expected element laakitysTapa. Current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader)];
    }
  }

  return _laakitysTapa;
}

/**
 * Writes this COREWEBNS0LaakitysTapa to XML under element name "laakitysTapa".
 * The namespace declarations for the element will be written.
 *
 * @param writer The XML writer.
 * @param _laakitysTapa The LaakitysTapa to write.
 * @return 1 if successful, 0 otherwise.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer
{
  [self writeXMLElement: writer writeNamespaces: YES];
}

/**
 * Writes this COREWEBNS0LaakitysTapa to an XML writer.
 *
 * @param writer The writer.
 * @param writeNs Whether to write the namespaces for this element to the xml writer.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer writeNamespaces: (BOOL) writeNs
{
  int rc = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakitysTapa", NULL);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing start element {}laakitysTapa. XML writer status: %i\n", rc];
  }

#if DEBUG_ENUNCIATE > 1
  NSLog(@"writing type {}laakitysTapa for root element {}laakitysTapa...");
#endif
  [self writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
  NSLog(@"successfully wrote type {}laakitysTapa for root element {}laakitysTapa...");
#endif
  rc = xmlTextWriterEndElement(writer);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing end element {}laakitysTapa. XML writer status: %i\n", rc];
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
    && xmlStrcmp(BAD_CAST "reittikoodi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}reittikoodi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}reittikoodi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setReittikoodi: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "reittiteksti", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}reittiteksti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}reittiteksti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setReittiteksti: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "paikkakoodi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}paikkakoodi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}paikkakoodi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setPaikkakoodi: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "paikkateksti", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}paikkateksti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}paikkateksti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setPaikkateksti: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "valinekoodi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}valinekoodi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}valinekoodi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setValinekoodi: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "valineteksti", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}valineteksti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}valineteksti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setValineteksti: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tapakoodi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tapakoodi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tapakoodi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setTapakoodi: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "tapateksti", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tapateksti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tapateksti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setTapateksti: __child];
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

  if ([self reittikoodi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "reittikoodi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}reittikoodi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}reittikoodi...");
#endif
    [[self reittikoodi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}reittikoodi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}reittikoodi."];
    }
  }
  if ([self reittiteksti]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "reittiteksti", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}reittiteksti."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}reittiteksti...");
#endif
    [[self reittiteksti] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}reittiteksti...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}reittiteksti."];
    }
  }
  if ([self paikkakoodi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "paikkakoodi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}paikkakoodi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}paikkakoodi...");
#endif
    [[self paikkakoodi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}paikkakoodi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}paikkakoodi."];
    }
  }
  if ([self paikkateksti]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "paikkateksti", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}paikkateksti."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}paikkateksti...");
#endif
    [[self paikkateksti] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}paikkateksti...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}paikkateksti."];
    }
  }
  if ([self valinekoodi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "valinekoodi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}valinekoodi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}valinekoodi...");
#endif
    [[self valinekoodi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}valinekoodi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}valinekoodi."];
    }
  }
  if ([self valineteksti]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "valineteksti", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}valineteksti."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}valineteksti...");
#endif
    [[self valineteksti] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}valineteksti...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}valineteksti."];
    }
  }
  if ([self tapakoodi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tapakoodi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tapakoodi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tapakoodi...");
#endif
    [[self tapakoodi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tapakoodi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tapakoodi."];
    }
  }
  if ([self tapateksti]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tapateksti", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tapateksti."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tapateksti...");
#endif
    [[self tapateksti] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tapateksti...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tapateksti."];
    }
  }
}
@end /* implementation COREWEBNS0LaakitysTapa (JAXB) */

#endif /* DEF_COREWEBNS0LaakitysTapa_M */
#ifndef DEF_COREWEBNS0LaakitysTauko_M
#define DEF_COREWEBNS0LaakitysTauko_M

/**
 *  DTO for LaakitysTauko

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKITYS_TAUKO.html

 */
@implementation COREWEBNS0LaakitysTauko

/**
 * Returns the starting time of the medication break
 */
- (NSDate *) alkaa
{
  return _alkaa;
}

/**
 * Returns the starting time of the medication break
 */
- (void) setAlkaa: (NSDate *) newAlkaa
{
  [newAlkaa retain];
  [_alkaa release];
  _alkaa = newAlkaa;
}

/**
 * Returns the ending time of the medication break
 */
- (NSDate *) loppuu
{
  return _loppuu;
}

/**
 * Returns the ending time of the medication break
 */
- (void) setLoppuu: (NSDate *) newLoppuu
{
  [newLoppuu retain];
  [_loppuu release];
  _loppuu = newLoppuu;
}

/**
 * Returns the notes about the medication break
 */
- (NSString *) huomautuksia
{
  return _huomautuksia;
}

/**
 * Returns the notes about the medication break
 */
- (void) setHuomautuksia: (NSString *) newHuomautuksia
{
  [newHuomautuksia retain];
  [_huomautuksia release];
  _huomautuksia = newHuomautuksia;
}

/**
 * Returns the id of an user who started the medication break
 */
- (int) aloittaja
{
  return _aloittaja;
}

/**
 * Returns the id of an user who started the medication break
 */
- (void) setAloittaja: (int) newAloittaja
{
  _aloittaja = newAloittaja;
}

/**
 * Returns the id of an user who ended the medication break
 */
- (int *) lopettaja
{
  return _lopettaja;
}

/**
 * Returns the id of an user who ended the medication break
 */
- (void) setLopettaja: (int *) newLopettaja
{
  if (_lopettaja != NULL) {
    free(_lopettaja);
  }
  _lopettaja = newLopettaja;
}

/**
 * Returns the code of the medication break removal. 'E' - not removed, 'K' = removed
 */
- (unsigned short) poistettu
{
  return _poistettu;
}

/**
 * Returns the code of the medication break removal. 'E' - not removed, 'K' = removed
 */
- (void) setPoistettu: (unsigned short) newPoistettu
{
  _poistettu = newPoistettu;
}

/**
 * Returns the actual DB-change time of the medication break
 */
- (NSDate *) muutosaika
{
  return _muutosaika;
}

/**
 * Returns the actual DB-change time of the medication break
 */
- (void) setMuutosaika: (NSDate *) newMuutosaika
{
  [newMuutosaika retain];
  [_muutosaika release];
  _muutosaika = newMuutosaika;
}

/**
 * Returns the organization in which the change has been made
 */
- (short) muutospaikka
{
  return _muutospaikka;
}

/**
 * Returns the organization in which the change has been made
 */
- (void) setMuutospaikka: (short) newMuutospaikka
{
  _muutospaikka = newMuutospaikka;
}

- (void) dealloc
{
  [self setAlkaa: nil];
  [self setLoppuu: nil];
  [self setHuomautuksia: nil];
  [self setLopettaja: NULL];
  [self setMuutosaika: nil];
  [super dealloc];
}

//documentation inherited.
+ (id<EnunciateXML>) readFromXML: (NSData *) xml
{
  COREWEBNS0LaakitysTauko *_cOREWEBNS0LaakitysTauko;
  xmlTextReaderPtr reader = xmlReaderForMemory([xml bytes], [xml length], NULL, NULL, 0);
  if (reader == NULL) {
    [NSException raise: @"XMLReadError"
                 format: @"Error instantiating an XML reader."];
    return nil;
  }

  _cOREWEBNS0LaakitysTauko = (COREWEBNS0LaakitysTauko *) [COREWEBNS0LaakitysTauko readXMLElement: reader];
  xmlFreeTextReader(reader); //free the reader
  return _cOREWEBNS0LaakitysTauko;
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
@end /* implementation COREWEBNS0LaakitysTauko */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0LaakitysTauko (JAXB) <JAXBReading, JAXBWriting, JAXBType, JAXBElement>

@end /*interface COREWEBNS0LaakitysTauko (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0LaakitysTauko (JAXB)

/**
 * Read an instance of COREWEBNS0LaakitysTauko from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0LaakitysTauko defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0LaakitysTauko *_cOREWEBNS0LaakitysTauko = [[COREWEBNS0LaakitysTauko alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0LaakitysTauko initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0LaakitysTauko = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0LaakitysTauko autorelease];
  return _cOREWEBNS0LaakitysTauko;
}

/**
 * Initialize this instance of COREWEBNS0LaakitysTauko according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0LaakitysTauko to the writer.
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
 * Reads a COREWEBNS0LaakitysTauko from an XML reader. The element to be read is
 * "laakitysTauko".
 *
 * @param reader The XML reader.
 * @return The COREWEBNS0LaakitysTauko.
 */
+ (id<JAXBElement>) readXMLElement: (xmlTextReaderPtr) reader {
  int status;
  COREWEBNS0LaakitysTauko *_laakitysTauko = nil;

  if (xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) {
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
    if (status < 1) {
      [NSException raise: @"XMLReadError"
                   format: @"Error advancing the reader to start element laakitysTauko."];
    }
  }

  if (xmlStrcmp(BAD_CAST "laakitysTauko", xmlTextReaderConstLocalName(reader)) == 0
      && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read root element {}laakitysTauko.");
#endif
    _laakitysTauko = (COREWEBNS0LaakitysTauko *)[COREWEBNS0LaakitysTauko readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Successfully read root element {}laakitysTauko.");
#endif
  }
  else {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakitysTauko. Expected element laakitysTauko. Current element: {}%s", xmlTextReaderConstLocalName(reader)];
    }
    else {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakitysTauko. Expected element laakitysTauko. Current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader)];
    }
  }

  return _laakitysTauko;
}

/**
 * Writes this COREWEBNS0LaakitysTauko to XML under element name "laakitysTauko".
 * The namespace declarations for the element will be written.
 *
 * @param writer The XML writer.
 * @param _laakitysTauko The LaakitysTauko to write.
 * @return 1 if successful, 0 otherwise.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer
{
  [self writeXMLElement: writer writeNamespaces: YES];
}

/**
 * Writes this COREWEBNS0LaakitysTauko to an XML writer.
 *
 * @param writer The writer.
 * @param writeNs Whether to write the namespaces for this element to the xml writer.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer writeNamespaces: (BOOL) writeNs
{
  int rc = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakitysTauko", NULL);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing start element {}laakitysTauko. XML writer status: %i\n", rc];
  }

#if DEBUG_ENUNCIATE > 1
  NSLog(@"writing type {}laakitysTauko for root element {}laakitysTauko...");
#endif
  [self writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
  NSLog(@"successfully wrote type {}laakitysTauko for root element {}laakitysTauko...");
#endif
  rc = xmlTextWriterEndElement(writer);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing end element {}laakitysTauko. XML writer status: %i\n", rc];
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
    NSLog(@"Attempting to read choice {}alkaa of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif
    __child = [NSDate readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}alkaa of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif

    [self setAlkaa: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "loppuu", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}loppuu of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif
    __child = [NSDate readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}loppuu of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif

    [self setLoppuu: __child];
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
    && xmlStrcmp(BAD_CAST "aloittaja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setAloittaja: *((int*) _child_accessor)];
    free(_child_accessor);
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
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "aloittaja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}aloittaja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}aloittaja...");
#endif
    status = xmlTextWriterWriteIntType(writer, &_aloittaja);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}aloittaja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}aloittaja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}aloittaja."];
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
}
@end /* implementation COREWEBNS0LaakitysTauko (JAXB) */

#endif /* DEF_COREWEBNS0LaakitysTauko_M */
#ifndef DEF_COREWEBNS0LaakitysKuittaus_M
#define DEF_COREWEBNS0LaakitysKuittaus_M

/**
 *  DTO for LaakitysKuittaus

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKITYS_KUITTAUS.html

 */
@implementation COREWEBNS0LaakitysKuittaus

/**
 * Returns the role of the user who has made an acknowledgement
 * -"H" if user is a nurse
 */
- (unsigned short) rooli
{
  return _rooli;
}

/**
 * Returns the role of the user who has made an acknowledgement
 * -"H" if user is a nurse
 */
- (void) setRooli: (unsigned short) newRooli
{
  _rooli = newRooli;
}

/**
 * Returns the time of the acknowledgement
 */
- (NSDate *) kuitattu
{
  return _kuitattu;
}

/**
 * Returns the time of the acknowledgement
 */
- (void) setKuitattu: (NSDate *) newKuitattu
{
  [newKuitattu retain];
  [_kuitattu release];
  _kuitattu = newKuitattu;
}

/**
 * Returns the user who made the acknowledgement
 */
- (int) kuittaaja
{
  return _kuittaaja;
}

/**
 * Returns the user who made the acknowledgement
 */
- (void) setKuittaaja: (int) newKuittaaja
{
  _kuittaaja = newKuittaaja;
}

- (void) dealloc
{
  [self setKuitattu: nil];
  [super dealloc];
}

//documentation inherited.
+ (id<EnunciateXML>) readFromXML: (NSData *) xml
{
  COREWEBNS0LaakitysKuittaus *_cOREWEBNS0LaakitysKuittaus;
  xmlTextReaderPtr reader = xmlReaderForMemory([xml bytes], [xml length], NULL, NULL, 0);
  if (reader == NULL) {
    [NSException raise: @"XMLReadError"
                 format: @"Error instantiating an XML reader."];
    return nil;
  }

  _cOREWEBNS0LaakitysKuittaus = (COREWEBNS0LaakitysKuittaus *) [COREWEBNS0LaakitysKuittaus readXMLElement: reader];
  xmlFreeTextReader(reader); //free the reader
  return _cOREWEBNS0LaakitysKuittaus;
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
@end /* implementation COREWEBNS0LaakitysKuittaus */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0LaakitysKuittaus (JAXB) <JAXBReading, JAXBWriting, JAXBType, JAXBElement>

@end /*interface COREWEBNS0LaakitysKuittaus (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0LaakitysKuittaus (JAXB)

/**
 * Read an instance of COREWEBNS0LaakitysKuittaus from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0LaakitysKuittaus defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0LaakitysKuittaus *_cOREWEBNS0LaakitysKuittaus = [[COREWEBNS0LaakitysKuittaus alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0LaakitysKuittaus initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0LaakitysKuittaus = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0LaakitysKuittaus autorelease];
  return _cOREWEBNS0LaakitysKuittaus;
}

/**
 * Initialize this instance of COREWEBNS0LaakitysKuittaus according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0LaakitysKuittaus to the writer.
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
 * Reads a COREWEBNS0LaakitysKuittaus from an XML reader. The element to be read is
 * "laakitysKuittaus".
 *
 * @param reader The XML reader.
 * @return The COREWEBNS0LaakitysKuittaus.
 */
+ (id<JAXBElement>) readXMLElement: (xmlTextReaderPtr) reader {
  int status;
  COREWEBNS0LaakitysKuittaus *_laakitysKuittaus = nil;

  if (xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) {
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
    if (status < 1) {
      [NSException raise: @"XMLReadError"
                   format: @"Error advancing the reader to start element laakitysKuittaus."];
    }
  }

  if (xmlStrcmp(BAD_CAST "laakitysKuittaus", xmlTextReaderConstLocalName(reader)) == 0
      && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read root element {}laakitysKuittaus.");
#endif
    _laakitysKuittaus = (COREWEBNS0LaakitysKuittaus *)[COREWEBNS0LaakitysKuittaus readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Successfully read root element {}laakitysKuittaus.");
#endif
  }
  else {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakitysKuittaus. Expected element laakitysKuittaus. Current element: {}%s", xmlTextReaderConstLocalName(reader)];
    }
    else {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakitysKuittaus. Expected element laakitysKuittaus. Current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader)];
    }
  }

  return _laakitysKuittaus;
}

/**
 * Writes this COREWEBNS0LaakitysKuittaus to XML under element name "laakitysKuittaus".
 * The namespace declarations for the element will be written.
 *
 * @param writer The XML writer.
 * @param _laakitysKuittaus The LaakitysKuittaus to write.
 * @return 1 if successful, 0 otherwise.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer
{
  [self writeXMLElement: writer writeNamespaces: YES];
}

/**
 * Writes this COREWEBNS0LaakitysKuittaus to an XML writer.
 *
 * @param writer The writer.
 * @param writeNs Whether to write the namespaces for this element to the xml writer.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer writeNamespaces: (BOOL) writeNs
{
  int rc = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakitysKuittaus", NULL);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing start element {}laakitysKuittaus. XML writer status: %i\n", rc];
  }

#if DEBUG_ENUNCIATE > 1
  NSLog(@"writing type {}laakitysKuittaus for root element {}laakitysKuittaus...");
#endif
  [self writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
  NSLog(@"successfully wrote type {}laakitysKuittaus for root element {}laakitysKuittaus...");
#endif
  rc = xmlTextWriterEndElement(writer);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing end element {}laakitysKuittaus. XML writer status: %i\n", rc];
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
    && xmlStrcmp(BAD_CAST "rooli", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setRooli: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kuitattu", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}kuitattu of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif
    __child = [NSDate readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}kuitattu of type {http://www.w3.org/2001/XMLSchema}dateTime.");
#endif

    [self setKuitattu: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "kuittaaja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setKuittaaja: *((int*) _child_accessor)];
    free(_child_accessor);
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

  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "rooli", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}rooli."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}rooli...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_rooli);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}rooli...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}rooli."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}rooli."];
    }
  }
  if ([self kuitattu]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kuitattu", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kuitattu."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kuitattu...");
#endif
    [[self kuitattu] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kuitattu...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kuitattu."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "kuittaaja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}kuittaaja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}kuittaaja...");
#endif
    status = xmlTextWriterWriteIntType(writer, &_kuittaaja);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}kuittaaja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}kuittaaja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}kuittaaja."];
    }
  }
}
@end /* implementation COREWEBNS0LaakitysKuittaus (JAXB) */

#endif /* DEF_COREWEBNS0LaakitysKuittaus_M */
#ifndef DEF_COREWEBNS0LaakeYhteisvaikutus_M
#define DEF_COREWEBNS0LaakeYhteisvaikutus_M

/**
 *  DTO for Yhteisvaikutus

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKE_YHTEISVAIKUTUS.html

 */
@implementation COREWEBNS0LaakeYhteisvaikutus

/**
 * Returns the ATC code or the name of the agent (atc tai vaikuttava aine)
 */
- (NSString *) aine
{
  return _aine;
}

/**
 * Returns the ATC code or the name of the agent (atc tai vaikuttava aine)
 */
- (void) setAine: (NSString *) newAine
{
  [newAine retain];
  [_aine release];
  _aine = newAine;
}

/**
 * Returns the used code system
 * -If getAine returns an ATC code, getKoodisto returns "ATC"
 */
- (NSString *) koodisto
{
  return _koodisto;
}

/**
 * Returns the used code system
 * -If getAine returns an ATC code, getKoodisto returns "ATC"
 */
- (void) setKoodisto: (NSString *) newKoodisto
{
  [newKoodisto retain];
  [_koodisto release];
  _koodisto = newKoodisto;
}

/**
 * Returns the origin of interaction
 * -'O' if interaction is linked in the current organization
 * -'A' or 'M' otherwise
 */
- (unsigned short) alkupera
{
  return _alkupera;
}

/**
 * Returns the origin of interaction
 * -'O' if interaction is linked in the current organization
 * -'A' or 'M' otherwise
 */
- (void) setAlkupera: (unsigned short) newAlkupera
{
  _alkupera = newAlkupera;
}

- (void) dealloc
{
  [self setAine: nil];
  [self setKoodisto: nil];
  [super dealloc];
}

//documentation inherited.
+ (id<EnunciateXML>) readFromXML: (NSData *) xml
{
  COREWEBNS0LaakeYhteisvaikutus *_cOREWEBNS0LaakeYhteisvaikutus;
  xmlTextReaderPtr reader = xmlReaderForMemory([xml bytes], [xml length], NULL, NULL, 0);
  if (reader == NULL) {
    [NSException raise: @"XMLReadError"
                 format: @"Error instantiating an XML reader."];
    return nil;
  }

  _cOREWEBNS0LaakeYhteisvaikutus = (COREWEBNS0LaakeYhteisvaikutus *) [COREWEBNS0LaakeYhteisvaikutus readXMLElement: reader];
  xmlFreeTextReader(reader); //free the reader
  return _cOREWEBNS0LaakeYhteisvaikutus;
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
@end /* implementation COREWEBNS0LaakeYhteisvaikutus */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0LaakeYhteisvaikutus (JAXB) <JAXBReading, JAXBWriting, JAXBType, JAXBElement>

@end /*interface COREWEBNS0LaakeYhteisvaikutus (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0LaakeYhteisvaikutus (JAXB)

/**
 * Read an instance of COREWEBNS0LaakeYhteisvaikutus from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0LaakeYhteisvaikutus defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0LaakeYhteisvaikutus *_cOREWEBNS0LaakeYhteisvaikutus = [[COREWEBNS0LaakeYhteisvaikutus alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0LaakeYhteisvaikutus initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0LaakeYhteisvaikutus = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0LaakeYhteisvaikutus autorelease];
  return _cOREWEBNS0LaakeYhteisvaikutus;
}

/**
 * Initialize this instance of COREWEBNS0LaakeYhteisvaikutus according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0LaakeYhteisvaikutus to the writer.
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
 * Reads a COREWEBNS0LaakeYhteisvaikutus from an XML reader. The element to be read is
 * "laakeYhteisvaikutus".
 *
 * @param reader The XML reader.
 * @return The COREWEBNS0LaakeYhteisvaikutus.
 */
+ (id<JAXBElement>) readXMLElement: (xmlTextReaderPtr) reader {
  int status;
  COREWEBNS0LaakeYhteisvaikutus *_laakeYhteisvaikutus = nil;

  if (xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) {
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
    if (status < 1) {
      [NSException raise: @"XMLReadError"
                   format: @"Error advancing the reader to start element laakeYhteisvaikutus."];
    }
  }

  if (xmlStrcmp(BAD_CAST "laakeYhteisvaikutus", xmlTextReaderConstLocalName(reader)) == 0
      && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read root element {}laakeYhteisvaikutus.");
#endif
    _laakeYhteisvaikutus = (COREWEBNS0LaakeYhteisvaikutus *)[COREWEBNS0LaakeYhteisvaikutus readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Successfully read root element {}laakeYhteisvaikutus.");
#endif
  }
  else {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakeYhteisvaikutus. Expected element laakeYhteisvaikutus. Current element: {}%s", xmlTextReaderConstLocalName(reader)];
    }
    else {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakeYhteisvaikutus. Expected element laakeYhteisvaikutus. Current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader)];
    }
  }

  return _laakeYhteisvaikutus;
}

/**
 * Writes this COREWEBNS0LaakeYhteisvaikutus to XML under element name "laakeYhteisvaikutus".
 * The namespace declarations for the element will be written.
 *
 * @param writer The XML writer.
 * @param _laakeYhteisvaikutus The LaakeYhteisvaikutus to write.
 * @return 1 if successful, 0 otherwise.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer
{
  [self writeXMLElement: writer writeNamespaces: YES];
}

/**
 * Writes this COREWEBNS0LaakeYhteisvaikutus to an XML writer.
 *
 * @param writer The writer.
 * @param writeNs Whether to write the namespaces for this element to the xml writer.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer writeNamespaces: (BOOL) writeNs
{
  int rc = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakeYhteisvaikutus", NULL);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing start element {}laakeYhteisvaikutus. XML writer status: %i\n", rc];
  }

#if DEBUG_ENUNCIATE > 1
  NSLog(@"writing type {}laakeYhteisvaikutus for root element {}laakeYhteisvaikutus...");
#endif
  [self writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
  NSLog(@"successfully wrote type {}laakeYhteisvaikutus for root element {}laakeYhteisvaikutus...");
#endif
  rc = xmlTextWriterEndElement(writer);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing end element {}laakeYhteisvaikutus. XML writer status: %i\n", rc];
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
    && xmlStrcmp(BAD_CAST "aine", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}aine of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}aine of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setAine: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "koodisto", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}koodisto of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}koodisto of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setKoodisto: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "alkupera", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setAlkupera: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
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

  if ([self aine]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "aine", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}aine."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}aine...");
#endif
    [[self aine] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}aine...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}aine."];
    }
  }
  if ([self koodisto]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "koodisto", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}koodisto."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}koodisto...");
#endif
    [[self koodisto] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}koodisto...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}koodisto."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "alkupera", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}alkupera."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}alkupera...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_alkupera);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}alkupera...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}alkupera."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}alkupera."];
    }
  }
}
@end /* implementation COREWEBNS0LaakeYhteisvaikutus (JAXB) */

#endif /* DEF_COREWEBNS0LaakeYhteisvaikutus_M */
#ifndef DEF_COREWEBNS0LaakeVastaAihe_M
#define DEF_COREWEBNS0LaakeVastaAihe_M

/**
 *  DTO for LaakeVastaAihe

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKE_VASTA_AIHE.html
 http://vc-buildsrv1/documents/mediatridocs/latest/tables/VASTA_AIHE.html

 */
@implementation COREWEBNS0LaakeVastaAihe

/**
 * Returns the id
 */
- (int) vastaAihe
{
  return _vastaAihe;
}

/**
 * Returns the id
 */
- (void) setVastaAihe: (int) newVastaAihe
{
  _vastaAihe = newVastaAihe;
}

/**
 * Returns the origin of the contraindication
 */
- (unsigned short) vastaAiheAlkupera
{
  return _vastaAiheAlkupera;
}

/**
 * Returns the origin of the contraindication
 */
- (void) setVastaAiheAlkupera: (unsigned short) newVastaAiheAlkupera
{
  _vastaAiheAlkupera = newVastaAiheAlkupera;
}

/**
 * Returns the name of the contraindication in plain language
 */
- (NSString *) selite
{
  return _selite;
}

/**
 * Returns the name of the contraindication in plain language
 */
- (void) setSelite: (NSString *) newSelite
{
  [newSelite retain];
  [_selite release];
  _selite = newSelite;
}

/**
 * Returns the type of the contraindication
 * -'Y' age in years
 * -'M' age in months
 * -'W' age in weeks
 * -'G' weight
 * -'P' pregnancy
 * -'B' breastfeeding
 * -'D' diagnose
 * -'1' male
 * -'2' female
 */
- (unsigned short) rajoite
{
  return _rajoite;
}

/**
 * Returns the type of the contraindication
 * -'Y' age in years
 * -'M' age in months
 * -'W' age in weeks
 * -'G' weight
 * -'P' pregnancy
 * -'B' breastfeeding
 * -'D' diagnose
 * -'1' male
 * -'2' female
 */
- (void) setRajoite: (unsigned short) newRajoite
{
  _rajoite = newRajoite;
}

/**
 * Returns the lower limit of the contraindication
 */
- (int *) alaraja
{
  return _alaraja;
}

/**
 * Returns the lower limit of the contraindication
 */
- (void) setAlaraja: (int *) newAlaraja
{
  if (_alaraja != NULL) {
    free(_alaraja);
  }
  _alaraja = newAlaraja;
}

/**
 * Returns the upper limit of the contraindication
 */
- (int *) ylaraja
{
  return _ylaraja;
}

/**
 * Returns the upper limit of the contraindication
 */
- (void) setYlaraja: (int *) newYlaraja
{
  if (_ylaraja != NULL) {
    free(_ylaraja);
  }
  _ylaraja = newYlaraja;
}

/**
 * Returns the origin of the contraindication
 * -'O' if therapy group is linked in the current organization
 * -'A' or 'M' otherwise
 */
- (unsigned short) alkupera
{
  return _alkupera;
}

/**
 * Returns the origin of the contraindication
 * -'O' if therapy group is linked in the current organization
 * -'A' or 'M' otherwise
 */
- (void) setAlkupera: (unsigned short) newAlkupera
{
  _alkupera = newAlkupera;
}

/**
 * Returns the code of the contraindication removal. 'E' - not removed, 'K' = removed
 */
- (unsigned short) poistettu
{
  return _poistettu;
}

/**
 * Returns the code of the contraindication removal. 'E' - not removed, 'K' = removed
 */
- (void) setPoistettu: (unsigned short) newPoistettu
{
  _poistettu = newPoistettu;
}

/**
 * Returns the actual DB-change time of the contraindication
 */
- (NSDate *) muutosaika
{
  return _muutosaika;
}

/**
 * Returns the actual DB-change time of the contraindication
 */
- (void) setMuutosaika: (NSDate *) newMuutosaika
{
  [newMuutosaika retain];
  [_muutosaika release];
  _muutosaika = newMuutosaika;
}

/**
 * Returns the organization in which the change has been made
 */
- (short) muutospaikka
{
  return _muutospaikka;
}

/**
 * Returns the organization in which the change has been made
 */
- (void) setMuutospaikka: (short) newMuutospaikka
{
  _muutospaikka = newMuutospaikka;
}

- (void) dealloc
{
  [self setSelite: nil];
  [self setAlaraja: NULL];
  [self setYlaraja: NULL];
  [self setMuutosaika: nil];
  [super dealloc];
}

//documentation inherited.
+ (id<EnunciateXML>) readFromXML: (NSData *) xml
{
  COREWEBNS0LaakeVastaAihe *_cOREWEBNS0LaakeVastaAihe;
  xmlTextReaderPtr reader = xmlReaderForMemory([xml bytes], [xml length], NULL, NULL, 0);
  if (reader == NULL) {
    [NSException raise: @"XMLReadError"
                 format: @"Error instantiating an XML reader."];
    return nil;
  }

  _cOREWEBNS0LaakeVastaAihe = (COREWEBNS0LaakeVastaAihe *) [COREWEBNS0LaakeVastaAihe readXMLElement: reader];
  xmlFreeTextReader(reader); //free the reader
  return _cOREWEBNS0LaakeVastaAihe;
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
@end /* implementation COREWEBNS0LaakeVastaAihe */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0LaakeVastaAihe (JAXB) <JAXBReading, JAXBWriting, JAXBType, JAXBElement>

@end /*interface COREWEBNS0LaakeVastaAihe (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0LaakeVastaAihe (JAXB)

/**
 * Read an instance of COREWEBNS0LaakeVastaAihe from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0LaakeVastaAihe defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0LaakeVastaAihe *_cOREWEBNS0LaakeVastaAihe = [[COREWEBNS0LaakeVastaAihe alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0LaakeVastaAihe initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0LaakeVastaAihe = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0LaakeVastaAihe autorelease];
  return _cOREWEBNS0LaakeVastaAihe;
}

/**
 * Initialize this instance of COREWEBNS0LaakeVastaAihe according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0LaakeVastaAihe to the writer.
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
 * Reads a COREWEBNS0LaakeVastaAihe from an XML reader. The element to be read is
 * "laakeVastaAihe".
 *
 * @param reader The XML reader.
 * @return The COREWEBNS0LaakeVastaAihe.
 */
+ (id<JAXBElement>) readXMLElement: (xmlTextReaderPtr) reader {
  int status;
  COREWEBNS0LaakeVastaAihe *_laakeVastaAihe = nil;

  if (xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) {
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
    if (status < 1) {
      [NSException raise: @"XMLReadError"
                   format: @"Error advancing the reader to start element laakeVastaAihe."];
    }
  }

  if (xmlStrcmp(BAD_CAST "laakeVastaAihe", xmlTextReaderConstLocalName(reader)) == 0
      && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read root element {}laakeVastaAihe.");
#endif
    _laakeVastaAihe = (COREWEBNS0LaakeVastaAihe *)[COREWEBNS0LaakeVastaAihe readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Successfully read root element {}laakeVastaAihe.");
#endif
  }
  else {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakeVastaAihe. Expected element laakeVastaAihe. Current element: {}%s", xmlTextReaderConstLocalName(reader)];
    }
    else {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakeVastaAihe. Expected element laakeVastaAihe. Current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader)];
    }
  }

  return _laakeVastaAihe;
}

/**
 * Writes this COREWEBNS0LaakeVastaAihe to XML under element name "laakeVastaAihe".
 * The namespace declarations for the element will be written.
 *
 * @param writer The XML writer.
 * @param _laakeVastaAihe The LaakeVastaAihe to write.
 * @return 1 if successful, 0 otherwise.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer
{
  [self writeXMLElement: writer writeNamespaces: YES];
}

/**
 * Writes this COREWEBNS0LaakeVastaAihe to an XML writer.
 *
 * @param writer The writer.
 * @param writeNs Whether to write the namespaces for this element to the xml writer.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer writeNamespaces: (BOOL) writeNs
{
  int rc = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakeVastaAihe", NULL);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing start element {}laakeVastaAihe. XML writer status: %i\n", rc];
  }

#if DEBUG_ENUNCIATE > 1
  NSLog(@"writing type {}laakeVastaAihe for root element {}laakeVastaAihe...");
#endif
  [self writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
  NSLog(@"successfully wrote type {}laakeVastaAihe for root element {}laakeVastaAihe...");
#endif
  rc = xmlTextWriterEndElement(writer);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing end element {}laakeVastaAihe. XML writer status: %i\n", rc];
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
    && xmlStrcmp(BAD_CAST "vastaAihe", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setVastaAihe: *((int*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "vastaAiheAlkupera", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setVastaAiheAlkupera: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "selite", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}selite of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}selite of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setSelite: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "rajoite", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setRajoite: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "alaraja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setAlaraja: ((int*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "ylaraja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setYlaraja: ((int*) _child_accessor)];
    return YES;
  }

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "alkupera", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setAlkupera: *((unsigned short*) _child_accessor)];
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
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "vastaAihe", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}vastaAihe."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}vastaAihe...");
#endif
    status = xmlTextWriterWriteIntType(writer, &_vastaAihe);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}vastaAihe...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}vastaAihe."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}vastaAihe."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "vastaAiheAlkupera", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}vastaAiheAlkupera."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}vastaAiheAlkupera...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_vastaAiheAlkupera);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}vastaAiheAlkupera...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}vastaAiheAlkupera."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}vastaAiheAlkupera."];
    }
  }
  if ([self selite]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "selite", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}selite."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}selite...");
#endif
    [[self selite] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}selite...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}selite."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "rajoite", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}rajoite."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}rajoite...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_rajoite);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}rajoite...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}rajoite."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}rajoite."];
    }
  }
  if ([self alaraja] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "alaraja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}alaraja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}alaraja...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self alaraja]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}alaraja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}alaraja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}alaraja."];
    }
  }
  if ([self ylaraja] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "ylaraja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}ylaraja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}ylaraja...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self ylaraja]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}ylaraja...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}ylaraja."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}ylaraja."];
    }
  }
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "alkupera", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}alkupera."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}alkupera...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_alkupera);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}alkupera...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}alkupera."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}alkupera."];
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
}
@end /* implementation COREWEBNS0LaakeVastaAihe (JAXB) */

#endif /* DEF_COREWEBNS0LaakeVastaAihe_M */
#ifndef DEF_COREWEBNS0LaakeTiivistelma_M
#define DEF_COREWEBNS0LaakeTiivistelma_M

/**
 *  DTO for LaakeTiivistelma

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKE_TIIVISTELMA.html
 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKE_TIIVISTELMA_SOVELTUVUUS.html

 */
@implementation COREWEBNS0LaakeTiivistelma

/**
 * Returns the id of the summary
 */
- (int) tiivistelma
{
  return _tiivistelma;
}

/**
 * Returns the id of the summary
 */
- (void) setTiivistelma: (int) newTiivistelma
{
  _tiivistelma = newTiivistelma;
}

/**
 * Returns the name of the medicine the summary is about
 */
- (NSString *) nimi
{
  return _nimi;
}

/**
 * Returns the name of the medicine the summary is about
 */
- (void) setNimi: (NSString *) newNimi
{
  [newNimi retain];
  [_nimi release];
  _nimi = newNimi;
}

/**
 * Returns the preconditions for the medicine
 * (m��r�ys-/toimitusehto)
 */
- (NSString *) ehto
{
  return _ehto;
}

/**
 * Returns the preconditions for the medicine
 * (m��r�ys-/toimitusehto)
 */
- (void) setEhto: (NSString *) newEhto
{
  [newEhto retain];
  [_ehto release];
  _ehto = newEhto;
}

/**
 * Returns the manufacturer
 */
- (NSString *) valmistaja
{
  return _valmistaja;
}

/**
 * Returns the manufacturer
 */
- (void) setValmistaja: (NSString *) newValmistaja
{
  [newValmistaja retain];
  [_valmistaja release];
  _valmistaja = newValmistaja;
}

/**
 * Returns the refundability
 */
- (NSString *) korvattavuus
{
  return _korvattavuus;
}

/**
 * Returns the refundability
 */
- (void) setKorvattavuus: (NSString *) newKorvattavuus
{
  [newKorvattavuus retain];
  [_korvattavuus release];
  _korvattavuus = newKorvattavuus;
}

/**
 * Returns the code of the summary removal. 'E' - not removed, 'K' = removed
 */
- (unsigned short) poistettu
{
  return _poistettu;
}

/**
 * Returns the code of the summary removal. 'E' - not removed, 'K' = removed
 */
- (void) setPoistettu: (unsigned short) newPoistettu
{
  _poistettu = newPoistettu;
}

/**
 * Returns the actual DB-change time of the summary
 */
- (NSDate *) muutosaika
{
  return _muutosaika;
}

/**
 * Returns the actual DB-change time of the summary
 */
- (void) setMuutosaika: (NSDate *) newMuutosaika
{
  [newMuutosaika retain];
  [_muutosaika release];
  _muutosaika = newMuutosaika;
}

/**
 * Returns the organization in which the change has been made
 */
- (short) muutospaikka
{
  return _muutospaikka;
}

/**
 * Returns the organization in which the change has been made
 */
- (void) setMuutospaikka: (short) newMuutospaikka
{
  _muutospaikka = newMuutospaikka;
}

/**
 * Returns a list of summary texts
 */
- (NSArray *) tekstit
{
  return _tekstit;
}

/**
 * Returns a list of summary texts
 */
- (void) setTekstit: (NSArray *) newTekstit
{
  [newTekstit retain];
  [_tekstit release];
  _tekstit = newTekstit;
}

- (void) dealloc
{
  [self setNimi: nil];
  [self setEhto: nil];
  [self setValmistaja: nil];
  [self setKorvattavuus: nil];
  [self setMuutosaika: nil];
  [self setTekstit: nil];
  [super dealloc];
}

//documentation inherited.
+ (id<EnunciateXML>) readFromXML: (NSData *) xml
{
  COREWEBNS0LaakeTiivistelma *_cOREWEBNS0LaakeTiivistelma;
  xmlTextReaderPtr reader = xmlReaderForMemory([xml bytes], [xml length], NULL, NULL, 0);
  if (reader == NULL) {
    [NSException raise: @"XMLReadError"
                 format: @"Error instantiating an XML reader."];
    return nil;
  }

  _cOREWEBNS0LaakeTiivistelma = (COREWEBNS0LaakeTiivistelma *) [COREWEBNS0LaakeTiivistelma readXMLElement: reader];
  xmlFreeTextReader(reader); //free the reader
  return _cOREWEBNS0LaakeTiivistelma;
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
@end /* implementation COREWEBNS0LaakeTiivistelma */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0LaakeTiivistelma (JAXB) <JAXBReading, JAXBWriting, JAXBType, JAXBElement>

@end /*interface COREWEBNS0LaakeTiivistelma (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0LaakeTiivistelma (JAXB)

/**
 * Read an instance of COREWEBNS0LaakeTiivistelma from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0LaakeTiivistelma defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0LaakeTiivistelma *_cOREWEBNS0LaakeTiivistelma = [[COREWEBNS0LaakeTiivistelma alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0LaakeTiivistelma initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0LaakeTiivistelma = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0LaakeTiivistelma autorelease];
  return _cOREWEBNS0LaakeTiivistelma;
}

/**
 * Initialize this instance of COREWEBNS0LaakeTiivistelma according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0LaakeTiivistelma to the writer.
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
 * Reads a COREWEBNS0LaakeTiivistelma from an XML reader. The element to be read is
 * "laakeTiivistelma".
 *
 * @param reader The XML reader.
 * @return The COREWEBNS0LaakeTiivistelma.
 */
+ (id<JAXBElement>) readXMLElement: (xmlTextReaderPtr) reader {
  int status;
  COREWEBNS0LaakeTiivistelma *_laakeTiivistelma = nil;

  if (xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) {
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
    if (status < 1) {
      [NSException raise: @"XMLReadError"
                   format: @"Error advancing the reader to start element laakeTiivistelma."];
    }
  }

  if (xmlStrcmp(BAD_CAST "laakeTiivistelma", xmlTextReaderConstLocalName(reader)) == 0
      && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read root element {}laakeTiivistelma.");
#endif
    _laakeTiivistelma = (COREWEBNS0LaakeTiivistelma *)[COREWEBNS0LaakeTiivistelma readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Successfully read root element {}laakeTiivistelma.");
#endif
  }
  else {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakeTiivistelma. Expected element laakeTiivistelma. Current element: {}%s", xmlTextReaderConstLocalName(reader)];
    }
    else {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakeTiivistelma. Expected element laakeTiivistelma. Current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader)];
    }
  }

  return _laakeTiivistelma;
}

/**
 * Writes this COREWEBNS0LaakeTiivistelma to XML under element name "laakeTiivistelma".
 * The namespace declarations for the element will be written.
 *
 * @param writer The XML writer.
 * @param _laakeTiivistelma The LaakeTiivistelma to write.
 * @return 1 if successful, 0 otherwise.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer
{
  [self writeXMLElement: writer writeNamespaces: YES];
}

/**
 * Writes this COREWEBNS0LaakeTiivistelma to an XML writer.
 *
 * @param writer The writer.
 * @param writeNs Whether to write the namespaces for this element to the xml writer.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer writeNamespaces: (BOOL) writeNs
{
  int rc = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakeTiivistelma", NULL);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing start element {}laakeTiivistelma. XML writer status: %i\n", rc];
  }

#if DEBUG_ENUNCIATE > 1
  NSLog(@"writing type {}laakeTiivistelma for root element {}laakeTiivistelma...");
#endif
  [self writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
  NSLog(@"successfully wrote type {}laakeTiivistelma for root element {}laakeTiivistelma...");
#endif
  rc = xmlTextWriterEndElement(writer);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing end element {}laakeTiivistelma. XML writer status: %i\n", rc];
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
    && xmlStrcmp(BAD_CAST "tiivistelma", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setTiivistelma: *((int*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "nimi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}nimi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}nimi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setNimi: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "ehto", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}ehto of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}ehto of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setEhto: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "valmistaja", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}valmistaja of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}valmistaja of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setValmistaja: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "korvattavuus", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}korvattavuus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}korvattavuus of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setKorvattavuus: __child];
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
    && xmlStrcmp(BAD_CAST "tekstit", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}tekstit of type {}laakeTiivistelmaTeksti.");
#endif

     __child = [COREWEBNS0LaakeTiivistelmaTeksti readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}tekstit of type {}laakeTiivistelmaTeksti.");
#endif

    if ([self tekstit]) {
      [self setTekstit: [[self tekstit] arrayByAddingObject: __child]];
    }
    else {
      [self setTekstit: [NSArray arrayWithObject: __child]];
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
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tiivistelma", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tiivistelma."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tiivistelma...");
#endif
    status = xmlTextWriterWriteIntType(writer, &_tiivistelma);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}tiivistelma...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}tiivistelma."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}tiivistelma."];
    }
  }
  if ([self nimi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "nimi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}nimi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}nimi...");
#endif
    [[self nimi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}nimi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}nimi."];
    }
  }
  if ([self ehto]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "ehto", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}ehto."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}ehto...");
#endif
    [[self ehto] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}ehto...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}ehto."];
    }
  }
  if ([self valmistaja]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "valmistaja", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}valmistaja."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}valmistaja...");
#endif
    [[self valmistaja] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}valmistaja...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}valmistaja."];
    }
  }
  if ([self korvattavuus]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "korvattavuus", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}korvattavuus."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}korvattavuus...");
#endif
    [[self korvattavuus] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}korvattavuus...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}korvattavuus."];
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
  if ([self tekstit]) {
    __enumerator = [[self tekstit] objectEnumerator];

    while ( (__item = [__enumerator nextObject]) ) {
      status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tekstit", NULL);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing start child element {}tekstit."];
      }

#if DEBUG_ENUNCIATE > 1
      NSLog(@"writing element {}tekstit...");
#endif
      [__item writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
      NSLog(@"successfully wrote element {}tekstit...");
#endif

      status = xmlTextWriterEndElement(writer);
      if (status < 0) {
        [NSException raise: @"XMLWriteError"
                     format: @"Error writing end child element {}tekstit."];
      }
    } //end item iterator.
  }
}
@end /* implementation COREWEBNS0LaakeTiivistelma (JAXB) */

#endif /* DEF_COREWEBNS0LaakeTiivistelma_M */
#ifndef DEF_COREWEBNS0LaakeSelosteTeksti_M
#define DEF_COREWEBNS0LaakeSelosteTeksti_M

/**
 *  DTO for LaakeSelosteTeksti

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKE_SELOSTE_TEKSTI.html

 */
@implementation COREWEBNS0LaakeSelosteTeksti

/**
 * Returns the part number of the description, can be used to order descriptions
 */
- (int) osa
{
  return _osa;
}

/**
 * Returns the part number of the description, can be used to order descriptions
 */
- (void) setOsa: (int) newOsa
{
  _osa = newOsa;
}

/**
 * 
 */
- (int) otsikko
{
  return _otsikko;
}

/**
 * 
 */
- (void) setOtsikko: (int) newOtsikko
{
  _otsikko = newOtsikko;
}

/**
 * Returns the text of the description
 */
- (NSString *) teksti
{
  return _teksti;
}

/**
 * Returns the text of the description
 */
- (void) setTeksti: (NSString *) newTeksti
{
  [newTeksti retain];
  [_teksti release];
  _teksti = newTeksti;
}

- (void) dealloc
{
  [self setTeksti: nil];
  [super dealloc];
}

//documentation inherited.
+ (id<EnunciateXML>) readFromXML: (NSData *) xml
{
  COREWEBNS0LaakeSelosteTeksti *_cOREWEBNS0LaakeSelosteTeksti;
  xmlTextReaderPtr reader = xmlReaderForMemory([xml bytes], [xml length], NULL, NULL, 0);
  if (reader == NULL) {
    [NSException raise: @"XMLReadError"
                 format: @"Error instantiating an XML reader."];
    return nil;
  }

  _cOREWEBNS0LaakeSelosteTeksti = (COREWEBNS0LaakeSelosteTeksti *) [COREWEBNS0LaakeSelosteTeksti readXMLElement: reader];
  xmlFreeTextReader(reader); //free the reader
  return _cOREWEBNS0LaakeSelosteTeksti;
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
@end /* implementation COREWEBNS0LaakeSelosteTeksti */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0LaakeSelosteTeksti (JAXB) <JAXBReading, JAXBWriting, JAXBType, JAXBElement>

@end /*interface COREWEBNS0LaakeSelosteTeksti (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0LaakeSelosteTeksti (JAXB)

/**
 * Read an instance of COREWEBNS0LaakeSelosteTeksti from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0LaakeSelosteTeksti defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0LaakeSelosteTeksti *_cOREWEBNS0LaakeSelosteTeksti = [[COREWEBNS0LaakeSelosteTeksti alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0LaakeSelosteTeksti initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0LaakeSelosteTeksti = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0LaakeSelosteTeksti autorelease];
  return _cOREWEBNS0LaakeSelosteTeksti;
}

/**
 * Initialize this instance of COREWEBNS0LaakeSelosteTeksti according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0LaakeSelosteTeksti to the writer.
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
 * Reads a COREWEBNS0LaakeSelosteTeksti from an XML reader. The element to be read is
 * "laakeSelosteTeksti".
 *
 * @param reader The XML reader.
 * @return The COREWEBNS0LaakeSelosteTeksti.
 */
+ (id<JAXBElement>) readXMLElement: (xmlTextReaderPtr) reader {
  int status;
  COREWEBNS0LaakeSelosteTeksti *_laakeSelosteTeksti = nil;

  if (xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) {
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
    if (status < 1) {
      [NSException raise: @"XMLReadError"
                   format: @"Error advancing the reader to start element laakeSelosteTeksti."];
    }
  }

  if (xmlStrcmp(BAD_CAST "laakeSelosteTeksti", xmlTextReaderConstLocalName(reader)) == 0
      && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read root element {}laakeSelosteTeksti.");
#endif
    _laakeSelosteTeksti = (COREWEBNS0LaakeSelosteTeksti *)[COREWEBNS0LaakeSelosteTeksti readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Successfully read root element {}laakeSelosteTeksti.");
#endif
  }
  else {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakeSelosteTeksti. Expected element laakeSelosteTeksti. Current element: {}%s", xmlTextReaderConstLocalName(reader)];
    }
    else {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakeSelosteTeksti. Expected element laakeSelosteTeksti. Current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader)];
    }
  }

  return _laakeSelosteTeksti;
}

/**
 * Writes this COREWEBNS0LaakeSelosteTeksti to XML under element name "laakeSelosteTeksti".
 * The namespace declarations for the element will be written.
 *
 * @param writer The XML writer.
 * @param _laakeSelosteTeksti The LaakeSelosteTeksti to write.
 * @return 1 if successful, 0 otherwise.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer
{
  [self writeXMLElement: writer writeNamespaces: YES];
}

/**
 * Writes this COREWEBNS0LaakeSelosteTeksti to an XML writer.
 *
 * @param writer The writer.
 * @param writeNs Whether to write the namespaces for this element to the xml writer.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer writeNamespaces: (BOOL) writeNs
{
  int rc = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakeSelosteTeksti", NULL);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing start element {}laakeSelosteTeksti. XML writer status: %i\n", rc];
  }

#if DEBUG_ENUNCIATE > 1
  NSLog(@"writing type {}laakeSelosteTeksti for root element {}laakeSelosteTeksti...");
#endif
  [self writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
  NSLog(@"successfully wrote type {}laakeSelosteTeksti for root element {}laakeSelosteTeksti...");
#endif
  rc = xmlTextWriterEndElement(writer);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing end element {}laakeSelosteTeksti. XML writer status: %i\n", rc];
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
    && xmlStrcmp(BAD_CAST "otsikko", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setOtsikko: *((int*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "teksti", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}teksti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}teksti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setTeksti: __child];
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
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "otsikko", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}otsikko."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}otsikko...");
#endif
    status = xmlTextWriterWriteIntType(writer, &_otsikko);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}otsikko...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}otsikko."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}otsikko."];
    }
  }
  if ([self teksti]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "teksti", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}teksti."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}teksti...");
#endif
    [[self teksti] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}teksti...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}teksti."];
    }
  }
}
@end /* implementation COREWEBNS0LaakeSelosteTeksti (JAXB) */

#endif /* DEF_COREWEBNS0LaakeSelosteTeksti_M */
#ifndef DEF_COREWEBNS0LaakeKoostumus_M
#define DEF_COREWEBNS0LaakeKoostumus_M

/**
 *  DTO for LaakeKoostumus

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKE_KOOSTUMUS.html

 */
@implementation COREWEBNS0LaakeKoostumus

/**
 * Returns the part number of the medicine component
 */
- (int) osa
{
  return _osa;
}

/**
 * Returns the part number of the medicine component
 */
- (void) setOsa: (int) newOsa
{
  _osa = newOsa;
}

/**
 * Returns the type of the medicine component
 * -'B' if "pohja-aine"
 * -Perusaine, johon lis�aineet sekoitetaan
 * -'A' if "lis�aine"
 * -Lis�aineet ovat yleens� varsinaisia vaikuttavia aineita
 */
- (unsigned short) tyyppi
{
  return _tyyppi;
}

/**
 * Returns the type of the medicine component
 * -'B' if "pohja-aine"
 * -Perusaine, johon lis�aineet sekoitetaan
 * -'A' if "lis�aine"
 * -Lis�aineet ovat yleens� varsinaisia vaikuttavia aineita
 */
- (void) setTyyppi: (unsigned short) newTyyppi
{
  _tyyppi = newTyyppi;
}

/**
 * Returns the component code (VNR code)
 */
- (NSString *) komponentinKoodi
{
  return _komponentinKoodi;
}

/**
 * Returns the component code (VNR code)
 */
- (void) setKomponentinKoodi: (NSString *) newKomponentinKoodi
{
  [newKomponentinKoodi retain];
  [_komponentinKoodi release];
  _komponentinKoodi = newKomponentinKoodi;
}

/**
 * Returns the component in text format
 */
- (NSString *) komponentti
{
  return _komponentti;
}

/**
 * Returns the component in text format
 */
- (void) setKomponentti: (NSString *) newKomponentti
{
  [newKomponentti retain];
  [_komponentti release];
  _komponentti = newKomponentti;
}

/**
 * Returns the amount of component
 */
- (float *) maara
{
  return _maara;
}

/**
 * Returns the amount of component
 */
- (void) setMaara: (float *) newMaara
{
  if (_maara != NULL) {
    free(_maara);
  }
  _maara = newMaara;
}

/**
 * Returns the unit of amount
 */
- (NSString *) yksikko
{
  return _yksikko;
}

/**
 * Returns the unit of amount
 */
- (void) setYksikko: (NSString *) newYksikko
{
  [newYksikko retain];
  [_yksikko release];
  _yksikko = newYksikko;
}

/**
 * Returns the strength of the component
 */
- (float *) vahvuus
{
  return _vahvuus;
}

/**
 * Returns the strength of the component
 */
- (void) setVahvuus: (float *) newVahvuus
{
  if (_vahvuus != NULL) {
    free(_vahvuus);
  }
  _vahvuus = newVahvuus;
}

/**
 * Returns the unit of strength
 */
- (NSString *) vahvuusyksikko
{
  return _vahvuusyksikko;
}

/**
 * Returns the unit of strength
 */
- (void) setVahvuusyksikko: (NSString *) newVahvuusyksikko
{
  [newVahvuusyksikko retain];
  [_vahvuusyksikko release];
  _vahvuusyksikko = newVahvuusyksikko;
}

- (void) dealloc
{
  [self setKomponentinKoodi: nil];
  [self setKomponentti: nil];
  [self setMaara: NULL];
  [self setYksikko: nil];
  [self setVahvuus: NULL];
  [self setVahvuusyksikko: nil];
  [super dealloc];
}

//documentation inherited.
+ (id<EnunciateXML>) readFromXML: (NSData *) xml
{
  COREWEBNS0LaakeKoostumus *_cOREWEBNS0LaakeKoostumus;
  xmlTextReaderPtr reader = xmlReaderForMemory([xml bytes], [xml length], NULL, NULL, 0);
  if (reader == NULL) {
    [NSException raise: @"XMLReadError"
                 format: @"Error instantiating an XML reader."];
    return nil;
  }

  _cOREWEBNS0LaakeKoostumus = (COREWEBNS0LaakeKoostumus *) [COREWEBNS0LaakeKoostumus readXMLElement: reader];
  xmlFreeTextReader(reader); //free the reader
  return _cOREWEBNS0LaakeKoostumus;
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
@end /* implementation COREWEBNS0LaakeKoostumus */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0LaakeKoostumus (JAXB) <JAXBReading, JAXBWriting, JAXBType, JAXBElement>

@end /*interface COREWEBNS0LaakeKoostumus (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0LaakeKoostumus (JAXB)

/**
 * Read an instance of COREWEBNS0LaakeKoostumus from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0LaakeKoostumus defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0LaakeKoostumus *_cOREWEBNS0LaakeKoostumus = [[COREWEBNS0LaakeKoostumus alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0LaakeKoostumus initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0LaakeKoostumus = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0LaakeKoostumus autorelease];
  return _cOREWEBNS0LaakeKoostumus;
}

/**
 * Initialize this instance of COREWEBNS0LaakeKoostumus according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0LaakeKoostumus to the writer.
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
 * Reads a COREWEBNS0LaakeKoostumus from an XML reader. The element to be read is
 * "laakeKoostumus".
 *
 * @param reader The XML reader.
 * @return The COREWEBNS0LaakeKoostumus.
 */
+ (id<JAXBElement>) readXMLElement: (xmlTextReaderPtr) reader {
  int status;
  COREWEBNS0LaakeKoostumus *_laakeKoostumus = nil;

  if (xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) {
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
    if (status < 1) {
      [NSException raise: @"XMLReadError"
                   format: @"Error advancing the reader to start element laakeKoostumus."];
    }
  }

  if (xmlStrcmp(BAD_CAST "laakeKoostumus", xmlTextReaderConstLocalName(reader)) == 0
      && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read root element {}laakeKoostumus.");
#endif
    _laakeKoostumus = (COREWEBNS0LaakeKoostumus *)[COREWEBNS0LaakeKoostumus readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Successfully read root element {}laakeKoostumus.");
#endif
  }
  else {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakeKoostumus. Expected element laakeKoostumus. Current element: {}%s", xmlTextReaderConstLocalName(reader)];
    }
    else {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakeKoostumus. Expected element laakeKoostumus. Current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader)];
    }
  }

  return _laakeKoostumus;
}

/**
 * Writes this COREWEBNS0LaakeKoostumus to XML under element name "laakeKoostumus".
 * The namespace declarations for the element will be written.
 *
 * @param writer The XML writer.
 * @param _laakeKoostumus The LaakeKoostumus to write.
 * @return 1 if successful, 0 otherwise.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer
{
  [self writeXMLElement: writer writeNamespaces: YES];
}

/**
 * Writes this COREWEBNS0LaakeKoostumus to an XML writer.
 *
 * @param writer The writer.
 * @param writeNs Whether to write the namespaces for this element to the xml writer.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer writeNamespaces: (BOOL) writeNs
{
  int rc = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakeKoostumus", NULL);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing start element {}laakeKoostumus. XML writer status: %i\n", rc];
  }

#if DEBUG_ENUNCIATE > 1
  NSLog(@"writing type {}laakeKoostumus for root element {}laakeKoostumus...");
#endif
  [self writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
  NSLog(@"successfully wrote type {}laakeKoostumus for root element {}laakeKoostumus...");
#endif
  rc = xmlTextWriterEndElement(writer);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing end element {}laakeKoostumus. XML writer status: %i\n", rc];
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
    && xmlStrcmp(BAD_CAST "tyyppi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setTyyppi: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "komponentinKoodi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}komponentinKoodi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}komponentinKoodi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setKomponentinKoodi: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "komponentti", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}komponentti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}komponentti of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setKomponentti: __child];
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
    [self setMaara: ((float*) _child_accessor)];
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
    && xmlStrcmp(BAD_CAST "vahvuus", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadFloatType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setVahvuus: ((float*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "vahvuusyksikko", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}vahvuusyksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}vahvuusyksikko of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setVahvuusyksikko: __child];
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
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "tyyppi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}tyyppi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}tyyppi...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_tyyppi);
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
  if ([self komponentinKoodi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "komponentinKoodi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}komponentinKoodi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}komponentinKoodi...");
#endif
    [[self komponentinKoodi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}komponentinKoodi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}komponentinKoodi."];
    }
  }
  if ([self komponentti]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "komponentti", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}komponentti."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}komponentti...");
#endif
    [[self komponentti] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}komponentti...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}komponentti."];
    }
  }
  if ([self maara] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "maara", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}maara."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}maara...");
#endif
    status = xmlTextWriterWriteFloatType(writer, [self maara]);
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
  if ([self vahvuus] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "vahvuus", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}vahvuus."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}vahvuus...");
#endif
    status = xmlTextWriterWriteFloatType(writer, [self vahvuus]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}vahvuus...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}vahvuus."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}vahvuus."];
    }
  }
  if ([self vahvuusyksikko]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "vahvuusyksikko", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}vahvuusyksikko."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}vahvuusyksikko...");
#endif
    [[self vahvuusyksikko] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}vahvuusyksikko...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}vahvuusyksikko."];
    }
  }
}
@end /* implementation COREWEBNS0LaakeKoostumus (JAXB) */

#endif /* DEF_COREWEBNS0LaakeKoostumus_M */
#ifndef DEF_COREWEBNS0LaakeAnnostusSoveltuvuus_M
#define DEF_COREWEBNS0LaakeAnnostusSoveltuvuus_M

/**
 *  DTO for LaakeAnnostusSoveltuvuus

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKE_ANNOSTUS_SOVELTUVUUS.html

 */
@implementation COREWEBNS0LaakeAnnostusSoveltuvuus

/**
 * Returns the vnr code of the medicine
 */
- (NSString *) laake
{
  return _laake;
}

/**
 * Returns the vnr code of the medicine
 */
- (void) setLaake: (NSString *) newLaake
{
  [newLaake retain];
  [_laake release];
  _laake = newLaake;
}

/**
 * Returns the origin of the dosage
 * -'O' if current organization
 * -'A' or 'M' otherwise
 */
- (unsigned short *) alkupera
{
  return _alkupera;
}

/**
 * Returns the origin of the dosage
 * -'O' if current organization
 * -'A' or 'M' otherwise
 */
- (void) setAlkupera: (unsigned short *) newAlkupera
{
  if (_alkupera != NULL) {
    free(_alkupera);
  }
  _alkupera = newAlkupera;
}

/**
 * 
 */
- (COREWEBNS0LaakeAnnostus *) annostus
{
  return _annostus;
}

/**
 * 
 */
- (void) setAnnostus: (COREWEBNS0LaakeAnnostus *) newAnnostus
{
  [newAnnostus retain];
  [_annostus release];
  _annostus = newAnnostus;
}

- (void) dealloc
{
  [self setLaake: nil];
  [self setAlkupera: NULL];
  [self setAnnostus: nil];
  [super dealloc];
}

//documentation inherited.
+ (id<EnunciateXML>) readFromXML: (NSData *) xml
{
  COREWEBNS0LaakeAnnostusSoveltuvuus *_cOREWEBNS0LaakeAnnostusSoveltuvuus;
  xmlTextReaderPtr reader = xmlReaderForMemory([xml bytes], [xml length], NULL, NULL, 0);
  if (reader == NULL) {
    [NSException raise: @"XMLReadError"
                 format: @"Error instantiating an XML reader."];
    return nil;
  }

  _cOREWEBNS0LaakeAnnostusSoveltuvuus = (COREWEBNS0LaakeAnnostusSoveltuvuus *) [COREWEBNS0LaakeAnnostusSoveltuvuus readXMLElement: reader];
  xmlFreeTextReader(reader); //free the reader
  return _cOREWEBNS0LaakeAnnostusSoveltuvuus;
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
@end /* implementation COREWEBNS0LaakeAnnostusSoveltuvuus */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0LaakeAnnostusSoveltuvuus (JAXB) <JAXBReading, JAXBWriting, JAXBType, JAXBElement>

@end /*interface COREWEBNS0LaakeAnnostusSoveltuvuus (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0LaakeAnnostusSoveltuvuus (JAXB)

/**
 * Read an instance of COREWEBNS0LaakeAnnostusSoveltuvuus from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0LaakeAnnostusSoveltuvuus defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0LaakeAnnostusSoveltuvuus *_cOREWEBNS0LaakeAnnostusSoveltuvuus = [[COREWEBNS0LaakeAnnostusSoveltuvuus alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0LaakeAnnostusSoveltuvuus initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0LaakeAnnostusSoveltuvuus = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0LaakeAnnostusSoveltuvuus autorelease];
  return _cOREWEBNS0LaakeAnnostusSoveltuvuus;
}

/**
 * Initialize this instance of COREWEBNS0LaakeAnnostusSoveltuvuus according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0LaakeAnnostusSoveltuvuus to the writer.
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
 * Reads a COREWEBNS0LaakeAnnostusSoveltuvuus from an XML reader. The element to be read is
 * "laakeAnnostusSoveltuvuus".
 *
 * @param reader The XML reader.
 * @return The COREWEBNS0LaakeAnnostusSoveltuvuus.
 */
+ (id<JAXBElement>) readXMLElement: (xmlTextReaderPtr) reader {
  int status;
  COREWEBNS0LaakeAnnostusSoveltuvuus *_laakeAnnostusSoveltuvuus = nil;

  if (xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) {
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
    if (status < 1) {
      [NSException raise: @"XMLReadError"
                   format: @"Error advancing the reader to start element laakeAnnostusSoveltuvuus."];
    }
  }

  if (xmlStrcmp(BAD_CAST "laakeAnnostusSoveltuvuus", xmlTextReaderConstLocalName(reader)) == 0
      && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read root element {}laakeAnnostusSoveltuvuus.");
#endif
    _laakeAnnostusSoveltuvuus = (COREWEBNS0LaakeAnnostusSoveltuvuus *)[COREWEBNS0LaakeAnnostusSoveltuvuus readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Successfully read root element {}laakeAnnostusSoveltuvuus.");
#endif
  }
  else {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakeAnnostusSoveltuvuus. Expected element laakeAnnostusSoveltuvuus. Current element: {}%s", xmlTextReaderConstLocalName(reader)];
    }
    else {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakeAnnostusSoveltuvuus. Expected element laakeAnnostusSoveltuvuus. Current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader)];
    }
  }

  return _laakeAnnostusSoveltuvuus;
}

/**
 * Writes this COREWEBNS0LaakeAnnostusSoveltuvuus to XML under element name "laakeAnnostusSoveltuvuus".
 * The namespace declarations for the element will be written.
 *
 * @param writer The XML writer.
 * @param _laakeAnnostusSoveltuvuus The LaakeAnnostusSoveltuvuus to write.
 * @return 1 if successful, 0 otherwise.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer
{
  [self writeXMLElement: writer writeNamespaces: YES];
}

/**
 * Writes this COREWEBNS0LaakeAnnostusSoveltuvuus to an XML writer.
 *
 * @param writer The writer.
 * @param writeNs Whether to write the namespaces for this element to the xml writer.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer writeNamespaces: (BOOL) writeNs
{
  int rc = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakeAnnostusSoveltuvuus", NULL);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing start element {}laakeAnnostusSoveltuvuus. XML writer status: %i\n", rc];
  }

#if DEBUG_ENUNCIATE > 1
  NSLog(@"writing type {}laakeAnnostusSoveltuvuus for root element {}laakeAnnostusSoveltuvuus...");
#endif
  [self writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
  NSLog(@"successfully wrote type {}laakeAnnostusSoveltuvuus for root element {}laakeAnnostusSoveltuvuus...");
#endif
  rc = xmlTextWriterEndElement(writer);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing end element {}laakeAnnostusSoveltuvuus. XML writer status: %i\n", rc];
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
    && xmlStrcmp(BAD_CAST "alkupera", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadUnsignedShortType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setAlkupera: ((unsigned short*) _child_accessor)];
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "annostus", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}annostus of type {}laakeAnnostus.");
#endif
    __child = [COREWEBNS0LaakeAnnostus readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}annostus of type {}laakeAnnostus.");
#endif

    [self setAnnostus: __child];
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
  if ([self alkupera] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "alkupera", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}alkupera."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}alkupera...");
#endif
    status = xmlTextWriterWriteUnsignedShortType(writer, [self alkupera]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}alkupera...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}alkupera."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}alkupera."];
    }
  }
  if ([self annostus]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "annostus", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}annostus."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}annostus...");
#endif
    [[self annostus] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}annostus...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}annostus."];
    }
  }
}
@end /* implementation COREWEBNS0LaakeAnnostusSoveltuvuus (JAXB) */

#endif /* DEF_COREWEBNS0LaakeAnnostusSoveltuvuus_M */
#ifndef DEF_COREWEBNS0LaakeAine_M
#define DEF_COREWEBNS0LaakeAine_M

/**
 *  DTO for LaakeAine, data base table LAAKE_AINE

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKE_AINE.html

 */
@implementation COREWEBNS0LaakeAine

/**
 * Get medicine vnr code
 */
- (NSString *) laake
{
  return _laake;
}

/**
 * Get medicine vnr code
 */
- (void) setLaake: (NSString *) newLaake
{
  [newLaake retain];
  [_laake release];
  _laake = newLaake;
}

/**
 * Get medicine ingredient
 */
- (NSString *) aine
{
  return _aine;
}

/**
 * Get medicine ingredient
 */
- (void) setAine: (NSString *) newAine
{
  [newAine retain];
  [_aine release];
  _aine = newAine;
}

/**
 * Get ingredient amount
 */
- (float *) maara
{
  return _maara;
}

/**
 * Get ingredient amount
 */
- (void) setMaara: (float *) newMaara
{
  if (_maara != NULL) {
    free(_maara);
  }
  _maara = newMaara;
}

/**
 * Get ingredient amount unit
 */
- (NSString *) yksikko
{
  return _yksikko;
}

/**
 * Get ingredient amount unit
 */
- (void) setYksikko: (NSString *) newYksikko
{
  [newYksikko retain];
  [_yksikko release];
  _yksikko = newYksikko;
}

/**
 * Get the origin
 * -'O' if added by organization
 * -'A' or 'M' otherwise
 */
- (unsigned short) alkupera
{
  return _alkupera;
}

/**
 * Get the origin
 * -'O' if added by organization
 * -'A' or 'M' otherwise
 */
- (void) setAlkupera: (unsigned short) newAlkupera
{
  _alkupera = newAlkupera;
}

/**
 * Get the code for the ingredient (l��ketietokannasta)
 */
- (NSString *) ainekoodi
{
  return _ainekoodi;
}

/**
 * Get the code for the ingredient (l��ketietokannasta)
 */
- (void) setAinekoodi: (NSString *) newAinekoodi
{
  [newAinekoodi retain];
  [_ainekoodi release];
  _ainekoodi = newAinekoodi;
}

/**
 * Get the ATC code, if available
 */
- (NSString *) atc
{
  return _atc;
}

/**
 * Get the ATC code, if available
 */
- (void) setAtc: (NSString *) newAtc
{
  [newAtc retain];
  [_atc release];
  _atc = newAtc;
}

/**
 * Get the order number for the ingredient, if available
 */
- (int *) jarjestys
{
  return _jarjestys;
}

/**
 * Get the order number for the ingredient, if available
 */
- (void) setJarjestys: (int *) newJarjestys
{
  if (_jarjestys != NULL) {
    free(_jarjestys);
  }
  _jarjestys = newJarjestys;
}

- (void) dealloc
{
  [self setLaake: nil];
  [self setAine: nil];
  [self setMaara: NULL];
  [self setYksikko: nil];
  [self setAinekoodi: nil];
  [self setAtc: nil];
  [self setJarjestys: NULL];
  [super dealloc];
}

//documentation inherited.
+ (id<EnunciateXML>) readFromXML: (NSData *) xml
{
  COREWEBNS0LaakeAine *_cOREWEBNS0LaakeAine;
  xmlTextReaderPtr reader = xmlReaderForMemory([xml bytes], [xml length], NULL, NULL, 0);
  if (reader == NULL) {
    [NSException raise: @"XMLReadError"
                 format: @"Error instantiating an XML reader."];
    return nil;
  }

  _cOREWEBNS0LaakeAine = (COREWEBNS0LaakeAine *) [COREWEBNS0LaakeAine readXMLElement: reader];
  xmlFreeTextReader(reader); //free the reader
  return _cOREWEBNS0LaakeAine;
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
@end /* implementation COREWEBNS0LaakeAine */

/**
 * Internal, private interface for JAXB reading and writing.
 */
@interface COREWEBNS0LaakeAine (JAXB) <JAXBReading, JAXBWriting, JAXBType, JAXBElement>

@end /*interface COREWEBNS0LaakeAine (JAXB)*/

/**
 * Internal, private implementation for JAXB reading and writing.
 */
@implementation COREWEBNS0LaakeAine (JAXB)

/**
 * Read an instance of COREWEBNS0LaakeAine from an XML reader.
 *
 * @param reader The reader.
 * @return An instance of COREWEBNS0LaakeAine defined by the XML reader.
 */
+ (id<JAXBType>) readXMLType: (xmlTextReaderPtr) reader
{
  COREWEBNS0LaakeAine *_cOREWEBNS0LaakeAine = [[COREWEBNS0LaakeAine alloc] init];
  NS_DURING
  {
    [_cOREWEBNS0LaakeAine initWithReader: reader];
  }
  NS_HANDLER
  {
    _cOREWEBNS0LaakeAine = nil;
    [localException raise];
  }
  NS_ENDHANDLER

  [_cOREWEBNS0LaakeAine autorelease];
  return _cOREWEBNS0LaakeAine;
}

/**
 * Initialize this instance of COREWEBNS0LaakeAine according to
 * the XML being read from the reader.
 *
 * @param reader The reader.
 */
- (id) initWithReader: (xmlTextReaderPtr) reader
{
  return [super initWithReader: reader];
}

/**
 * Write the XML for this instance of COREWEBNS0LaakeAine to the writer.
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
 * Reads a COREWEBNS0LaakeAine from an XML reader. The element to be read is
 * "laakeAine".
 *
 * @param reader The XML reader.
 * @return The COREWEBNS0LaakeAine.
 */
+ (id<JAXBElement>) readXMLElement: (xmlTextReaderPtr) reader {
  int status;
  COREWEBNS0LaakeAine *_laakeAine = nil;

  if (xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) {
    status = xmlTextReaderAdvanceToNextStartOrEndElement(reader);
    if (status < 1) {
      [NSException raise: @"XMLReadError"
                   format: @"Error advancing the reader to start element laakeAine."];
    }
  }

  if (xmlStrcmp(BAD_CAST "laakeAine", xmlTextReaderConstLocalName(reader)) == 0
      && xmlTextReaderConstNamespaceUri(reader) == NULL) {
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read root element {}laakeAine.");
#endif
    _laakeAine = (COREWEBNS0LaakeAine *)[COREWEBNS0LaakeAine readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"Successfully read root element {}laakeAine.");
#endif
  }
  else {
    if (xmlTextReaderConstNamespaceUri(reader) == NULL) {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakeAine. Expected element laakeAine. Current element: {}%s", xmlTextReaderConstLocalName(reader)];
    }
    else {
      [NSException raise: @"XMLReadError"
                   format: @"Unable to read COREWEBNS0LaakeAine. Expected element laakeAine. Current element: {%s}%s\n", xmlTextReaderConstNamespaceUri(reader), xmlTextReaderConstLocalName(reader)];
    }
  }

  return _laakeAine;
}

/**
 * Writes this COREWEBNS0LaakeAine to XML under element name "laakeAine".
 * The namespace declarations for the element will be written.
 *
 * @param writer The XML writer.
 * @param _laakeAine The LaakeAine to write.
 * @return 1 if successful, 0 otherwise.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer
{
  [self writeXMLElement: writer writeNamespaces: YES];
}

/**
 * Writes this COREWEBNS0LaakeAine to an XML writer.
 *
 * @param writer The writer.
 * @param writeNs Whether to write the namespaces for this element to the xml writer.
 */
- (void) writeXMLElement: (xmlTextWriterPtr) writer writeNamespaces: (BOOL) writeNs
{
  int rc = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "laakeAine", NULL);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing start element {}laakeAine. XML writer status: %i\n", rc];
  }

#if DEBUG_ENUNCIATE > 1
  NSLog(@"writing type {}laakeAine for root element {}laakeAine...");
#endif
  [self writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
  NSLog(@"successfully wrote type {}laakeAine for root element {}laakeAine...");
#endif
  rc = xmlTextWriterEndElement(writer);
  if (rc < 0) {
    [NSException raise: @"XMLWriteError"
                 format: @"Error writing end element {}laakeAine. XML writer status: %i\n", rc];
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
    && xmlStrcmp(BAD_CAST "aine", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}aine of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}aine of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setAine: __child];
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
    [self setMaara: ((float*) _child_accessor)];
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
    && xmlStrcmp(BAD_CAST "alkupera", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadCharacterType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setAlkupera: *((unsigned short*) _child_accessor)];
    free(_child_accessor);
    return YES;
  }
  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "ainekoodi", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}ainekoodi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}ainekoodi of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setAinekoodi: __child];
    return YES;
  } //end "if choice"

  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "atc", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

#if DEBUG_ENUNCIATE > 1
    NSLog(@"Attempting to read choice {}atc of type {http://www.w3.org/2001/XMLSchema}string.");
#endif
    __child = [NSString readXMLType: reader];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully read choice {}atc of type {http://www.w3.org/2001/XMLSchema}string.");
#endif

    [self setAtc: __child];
    return YES;
  } //end "if choice"


  if (xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT
    && xmlStrcmp(BAD_CAST "jarjestys", xmlTextReaderConstLocalName(reader)) == 0
    && xmlTextReaderConstNamespaceUri(reader) == NULL) {

    _child_accessor = xmlTextReaderReadIntType(reader);
    if (_child_accessor == NULL) {
      //panic: unable to return the value for some reason.
      [NSException raise: @"XMLReadError"
                   format: @"Error reading element value."];
    }
    [self setJarjestys: ((int*) _child_accessor)];
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
  if ([self aine]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "aine", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}aine."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}aine...");
#endif
    [[self aine] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}aine...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}aine."];
    }
  }
  if ([self maara] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "maara", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}maara."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}maara...");
#endif
    status = xmlTextWriterWriteFloatType(writer, [self maara]);
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
  if (YES) { //always write the primitive element...
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "alkupera", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}alkupera."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}alkupera...");
#endif
    status = xmlTextWriterWriteCharacterType(writer, &_alkupera);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}alkupera...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}alkupera."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}alkupera."];
    }
  }
  if ([self ainekoodi]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "ainekoodi", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}ainekoodi."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}ainekoodi...");
#endif
    [[self ainekoodi] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}ainekoodi...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}ainekoodi."];
    }
  }
  if ([self atc]) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "atc", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}atc."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}atc...");
#endif
    [[self atc] writeXMLType: writer];
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}atc...");
#endif

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}atc."];
    }
  }
  if ([self jarjestys] != NULL) {
    status = xmlTextWriterStartElementNS(writer, NULL, BAD_CAST "jarjestys", NULL);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing start child element {}jarjestys."];
    }

#if DEBUG_ENUNCIATE > 1
    NSLog(@"writing element {}jarjestys...");
#endif
    status = xmlTextWriterWriteIntType(writer, [self jarjestys]);
#if DEBUG_ENUNCIATE > 1
    NSLog(@"successfully wrote element {}jarjestys...");
#endif
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing child element {}jarjestys."];
    }

    status = xmlTextWriterEndElement(writer);
    if (status < 0) {
      [NSException raise: @"XMLWriteError"
                   format: @"Error writing end child element {}jarjestys."];
    }
  }
}
@end /* implementation COREWEBNS0LaakeAine (JAXB) */

#endif /* DEF_COREWEBNS0LaakeAine_M */
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
