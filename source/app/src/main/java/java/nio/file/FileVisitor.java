package java.nio.file;

import java.io.IOException;
import java.nio.file.attribute.BasicFileAttributes;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/FileVisitor.class
 */
public interface FileVisitor<T> {
    FileVisitResult preVisitDirectory(T t10, BasicFileAttributes basicFileAttributes) throws IOException;

    FileVisitResult visitFile(T t10, BasicFileAttributes basicFileAttributes) throws IOException;

    FileVisitResult visitFileFailed(T t10, IOException iOException) throws IOException;

    FileVisitResult postVisitDirectory(T t10, IOException iOException) throws IOException;
}
