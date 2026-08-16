package android.text.method;

import android.text.Editable;
import android.view.KeyEvent;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/method/BaseKeyListener.class
 */
public abstract class BaseKeyListener extends MetaKeyKeyListener implements KeyListener {
    public BaseKeyListener() {
        throw new RuntimeException("Stub!");
    }

    public boolean backspace(View view, Editable content, int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    public boolean forwardDelete(View view, Editable content, int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyDown(View view, Editable content, int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyOther(View view, Editable content, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }
}
