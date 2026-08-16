package org.xml.sax.helpers;

import java.io.IOException;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/xml/sax/helpers/DefaultHandler.class
 */
public class DefaultHandler implements EntityResolver, DTDHandler, ContentHandler, ErrorHandler {
    public DefaultHandler() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public InputSource resolveEntity(String publicId, String systemId) throws IOException, SAXException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void notationDecl(String name, String publicId, String systemId) throws SAXException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void unparsedEntityDecl(String name, String publicId, String systemId, String notationName) throws SAXException {
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
    public void startPrefixMapping(String prefix, String uri) throws SAXException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void endPrefixMapping(String prefix) throws SAXException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
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

    @Override
    public void warning(SAXParseException e10) throws SAXException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void error(SAXParseException e10) throws SAXException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void fatalError(SAXParseException e10) throws SAXException {
        throw new RuntimeException("Stub!");
    }
}
