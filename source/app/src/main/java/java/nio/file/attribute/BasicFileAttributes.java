package java.nio.file.attribute;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/attribute/BasicFileAttributes.class
 */
public interface BasicFileAttributes {
    FileTime lastModifiedTime();

    FileTime lastAccessTime();

    FileTime creationTime();

    boolean isRegularFile();

    boolean isDirectory();

    boolean isSymbolicLink();

    boolean isOther();

    long size();

    Object fileKey();
}
