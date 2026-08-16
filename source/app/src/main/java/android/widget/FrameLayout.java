package android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.RemoteViews;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/FrameLayout.class
 */
@RemoteViews.RemoteView
public class FrameLayout extends ViewGroup {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/FrameLayout$LayoutParams.class
 */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public static final int UNSPECIFIED_GRAVITY = -1;
        public int gravity;

        public LayoutParams(Context c10, AttributeSet attrs) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(int width, int height) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(int width, int height, int gravity) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(ViewGroup.LayoutParams source) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(ViewGroup.MarginLayoutParams source) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(LayoutParams source) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }
    }

    public FrameLayout(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public FrameLayout(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public FrameLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public FrameLayout(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setForegroundGravity(int foregroundGravity) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LayoutParams generateDefaultLayoutParams() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        throw new RuntimeException("Stub!");
    }

    public void setMeasureAllChildren(boolean measureAll) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean getConsiderGoneChildrenWhenMeasuring() {
        throw new RuntimeException("Stub!");
    }

    public boolean getMeasureAllChildren() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LayoutParams generateLayoutParams(AttributeSet attrs) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean shouldDelayChildPressedState() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean checkLayoutParams(ViewGroup.LayoutParams p10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams lp) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }
}
