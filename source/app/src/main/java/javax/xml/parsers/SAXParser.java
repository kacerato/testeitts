package javax.xml.parsers;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import javax.xml.validation.Schema;
import org.xml.sax.HandlerBase;
import org.xml.sax.InputSource;
import org.xml.sax.Parser;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/xml/parsers/SAXParser.class
 */
public abstract class SAXParser {
    public abstract Parser getParser() throws SAXException;

    public abstract XMLReader getXMLReader() throws SAXException;

    public abstract boolean isNamespaceAware();

    public abstract boolean isValidating();

    public abstract void setProperty(String str, Object obj) throws SAXNotRecognizedException, SAXNotSupportedException;

    public abstract Object getProperty(String str) throws SAXNotRecognizedException, SAXNotSupportedException;

    protected SAXParser() {
        throw new RuntimeException("Stub!");
    }

    public void reset() {
        throw new RuntimeException("Stub!");
    }

    public void parse(InputStream is, HandlerBase hb2) throws SAXException, IOException {
        throw new RuntimeException("Stub!");
    }

    public void parse(InputStream is, HandlerBase hb2, String systemId) throws SAXException, IOException {
        throw new RuntimeException("Stub!");
    }

    public void parse(InputStream is, DefaultHandler dh2) throws SAXException, IOException {
        throw new RuntimeException("Stub!");
    }

    public void parse(InputStream is, DefaultHandler dh2, String systemId) throws SAXException, IOException {
        throw new RuntimeException("Stub!");
    }

    public void parse(String uri, HandlerBase hb2) throws SAXException, IOException {
        throw new RuntimeException("Stub!");
    }

    public void parse(String uri, DefaultHandler dh2) throws SAXException, IOException {
        throw new RuntimeException("Stub!");
    }

    public void parse(File f10, HandlerBase hb2) throws SAXException, IOException {
        throw new RuntimeException("Stub!");
    }

    public void parse(File f10, DefaultHandler dh2) throws SAXException, IOException {
        throw new RuntimeException("Stub!");
    }

    public void parse(InputSource is, HandlerBase hb2) throws SAXException, IOException {
        throw new RuntimeException("Stub!");
    }

    public void parse(InputSource is, DefaultHandler dh2) throws SAXException, IOException {
        throw new RuntimeException("Stub!");
    }

    public Schema getSchema() {
        throw new RuntimeException("Stub!");
    }

    public boolean isXIncludeAware() {
        throw new RuntimeException("Stub!");
    }
}
