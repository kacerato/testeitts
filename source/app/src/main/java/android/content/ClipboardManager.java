package android.content;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/ClipboardManager.class
 */
public class ClipboardManager extends android.text.ClipboardManager {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/ClipboardManager$OnPrimaryClipChangedListener.class
 */
    public interface OnPrimaryClipChangedListener {
        void onPrimaryClipChanged();
    }

    ClipboardManager() {
        throw new RuntimeException("Stub!");
    }

    public void setPrimaryClip(ClipData clip) {
        throw new RuntimeException("Stub!");
    }

    public ClipData getPrimaryClip() {
        throw new RuntimeException("Stub!");
    }

    public ClipDescription getPrimaryClipDescription() {
        throw new RuntimeException("Stub!");
    }

    public boolean hasPrimaryClip() {
        throw new RuntimeException("Stub!");
    }

    public void addPrimaryClipChangedListener(OnPrimaryClipChangedListener what) {
        throw new RuntimeException("Stub!");
    }

    public void removePrimaryClipChangedListener(OnPrimaryClipChangedListener what) {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public CharSequence getText() {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public void setText(CharSequence text) {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public boolean hasText() {
        throw new RuntimeException("Stub!");
    }
}
