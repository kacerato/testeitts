package java.nio.file.attribute;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/attribute/DosFileAttributes.class
 */
public interface DosFileAttributes extends BasicFileAttributes {
    boolean isReadOnly();

    boolean isHidden();

    boolean isArchive();

    boolean isSystem();
}
