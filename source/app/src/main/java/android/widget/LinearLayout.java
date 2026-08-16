package android.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.security.keystore.KeyProperties;
import android.util.AttributeSet;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.RemoteViews;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/LinearLayout.class
 */
@RemoteViews.RemoteView
public class LinearLayout extends ViewGroup {
    public static final int HORIZONTAL = 0;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/LinearLayout$LayoutParams.class
 */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        @ViewDebug.ExportedProperty(category = "layout", mapping = {@ViewDebug.IntToString(from = -1, to = KeyProperties.DIGEST_NONE), @ViewDebug.IntToString(from = 0, to = KeyProperties.DIGEST_NONE), @ViewDebug.IntToString(from = 48, to = "TOP"), @ViewDebug.IntToString(from = 80, to = "BOTTOM"), @ViewDebug.IntToString(from = 3, to = "LEFT"), @ViewDebug.IntToString(from = 5, to = "RIGHT"), @ViewDebug.IntToString(from = 8388611, to = "START"), @ViewDebug.IntToString(from = 8388613, to = "END"), @ViewDebug.IntToString(from = 16, to = "CENTER_VERTICAL"), @ViewDebug.IntToString(from = 112, to = "FILL_VERTICAL"), @ViewDebug.IntToString(from = 1, to = "CENTER_HORIZONTAL"), @ViewDebug.IntToString(from = 7, to = "FILL_HORIZONTAL"), @ViewDebug.IntToString(from = 17, to = "CENTER"), @ViewDebug.IntToString(from = 119, to = "FILL")})
        public int gravity;

        @ViewDebug.ExportedProperty(category = "layout")
        public float weight;

        public LayoutParams(Context c10, AttributeSet attrs) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(int width, int height) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(int width, int height, float weight) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(ViewGroup.LayoutParams p10) {
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
    }

    public LinearLayout(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public LinearLayout(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public LinearLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public LinearLayout(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public void setShowDividers(int showDividers) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean shouldDelayChildPressedState() {
        throw new RuntimeException("Stub!");
    }

    public int getShowDividers() {
        throw new RuntimeException("Stub!");
    }

    public Drawable getDividerDrawable() {
        throw new RuntimeException("Stub!");
    }

    public void setDividerDrawable(Drawable divider) {
        throw new RuntimeException("Stub!");
    }

    public void setDividerPadding(int padding) {
        throw new RuntimeException("Stub!");
    }

    public int getDividerPadding() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDraw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    public boolean isBaselineAligned() {
        throw new RuntimeException("Stub!");
    }

    public void setBaselineAligned(boolean baselineAligned) {
        throw new RuntimeException("Stub!");
    }

    public boolean isMeasureWithLargestChildEnabled() {
        throw new RuntimeException("Stub!");
    }

    public void setMeasureWithLargestChildEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getBaseline() {
        throw new RuntimeException("Stub!");
    }

    public int getBaselineAlignedChildIndex() {
        throw new RuntimeException("Stub!");
    }

    public void setBaselineAlignedChildIndex(int i10) {
        throw new RuntimeException("Stub!");
    }

    public float getWeightSum() {
        throw new RuntimeException("Stub!");
    }

    public void setWeightSum(float weightSum) {
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
    public void onRtlPropertiesChanged(int layoutDirection) {
        throw new RuntimeException("Stub!");
    }

    public void setOrientation(int orientation) {
        throw new RuntimeException("Stub!");
    }

    public int getOrientation() {
        throw new RuntimeException("Stub!");
    }

    public void setGravity(int gravity) {
        throw new RuntimeException("Stub!");
    }

    public int getGravity() {
        throw new RuntimeException("Stub!");
    }

    public void setHorizontalGravity(int horizontalGravity) {
        throw new RuntimeException("Stub!");
    }

    public void setVerticalGravity(int verticalGravity) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LayoutParams generateLayoutParams(AttributeSet attrs) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LayoutParams generateDefaultLayoutParams() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams lp) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean checkLayoutParams(ViewGroup.LayoutParams p10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }
}
