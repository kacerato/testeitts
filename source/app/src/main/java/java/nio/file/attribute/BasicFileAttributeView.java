package java.nio.file.attribute;

import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/attribute/BasicFileAttributeView.class
 */
public interface BasicFileAttributeView extends FileAttributeView {
    @Override
    String name();

    BasicFileAttributes readAttributes() throws IOException;

    void setTimes(FileTime fileTime, FileTime fileTime2, FileTime fileTime3) throws IOException;
}
