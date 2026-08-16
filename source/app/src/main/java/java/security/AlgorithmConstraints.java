package java.security;

import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/AlgorithmConstraints.class
 */
public interface AlgorithmConstraints {
    boolean permits(Set<CryptoPrimitive> set, String str, AlgorithmParameters algorithmParameters);

    boolean permits(Set<CryptoPrimitive> set, Key key);

    boolean permits(Set<CryptoPrimitive> set, String str, Key key, AlgorithmParameters algorithmParameters);
}
