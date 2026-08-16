package org.xmlpull.v1.sax2;

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
import org.xml.sax.XMLReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/xmlpull/v1/sax2/Driver.class
 */
public class Driver implements Locator, XMLReader, Attributes {
    protected static final String APACHE_DYNAMIC_VALIDATION_FEATURE = "http://apache.org/xml/features/validation/dynamic";
    protected static final String APACHE_SCHEMA_VALIDATION_FEATURE = "http://apache.org/xml/features/validation/schema";
    protected static final String DECLARATION_HANDLER_PROPERTY = "http://xml.org/sax/properties/declaration-handler";
    protected static final String LEXICAL_HANDLER_PROPERTY = "http://xml.org/sax/properties/lexical-handler";
    protected static final String NAMESPACES_FEATURE = "http://xml.org/sax/features/namespaces";
    protected static final String NAMESPACE_PREFIXES_FEATURE = "http://xml.org/sax/features/namespace-prefixes";
    protected static final String VALIDATION_FEATURE = "http://xml.org/sax/features/validation";
    protected ContentHandler contentHandler;
    protected ErrorHandler errorHandler;
    protected XmlPullParser pp;
    protected String systemId;

    public Driver() throws XmlPullParserException {
        throw new RuntimeException("Stub!");
    }

    public Driver(XmlPullParser pp) throws XmlPullParserException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getLength() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getURI(int index) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getLocalName(int index) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getQName(int index) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getType(int index) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getValue(int index) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getIndex(String uri, String localName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getIndex(String qName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getType(String uri, String localName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getType(String qName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getValue(String uri, String localName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getValue(String qName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getPublicId() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getSystemId() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getLineNumber() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getColumnNumber() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean getFeature(String name) throws SAXNotRecognizedException, SAXNotSupportedException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setFeature(String name, boolean value) throws SAXNotRecognizedException, SAXNotSupportedException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Object getProperty(String name) throws SAXNotRecognizedException, SAXNotSupportedException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setProperty(String name, Object value) throws SAXNotRecognizedException, SAXNotSupportedException {
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
    public void parse(InputSource source) throws SAXException, IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void parse(String systemId) throws SAXException, IOException {
        throw new RuntimeException("Stub!");
    }

    public void parseSubTree(XmlPullParser pp) throws SAXException, IOException {
        throw new RuntimeException("Stub!");
    }

    protected void startElement(String namespace, String localName, String qName) throws SAXException {
        throw new RuntimeException("Stub!");
    }
}
