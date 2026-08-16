package android.text.method;

import android.text.Editable;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.view.KeyEvent;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/method/TextKeyListener.class
 */
public class TextKeyListener extends BaseKeyListener implements SpanWatcher {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/method/TextKeyListener$Capitalize.class
 */
    public enum Capitalize {
        CHARACTERS,
        NONE,
        SENTENCES,
        WORDS
    }

    public TextKeyListener(Capitalize cap, boolean autotext) {
        throw new RuntimeException("Stub!");
    }

    public static TextKeyListener getInstance(boolean autotext, Capitalize cap) {
        throw new RuntimeException("Stub!");
    }

    public static TextKeyListener getInstance() {
        throw new RuntimeException("Stub!");
    }

    public static boolean shouldCap(Capitalize cap, CharSequence cs, int off) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getInputType() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyDown(View view, Editable content, int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyUp(View view, Editable content, int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyOther(View view, Editable content, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    public static void clear(Editable e10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onSpanAdded(Spannable s10, Object what, int start, int end) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onSpanRemoved(Spannable s10, Object what, int start, int end) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onSpanChanged(Spannable s10, Object what, int start, int end, int st, int en2) {
        throw new RuntimeException("Stub!");
    }

    public void release() {
        throw new RuntimeException("Stub!");
    }
}
