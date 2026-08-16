package java.security.cert;

import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/cert/X509Extension.class
 */
public interface X509Extension {
    boolean hasUnsupportedCriticalExtension();

    Set<String> getCriticalExtensionOIDs();

    Set<String> getNonCriticalExtensionOIDs();

    byte[] getExtensionValue(String str);
}
