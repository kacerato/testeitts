package android.text.method;

import android.text.Editable;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.method.TextKeyListener;
import android.view.KeyEvent;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/method/MultiTapKeyListener.class
 */
public class MultiTapKeyListener extends BaseKeyListener implements SpanWatcher {
    public MultiTapKeyListener(TextKeyListener.Capitalize cap, boolean autotext) {
        throw new RuntimeException("Stub!");
    }

    public static MultiTapKeyListener getInstance(boolean autotext, TextKeyListener.Capitalize cap) {
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
    public void onSpanChanged(Spannable buf, Object what, int s10, int e10, int start, int stop) {
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
}
