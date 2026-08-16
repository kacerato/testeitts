package javax.security.auth.x500;

import java.io.InputStream;
import java.io.Serializable;
import java.security.Principal;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/security/auth/x500/X500Principal.class
 */
public final class X500Principal implements Principal, Serializable {
    public static final String CANONICAL = "CANONICAL";
    public static final String RFC1779 = "RFC1779";
    public static final String RFC2253 = "RFC2253";

    public X500Principal(String name) {
        throw new RuntimeException("Stub!");
    }

    public X500Principal(String name, Map<String, String> keywordMap) {
        throw new RuntimeException("Stub!");
    }

    public X500Principal(byte[] name) {
        throw new RuntimeException("Stub!");
    }

    public X500Principal(InputStream is) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getName() {
        throw new RuntimeException("Stub!");
    }

    public String getName(String format) {
        throw new RuntimeException("Stub!");
    }

    public String getName(String format, Map<String, String> oidMap) {
        throw new RuntimeException("Stub!");
    }

    public byte[] getEncoded() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String toString() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int hashCode() {
        throw new RuntimeException("Stub!");
    }
}
