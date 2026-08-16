package javax.security.auth.callback;

import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/security/auth/callback/CallbackHandler.class
 */
public interface CallbackHandler {
    void handle(Callback[] callbackArr) throws IOException, UnsupportedCallbackException;
}
