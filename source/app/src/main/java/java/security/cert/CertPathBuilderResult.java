package java.security.cert;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/cert/CertPathBuilderResult.class
 */
public interface CertPathBuilderResult extends Cloneable {
    CertPath getCertPath();

    Object clone();
}
