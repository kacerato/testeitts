package java.io;

import java.nio.charset.CharsetDecoder;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/io/FileReader.class
 */
public class FileReader extends InputStreamReader {
    public FileReader(String fileName) throws FileNotFoundException {
        super((InputStream) null, (CharsetDecoder) null);
        throw new RuntimeException("Stub!");
    }

    public FileReader(File file) throws FileNotFoundException {
        super((InputStream) null, (CharsetDecoder) null);
        throw new RuntimeException("Stub!");
    }

    public FileReader(FileDescriptor fd2) {
        super((InputStream) null, (CharsetDecoder) null);
        throw new RuntimeException("Stub!");
    }
}
