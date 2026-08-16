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
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.SAXParseException;
import org.xml.sax.XMLFilter;
import org.xml.sax.XMLReader;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/xml/sax/helpers/XMLFilterImpl.class
 */
public class XMLFilterImpl implements XMLFilter, EntityResolver, DTDHandler, ContentHandler, ErrorHandler {
    public XMLFilterImpl() {
        throw new RuntimeException("Stub!");
    }

    public XMLFilterImpl(XMLReader parent) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setParent(XMLReader parent) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public XMLReader getParent() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setFeature(String name, boolean value) throws SAXNotRecognizedException, SAXNotSupportedException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean getFeature(String name) throws SAXNotRecognizedException, SAXNotSupportedException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setProperty(String name, Object value) throws SAXNotRecognizedException, SAXNotSupportedException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Object getProperty(String name) throws SAXNotRecognizedException, SAXNotSupportedException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setEntityResolver(EntityResolver resolver) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public EntityResolver getEntityResolver() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setDTDHandler(DTDHandler handler) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public DTDHandler getDTDHandler() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setContentHandler(ContentHandler handler) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ContentHandler getContentHandler() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setErrorHandler(ErrorHandler handler) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ErrorHandler getErrorHandler() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void parse(InputSource input) throws SAXException, IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void parse(String systemId) throws SAXException, IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public InputSource resolveEntity(String publicId, String systemId) throws SAXException, IOException {
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
