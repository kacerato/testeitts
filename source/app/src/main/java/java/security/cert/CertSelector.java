package java.security.cert;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/cert/CertSelector.class
 */
public interface CertSelector extends Cloneable {
    boolean match(Certificate certificate);

    Object clone();
}
