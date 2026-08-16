package java.nio.file;

import java.io.IOException;
import java.nio.file.attribute.FileAttributeView;
import java.nio.file.attribute.FileStoreAttributeView;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/FileStore.class
 */
public abstract class FileStore {
    public abstract String name();

    public abstract String type();

    public abstract boolean isReadOnly();

    public abstract long getTotalSpace() throws IOException;

    public abstract long getUsableSpace() throws IOException;

    public abstract long getUnallocatedSpace() throws IOException;

    public abstract boolean supportsFileAttributeView(Class<? extends FileAttributeView> cls);

    public abstract boolean supportsFileAttributeView(String str);

    public abstract <V extends FileStoreAttributeView> V getFileStoreAttributeView(Class<V> cls);

    public abstract Object getAttribute(String str) throws IOException;

    protected FileStore() {
        throw new RuntimeException("Stub!");
    }
}
