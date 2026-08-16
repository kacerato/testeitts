package android.text.method;

import android.text.Editable;
import android.text.Spannable;
import android.text.method.TextKeyListener;
import android.view.KeyEvent;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/method/QwertyKeyListener.class
 */
public class QwertyKeyListener extends BaseKeyListener {
    public QwertyKeyListener(TextKeyListener.Capitalize cap, boolean autoText) {
        throw new RuntimeException("Stub!");
    }

    public static QwertyKeyListener getInstance(boolean autoText, TextKeyListener.Capitalize cap) {
        throw new RuntimeException("Stub!");
    }

    public static QwertyKeyListener getInstanceForFullKeyboard() {
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

    public static void markAsReplaced(Spannable content, int start, int end, String original) {
        throw new RuntimeException("Stub!");
    }
}
