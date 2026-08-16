package android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RemoteViews;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/Chronometer.class
 */
@RemoteViews.RemoteView
public class Chronometer extends TextView {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/Chronometer$OnChronometerTickListener.class
 */
    public interface OnChronometerTickListener {
        void onChronometerTick(Chronometer chronometer);
    }

    public Chronometer(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public Chronometer(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public Chronometer(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public Chronometer(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public void setCountDown(boolean countDown) {
        throw new RuntimeException("Stub!");
    }

    public boolean isCountDown() {
        throw new RuntimeException("Stub!");
    }

    public boolean isTheFinalCountDown() {
        throw new RuntimeException("Stub!");
    }

    public void setBase(long base) {
        throw new RuntimeException("Stub!");
    }

    public long getBase() {
        throw new RuntimeException("Stub!");
    }

    public void setFormat(String format) {
        throw new RuntimeException("Stub!");
    }

    public String getFormat() {
        throw new RuntimeException("Stub!");
    }

    public void setOnChronometerTickListener(OnChronometerTickListener listener) {
        throw new RuntimeException("Stub!");
    }

    public OnChronometerTickListener getOnChronometerTickListener() {
        throw new RuntimeException("Stub!");
    }

    public void start() {
        throw new RuntimeException("Stub!");
    }

    public void stop() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDetachedFromWindow() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onWindowVisibilityChanged(int visibility) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onVisibilityChanged(View changedView, int visibility) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getContentDescription() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }
}
