package java.util.zip;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/zip/InflaterOutputStream.class
 */
public class InflaterOutputStream extends FilterOutputStream {
    protected final byte[] buf;
    protected final Inflater inf;

    public InflaterOutputStream(OutputStream out) {
        super((OutputStream) null);
        this.buf = null;
        throw new RuntimeException("Stub!");
    }

    public InflaterOutputStream(OutputStream out, Inflater infl) {
        super((OutputStream) null);
        this.buf = null;
        throw new RuntimeException("Stub!");
    }

    public InflaterOutputStream(OutputStream out, Inflater infl, int bufLen) {
        super((OutputStream) null);
        this.buf = null;
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void flush() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void finish() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void write(int b10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void write(byte[] b10, int off, int len) throws IOException {
        throw new RuntimeException("Stub!");
    }
}
