package android.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/SlidingDrawer.class
 */
@Deprecated
public class SlidingDrawer extends ViewGroup {
    public static final int ORIENTATION_HORIZONTAL = 0;
    public static final int ORIENTATION_VERTICAL = 1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/SlidingDrawer$OnDrawerCloseListener.class
 */
    public interface OnDrawerCloseListener {
        void onDrawerClosed();
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/SlidingDrawer$OnDrawerOpenListener.class
 */
    public interface OnDrawerOpenListener {
        void onDrawerOpened();
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/SlidingDrawer$OnDrawerScrollListener.class
 */
    public interface OnDrawerScrollListener {
        void onScrollStarted();

        void onScrollEnded();
    }

    public SlidingDrawer(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public SlidingDrawer(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public SlidingDrawer(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onFinishInflate() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onLayout(boolean changed, int l10, int t10, int r10, int b10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    public void toggle() {
        throw new RuntimeException("Stub!");
    }

    public void animateToggle() {
        throw new RuntimeException("Stub!");
    }

    public void open() {
        throw new RuntimeException("Stub!");
    }

    public void close() {
        throw new RuntimeException("Stub!");
    }

    public void animateClose() {
        throw new RuntimeException("Stub!");
    }

    public void animateOpen() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }

    public void setOnDrawerOpenListener(OnDrawerOpenListener onDrawerOpenListener) {
        throw new RuntimeException("Stub!");
    }

    public void setOnDrawerCloseListener(OnDrawerCloseListener onDrawerCloseListener) {
        throw new RuntimeException("Stub!");
    }

    public void setOnDrawerScrollListener(OnDrawerScrollListener onDrawerScrollListener) {
        throw new RuntimeException("Stub!");
    }

    public View getHandle() {
        throw new RuntimeException("Stub!");
    }

    public View getContent() {
        throw new RuntimeException("Stub!");
    }

    public void unlock() {
        throw new RuntimeException("Stub!");
    }

    public void lock() {
        throw new RuntimeException("Stub!");
    }

    public boolean isOpened() {
        throw new RuntimeException("Stub!");
    }

    public boolean isMoving() {
        throw new RuntimeException("Stub!");
    }
}
