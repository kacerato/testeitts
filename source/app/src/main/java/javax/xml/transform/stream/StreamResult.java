package javax.xml.transform.stream;

import java.io.File;
import java.io.OutputStream;
import java.io.Writer;
import javax.xml.transform.Result;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/xml/transform/stream/StreamResult.class
 */
public class StreamResult implements Result {
    public static final String FEATURE = "http://javax.xml.transform.stream.StreamResult/feature";

    public StreamResult() {
        throw new RuntimeException("Stub!");
    }

    public StreamResult(OutputStream outputStream) {
        throw new RuntimeException("Stub!");
    }

    public StreamResult(Writer writer) {
        throw new RuntimeException("Stub!");
    }

    public StreamResult(String systemId) {
        throw new RuntimeException("Stub!");
    }

    public StreamResult(File f10) {
        throw new RuntimeException("Stub!");
    }

    public void setOutputStream(OutputStream outputStream) {
        throw new RuntimeException("Stub!");
    }

    public OutputStream getOutputStream() {
        throw new RuntimeException("Stub!");
    }

    public void setWriter(Writer writer) {
        throw new RuntimeException("Stub!");
    }

    public Writer getWriter() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setSystemId(String systemId) {
        throw new RuntimeException("Stub!");
    }

    public void setSystemId(File f10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getSystemId() {
        throw new RuntimeException("Stub!");
    }
}
