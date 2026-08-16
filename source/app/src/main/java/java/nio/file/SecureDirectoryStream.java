package java.nio.file;

import java.io.IOException;
import java.nio.channels.SeekableByteChannel;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.FileAttributeView;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/SecureDirectoryStream.class
 */
public interface SecureDirectoryStream<T> extends DirectoryStream<T> {
    SecureDirectoryStream<T> newDirectoryStream(T t10, LinkOption... linkOptionArr) throws IOException;

    SeekableByteChannel newByteChannel(T t10, Set<? extends OpenOption> set, FileAttribute<?>... fileAttributeArr) throws IOException;

    void deleteFile(T t10) throws IOException;

    void deleteDirectory(T t10) throws IOException;

    void move(T t10, SecureDirectoryStream<T> secureDirectoryStream, T t11) throws IOException;

    <V extends FileAttributeView> V getFileAttributeView(Class<V> cls);

    <V extends FileAttributeView> V getFileAttributeView(T t10, Class<V> cls, LinkOption... linkOptionArr);
}
