package java.security.cert;

import java.io.IOException;
import java.io.OutputStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/cert/Extension.class
 */
public interface Extension {
    String getId();

    boolean isCritical();

    byte[] getValue();

    void encode(OutputStream outputStream) throws IOException;
}
