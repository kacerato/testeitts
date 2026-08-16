package java.security.cert;

import java.security.cert.CertPathValidatorException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/cert/PKIXReason.class
 */
public enum PKIXReason implements CertPathValidatorException.Reason {
    INVALID_KEY_USAGE,
    INVALID_NAME,
    INVALID_POLICY,
    NAME_CHAINING,
    NOT_CA_CERT,
    NO_TRUST_ANCHOR,
    PATH_TOO_LONG,
    UNRECOGNIZED_CRIT_EXT
}
