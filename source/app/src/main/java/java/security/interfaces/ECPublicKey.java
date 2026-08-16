package java.security.interfaces;

import java.security.PublicKey;
import java.security.spec.ECPoint;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/interfaces/ECPublicKey.class
 */
public interface ECPublicKey extends PublicKey, ECKey {
    public static final long serialVersionUID = -3314988629879632826L;

    ECPoint getW();
}
