package org.xml.sax.helpers;

import java.io.IOException;
import org.xml.sax.AttributeList;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.DocumentHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.Parser;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/xml/sax/helpers/ParserAdapter.class
 */
public class ParserAdapter implements XMLReader, DocumentHandler {
    public ParserAdapter() throws SAXException {
        throw new RuntimeException("Stub!");
    }

    public ParserAdapter(Parser parser) {
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
    public void startElement(String qName, AttributeList qAtts) throws SAXException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void endElement(String qName) throws SAXException {
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
}
