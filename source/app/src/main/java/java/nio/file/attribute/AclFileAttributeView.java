package java.nio.file.attribute;

import java.io.IOException;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/attribute/AclFileAttributeView.class
 */
public interface AclFileAttributeView extends FileOwnerAttributeView {
    @Override
    String name();

    List<AclEntry> getAcl() throws IOException;

    void setAcl(List<AclEntry> list) throws IOException;
}
