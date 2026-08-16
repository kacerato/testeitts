package java.nio.file;

import java.io.IOException;
import java.util.ConcurrentModificationException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/DirectoryIteratorException.class
 */
public final class DirectoryIteratorException extends ConcurrentModificationException {
    public DirectoryIteratorException(IOException cause) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public IOException getCause() {
        throw new RuntimeException("Stub!");
    }
}
