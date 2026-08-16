package org.xml.sax.helpers;

import java.io.IOException;
import java.util.Locale;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.DocumentHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.Parser;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/xml/sax/helpers/XMLReaderAdapter.class
 */
public class XMLReaderAdapter implements Parser, ContentHandler {
    public XMLReaderAdapter() throws SAXException {
        throw new RuntimeException("Stub!");
    }

    public XMLReaderAdapter(XMLReader xmlReader) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setLocale(Locale locale) throws SAXException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setEntityResolver(EntityResolver resolver) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setDTDHandler(DTDHandler handler) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setDocumentHandler(DocumentHandler handler) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setErrorHandler(ErrorHandler handler) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void parse(String systemId) throws IOException, SAXException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void parse(InputSource input) throws IOException, SAXException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setDocumentLocator(Locator locator) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void startDocument() throws SAXException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void endDocument() throws SAXException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void startPrefixMapping(String prefix, String uri) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void endPrefixMapping(String prefix) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void startElement(String uri, String localName, String qName, Attributes atts) throws SAXException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void endElement(String uri, String localName, String qName) throws SAXException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void characters(char[] ch2, int start, int length) throws SAXException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void ignorableWhitespace(char[] ch2, int start, int length) throws SAXException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void processingInstruction(String target, String data) throws SAXException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void skippedEntity(String name) throws SAXException {
        throw new RuntimeException("Stub!");
    }
}
