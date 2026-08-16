package java.nio.file;

import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.nio.file.WatchEvent;
import java.util.Iterator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/Path.class
 */
public interface Path extends Comparable<Path>, Iterable<Path>, Watchable {
    FileSystem getFileSystem();

    boolean isAbsolute();

    Path getRoot();

    Path getFileName();

    Path getParent();

    int getNameCount();

    Path getName(int i10);

    Path subpath(int i10, int i11);

    boolean startsWith(Path path);

    boolean startsWith(String str);

    boolean endsWith(Path path);

    boolean endsWith(String str);

    Path normalize();

    Path resolve(Path path);

    Path resolve(String str);

    Path resolveSibling(Path path);

    Path resolveSibling(String str);

    Path relativize(Path path);

    URI toUri();

    Path toAbsolutePath();

    Path toRealPath(LinkOption... linkOptionArr) throws IOException;

    File toFile();

    @Override
    WatchKey register(WatchService watchService, WatchEvent.Kind<?>[] kindArr, WatchEvent.Modifier... modifierArr) throws IOException;

    @Override
    WatchKey register(WatchService watchService, WatchEvent.Kind<?>... kindArr) throws IOException;

    @Override
    Iterator<Path> iterator();

    @Override
    int compareTo(Path path);

    boolean equals(Object obj);

    int hashCode();

    String toString();
}
