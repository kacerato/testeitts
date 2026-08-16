package javax.xml.parsers;

import javax.xml.validation.Schema;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/xml/parsers/SAXParserFactory.class
 */
public abstract class SAXParserFactory {
    public abstract SAXParser newSAXParser() throws ParserConfigurationException, SAXException;

    public abstract void setFeature(String str, boolean z10) throws ParserConfigurationException, SAXNotRecognizedException, SAXNotSupportedException;

    public abstract boolean getFeature(String str) throws ParserConfigurationException, SAXNotRecognizedException, SAXNotSupportedException;

    protected SAXParserFactory() {
        throw new RuntimeException("Stub!");
    }

    public static SAXParserFactory newInstance() {
        throw new RuntimeException("Stub!");
    }

    public static SAXParserFactory newInstance(String factoryClassName, ClassLoader classLoader) {
        throw new RuntimeException("Stub!");
    }

    public void setNamespaceAware(boolean awareness) {
        throw new RuntimeException("Stub!");
    }

    public void setValidating(boolean validating) {
        throw new RuntimeException("Stub!");
    }

    public boolean isNamespaceAware() {
        throw new RuntimeException("Stub!");
    }

    public boolean isValidating() {
        throw new RuntimeException("Stub!");
    }

    public Schema getSchema() {
        throw new RuntimeException("Stub!");
    }

    public void setSchema(Schema schema) {
        throw new RuntimeException("Stub!");
    }

    public void setXIncludeAware(boolean state) {
        throw new RuntimeException("Stub!");
    }

    public boolean isXIncludeAware() {
        throw new RuntimeException("Stub!");
    }
}
