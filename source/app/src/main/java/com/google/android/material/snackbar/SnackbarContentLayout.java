package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import c2.InterfaceC4149a;
import w1.C15879a;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class SnackbarContentLayout extends LinearLayout implements InterfaceC4149a {

    public TextView f64870b;

    public Button f64871c;

    public int f64872d;

    public int f64873e;

    public SnackbarContentLayout(@NonNull Context context) {
        this(context, null);
    }

    public static void d(@NonNull View view, int i10, int i11) {
        if (ViewCompat.isPaddingRelative(view)) {
            ViewCompat.setPaddingRelative(view, ViewCompat.getPaddingStart(view), i10, ViewCompat.getPaddingEnd(view), i11);
        } else {
            view.setPadding(view.getPaddingLeft(), i10, view.getPaddingRight(), i11);
        }
    }

    @Override
    public void a(int i10, int i11) {
        this.f64870b.setAlpha(0.0f);
        long j10 = i11;
        long j11 = i10;
        this.f64870b.animate().alpha(1.0f).setDuration(j10).setStartDelay(j11).start();
        if (this.f64871c.getVisibility() == 0) {
            this.f64871c.setAlpha(0.0f);
            this.f64871c.animate().alpha(1.0f).setDuration(j10).setStartDelay(j11).start();
        }
    }

    @Override
    public void b(int i10, int i11) {
        this.f64870b.setAlpha(1.0f);
        long j10 = i11;
        long j11 = i10;
        this.f64870b.animate().alpha(0.0f).setDuration(j10).setStartDelay(j11).start();
        if (this.f64871c.getVisibility() == 0) {
            this.f64871c.setAlpha(1.0f);
            this.f64871c.animate().alpha(0.0f).setDuration(j10).setStartDelay(j11).start();
        }
    }

    public void c(float f10) {
        if (f10 != 1.0f) {
            this.f64871c.setTextColor(J1.a.h(J1.a.d(this, C15879a.c.f122164T2), this.f64871c.getCurrentTextColor(), f10));
        }
    }

    public final boolean e(int i10, int i11, int i12) {
        boolean z10;
        if (i10 != getOrientation()) {
            setOrientation(i10);
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.f64870b.getPaddingTop() == i11 && this.f64870b.getPaddingBottom() == i12) {
            return z10;
        }
        d(this.f64870b, i11, i12);
        return true;
    }

    public Button getActionView() {
        return this.f64871c;
    }

    public TextView getMessageView() {
        return this.f64870b;
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f64870b = (TextView) findViewById(C15879a.h.f123544E4);
        this.f64871c = (Button) findViewById(C15879a.h.f123537D4);
    }

    @Override
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.f64872d > 0) {
            int measuredWidth = getMeasuredWidth();
            int i12 = this.f64872d;
            if (measuredWidth > i12) {
                i10 = View.MeasureSpec.makeMeasureSpec(i12, 1073741824);
                super.onMeasure(i10, i11);
            }
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(C15879a.f.f122976C1);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(C15879a.f.f122968B1);
        boolean z10 = this.f64870b.getLayout().getLineCount() > 1;
        if (!z10 || this.f64873e <= 0 || this.f64871c.getMeasuredWidth() <= this.f64873e) {
            if (!z10) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            if (!e(0, dimensionPixelSize, dimensionPixelSize)) {
                return;
            }
        } else if (!e(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
            return;
        }
        super.onMeasure(i10, i11);
    }

    public void setMaxInlineActionWidth(int i10) {
        this.f64873e = i10;
    }

    public SnackbarContentLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C15879a.o.mr);
        this.f64872d = obtainStyledAttributes.getDimensionPixelSize(C15879a.o.nr, -1);
        this.f64873e = obtainStyledAttributes.getDimensionPixelSize(C15879a.o.ur, -1);
        obtainStyledAttributes.recycle();
    }
}
