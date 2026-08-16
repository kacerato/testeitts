package android.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ContextMenu;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Transformation;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/Gallery.class
 */
@Deprecated
public class Gallery extends AbsSpinner implements GestureDetector.OnGestureListener {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/Gallery$LayoutParams.class
 */
    public static class LayoutParams extends ViewGroup.LayoutParams {
        public LayoutParams(Context c10, AttributeSet attrs) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(int w10, int h10) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(ViewGroup.LayoutParams source) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }
    }

    public Gallery(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public Gallery(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public Gallery(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public Gallery(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onAttachedToWindow() {
        throw new RuntimeException("Stub!");
    }

    public void setCallbackDuringFling(boolean shouldCallback) {
        throw new RuntimeException("Stub!");
    }

    public void setAnimationDuration(int animationDurationMillis) {
        throw new RuntimeException("Stub!");
    }

    public void setSpacing(int spacing) {
        throw new RuntimeException("Stub!");
    }

    public void setUnselectedAlpha(float unselectedAlpha) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean getChildStaticTransformation(View child, Transformation t10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int computeHorizontalScrollExtent() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int computeHorizontalScrollOffset() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int computeHorizontalScrollRange() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean checkLayoutParams(ViewGroup.LayoutParams p10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams p10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attrs) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onLayout(boolean changed, int l10, int t10, int r10, int b10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onSingleTapUp(MotionEvent e10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onFling(MotionEvent e12, MotionEvent e22, float velocityX, float velocityY) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onScroll(MotionEvent e12, MotionEvent e22, float distanceX, float distanceY) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onDown(MotionEvent e10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onLongPress(MotionEvent e10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onShowPress(MotionEvent e10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchSetSelected(boolean selected) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchSetPressed(boolean pressed) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ContextMenu.ContextMenuInfo getContextMenuInfo() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean showContextMenuForChild(View originalView) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean showContextMenuForChild(View originalView, float x10, float y10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean showContextMenu() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean showContextMenu(float x10, float y10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    public void setGravity(int gravity) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getChildDrawingOrder(int childCount, int i10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onFocusChanged(boolean gainFocus, int direction, Rect previouslyFocusedRect) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }
}
