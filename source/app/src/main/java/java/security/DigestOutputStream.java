package java.security;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/DigestOutputStream.class
 */
public class DigestOutputStream extends FilterOutputStream {
    protected MessageDigest digest;

    public DigestOutputStream(OutputStream stream, MessageDigest digest) {
        super((OutputStream) null);
        throw new RuntimeException("Stub!");
    }

    public MessageDigest getMessageDigest() {
        throw new RuntimeException("Stub!");
    }

    public void setMessageDigest(MessageDigest digest) {
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

    public void on(boolean on2) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
