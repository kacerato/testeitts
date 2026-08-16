package java.nio.file.attribute;

import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/attribute/DosFileAttributeView.class
 */
public interface DosFileAttributeView extends BasicFileAttributeView {
    @Override
    String name();

    @Override
    DosFileAttributes readAttributes() throws IOException;

    void setReadOnly(boolean z10) throws IOException;

    void setHidden(boolean z10) throws IOException;

    void setSystem(boolean z10) throws IOException;

    void setArchive(boolean z10) throws IOException;
}
