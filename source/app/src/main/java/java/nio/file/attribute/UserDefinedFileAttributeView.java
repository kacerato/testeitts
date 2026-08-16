package java.nio.file.attribute;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/attribute/UserDefinedFileAttributeView.class
 */
public interface UserDefinedFileAttributeView extends FileAttributeView {
    @Override
    String name();

    List<String> list() throws IOException;

    int size(String str) throws IOException;

    int read(String str, ByteBuffer byteBuffer) throws IOException;

    int write(String str, ByteBuffer byteBuffer) throws IOException;

    void delete(String str) throws IOException;
}
