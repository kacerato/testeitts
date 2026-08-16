package java.nio.file.spi;

import java.io.IOException;
import java.nio.file.Path;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/spi/FileTypeDetector.class
 */
public abstract class FileTypeDetector {
    public abstract String probeContentType(Path path) throws IOException;

    protected FileTypeDetector() {
        throw new RuntimeException("Stub!");
    }
}
