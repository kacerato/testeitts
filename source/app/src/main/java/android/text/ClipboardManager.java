package android.text;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/ClipboardManager.class
 */
@Deprecated
public abstract class ClipboardManager {
    public abstract CharSequence getText();

    public abstract void setText(CharSequence charSequence);

    public abstract boolean hasText();

    public ClipboardManager() {
        throw new RuntimeException("Stub!");
    }
}
