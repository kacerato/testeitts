package com.google.android.material.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import w1.C15879a;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class e extends ViewGroup {

    public int f64692b;

    public int f64693c;

    public boolean f64694d;

    public int f64695e;

    public e(@NonNull Context context) {
        this(context, null);
    }

    public static int a(int i10, int i11, int i12) {
        return i11 != Integer.MIN_VALUE ? i11 != 1073741824 ? i12 : i10 : Math.min(i12, i10);
    }

    public int b(@NonNull View view) {
        Object tag = view.getTag(C15879a.h.f123720d4);
        if (tag instanceof Integer) {
            return ((Integer) tag).intValue();
        }
        return -1;
    }

    public boolean c() {
        return this.f64694d;
    }

    public final void d(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C15879a.o.f124878Af, 0, 0);
        this.f64692b = obtainStyledAttributes.getDimensionPixelSize(C15879a.o.f124926Cf, 0);
        this.f64693c = obtainStyledAttributes.getDimensionPixelSize(C15879a.o.f124902Bf, 0);
        obtainStyledAttributes.recycle();
    }

    public int getItemSpacing() {
        return this.f64693c;
    }

    public int getLineSpacing() {
        return this.f64692b;
    }

    public int getRowCount() {
        return this.f64695e;
    }

    @Override
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        if (getChildCount() == 0) {
            this.f64695e = 0;
            return;
        }
        this.f64695e = 1;
        boolean z11 = ViewCompat.getLayoutDirection(this) == 1;
        int paddingRight = z11 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = z11 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int i16 = (i12 - i10) - paddingLeft;
        int i17 = paddingRight;
        int i18 = paddingTop;
        for (int i19 = 0; i19 < getChildCount(); i19++) {
            View childAt = getChildAt(i19);
            if (childAt.getVisibility() == 8) {
                childAt.setTag(C15879a.h.f123720d4, -1);
            } else {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i15 = MarginLayoutParamsCompat.getMarginStart(marginLayoutParams);
                    i14 = MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams);
                } else {
                    i14 = 0;
                    i15 = 0;
                }
                int measuredWidth = i17 + i15 + childAt.getMeasuredWidth();
                if (!this.f64694d && measuredWidth > i16) {
                    i18 = this.f64692b + paddingTop;
                    this.f64695e++;
                    i17 = paddingRight;
                }
                childAt.setTag(C15879a.h.f123720d4, Integer.valueOf(this.f64695e - 1));
                int i20 = i17 + i15;
                int measuredWidth2 = childAt.getMeasuredWidth() + i20;
                int measuredHeight = childAt.getMeasuredHeight() + i18;
                if (z11) {
                    childAt.layout(i16 - measuredWidth2, i18, (i16 - i17) - i15, measuredHeight);
                } else {
                    childAt.layout(i20, i18, measuredWidth2, measuredHeight);
                }
                i17 += i15 + i14 + childAt.getMeasuredWidth() + this.f64693c;
                paddingTop = measuredHeight;
            }
        }
    }

    @Override
    public void onMeasure(int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int size = View.MeasureSpec.getSize(i10);
        int mode = View.MeasureSpec.getMode(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i11);
        int i15 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size : Integer.MAX_VALUE;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = i15 - getPaddingRight();
        int i16 = paddingTop;
        int i17 = 0;
        for (int i18 = 0; i18 < getChildCount(); i18++) {
            View childAt = getChildAt(i18);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i10, i11);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i12 = marginLayoutParams.leftMargin;
                    i13 = marginLayoutParams.rightMargin;
                } else {
                    i12 = 0;
                    i13 = 0;
                }
                int i19 = paddingLeft;
                if (paddingLeft + i12 + childAt.getMeasuredWidth() <= paddingRight || c()) {
                    i14 = i19;
                } else {
                    i14 = getPaddingLeft();
                    i16 = this.f64692b + paddingTop;
                }
                int measuredWidth = i14 + i12 + childAt.getMeasuredWidth();
                int measuredHeight = i16 + childAt.getMeasuredHeight();
                if (measuredWidth > i17) {
                    i17 = measuredWidth;
                }
                paddingLeft = i14 + i12 + i13 + childAt.getMeasuredWidth() + this.f64693c;
                if (i18 == getChildCount() - 1) {
                    i17 += i13;
                }
                paddingTop = measuredHeight;
            }
        }
        setMeasuredDimension(a(size, mode, i17 + getPaddingRight()), a(size2, mode2, paddingTop + getPaddingBottom()));
    }

    public void setItemSpacing(int i10) {
        this.f64693c = i10;
    }

    public void setLineSpacing(int i10) {
        this.f64692b = i10;
    }

    public void setSingleLine(boolean z10) {
        this.f64694d = z10;
    }

    public e(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public e(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f64694d = false;
        d(context, attributeSet);
    }

    @TargetApi(21)
    public e(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f64694d = false;
        d(context, attributeSet);
    }
}
