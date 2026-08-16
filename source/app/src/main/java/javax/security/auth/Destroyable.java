package javax.security.auth;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/security/auth/Destroyable.class
 */
public interface Destroyable {
    default void destroy() throws DestroyFailedException {
        throw new RuntimeException("Stub!");
    }

    default boolean isDestroyed() {
        throw new RuntimeException("Stub!");
    }
}
