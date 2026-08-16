package android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RemoteViews;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/GridLayout.class
 */
@RemoteViews.RemoteView
public class GridLayout extends ViewGroup {
    public static final int ALIGN_BOUNDS = 0;
    public static final int ALIGN_MARGINS = 1;
    public static final int HORIZONTAL = 0;
    public static final int UNDEFINED = Integer.MIN_VALUE;
    public static final int VERTICAL = 1;
    public static final Alignment BASELINE = null;
    public static final Alignment BOTTOM = null;
    public static final Alignment CENTER = null;
    public static final Alignment END = null;
    public static final Alignment FILL = null;
    public static final Alignment LEFT = null;
    public static final Alignment RIGHT = null;
    public static final Alignment START = null;
    public static final Alignment TOP = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/GridLayout$LayoutParams.class
 */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public Spec columnSpec;
        public Spec rowSpec;

        public LayoutParams(Spec rowSpec, Spec columnSpec) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams() {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(ViewGroup.LayoutParams params) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(ViewGroup.MarginLayoutParams params) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(LayoutParams source) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(Context context, AttributeSet attrs) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public void setGravity(int gravity) {
            throw new RuntimeException("Stub!");
        }

        @Override
        protected void setBaseAttributes(TypedArray attributes, int widthAttr, int heightAttr) {
            throw new RuntimeException("Stub!");
        }

        public boolean equals(Object o10) {
            throw new RuntimeException("Stub!");
        }

        public int hashCode() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/GridLayout$Spec.class
 */
    public static class Spec {
        Spec() {
            throw new RuntimeException("Stub!");
        }

        public boolean equals(Object that) {
            throw new RuntimeException("Stub!");
        }

        public int hashCode() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/GridLayout$Alignment.class
 */
    public static abstract class Alignment {
        Alignment() {
            throw new RuntimeException("Stub!");
        }
    }

    public GridLayout(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public GridLayout(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public GridLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public GridLayout(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public int getOrientation() {
        throw new RuntimeException("Stub!");
    }

    public void setOrientation(int orientation) {
        throw new RuntimeException("Stub!");
    }

    public int getRowCount() {
        throw new RuntimeException("Stub!");
    }

    public void setRowCount(int rowCount) {
        throw new RuntimeException("Stub!");
    }

    public int getColumnCount() {
        throw new RuntimeException("Stub!");
    }

    public void setColumnCount(int columnCount) {
        throw new RuntimeException("Stub!");
    }

    public boolean getUseDefaultMargins() {
        throw new RuntimeException("Stub!");
    }

    public void setUseDefaultMargins(boolean useDefaultMargins) {
        throw new RuntimeException("Stub!");
    }

    public int getAlignmentMode() {
        throw new RuntimeException("Stub!");
    }

    public void setAlignmentMode(int alignmentMode) {
        throw new RuntimeException("Stub!");
    }

    public boolean isRowOrderPreserved() {
        throw new RuntimeException("Stub!");
    }

    public void setRowOrderPreserved(boolean rowOrderPreserved) {
        throw new RuntimeException("Stub!");
    }

    public boolean isColumnOrderPreserved() {
        throw new RuntimeException("Stub!");
    }

    public void setColumnOrderPreserved(boolean columnOrderPreserved) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean checkLayoutParams(ViewGroup.LayoutParams p10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LayoutParams generateDefaultLayoutParams() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LayoutParams generateLayoutParams(AttributeSet attrs) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams lp) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onViewAdded(View child) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onViewRemoved(View child) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onMeasure(int widthSpec, int heightSpec) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void requestLayout() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }

    public static Spec spec(int start, int size, Alignment alignment, float weight) {
        throw new RuntimeException("Stub!");
    }

    public static Spec spec(int start, Alignment alignment, float weight) {
        throw new RuntimeException("Stub!");
    }

    public static Spec spec(int start, int size, float weight) {
        throw new RuntimeException("Stub!");
    }

    public static Spec spec(int start, float weight) {
        throw new RuntimeException("Stub!");
    }

    public static Spec spec(int start, int size, Alignment alignment) {
        throw new RuntimeException("Stub!");
    }

    public static Spec spec(int start, Alignment alignment) {
        throw new RuntimeException("Stub!");
    }

    public static Spec spec(int start, int size) {
        throw new RuntimeException("Stub!");
    }

    public static Spec spec(int start) {
        throw new RuntimeException("Stub!");
    }
}
