package java.util.zip;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/zip/DeflaterOutputStream.class
 */
public class DeflaterOutputStream extends FilterOutputStream {
    protected byte[] buf;
    protected Deflater def;

    public DeflaterOutputStream(OutputStream out, Deflater def, int size, boolean syncFlush) {
        super((OutputStream) null);
        this.buf = null;
        throw new RuntimeException("Stub!");
    }

    public DeflaterOutputStream(OutputStream out, Deflater def, int size) {
        super((OutputStream) null);
        this.buf = null;
        throw new RuntimeException("Stub!");
    }

    public DeflaterOutputStream(OutputStream out, Deflater def, boolean syncFlush) {
        super((OutputStream) null);
        this.buf = null;
        throw new RuntimeException("Stub!");
    }

    public DeflaterOutputStream(OutputStream out, Deflater def) {
        super((OutputStream) null);
        this.buf = null;
        throw new RuntimeException("Stub!");
    }

    public DeflaterOutputStream(OutputStream out, boolean syncFlush) {
        super((OutputStream) null);
        this.buf = null;
        throw new RuntimeException("Stub!");
    }

    public DeflaterOutputStream(OutputStream out) {
        super((OutputStream) null);
        this.buf = null;
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

    public void finish() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() throws IOException {
        throw new RuntimeException("Stub!");
    }

    protected void deflate() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void flush() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
