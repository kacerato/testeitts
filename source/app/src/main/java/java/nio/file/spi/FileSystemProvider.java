package java.nio.file.spi;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.nio.channels.AsynchronousFileChannel;
import java.nio.channels.FileChannel;
import java.nio.channels.SeekableByteChannel;
import java.nio.file.AccessMode;
import java.nio.file.CopyOption;
import java.nio.file.DirectoryStream;
import java.nio.file.FileStore;
import java.nio.file.FileSystem;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.FileAttributeView;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/spi/FileSystemProvider.class
 */
public abstract class FileSystemProvider {
    public abstract String getScheme();

    public abstract FileSystem newFileSystem(URI uri, Map<String, ?> map) throws IOException;

    public abstract FileSystem getFileSystem(URI uri);

    public abstract Path getPath(URI uri);

    public abstract SeekableByteChannel newByteChannel(Path path, Set<? extends OpenOption> set, FileAttribute<?>... fileAttributeArr) throws IOException;

    public abstract DirectoryStream<Path> newDirectoryStream(Path path, DirectoryStream.Filter<? super Path> filter) throws IOException;

    public abstract void createDirectory(Path path, FileAttribute<?>... fileAttributeArr) throws IOException;

    public abstract void delete(Path path) throws IOException;

    public abstract void copy(Path path, Path path2, CopyOption... copyOptionArr) throws IOException;

    public abstract void move(Path path, Path path2, CopyOption... copyOptionArr) throws IOException;

    public abstract boolean isSameFile(Path path, Path path2) throws IOException;

    public abstract boolean isHidden(Path path) throws IOException;

    public abstract FileStore getFileStore(Path path) throws IOException;

    public abstract void checkAccess(Path path, AccessMode... accessModeArr) throws IOException;

    public abstract <V extends FileAttributeView> V getFileAttributeView(Path path, Class<V> cls, LinkOption... linkOptionArr);

    public abstract <A extends BasicFileAttributes> A readAttributes(Path path, Class<A> cls, LinkOption... linkOptionArr) throws IOException;

    public abstract Map<String, Object> readAttributes(Path path, String str, LinkOption... linkOptionArr) throws IOException;

    public abstract void setAttribute(Path path, String str, Object obj, LinkOption... linkOptionArr) throws IOException;

    protected FileSystemProvider() {
        throw new RuntimeException("Stub!");
    }

    public static List<FileSystemProvider> installedProviders() {
        throw new RuntimeException("Stub!");
    }

    public FileSystem newFileSystem(Path path, Map<String, ?> env) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public InputStream newInputStream(Path path, OpenOption... options) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public OutputStream newOutputStream(Path path, OpenOption... options) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public FileChannel newFileChannel(Path path, Set<? extends OpenOption> options, FileAttribute<?>... attrs) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public AsynchronousFileChannel newAsynchronousFileChannel(Path path, Set<? extends OpenOption> options, ExecutorService executor, FileAttribute<?>... attrs) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void createSymbolicLink(Path link, Path target, FileAttribute<?>... attrs) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void createLink(Path link, Path existing) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public boolean deleteIfExists(Path path) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public Path readSymbolicLink(Path link) throws IOException {
        throw new RuntimeException("Stub!");
    }
}
