package javax.xml.xpath;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/xml/xpath/XPathFactory.class
 */
public abstract class XPathFactory {
    public static final String DEFAULT_OBJECT_MODEL_URI = "http://java.sun.com/jaxp/xpath/dom";
    public static final String DEFAULT_PROPERTY_NAME = "javax.xml.xpath.XPathFactory";

    public abstract boolean isObjectModelSupported(String str);

    public abstract void setFeature(String str, boolean z10) throws XPathFactoryConfigurationException;

    public abstract boolean getFeature(String str) throws XPathFactoryConfigurationException;

    public abstract void setXPathVariableResolver(XPathVariableResolver xPathVariableResolver);

    public abstract void setXPathFunctionResolver(XPathFunctionResolver xPathFunctionResolver);

    public abstract XPath newXPath();

    protected XPathFactory() {
        throw new RuntimeException("Stub!");
    }

    public static final XPathFactory newInstance() {
        throw new RuntimeException("Stub!");
    }

    public static final XPathFactory newInstance(String uri) throws XPathFactoryConfigurationException {
        throw new RuntimeException("Stub!");
    }

    public static XPathFactory newInstance(String uri, String factoryClassName, ClassLoader classLoader) throws XPathFactoryConfigurationException {
        throw new RuntimeException("Stub!");
    }
}
