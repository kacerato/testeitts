package javax.security.auth;

import java.io.Serializable;
import java.security.AccessControlContext;
import java.security.Principal;
import java.security.PrivilegedAction;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/security/auth/Subject.class
 */
public final class Subject implements Serializable {
    public Subject() {
        throw new RuntimeException("Stub!");
    }

    public Subject(boolean readOnly, Set<? extends Principal> principals, Set<?> pubCredentials, Set<?> privCredentials) {
        throw new RuntimeException("Stub!");
    }

    public void setReadOnly() {
        throw new RuntimeException("Stub!");
    }

    public boolean isReadOnly() {
        throw new RuntimeException("Stub!");
    }

    public static Subject getSubject(AccessControlContext acc) {
        throw new RuntimeException("Stub!");
    }

    public static <T> T doAs(Subject subject, PrivilegedAction<T> action) {
        throw new RuntimeException("Stub!");
    }

    public static <T> T doAs(Subject subject, PrivilegedExceptionAction<T> action) throws PrivilegedActionException {
        throw new RuntimeException("Stub!");
    }

    public static <T> T doAsPrivileged(Subject subject, PrivilegedAction<T> action, AccessControlContext acc) {
        throw new RuntimeException("Stub!");
    }

    public static <T> T doAsPrivileged(Subject subject, PrivilegedExceptionAction<T> action, AccessControlContext acc) throws PrivilegedActionException {
        throw new RuntimeException("Stub!");
    }

    public Set<Principal> getPrincipals() {
        throw new RuntimeException("Stub!");
    }

    public <T extends Principal> Set<T> getPrincipals(Class<T> c10) {
        throw new RuntimeException("Stub!");
    }

    public Set<Object> getPublicCredentials() {
        throw new RuntimeException("Stub!");
    }

    public Set<Object> getPrivateCredentials() {
        throw new RuntimeException("Stub!");
    }

    public <T> Set<T> getPublicCredentials(Class<T> c10) {
        throw new RuntimeException("Stub!");
    }

    public <T> Set<T> getPrivateCredentials(Class<T> c10) {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }
}
