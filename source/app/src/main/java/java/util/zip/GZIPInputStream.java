package java.util.zip;

import java.io.IOException;
import java.io.InputStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/zip/GZIPInputStream.class
 */
public class GZIPInputStream extends InflaterInputStream {
    public static final int GZIP_MAGIC = 35615;
    protected CRC32 crc;
    protected boolean eos;

    public GZIPInputStream(InputStream in2, int size) throws IOException {
        super((InputStream) null);
        throw new RuntimeException("Stub!");
    }

    public GZIPInputStream(InputStream in2) throws IOException {
        super((InputStream) null);
        throw new RuntimeException("Stub!");
    }

    @Override
    public int read(byte[] buf, int off, int len) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
