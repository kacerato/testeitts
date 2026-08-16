package java.security;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/Certificate.class
 */
@Deprecated
public interface Certificate {
    Principal getGuarantor();

    Principal getPrincipal();

    PublicKey getPublicKey();

    void encode(OutputStream outputStream) throws KeyException, IOException;

    void decode(InputStream inputStream) throws KeyException, IOException;

    String getFormat();

    String toString(boolean z10);
}
