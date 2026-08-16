package java.security;

import javax.security.auth.Subject;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/Principal.class
 */
public interface Principal {
    boolean equals(Object obj);

    String toString();

    int hashCode();

    String getName();

    default boolean implies(Subject subject) {
        throw new RuntimeException("Stub!");
    }
}
