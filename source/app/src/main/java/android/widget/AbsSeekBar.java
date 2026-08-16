package android.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/AbsSeekBar.class
 */
public abstract class AbsSeekBar extends ProgressBar {
    public AbsSeekBar(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public AbsSeekBar(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public AbsSeekBar(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public AbsSeekBar(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public void setThumb(Drawable thumb) {
        throw new RuntimeException("Stub!");
    }

    public Drawable getThumb() {
        throw new RuntimeException("Stub!");
    }

    public void setThumbTintList(ColorStateList tint) {
        throw new RuntimeException("Stub!");
    }

    public ColorStateList getThumbTintList() {
        throw new RuntimeException("Stub!");
    }

    public void setThumbTintMode(PorterDuff.Mode tintMode) {
        throw new RuntimeException("Stub!");
    }

    public PorterDuff.Mode getThumbTintMode() {
        throw new RuntimeException("Stub!");
    }

    public int getThumbOffset() {
        throw new RuntimeException("Stub!");
    }

    public void setThumbOffset(int thumbOffset) {
        throw new RuntimeException("Stub!");
    }

    public void setSplitTrack(boolean splitTrack) {
        throw new RuntimeException("Stub!");
    }

    public boolean getSplitTrack() {
        throw new RuntimeException("Stub!");
    }

    public void setTickMark(Drawable tickMark) {
        throw new RuntimeException("Stub!");
    }

    public Drawable getTickMark() {
        throw new RuntimeException("Stub!");
    }

    public void setTickMarkTintList(ColorStateList tint) {
        throw new RuntimeException("Stub!");
    }

    public ColorStateList getTickMarkTintList() {
        throw new RuntimeException("Stub!");
    }

    public void setTickMarkTintMode(PorterDuff.Mode tintMode) {
        throw new RuntimeException("Stub!");
    }

    public PorterDuff.Mode getTickMarkTintMode() {
        throw new RuntimeException("Stub!");
    }

    public void setKeyProgressIncrement(int increment) {
        throw new RuntimeException("Stub!");
    }

    public int getKeyProgressIncrement() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void setMin(int min) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void setMax(int max) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean verifyDrawable(Drawable who) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void jumpDrawablesToCurrentState() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void drawableStateChanged() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void drawableHotspotChanged(float x10, float y10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void onDraw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onRtlPropertiesChanged(int layoutDirection) {
        throw new RuntimeException("Stub!");
    }
}
