package java.security.cert;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/cert/CRLSelector.class
 */
public interface CRLSelector extends Cloneable {
    boolean match(CRL crl);

    Object clone();
}
