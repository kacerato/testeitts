package org.xml.sax;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/xml/sax/HandlerBase.class
 */
@Deprecated
public class HandlerBase implements EntityResolver, DTDHandler, DocumentHandler, ErrorHandler {
    public HandlerBase() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public InputSource resolveEntity(String publicId, String systemId) throws SAXException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void notationDecl(String name, String publicId, String systemId) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void unparsedEntityDecl(String name, String publicId, String systemId, String notationName) {
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
    public void startElement(String name, AttributeList attributes) throws SAXException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void endElement(String name) throws SAXException {
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
