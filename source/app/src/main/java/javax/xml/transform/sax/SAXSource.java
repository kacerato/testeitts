package javax.xml.transform.sax;

import javax.xml.transform.Source;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/xml/transform/sax/SAXSource.class
 */
public class SAXSource implements Source {
    public static final String FEATURE = "http://javax.xml.transform.sax.SAXSource/feature";

    public SAXSource() {
        throw new RuntimeException("Stub!");
    }

    public SAXSource(XMLReader reader, InputSource inputSource) {
        throw new RuntimeException("Stub!");
    }

    public SAXSource(InputSource inputSource) {
        throw new RuntimeException("Stub!");
    }

    public void setXMLReader(XMLReader reader) {
        throw new RuntimeException("Stub!");
    }

    public XMLReader getXMLReader() {
        throw new RuntimeException("Stub!");
    }

    public void setInputSource(InputSource inputSource) {
        throw new RuntimeException("Stub!");
    }

    public InputSource getInputSource() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setSystemId(String systemId) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getSystemId() {
        throw new RuntimeException("Stub!");
    }

    public static InputSource sourceToInputSource(Source source) {
        throw new RuntimeException("Stub!");
    }
}
