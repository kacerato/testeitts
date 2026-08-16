package javax.security.auth.callback;

import java.io.Serializable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/security/auth/callback/PasswordCallback.class
 */
public class PasswordCallback implements Callback, Serializable {
    public PasswordCallback(String prompt, boolean echoOn) {
        throw new RuntimeException("Stub!");
    }

    public String getPrompt() {
        throw new RuntimeException("Stub!");
    }

    public boolean isEchoOn() {
        throw new RuntimeException("Stub!");
    }

    public void setPassword(char[] password) {
        throw new RuntimeException("Stub!");
    }

    public char[] getPassword() {
        throw new RuntimeException("Stub!");
    }

    public void clearPassword() {
        throw new RuntimeException("Stub!");
    }
}
