package javax.xml.parsers;

import javax.xml.validation.Schema;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/xml/parsers/DocumentBuilderFactory.class
 */
public abstract class DocumentBuilderFactory {
    public abstract DocumentBuilder newDocumentBuilder() throws ParserConfigurationException;

    public abstract void setAttribute(String str, Object obj) throws IllegalArgumentException;

    public abstract Object getAttribute(String str) throws IllegalArgumentException;

    public abstract void setFeature(String str, boolean z10) throws ParserConfigurationException;

    public abstract boolean getFeature(String str) throws ParserConfigurationException;

    protected DocumentBuilderFactory() {
        throw new RuntimeException("Stub!");
    }

    public static DocumentBuilderFactory newInstance() {
        throw new RuntimeException("Stub!");
    }

    public static DocumentBuilderFactory newInstance(String factoryClassName, ClassLoader classLoader) {
        throw new RuntimeException("Stub!");
    }

    public void setNamespaceAware(boolean awareness) {
        throw new RuntimeException("Stub!");
    }

    public void setValidating(boolean validating) {
        throw new RuntimeException("Stub!");
    }

    public void setIgnoringElementContentWhitespace(boolean whitespace) {
        throw new RuntimeException("Stub!");
    }

    public void setExpandEntityReferences(boolean expandEntityRef) {
        throw new RuntimeException("Stub!");
    }

    public void setIgnoringComments(boolean ignoreComments) {
        throw new RuntimeException("Stub!");
    }

    public void setCoalescing(boolean coalescing) {
        throw new RuntimeException("Stub!");
    }

    public boolean isNamespaceAware() {
        throw new RuntimeException("Stub!");
    }

    public boolean isValidating() {
        throw new RuntimeException("Stub!");
    }

    public boolean isIgnoringElementContentWhitespace() {
        throw new RuntimeException("Stub!");
    }

    public boolean isExpandEntityReferences() {
        throw new RuntimeException("Stub!");
    }

    public boolean isIgnoringComments() {
        throw new RuntimeException("Stub!");
    }

    public boolean isCoalescing() {
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
