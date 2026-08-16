package java.security;

import java.io.ObjectStreamException;
import java.io.Serializable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/KeyRep.class
 */
public class KeyRep implements Serializable {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/KeyRep$Type.class
 */
    public enum Type {
        PRIVATE,
        PUBLIC,
        SECRET
    }

    public KeyRep(Type type, String algorithm, String format, byte[] encoded) {
        throw new RuntimeException("Stub!");
    }

    protected Object readResolve() throws ObjectStreamException {
        throw new RuntimeException("Stub!");
    }
}
