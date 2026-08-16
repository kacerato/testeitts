package java.util.zip;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Enumeration;
import java.util.stream.Stream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/zip/ZipFile.class
 */
public class ZipFile implements Closeable {
    public static final int CENATT = 36;
    public static final int CENATX = 38;
    public static final int CENCOM = 32;
    public static final int CENCRC = 16;
    public static final int CENDSK = 34;
    public static final int CENEXT = 30;
    public static final int CENFLG = 8;
    public static final int CENHDR = 46;
    public static final int CENHOW = 10;
    public static final int CENLEN = 24;
    public static final int CENNAM = 28;
    public static final int CENOFF = 42;
    public static final long CENSIG = 33639248;
    public static final int CENSIZ = 20;
    public static final int CENTIM = 12;
    public static final int CENVEM = 4;
    public static final int CENVER = 6;
    public static final int ENDCOM = 20;
    public static final int ENDHDR = 22;
    public static final int ENDOFF = 16;
    public static final long ENDSIG = 101010256;
    public static final int ENDSIZ = 12;
    public static final int ENDSUB = 8;
    public static final int ENDTOT = 10;
    public static final int EXTCRC = 4;
    public static final int EXTHDR = 16;
    public static final int EXTLEN = 12;
    public static final long EXTSIG = 134695760;
    public static final int EXTSIZ = 8;
    public static final int LOCCRC = 14;
    public static final int LOCEXT = 28;
    public static final int LOCFLG = 6;
    public static final int LOCHDR = 30;
    public static final int LOCHOW = 8;
    public static final int LOCLEN = 22;
    public static final int LOCNAM = 26;
    public static final long LOCSIG = 67324752;
    public static final int LOCSIZ = 18;
    public static final int LOCTIM = 10;
    public static final int LOCVER = 4;
    public static final int OPEN_DELETE = 4;
    public static final int OPEN_READ = 1;

    public ZipFile(String name) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public ZipFile(File file, int mode) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public ZipFile(File file) throws ZipException, IOException {
        throw new RuntimeException("Stub!");
    }

    public ZipFile(File file, int mode, Charset charset) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public ZipFile(String name, Charset charset) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public ZipFile(File file, Charset charset) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public String getComment() {
        throw new RuntimeException("Stub!");
    }

    public ZipEntry getEntry(String name) {
        throw new RuntimeException("Stub!");
    }

    public InputStream getInputStream(ZipEntry entry) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public String getName() {
        throw new RuntimeException("Stub!");
    }

    public Enumeration<? extends ZipEntry> entries() {
        throw new RuntimeException("Stub!");
    }

    public Stream<? extends ZipEntry> stream() {
        throw new RuntimeException("Stub!");
    }

    public int size() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() throws IOException {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
