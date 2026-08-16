package android.text;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/LoginFilter.class
 */
public abstract class LoginFilter implements InputFilter {
    public abstract boolean isAllowed(char c10);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/LoginFilter$UsernameFilterGMail.class
 */
    public static class UsernameFilterGMail extends LoginFilter {
        public UsernameFilterGMail() {
            throw new RuntimeException("Stub!");
        }

        public UsernameFilterGMail(boolean appendInvalid) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean isAllowed(char c10) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/LoginFilter$UsernameFilterGeneric.class
 */
    public static class UsernameFilterGeneric extends LoginFilter {
        public UsernameFilterGeneric() {
            throw new RuntimeException("Stub!");
        }

        public UsernameFilterGeneric(boolean appendInvalid) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean isAllowed(char c10) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/LoginFilter$PasswordFilterGMail.class
 */
    public static class PasswordFilterGMail extends LoginFilter {
        public PasswordFilterGMail() {
            throw new RuntimeException("Stub!");
        }

        public PasswordFilterGMail(boolean appendInvalid) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean isAllowed(char c10) {
            throw new RuntimeException("Stub!");
        }
    }

    LoginFilter() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence filter(CharSequence source, int start, int end, Spanned dest, int dstart, int dend) {
        throw new RuntimeException("Stub!");
    }

    public void onStart() {
        throw new RuntimeException("Stub!");
    }

    public void onInvalidCharacter(char c10) {
        throw new RuntimeException("Stub!");
    }

    public void onStop() {
        throw new RuntimeException("Stub!");
    }
}
