package javax.xml.parsers;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import javax.xml.validation.Schema;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/xml/parsers/DocumentBuilder.class
 */
public abstract class DocumentBuilder {
    public abstract Document parse(InputSource inputSource) throws SAXException, IOException;

    public abstract boolean isNamespaceAware();

    public abstract boolean isValidating();

    public abstract void setEntityResolver(EntityResolver entityResolver);

    public abstract void setErrorHandler(ErrorHandler errorHandler);

    public abstract Document newDocument();

    public abstract DOMImplementation getDOMImplementation();

    protected DocumentBuilder() {
        throw new RuntimeException("Stub!");
    }

    public void reset() {
        throw new RuntimeException("Stub!");
    }

    public Document parse(InputStream is) throws SAXException, IOException {
        throw new RuntimeException("Stub!");
    }

    public Document parse(InputStream is, String systemId) throws SAXException, IOException {
        throw new RuntimeException("Stub!");
    }

    public Document parse(String uri) throws SAXException, IOException {
        throw new RuntimeException("Stub!");
    }

    public Document parse(File f10) throws SAXException, IOException {
        throw new RuntimeException("Stub!");
    }

    public Schema getSchema() {
        throw new RuntimeException("Stub!");
    }

    public boolean isXIncludeAware() {
        throw new RuntimeException("Stub!");
    }
}
