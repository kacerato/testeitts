package android.widget;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/DialerFilter.class
 */
@Deprecated
public class DialerFilter extends RelativeLayout {
    public static final int DIGITS_AND_LETTERS = 1;
    public static final int DIGITS_AND_LETTERS_NO_DIGITS = 2;
    public static final int DIGITS_AND_LETTERS_NO_LETTERS = 3;
    public static final int DIGITS_ONLY = 4;
    public static final int LETTERS_ONLY = 5;

    public DialerFilter(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public DialerFilter(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onFinishInflate() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onFocusChanged(boolean focused, int direction, Rect previouslyFocusedRect) {
        throw new RuntimeException("Stub!");
    }

    public boolean isQwertyKeyboard() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    public int getMode() {
        throw new RuntimeException("Stub!");
    }

    public void setMode(int newMode) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getLetters() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getDigits() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getFilterText() {
        throw new RuntimeException("Stub!");
    }

    public void append(String text) {
        throw new RuntimeException("Stub!");
    }

    public void clearText() {
        throw new RuntimeException("Stub!");
    }

    public void setLettersWatcher(TextWatcher watcher) {
        throw new RuntimeException("Stub!");
    }

    public void setDigitsWatcher(TextWatcher watcher) {
        throw new RuntimeException("Stub!");
    }

    public void setFilterWatcher(TextWatcher watcher) {
        throw new RuntimeException("Stub!");
    }

    public void removeFilterWatcher(TextWatcher watcher) {
        throw new RuntimeException("Stub!");
    }

    protected void onModeChange(int oldMode, int newMode) {
        throw new RuntimeException("Stub!");
    }
}
