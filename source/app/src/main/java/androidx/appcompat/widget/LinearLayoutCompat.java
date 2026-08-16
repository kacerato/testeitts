package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import androidx.appcompat.R;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import z1.C16241a;

public class LinearLayoutCompat extends ViewGroup {
    private static final String ACCESSIBILITY_CLASS_NAME = "androidx.appcompat.widget.LinearLayoutCompat";
    public static final int HORIZONTAL = 0;
    private static final int INDEX_BOTTOM = 2;
    private static final int INDEX_CENTER_VERTICAL = 0;
    private static final int INDEX_FILL = 3;
    private static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_GRAVITY_COUNT = 4;
    private boolean mBaselineAligned;
    private int mBaselineAlignedChildIndex;
    private int mBaselineChildTop;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;
    private int mGravity;
    private int[] mMaxAscent;
    private int[] mMaxDescent;
    private int mOrientation;
    private int mShowDividers;
    private int mTotalLength;
    private boolean mUseLargestChild;
    private float mWeightSum;

    @Retention(RetentionPolicy.SOURCE)
    public @interface DividerMode {
    }

    public static class LayoutParams extends LinearLayout.LayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i10, int i11) {
            super(i10, i11);
        }

        public LayoutParams(int i10, int i11, float f10) {
            super(i10, i11, f10);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OrientationMode {
    }

    public LinearLayoutCompat(Context context) {
        this(context, null);
    }

    private void forceUniformHeight(int i10, int i11) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i12 = 0; i12 < i10; i12++) {
            View virtualChildAt = getVirtualChildAt(i12);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.height == -1) {
                    int i13 = layoutParams.width;
                    layoutParams.width = virtualChildAt.getMeasuredWidth();
                    measureChildWithMargins(virtualChildAt, i11, 0, makeMeasureSpec, 0);
                    layoutParams.width = i13;
                }
            }
        }
    }

    private void forceUniformWidth(int i10, int i11) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i12 = 0; i12 < i10; i12++) {
            View virtualChildAt = getVirtualChildAt(i12);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.width == -1) {
                    int i13 = layoutParams.height;
                    layoutParams.height = virtualChildAt.getMeasuredHeight();
                    measureChildWithMargins(virtualChildAt, makeMeasureSpec, 0, i11, 0);
                    layoutParams.height = i13;
                }
            }
        }
    }

    private void setChildFrame(View view, int i10, int i11, int i12, int i13) {
        view.layout(i10, i11, i12 + i10, i13 + i11);
    }

    @Override
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public void drawDividersHorizontal(Canvas canvas) {
        int right;
        int left;
        int i10;
        int virtualChildCount = getVirtualChildCount();
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        for (int i11 = 0; i11 < virtualChildCount; i11++) {
            View virtualChildAt = getVirtualChildAt(i11);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i11)) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                drawVerticalDivider(canvas, isLayoutRtl ? virtualChildAt.getRight() + layoutParams.rightMargin : (virtualChildAt.getLeft() - layoutParams.leftMargin) - this.mDividerWidth);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 != null) {
                LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                if (isLayoutRtl) {
                    left = virtualChildAt2.getLeft() - layoutParams2.leftMargin;
                    i10 = this.mDividerWidth;
                    right = left - i10;
                } else {
                    right = virtualChildAt2.getRight() + layoutParams2.rightMargin;
                }
            } else if (isLayoutRtl) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i10 = this.mDividerWidth;
                right = left - i10;
            }
            drawVerticalDivider(canvas, right);
        }
    }

    public void drawDividersVertical(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        for (int i10 = 0; i10 < virtualChildCount; i10++) {
            View virtualChildAt = getVirtualChildAt(i10);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i10)) {
                drawHorizontalDivider(canvas, (virtualChildAt.getTop() - ((LayoutParams) virtualChildAt.getLayoutParams()).topMargin) - this.mDividerHeight);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            drawHorizontalDivider(canvas, virtualChildAt2 == null ? (getHeight() - getPaddingBottom()) - this.mDividerHeight : virtualChildAt2.getBottom() + ((LayoutParams) virtualChildAt2.getLayoutParams()).bottomMargin);
        }
    }

    public void drawHorizontalDivider(Canvas canvas, int i10) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i10, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + i10);
        this.mDivider.draw(canvas);
    }

    public void drawVerticalDivider(Canvas canvas, int i10) {
        this.mDivider.setBounds(i10, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + i10, (getHeight() - getPaddingBottom()) - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    @Override
    public int getBaseline() {
        int i10;
        if (this.mBaselineAlignedChildIndex < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i11 = this.mBaselineAlignedChildIndex;
        if (childCount <= i11) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i11);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.mBaselineAlignedChildIndex == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int i12 = this.mBaselineChildTop;
        if (this.mOrientation == 1 && (i10 = this.mGravity & 112) != 48) {
            if (i10 == 16) {
                i12 += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.mTotalLength) / 2;
            } else if (i10 == 80) {
                i12 = ((getBottom() - getTop()) - getPaddingBottom()) - this.mTotalLength;
            }
        }
        return i12 + ((LayoutParams) childAt.getLayoutParams()).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    public int getChildrenSkipCount(View view, int i10) {
        return 0;
    }

    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    public int getGravity() {
        return this.mGravity;
    }

    public int getLocationOffset(View view) {
        return 0;
    }

    public int getNextLocationOffset(View view) {
        return 0;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    public View getVirtualChildAt(int i10) {
        return getChildAt(i10);
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.mWeightSum;
    }

    public boolean hasDividerBeforeChildAt(int i10) {
        if (i10 == 0) {
            return (this.mShowDividers & 1) != 0;
        }
        if (i10 == getChildCount()) {
            return (this.mShowDividers & 4) != 0;
        }
        if ((this.mShowDividers & 2) == 0) {
            return false;
        }
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            if (getChildAt(i11).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    public boolean isBaselineAligned() {
        return this.mBaselineAligned;
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.mUseLargestChild;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void layoutHorizontal(int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        boolean z10;
        int i19;
        int i20;
        int i21;
        int i22;
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        int paddingTop = getPaddingTop();
        int i23 = i13 - i11;
        int paddingBottom = i23 - getPaddingBottom();
        int paddingBottom2 = (i23 - paddingTop) - getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i24 = this.mGravity;
        int i25 = i24 & 112;
        boolean z11 = this.mBaselineAligned;
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(8388615 & i24, ViewCompat.getLayoutDirection(this));
        boolean z12 = true;
        int paddingLeft = absoluteGravity != 1 ? absoluteGravity != 5 ? getPaddingLeft() : ((getPaddingLeft() + i12) - i10) - this.mTotalLength : getPaddingLeft() + (((i12 - i10) - this.mTotalLength) / 2);
        if (isLayoutRtl) {
            i14 = virtualChildCount - 1;
            i15 = -1;
        } else {
            i14 = 0;
            i15 = 1;
        }
        int i26 = 0;
        while (i26 < virtualChildCount) {
            int i27 = i14 + (i15 * i26);
            View virtualChildAt = getVirtualChildAt(i27);
            if (virtualChildAt == null) {
                paddingLeft += measureNullChild(i27);
                z10 = z12;
                i16 = paddingTop;
                i17 = virtualChildCount;
                i18 = i25;
            } else if (virtualChildAt.getVisibility() != 8) {
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight = virtualChildAt.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                int i28 = i26;
                if (z11) {
                    i17 = virtualChildCount;
                    if (layoutParams.height != -1) {
                        i19 = virtualChildAt.getBaseline();
                        i20 = layoutParams.gravity;
                        if (i20 < 0) {
                            i20 = i25;
                        }
                        i21 = i20 & 112;
                        i18 = i25;
                        if (i21 == 16) {
                            if (i21 == 48) {
                                i22 = layoutParams.topMargin + paddingTop;
                                if (i19 != -1) {
                                    z10 = true;
                                    i22 += iArr[1] - i19;
                                }
                            } else if (i21 != 80) {
                                i22 = paddingTop;
                            } else {
                                i22 = (paddingBottom - measuredHeight) - layoutParams.bottomMargin;
                                if (i19 != -1) {
                                    i22 -= iArr2[2] - (virtualChildAt.getMeasuredHeight() - i19);
                                }
                            }
                            z10 = true;
                        } else {
                            z10 = true;
                            i22 = ((((paddingBottom2 - measuredHeight) / 2) + paddingTop) + layoutParams.topMargin) - layoutParams.bottomMargin;
                        }
                        if (hasDividerBeforeChildAt(i27)) {
                            paddingLeft += this.mDividerWidth;
                        }
                        int i29 = layoutParams.leftMargin + paddingLeft;
                        i16 = paddingTop;
                        setChildFrame(virtualChildAt, i29 + getLocationOffset(virtualChildAt), i22, measuredWidth, measuredHeight);
                        int nextLocationOffset = i29 + measuredWidth + layoutParams.rightMargin + getNextLocationOffset(virtualChildAt);
                        i26 = i28 + getChildrenSkipCount(virtualChildAt, i27);
                        paddingLeft = nextLocationOffset;
                        i26++;
                        virtualChildCount = i17;
                        i25 = i18;
                        z12 = z10;
                        paddingTop = i16;
                    }
                } else {
                    i17 = virtualChildCount;
                }
                i19 = -1;
                i20 = layoutParams.gravity;
                if (i20 < 0) {
                }
                i21 = i20 & 112;
                i18 = i25;
                if (i21 == 16) {
                }
                if (hasDividerBeforeChildAt(i27)) {
                }
                int i292 = layoutParams.leftMargin + paddingLeft;
                i16 = paddingTop;
                setChildFrame(virtualChildAt, i292 + getLocationOffset(virtualChildAt), i22, measuredWidth, measuredHeight);
                int nextLocationOffset2 = i292 + measuredWidth + layoutParams.rightMargin + getNextLocationOffset(virtualChildAt);
                i26 = i28 + getChildrenSkipCount(virtualChildAt, i27);
                paddingLeft = nextLocationOffset2;
                i26++;
                virtualChildCount = i17;
                i25 = i18;
                z12 = z10;
                paddingTop = i16;
            } else {
                i16 = paddingTop;
                i17 = virtualChildCount;
                i18 = i25;
                z10 = true;
            }
            i26++;
            virtualChildCount = i17;
            i25 = i18;
            z12 = z10;
            paddingTop = i16;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void layoutVertical(int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int i16;
        int i17;
        int paddingLeft = getPaddingLeft();
        int i18 = i12 - i10;
        int paddingRight = i18 - getPaddingRight();
        int paddingRight2 = (i18 - paddingLeft) - getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i19 = this.mGravity;
        int i20 = i19 & 112;
        int i21 = i19 & 8388615;
        int paddingTop = i20 != 16 ? i20 != 80 ? getPaddingTop() : ((getPaddingTop() + i13) - i11) - this.mTotalLength : getPaddingTop() + (((i13 - i11) - this.mTotalLength) / 2);
        int i22 = 0;
        while (i22 < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(i22);
            if (virtualChildAt == null) {
                paddingTop += measureNullChild(i22);
            } else if (virtualChildAt.getVisibility() != 8) {
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight = virtualChildAt.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                int i23 = layoutParams.gravity;
                if (i23 < 0) {
                    i23 = i21;
                }
                int absoluteGravity = GravityCompat.getAbsoluteGravity(i23, ViewCompat.getLayoutDirection(this)) & 7;
                if (absoluteGravity == 1) {
                    i14 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft + layoutParams.leftMargin;
                    i15 = layoutParams.rightMargin;
                } else if (absoluteGravity != 5) {
                    i16 = layoutParams.leftMargin + paddingLeft;
                    int i24 = i16;
                    if (hasDividerBeforeChildAt(i22)) {
                        paddingTop += this.mDividerHeight;
                    }
                    int i25 = paddingTop + layoutParams.topMargin;
                    setChildFrame(virtualChildAt, i24, i25 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                    int nextLocationOffset = i25 + measuredHeight + layoutParams.bottomMargin + getNextLocationOffset(virtualChildAt);
                    i22 += getChildrenSkipCount(virtualChildAt, i22);
                    paddingTop = nextLocationOffset;
                    i17 = 1;
                    i22 += i17;
                } else {
                    i14 = paddingRight - measuredWidth;
                    i15 = layoutParams.rightMargin;
                }
                i16 = i14 - i15;
                int i242 = i16;
                if (hasDividerBeforeChildAt(i22)) {
                }
                int i252 = paddingTop + layoutParams.topMargin;
                setChildFrame(virtualChildAt, i242, i252 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                int nextLocationOffset2 = i252 + measuredHeight + layoutParams.bottomMargin + getNextLocationOffset(virtualChildAt);
                i22 += getChildrenSkipCount(virtualChildAt, i22);
                paddingTop = nextLocationOffset2;
                i17 = 1;
                i22 += i17;
            }
            i17 = 1;
            i22 += i17;
        }
    }

    public void measureChildBeforeLayout(View view, int i10, int i11, int i12, int i13, int i14) {
        measureChildWithMargins(view, i11, i12, i13, i14);
    }

    /* JADX WARN: Removed duplicated region for block: B:200:0x045b  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void measureHorizontal(int i10, int i11) {
        int[] iArr;
        int i12;
        int max;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        float f10;
        int i19;
        boolean z10;
        int baseline;
        int i20;
        int i21;
        int i22;
        char c10;
        int i23;
        int i24;
        boolean z11;
        boolean z12;
        View view;
        int i25;
        boolean z13;
        int measuredHeight;
        int childrenSkipCount;
        int baseline2;
        int i26;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        if (this.mMaxAscent == null || this.mMaxDescent == null) {
            this.mMaxAscent = new int[4];
            this.mMaxDescent = new int[4];
        }
        int[] iArr2 = this.mMaxAscent;
        int[] iArr3 = this.mMaxDescent;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        iArr3[3] = -1;
        iArr3[2] = -1;
        iArr3[1] = -1;
        iArr3[0] = -1;
        boolean z14 = this.mBaselineAligned;
        boolean z15 = this.mUseLargestChild;
        int i27 = 1073741824;
        boolean z16 = mode == 1073741824;
        int i28 = 0;
        int i29 = 0;
        int i30 = 0;
        int i31 = 0;
        int i32 = 0;
        boolean z17 = false;
        int i33 = 0;
        boolean z18 = false;
        boolean z19 = true;
        float f11 = 0.0f;
        while (true) {
            iArr = iArr3;
            if (i28 >= virtualChildCount) {
                break;
            }
            View virtualChildAt = getVirtualChildAt(i28);
            if (virtualChildAt == null) {
                this.mTotalLength += measureNullChild(i28);
            } else if (virtualChildAt.getVisibility() == 8) {
                i28 += getChildrenSkipCount(virtualChildAt, i28);
            } else {
                if (hasDividerBeforeChildAt(i28)) {
                    this.mTotalLength += this.mDividerWidth;
                }
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                float f12 = layoutParams.weight;
                float f13 = f11 + f12;
                if (mode == i27 && layoutParams.width == 0 && f12 > 0.0f) {
                    if (z16) {
                        this.mTotalLength += layoutParams.leftMargin + layoutParams.rightMargin;
                    } else {
                        int i34 = this.mTotalLength;
                        this.mTotalLength = Math.max(i34, layoutParams.leftMargin + i34 + layoutParams.rightMargin);
                    }
                    if (z14) {
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                        virtualChildAt.measure(makeMeasureSpec, makeMeasureSpec);
                        i24 = i28;
                        z11 = z15;
                        z12 = z14;
                        view = virtualChildAt;
                    } else {
                        i24 = i28;
                        z11 = z15;
                        z12 = z14;
                        view = virtualChildAt;
                        z17 = true;
                        i25 = 1073741824;
                        if (mode2 == i25 && layoutParams.height == -1) {
                            z13 = true;
                            z18 = true;
                        } else {
                            z13 = false;
                        }
                        int i35 = layoutParams.topMargin + layoutParams.bottomMargin;
                        measuredHeight = view.getMeasuredHeight() + i35;
                        i33 = View.combineMeasuredStates(i33, view.getMeasuredState());
                        if (z12 && (baseline2 = view.getBaseline()) != -1) {
                            i26 = layoutParams.gravity;
                            if (i26 < 0) {
                                i26 = this.mGravity;
                            }
                            int i36 = (((i26 & 112) >> 4) & (-2)) >> 1;
                            iArr2[i36] = Math.max(iArr2[i36], baseline2);
                            iArr[i36] = Math.max(iArr[i36], measuredHeight - baseline2);
                        }
                        i30 = Math.max(i30, measuredHeight);
                        z19 = !z19 && layoutParams.height == -1;
                        if (layoutParams.weight <= 0.0f) {
                            if (!z13) {
                                i35 = measuredHeight;
                            }
                            i32 = Math.max(i32, i35);
                        } else {
                            int i37 = i32;
                            if (!z13) {
                                i35 = measuredHeight;
                            }
                            i31 = Math.max(i31, i35);
                            i32 = i37;
                        }
                        int i38 = i24;
                        childrenSkipCount = getChildrenSkipCount(view, i38) + i38;
                        f11 = f13;
                        int i39 = childrenSkipCount + 1;
                        iArr3 = iArr;
                        z15 = z11;
                        z14 = z12;
                        i27 = i25;
                        i28 = i39;
                    }
                } else {
                    if (layoutParams.width != 0 || f12 <= 0.0f) {
                        c10 = '\ufffe';
                        i23 = Integer.MIN_VALUE;
                    } else {
                        c10 = '\ufffe';
                        layoutParams.width = -2;
                        i23 = 0;
                    }
                    i24 = i28;
                    int i40 = i23;
                    z11 = z15;
                    z12 = z14;
                    measureChildBeforeLayout(virtualChildAt, i24, i10, f13 == 0.0f ? this.mTotalLength : 0, i11, 0);
                    if (i40 != Integer.MIN_VALUE) {
                        layoutParams.width = i40;
                    }
                    int measuredWidth = virtualChildAt.getMeasuredWidth();
                    if (z16) {
                        view = virtualChildAt;
                        this.mTotalLength += layoutParams.leftMargin + measuredWidth + layoutParams.rightMargin + getNextLocationOffset(view);
                    } else {
                        view = virtualChildAt;
                        int i41 = this.mTotalLength;
                        this.mTotalLength = Math.max(i41, i41 + measuredWidth + layoutParams.leftMargin + layoutParams.rightMargin + getNextLocationOffset(view));
                    }
                    if (z11) {
                        i29 = Math.max(measuredWidth, i29);
                    }
                }
                i25 = 1073741824;
                if (mode2 == i25) {
                }
                z13 = false;
                int i352 = layoutParams.topMargin + layoutParams.bottomMargin;
                measuredHeight = view.getMeasuredHeight() + i352;
                i33 = View.combineMeasuredStates(i33, view.getMeasuredState());
                if (z12) {
                    i26 = layoutParams.gravity;
                    if (i26 < 0) {
                    }
                    int i362 = (((i26 & 112) >> 4) & (-2)) >> 1;
                    iArr2[i362] = Math.max(iArr2[i362], baseline2);
                    iArr[i362] = Math.max(iArr[i362], measuredHeight - baseline2);
                }
                i30 = Math.max(i30, measuredHeight);
                if (z19) {
                }
                if (layoutParams.weight <= 0.0f) {
                }
                int i382 = i24;
                childrenSkipCount = getChildrenSkipCount(view, i382) + i382;
                f11 = f13;
                int i392 = childrenSkipCount + 1;
                iArr3 = iArr;
                z15 = z11;
                z14 = z12;
                i27 = i25;
                i28 = i392;
            }
            z11 = z15;
            z12 = z14;
            int i42 = i27;
            childrenSkipCount = i28;
            i25 = i42;
            int i3922 = childrenSkipCount + 1;
            iArr3 = iArr;
            z15 = z11;
            z14 = z12;
            i27 = i25;
            i28 = i3922;
        }
        boolean z20 = z15;
        boolean z21 = z14;
        int i43 = i30;
        int i44 = i31;
        int i45 = i32;
        int i46 = i33;
        if (this.mTotalLength > 0 && hasDividerBeforeChildAt(virtualChildCount)) {
            this.mTotalLength += this.mDividerWidth;
        }
        int i47 = iArr2[1];
        if (i47 == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) {
            max = i43;
            i12 = i46;
        } else {
            i12 = i46;
            max = Math.max(i43, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(i47, iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
        }
        if (z20 && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.mTotalLength = 0;
            int i48 = 0;
            while (i48 < virtualChildCount) {
                View virtualChildAt2 = getVirtualChildAt(i48);
                if (virtualChildAt2 == null) {
                    this.mTotalLength += measureNullChild(i48);
                } else if (virtualChildAt2.getVisibility() == 8) {
                    i48 += getChildrenSkipCount(virtualChildAt2, i48);
                } else {
                    LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                    if (z16) {
                        this.mTotalLength += layoutParams2.leftMargin + i29 + layoutParams2.rightMargin + getNextLocationOffset(virtualChildAt2);
                    } else {
                        int i49 = this.mTotalLength;
                        i22 = max;
                        this.mTotalLength = Math.max(i49, i49 + i29 + layoutParams2.leftMargin + layoutParams2.rightMargin + getNextLocationOffset(virtualChildAt2));
                        i48++;
                        max = i22;
                    }
                }
                i22 = max;
                i48++;
                max = i22;
            }
        }
        int i50 = max;
        int paddingLeft = this.mTotalLength + getPaddingLeft() + getPaddingRight();
        this.mTotalLength = paddingLeft;
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i10, 0);
        int i51 = (16777215 & resolveSizeAndState) - this.mTotalLength;
        if (z17 || (i51 != 0 && f11 > 0.0f)) {
            float f14 = this.mWeightSum;
            if (f14 > 0.0f) {
                f11 = f14;
            }
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            this.mTotalLength = 0;
            int i52 = i44;
            int i53 = -1;
            i13 = i12;
            int i54 = 0;
            while (i54 < virtualChildCount) {
                View virtualChildAt3 = getVirtualChildAt(i54);
                if (virtualChildAt3 == null || virtualChildAt3.getVisibility() == 8) {
                    i17 = i51;
                    i18 = virtualChildCount;
                } else {
                    LayoutParams layoutParams3 = (LayoutParams) virtualChildAt3.getLayoutParams();
                    float f15 = layoutParams3.weight;
                    if (f15 > 0.0f) {
                        int i55 = (int) ((i51 * f15) / f11);
                        float f16 = f11 - f15;
                        int i56 = i51 - i55;
                        i18 = virtualChildCount;
                        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i11, getPaddingTop() + getPaddingBottom() + layoutParams3.topMargin + layoutParams3.bottomMargin, layoutParams3.height);
                        if (layoutParams3.width == 0) {
                            i21 = 1073741824;
                            if (mode == 1073741824) {
                                if (i55 <= 0) {
                                    i55 = 0;
                                }
                                virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(i55, 1073741824), childMeasureSpec);
                                i13 = View.combineMeasuredStates(i13, virtualChildAt3.getMeasuredState() & (-16777216));
                                f11 = f16;
                                i17 = i56;
                            }
                        } else {
                            i21 = 1073741824;
                        }
                        int measuredWidth2 = virtualChildAt3.getMeasuredWidth() + i55;
                        if (measuredWidth2 < 0) {
                            measuredWidth2 = 0;
                        }
                        virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2, i21), childMeasureSpec);
                        i13 = View.combineMeasuredStates(i13, virtualChildAt3.getMeasuredState() & (-16777216));
                        f11 = f16;
                        i17 = i56;
                    } else {
                        i17 = i51;
                        i18 = virtualChildCount;
                    }
                    if (z16) {
                        this.mTotalLength += virtualChildAt3.getMeasuredWidth() + layoutParams3.leftMargin + layoutParams3.rightMargin + getNextLocationOffset(virtualChildAt3);
                        f10 = f11;
                    } else {
                        int i57 = this.mTotalLength;
                        f10 = f11;
                        this.mTotalLength = Math.max(i57, virtualChildAt3.getMeasuredWidth() + i57 + layoutParams3.leftMargin + layoutParams3.rightMargin + getNextLocationOffset(virtualChildAt3));
                    }
                    boolean z22 = mode2 != 1073741824 && layoutParams3.height == -1;
                    int i58 = layoutParams3.topMargin + layoutParams3.bottomMargin;
                    int measuredHeight2 = virtualChildAt3.getMeasuredHeight() + i58;
                    i53 = Math.max(i53, measuredHeight2);
                    if (!z22) {
                        i58 = measuredHeight2;
                    }
                    int max2 = Math.max(i52, i58);
                    if (z19) {
                        i19 = -1;
                        if (layoutParams3.height == -1) {
                            z10 = true;
                            if (z21 && (baseline = virtualChildAt3.getBaseline()) != i19) {
                                i20 = layoutParams3.gravity;
                                if (i20 < 0) {
                                    i20 = this.mGravity;
                                }
                                int i59 = (((i20 & 112) >> 4) & (-2)) >> 1;
                                iArr2[i59] = Math.max(iArr2[i59], baseline);
                                iArr[i59] = Math.max(iArr[i59], measuredHeight2 - baseline);
                            }
                            z19 = z10;
                            i52 = max2;
                            f11 = f10;
                        }
                    } else {
                        i19 = -1;
                    }
                    z10 = false;
                    if (z21) {
                        i20 = layoutParams3.gravity;
                        if (i20 < 0) {
                        }
                        int i592 = (((i20 & 112) >> 4) & (-2)) >> 1;
                        iArr2[i592] = Math.max(iArr2[i592], baseline);
                        iArr[i592] = Math.max(iArr[i592], measuredHeight2 - baseline);
                    }
                    z19 = z10;
                    i52 = max2;
                    f11 = f10;
                }
                i54++;
                i51 = i17;
                virtualChildCount = i18;
            }
            i14 = i11;
            i15 = virtualChildCount;
            this.mTotalLength += getPaddingLeft() + getPaddingRight();
            int i60 = iArr2[1];
            i50 = (i60 == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) ? i53 : Math.max(i53, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(i60, iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
            i16 = i52;
        } else {
            i16 = Math.max(i44, i45);
            if (z20 && mode != 1073741824) {
                for (int i61 = 0; i61 < virtualChildCount; i61++) {
                    View virtualChildAt4 = getVirtualChildAt(i61);
                    if (virtualChildAt4 != null && virtualChildAt4.getVisibility() != 8 && ((LayoutParams) virtualChildAt4.getLayoutParams()).weight > 0.0f) {
                        virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(i29, 1073741824), View.MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredHeight(), 1073741824));
                    }
                }
            }
            i14 = i11;
            i15 = virtualChildCount;
            i13 = i12;
        }
        if (z19 || mode2 == 1073741824) {
            i16 = i50;
        }
        setMeasuredDimension(resolveSizeAndState | ((-16777216) & i13), View.resolveSizeAndState(Math.max(i16 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i14, i13 << 16));
        if (z18) {
            forceUniformHeight(i15, i10);
        }
    }

    public int measureNullChild(int i10) {
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:156:0x031b, code lost:
    
        if (r14.width == (-1)) goto L147;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void measureVertical(int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        View view;
        int max;
        boolean z10;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int i28 = this.mBaselineAlignedChildIndex;
        boolean z11 = this.mUseLargestChild;
        int i29 = 0;
        int i30 = 0;
        int i31 = 0;
        int i32 = 0;
        int i33 = 0;
        int i34 = 0;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = true;
        float f10 = 0.0f;
        while (true) {
            int i35 = 8;
            int i36 = i32;
            if (i34 >= virtualChildCount) {
                int i37 = i29;
                int i38 = i31;
                int i39 = i33;
                int i40 = mode2;
                int i41 = i30;
                int i42 = virtualChildCount;
                if (this.mTotalLength > 0) {
                    i12 = i42;
                    if (hasDividerBeforeChildAt(i12)) {
                        this.mTotalLength += this.mDividerHeight;
                    }
                } else {
                    i12 = i42;
                }
                if (z11 && (i40 == Integer.MIN_VALUE || i40 == 0)) {
                    this.mTotalLength = 0;
                    int i43 = 0;
                    while (i43 < i12) {
                        View virtualChildAt = getVirtualChildAt(i43);
                        if (virtualChildAt == null) {
                            this.mTotalLength += measureNullChild(i43);
                        } else if (virtualChildAt.getVisibility() == i35) {
                            i43 += getChildrenSkipCount(virtualChildAt, i43);
                        } else {
                            LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                            int i44 = this.mTotalLength;
                            this.mTotalLength = Math.max(i44, i44 + i38 + layoutParams.topMargin + layoutParams.bottomMargin + getNextLocationOffset(virtualChildAt));
                        }
                        i43++;
                        i35 = 8;
                    }
                }
                int paddingTop = this.mTotalLength + getPaddingTop() + getPaddingBottom();
                this.mTotalLength = paddingTop;
                int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i11, 0);
                int i45 = (16777215 & resolveSizeAndState) - this.mTotalLength;
                if (z12 || (i45 != 0 && f10 > 0.0f)) {
                    float f11 = this.mWeightSum;
                    if (f11 > 0.0f) {
                        f10 = f11;
                    }
                    this.mTotalLength = 0;
                    int i46 = i45;
                    int i47 = i39;
                    i13 = i37;
                    int i48 = 0;
                    while (i48 < i12) {
                        View virtualChildAt2 = getVirtualChildAt(i48);
                        if (virtualChildAt2.getVisibility() == 8) {
                            i16 = i46;
                        } else {
                            LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                            float f12 = layoutParams2.weight;
                            if (f12 > 0.0f) {
                                int i49 = (int) ((i46 * f12) / f10);
                                float f13 = f10 - f12;
                                i16 = i46 - i49;
                                int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, getPaddingLeft() + getPaddingRight() + layoutParams2.leftMargin + layoutParams2.rightMargin, layoutParams2.width);
                                if (layoutParams2.height == 0) {
                                    i19 = 1073741824;
                                    if (i40 == 1073741824) {
                                        if (i49 <= 0) {
                                            i49 = 0;
                                        }
                                        virtualChildAt2.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i49, 1073741824));
                                        i13 = View.combineMeasuredStates(i13, virtualChildAt2.getMeasuredState() & (-256));
                                        f10 = f13;
                                    }
                                } else {
                                    i19 = 1073741824;
                                }
                                int measuredHeight = virtualChildAt2.getMeasuredHeight() + i49;
                                if (measuredHeight < 0) {
                                    measuredHeight = 0;
                                }
                                virtualChildAt2.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight, i19));
                                i13 = View.combineMeasuredStates(i13, virtualChildAt2.getMeasuredState() & (-256));
                                f10 = f13;
                            } else {
                                i16 = i46;
                            }
                            int i50 = layoutParams2.leftMargin + layoutParams2.rightMargin;
                            int measuredWidth = virtualChildAt2.getMeasuredWidth() + i50;
                            i41 = Math.max(i41, measuredWidth);
                            float f14 = f10;
                            if (mode != 1073741824) {
                                i17 = i13;
                                i18 = -1;
                            } else {
                                i17 = i13;
                                i18 = -1;
                            }
                            i50 = measuredWidth;
                            int max2 = Math.max(i47, i50);
                            boolean z15 = z14 && layoutParams2.width == i18;
                            int i51 = this.mTotalLength;
                            this.mTotalLength = Math.max(i51, virtualChildAt2.getMeasuredHeight() + i51 + layoutParams2.topMargin + layoutParams2.bottomMargin + getNextLocationOffset(virtualChildAt2));
                            z14 = z15;
                            i13 = i17;
                            i47 = max2;
                            f10 = f14;
                        }
                        i48++;
                        i46 = i16;
                    }
                    i14 = i10;
                    this.mTotalLength += getPaddingTop() + getPaddingBottom();
                    i15 = i47;
                } else {
                    i15 = Math.max(i39, i36);
                    if (z11 && i40 != 1073741824) {
                        for (int i52 = 0; i52 < i12; i52++) {
                            View virtualChildAt3 = getVirtualChildAt(i52);
                            if (virtualChildAt3 != null && virtualChildAt3.getVisibility() != 8 && ((LayoutParams) virtualChildAt3.getLayoutParams()).weight > 0.0f) {
                                virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(virtualChildAt3.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i38, 1073741824));
                            }
                        }
                    }
                    i14 = i10;
                    i13 = i37;
                }
                if (z14 || mode == 1073741824) {
                    i15 = i41;
                }
                setMeasuredDimension(View.resolveSizeAndState(Math.max(i15 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i14, i13), resolveSizeAndState);
                if (z13) {
                    forceUniformWidth(i12, i11);
                    return;
                }
                return;
            }
            View virtualChildAt4 = getVirtualChildAt(i34);
            if (virtualChildAt4 == null) {
                this.mTotalLength += measureNullChild(i34);
                i23 = mode2;
                i32 = i36;
                i25 = virtualChildCount;
            } else {
                int i53 = i29;
                if (virtualChildAt4.getVisibility() == 8) {
                    i34 += getChildrenSkipCount(virtualChildAt4, i34);
                    i32 = i36;
                    i29 = i53;
                    i25 = virtualChildCount;
                    i23 = mode2;
                } else {
                    if (hasDividerBeforeChildAt(i34)) {
                        this.mTotalLength += this.mDividerHeight;
                    }
                    LayoutParams layoutParams3 = (LayoutParams) virtualChildAt4.getLayoutParams();
                    float f15 = layoutParams3.weight;
                    float f16 = f10 + f15;
                    if (mode2 == 1073741824 && layoutParams3.height == 0 && f15 > 0.0f) {
                        int i54 = this.mTotalLength;
                        this.mTotalLength = Math.max(i54, layoutParams3.topMargin + i54 + layoutParams3.bottomMargin);
                        max = i31;
                        view = virtualChildAt4;
                        i26 = i33;
                        z12 = true;
                        i21 = i53;
                        i22 = i30;
                        i23 = mode2;
                        i24 = i36;
                        i25 = virtualChildCount;
                        i27 = i34;
                    } else {
                        int i55 = i30;
                        if (layoutParams3.height != 0 || f15 <= 0.0f) {
                            i20 = Integer.MIN_VALUE;
                        } else {
                            layoutParams3.height = -2;
                            i20 = 0;
                        }
                        i21 = i53;
                        int i56 = i20;
                        i22 = i55;
                        int i57 = i31;
                        i23 = mode2;
                        i24 = i36;
                        i25 = virtualChildCount;
                        i26 = i33;
                        i27 = i34;
                        measureChildBeforeLayout(virtualChildAt4, i34, i10, 0, i11, f16 == 0.0f ? this.mTotalLength : 0);
                        if (i56 != Integer.MIN_VALUE) {
                            layoutParams3.height = i56;
                        }
                        int measuredHeight2 = virtualChildAt4.getMeasuredHeight();
                        int i58 = this.mTotalLength;
                        view = virtualChildAt4;
                        this.mTotalLength = Math.max(i58, i58 + measuredHeight2 + layoutParams3.topMargin + layoutParams3.bottomMargin + getNextLocationOffset(view));
                        max = z11 ? Math.max(measuredHeight2, i57) : i57;
                    }
                    if (i28 >= 0 && i28 == i27 + 1) {
                        this.mBaselineChildTop = this.mTotalLength;
                    }
                    if (i27 < i28 && layoutParams3.weight > 0.0f) {
                        throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                    }
                    if (mode == 1073741824 || layoutParams3.width != -1) {
                        z10 = false;
                    } else {
                        z10 = true;
                        z13 = true;
                    }
                    int i59 = layoutParams3.leftMargin + layoutParams3.rightMargin;
                    int measuredWidth2 = view.getMeasuredWidth() + i59;
                    int max3 = Math.max(i22, measuredWidth2);
                    int combineMeasuredStates = View.combineMeasuredStates(i21, view.getMeasuredState());
                    z14 = z14 && layoutParams3.width == -1;
                    if (layoutParams3.weight > 0.0f) {
                        if (!z10) {
                            i59 = measuredWidth2;
                        }
                        i32 = Math.max(i24, i59);
                    } else {
                        if (!z10) {
                            i59 = measuredWidth2;
                        }
                        i26 = Math.max(i26, i59);
                        i32 = i24;
                    }
                    int childrenSkipCount = getChildrenSkipCount(view, i27) + i27;
                    i31 = max;
                    i30 = max3;
                    f10 = f16;
                    i33 = i26;
                    i34 = childrenSkipCount;
                    i29 = combineMeasuredStates;
                }
            }
            i34++;
            virtualChildCount = i25;
            mode2 = i23;
        }
    }

    @Override
    public void onDraw(Canvas canvas) {
        if (this.mDivider == null) {
            return;
        }
        if (this.mOrientation == 1) {
            drawDividersVertical(canvas);
        } else {
            drawDividersHorizontal(canvas);
        }
    }

    @Override
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    @Override
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        if (this.mOrientation == 1) {
            layoutVertical(i10, i11, i12, i13);
        } else {
            layoutHorizontal(i10, i11, i12, i13);
        }
    }

    @Override
    public void onMeasure(int i10, int i11) {
        if (this.mOrientation == 1) {
            measureVertical(i10, i11);
        } else {
            measureHorizontal(i10, i11);
        }
    }

    public void setBaselineAligned(boolean z10) {
        this.mBaselineAligned = z10;
    }

    public void setBaselineAlignedChildIndex(int i10) {
        if (i10 >= 0 && i10 < getChildCount()) {
            this.mBaselineAlignedChildIndex = i10;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.mDivider) {
            return;
        }
        this.mDivider = drawable;
        if (drawable != null) {
            this.mDividerWidth = drawable.getIntrinsicWidth();
            this.mDividerHeight = drawable.getIntrinsicHeight();
        } else {
            this.mDividerWidth = 0;
            this.mDividerHeight = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i10) {
        this.mDividerPadding = i10;
    }

    public void setGravity(int i10) {
        if (this.mGravity != i10) {
            if ((8388615 & i10) == 0) {
                i10 |= 8388611;
            }
            if ((i10 & 112) == 0) {
                i10 |= 48;
            }
            this.mGravity = i10;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i10) {
        int i11 = i10 & 8388615;
        int i12 = this.mGravity;
        if ((8388615 & i12) != i11) {
            this.mGravity = i11 | ((-8388616) & i12);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z10) {
        this.mUseLargestChild = z10;
    }

    public void setOrientation(int i10) {
        if (this.mOrientation != i10) {
            this.mOrientation = i10;
            requestLayout();
        }
    }

    public void setShowDividers(int i10) {
        if (i10 != this.mShowDividers) {
            requestLayout();
        }
        this.mShowDividers = i10;
    }

    public void setVerticalGravity(int i10) {
        int i11 = i10 & 112;
        int i12 = this.mGravity;
        if ((i12 & 112) != i11) {
            this.mGravity = i11 | (i12 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f10) {
        this.mWeightSum = Math.max(0.0f, f10);
    }

    @Override
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override
    public LayoutParams generateDefaultLayoutParams() {
        int i10 = this.mOrientation;
        if (i10 == 0) {
            return new LayoutParams(-2, -2);
        }
        if (i10 == 1) {
            return new LayoutParams(-1, -2);
        }
        return null;
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = C16241a.f130539s;
        int[] iArr = R.styleable.LinearLayoutCompat;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i10, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, obtainStyledAttributes.getWrappedTypeArray(), i10, 0);
        int i11 = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (i11 >= 0) {
            setOrientation(i11);
        }
        int i12 = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (i12 >= 0) {
            setGravity(i12);
        }
        boolean z10 = obtainStyledAttributes.getBoolean(R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!z10) {
            setBaselineAligned(z10);
        }
        this.mWeightSum = obtainStyledAttributes.getFloat(R.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.mBaselineAlignedChildIndex = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.mUseLargestChild = obtainStyledAttributes.getBoolean(R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(obtainStyledAttributes.getDrawable(R.styleable.LinearLayoutCompat_divider));
        this.mShowDividers = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_showDividers, 0);
        this.mDividerPadding = obtainStyledAttributes.getDimensionPixelSize(R.styleable.LinearLayoutCompat_dividerPadding, 0);
        obtainStyledAttributes.recycle();
    }

    @Override
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }
}
