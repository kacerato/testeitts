package java.nio.file.attribute;

import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/attribute/PosixFileAttributes.class
 */
public interface PosixFileAttributes extends BasicFileAttributes {
    UserPrincipal owner();

    GroupPrincipal group();

    Set<PosixFilePermission> permissions();
}
