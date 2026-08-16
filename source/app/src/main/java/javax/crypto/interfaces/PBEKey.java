package javax.crypto.interfaces;

import javax.crypto.SecretKey;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/crypto/interfaces/PBEKey.class
 */
public interface PBEKey extends SecretKey {
    public static final long serialVersionUID = -1430015993304333921L;

    char[] getPassword();

    byte[] getSalt();

    int getIterationCount();
}
