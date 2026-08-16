package android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.LinearLayout;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/TableRow.class
 */
public class TableRow extends LinearLayout {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/TableRow$LayoutParams.class
 */
    public static class LayoutParams extends LinearLayout.LayoutParams {

        @ViewDebug.ExportedProperty(category = "layout")
        public int column;

        @ViewDebug.ExportedProperty(category = "layout")
        public int span;

        public LayoutParams(Context c10, AttributeSet attrs) {
            super((LinearLayout.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(int w10, int h10) {
            super((LinearLayout.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(int w10, int h10, float initWeight) {
            super((LinearLayout.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams() {
            super((LinearLayout.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(int column) {
            super((LinearLayout.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(ViewGroup.LayoutParams p10) {
            super((LinearLayout.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(ViewGroup.MarginLayoutParams source) {
            super((LinearLayout.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        @Override
        protected void setBaseAttributes(TypedArray a10, int widthAttr, int heightAttr) {
            throw new RuntimeException("Stub!");
        }
    }

    public TableRow(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public TableRow(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener listener) {
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

    public View getVirtualChildAt(int i10) {
        throw new RuntimeException("Stub!");
    }

    public int getVirtualChildCount() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LayoutParams generateLayoutParams(AttributeSet attrs) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LinearLayout.LayoutParams generateDefaultLayoutParams() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean checkLayoutParams(ViewGroup.LayoutParams p10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LinearLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams p10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }
}
