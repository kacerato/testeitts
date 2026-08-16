package java.nio.file.attribute;

import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/attribute/FileOwnerAttributeView.class
 */
public interface FileOwnerAttributeView extends FileAttributeView {
    @Override
    String name();

    UserPrincipal getOwner() throws IOException;

    void setOwner(UserPrincipal userPrincipal) throws IOException;
}
