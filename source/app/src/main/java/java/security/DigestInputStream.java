package java.security;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/DigestInputStream.class
 */
public class DigestInputStream extends FilterInputStream {
    protected MessageDigest digest;

    public DigestInputStream(InputStream stream, MessageDigest digest) {
        super((InputStream) null);
        throw new RuntimeException("Stub!");
    }

    public MessageDigest getMessageDigest() {
        throw new RuntimeException("Stub!");
    }

    public void setMessageDigest(MessageDigest digest) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int read() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int read(byte[] b10, int off, int len) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void on(boolean on2) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
