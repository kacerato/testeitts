package android.text.method;

import android.text.Spannable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.TextView;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/method/LinkMovementMethod.class
 */
public class LinkMovementMethod extends ScrollingMovementMethod {
    public LinkMovementMethod() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean canSelectArbitrarily() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected boolean handleMovementKey(TextView widget, Spannable buffer, int keyCode, int movementMetaState, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected boolean up(TextView widget, Spannable buffer) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected boolean down(TextView widget, Spannable buffer) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected boolean left(TextView widget, Spannable buffer) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected boolean right(TextView widget, Spannable buffer) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onTouchEvent(TextView widget, Spannable buffer, MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void initialize(TextView widget, Spannable text) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onTakeFocus(TextView view, Spannable text, int dir) {
        throw new RuntimeException("Stub!");
    }

    public static MovementMethod getInstance() {
        throw new RuntimeException("Stub!");
    }
}
