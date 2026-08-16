package android.text.method;

import android.text.Editable;
import android.view.KeyEvent;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/method/KeyListener.class
 */
public interface KeyListener {
    int getInputType();

    boolean onKeyDown(View view, Editable editable, int i10, KeyEvent keyEvent);

    boolean onKeyUp(View view, Editable editable, int i10, KeyEvent keyEvent);

    boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent);

    void clearMetaKeyState(View view, Editable editable, int i10);
}
