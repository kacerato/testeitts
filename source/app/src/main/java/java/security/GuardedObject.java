package java.security;

import java.io.Serializable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/GuardedObject.class
 */
public class GuardedObject implements Serializable {
    public GuardedObject(Object object, Guard guard) {
        throw new RuntimeException("Stub!");
    }

    public Object getObject() throws SecurityException {
        throw new RuntimeException("Stub!");
    }
}
