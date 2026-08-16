package java.security.interfaces;

import java.security.InvalidParameterException;
import java.security.SecureRandom;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/interfaces/DSAKeyPairGenerator.class
 */
public interface DSAKeyPairGenerator {
    void initialize(DSAParams dSAParams, SecureRandom secureRandom) throws InvalidParameterException;

    void initialize(int i10, boolean z10, SecureRandom secureRandom) throws InvalidParameterException;
}
