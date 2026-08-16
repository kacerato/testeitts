package android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.RemoteViews;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/RelativeLayout.class
 */
@RemoteViews.RemoteView
public class RelativeLayout extends ViewGroup {
    public static final int ABOVE = 2;
    public static final int ALIGN_BASELINE = 4;
    public static final int ALIGN_BOTTOM = 8;
    public static final int ALIGN_END = 19;
    public static final int ALIGN_LEFT = 5;
    public static final int ALIGN_PARENT_BOTTOM = 12;
    public static final int ALIGN_PARENT_END = 21;
    public static final int ALIGN_PARENT_LEFT = 9;
    public static final int ALIGN_PARENT_RIGHT = 11;
    public static final int ALIGN_PARENT_START = 20;
    public static final int ALIGN_PARENT_TOP = 10;
    public static final int ALIGN_RIGHT = 7;
    public static final int ALIGN_START = 18;
    public static final int ALIGN_TOP = 6;
    public static final int BELOW = 3;
    public static final int CENTER_HORIZONTAL = 14;
    public static final int CENTER_IN_PARENT = 13;
    public static final int CENTER_VERTICAL = 15;
    public static final int END_OF = 17;
    public static final int LEFT_OF = 0;
    public static final int RIGHT_OF = 1;
    public static final int START_OF = 16;
    public static final int TRUE = -1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/RelativeLayout$LayoutParams.class
 */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        @ViewDebug.ExportedProperty(category = "layout")
        public boolean alignWithParent;

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

        public LayoutParams(ViewGroup.MarginLayoutParams source) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(LayoutParams source) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public String debug(String output) {
            throw new RuntimeException("Stub!");
        }

        public void addRule(int verb) {
            throw new RuntimeException("Stub!");
        }

        public void addRule(int verb, int subject) {
            throw new RuntimeException("Stub!");
        }

        public void removeRule(int verb) {
            throw new RuntimeException("Stub!");
        }

        public int getRule(int verb) {
            throw new RuntimeException("Stub!");
        }

        public int[] getRules() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void resolveLayoutDirection(int layoutDirection) {
            throw new RuntimeException("Stub!");
        }
    }

    public RelativeLayout(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public RelativeLayout(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public RelativeLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public RelativeLayout(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean shouldDelayChildPressedState() {
        throw new RuntimeException("Stub!");
    }

    public void setIgnoreGravity(int viewId) {
        throw new RuntimeException("Stub!");
    }

    public int getGravity() {
        throw new RuntimeException("Stub!");
    }

    public void setGravity(int gravity) {
        throw new RuntimeException("Stub!");
    }

    public void setHorizontalGravity(int horizontalGravity) {
        throw new RuntimeException("Stub!");
    }

    public void setVerticalGravity(int verticalGravity) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getBaseline() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void requestLayout() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onLayout(boolean changed, int l10, int t10, int r10, int b10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LayoutParams generateLayoutParams(AttributeSet attrs) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
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
