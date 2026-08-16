package java.security;

import javax.security.auth.Subject;
import javax.security.auth.callback.CallbackHandler;
import javax.security.auth.login.LoginException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/AuthProvider.class
 */
public abstract class AuthProvider extends Provider {
    public abstract void login(Subject subject, CallbackHandler callbackHandler) throws LoginException;

    public abstract void logout() throws LoginException;

    public abstract void setCallbackHandler(CallbackHandler callbackHandler);

    protected AuthProvider(String name, double version, String info) {
        super((String) null, 0.0d, (String) null);
        throw new RuntimeException("Stub!");
    }
}
