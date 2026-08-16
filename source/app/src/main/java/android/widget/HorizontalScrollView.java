package android.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/HorizontalScrollView.class
 */
public class HorizontalScrollView extends FrameLayout {
    public HorizontalScrollView(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public HorizontalScrollView(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public HorizontalScrollView(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public HorizontalScrollView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    @Override
    public float getLeftFadingEdgeStrength() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public float getRightFadingEdgeStrength() {
        throw new RuntimeException("Stub!");
    }

    public int getMaxScrollAmount() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void addView(View child) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void addView(View child, int index) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void addView(View child, ViewGroup.LayoutParams params) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        throw new RuntimeException("Stub!");
    }

    public boolean isFillViewport() {
        throw new RuntimeException("Stub!");
    }

    public void setFillViewport(boolean fillViewport) {
        throw new RuntimeException("Stub!");
    }

    public boolean isSmoothScrollingEnabled() {
        throw new RuntimeException("Stub!");
    }

    public void setSmoothScrollingEnabled(boolean smoothScrollingEnabled) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    public boolean executeKeyEvent(KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void requestDisallowInterceptTouchEvent(boolean disallowIntercept) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onTouchEvent(MotionEvent ev) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onGenericMotionEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean shouldDelayChildPressedState() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onOverScrolled(int scrollX, int scrollY, boolean clampedX, boolean clampedY) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }

    public boolean pageScroll(int direction) {
        throw new RuntimeException("Stub!");
    }

    public boolean fullScroll(int direction) {
        throw new RuntimeException("Stub!");
    }

    public boolean arrowScroll(int direction) {
        throw new RuntimeException("Stub!");
    }

    public final void smoothScrollBy(int dx, int dy) {
        throw new RuntimeException("Stub!");
    }

    public final void smoothScrollTo(int x10, int y10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int computeHorizontalScrollRange() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int computeHorizontalScrollOffset() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void measureChild(View child, int parentWidthMeasureSpec, int parentHeightMeasureSpec) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void measureChildWithMargins(View child, int parentWidthMeasureSpec, int widthUsed, int parentHeightMeasureSpec, int heightUsed) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void computeScroll() {
        throw new RuntimeException("Stub!");
    }

    protected int computeScrollDeltaToGetChildRectOnScreen(Rect rect) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void requestChildFocus(View child, View focused) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onRequestFocusInDescendants(int direction, Rect previouslyFocusedRect) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean requestChildRectangleOnScreen(View child, Rect rectangle, boolean immediate) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void requestLayout() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onLayout(boolean changed, int l10, int t10, int r10, int b10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        throw new RuntimeException("Stub!");
    }

    public void fling(int velocityX) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void scrollTo(int x10, int y10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setOverScrollMode(int mode) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void draw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onRestoreInstanceState(Parcelable state) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Parcelable onSaveInstanceState() {
        throw new RuntimeException("Stub!");
    }
}
