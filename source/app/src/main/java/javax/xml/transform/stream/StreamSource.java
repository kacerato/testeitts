package javax.xml.transform.stream;

import java.io.File;
import java.io.InputStream;
import java.io.Reader;
import javax.xml.transform.Source;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/xml/transform/stream/StreamSource.class
 */
public class StreamSource implements Source {
    public static final String FEATURE = "http://javax.xml.transform.stream.StreamSource/feature";

    public StreamSource() {
        throw new RuntimeException("Stub!");
    }

    public StreamSource(InputStream inputStream) {
        throw new RuntimeException("Stub!");
    }

    public StreamSource(InputStream inputStream, String systemId) {
        throw new RuntimeException("Stub!");
    }

    public StreamSource(Reader reader) {
        throw new RuntimeException("Stub!");
    }

    public StreamSource(Reader reader, String systemId) {
        throw new RuntimeException("Stub!");
    }

    public StreamSource(String systemId) {
        throw new RuntimeException("Stub!");
    }

    public StreamSource(File f10) {
        throw new RuntimeException("Stub!");
    }

    public void setInputStream(InputStream inputStream) {
        throw new RuntimeException("Stub!");
    }

    public InputStream getInputStream() {
        throw new RuntimeException("Stub!");
    }

    public void setReader(Reader reader) {
        throw new RuntimeException("Stub!");
    }

    public Reader getReader() {
        throw new RuntimeException("Stub!");
    }

    public void setPublicId(String publicId) {
        throw new RuntimeException("Stub!");
    }

    public String getPublicId() {
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

    public void setSystemId(File f10) {
        throw new RuntimeException("Stub!");
    }
}
