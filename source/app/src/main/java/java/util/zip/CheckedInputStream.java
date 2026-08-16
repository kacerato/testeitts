package java.util.zip;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/zip/CheckedInputStream.class
 */
public class CheckedInputStream extends FilterInputStream {
    public CheckedInputStream(InputStream in2, Checksum cksum) {
        super((InputStream) null);
        throw new RuntimeException("Stub!");
    }

    @Override
    public int read() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int read(byte[] buf, int off, int len) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long skip(long n10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public Checksum getChecksum() {
        throw new RuntimeException("Stub!");
    }
}
