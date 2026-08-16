package android.text.method;

import android.text.Spannable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.TextView;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/method/BaseMovementMethod.class
 */
public class BaseMovementMethod implements MovementMethod {
    public BaseMovementMethod() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean canSelectArbitrarily() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void initialize(TextView widget, Spannable text) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyDown(TextView widget, Spannable text, int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyOther(TextView widget, Spannable text, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyUp(TextView widget, Spannable text, int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onTakeFocus(TextView widget, Spannable text, int direction) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onTouchEvent(TextView widget, Spannable text, MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onTrackballEvent(TextView widget, Spannable text, MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onGenericMotionEvent(TextView widget, Spannable text, MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    protected int getMovementMetaState(Spannable buffer, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    protected boolean handleMovementKey(TextView widget, Spannable buffer, int keyCode, int movementMetaState, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    protected boolean left(TextView widget, Spannable buffer) {
        throw new RuntimeException("Stub!");
    }

    protected boolean right(TextView widget, Spannable buffer) {
        throw new RuntimeException("Stub!");
    }

    protected boolean up(TextView widget, Spannable buffer) {
        throw new RuntimeException("Stub!");
    }

    protected boolean down(TextView widget, Spannable buffer) {
        throw new RuntimeException("Stub!");
    }

    protected boolean pageUp(TextView widget, Spannable buffer) {
        throw new RuntimeException("Stub!");
    }

    protected boolean pageDown(TextView widget, Spannable buffer) {
        throw new RuntimeException("Stub!");
    }

    protected boolean top(TextView widget, Spannable buffer) {
        throw new RuntimeException("Stub!");
    }

    protected boolean bottom(TextView widget, Spannable buffer) {
        throw new RuntimeException("Stub!");
    }

    protected boolean lineStart(TextView widget, Spannable buffer) {
        throw new RuntimeException("Stub!");
    }

    protected boolean lineEnd(TextView widget, Spannable buffer) {
        throw new RuntimeException("Stub!");
    }

    protected boolean home(TextView widget, Spannable buffer) {
        throw new RuntimeException("Stub!");
    }

    protected boolean end(TextView widget, Spannable buffer) {
        throw new RuntimeException("Stub!");
    }
}
