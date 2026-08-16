package java.nio.file;

import java.io.IOException;
import java.nio.file.attribute.BasicFileAttributes;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/SimpleFileVisitor.class
 */
public class SimpleFileVisitor<T> implements FileVisitor<T> {
    public SimpleFileVisitor() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public FileVisitResult preVisitDirectory(T dir, BasicFileAttributes attrs) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public FileVisitResult visitFile(T file, BasicFileAttributes attrs) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public FileVisitResult visitFileFailed(T file, IOException exc) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public FileVisitResult postVisitDirectory(T dir, IOException exc) throws IOException {
        throw new RuntimeException("Stub!");
    }
}
