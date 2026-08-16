package android.webkit;

import java.security.Principal;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/ClientCertRequest.class
 */
public abstract class ClientCertRequest {
    public abstract String[] getKeyTypes();

    public abstract Principal[] getPrincipals();

    public abstract String getHost();

    public abstract int getPort();

    public abstract void proceed(PrivateKey privateKey, X509Certificate[] x509CertificateArr);

    public abstract void ignore();

    public abstract void cancel();

    public ClientCertRequest() {
        throw new RuntimeException("Stub!");
    }
}
