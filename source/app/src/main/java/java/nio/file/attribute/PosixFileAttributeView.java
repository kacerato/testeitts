package java.nio.file.attribute;

import java.io.IOException;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/attribute/PosixFileAttributeView.class
 */
public interface PosixFileAttributeView extends BasicFileAttributeView, FileOwnerAttributeView {
    @Override
    String name();

    @Override
    PosixFileAttributes readAttributes() throws IOException;

    void setPermissions(Set<PosixFilePermission> set) throws IOException;

    void setGroup(GroupPrincipal groupPrincipal) throws IOException;
}
