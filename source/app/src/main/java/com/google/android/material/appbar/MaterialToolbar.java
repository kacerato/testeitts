package com.google.android.material.appbar;

import a2.C3567j;
import a2.C3568k;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.widget.Toolbar;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.internal.s;
import com.google.android.material.internal.t;
import h2.C13421a;
import w1.C15879a;

public class MaterialToolbar extends Toolbar {

    public static final int f63817e = C15879a.n.f124414Tc;

    @Nullable
    public Integer f63818b;

    public boolean f63819c;

    public boolean f63820d;

    public MaterialToolbar(@NonNull Context context) {
        this(context, null);
    }

    @Nullable
    private Drawable g(@Nullable Drawable drawable) {
        if (drawable == null || this.f63818b == null) {
            return drawable;
        }
        Drawable wrap = DrawableCompat.wrap(drawable.mutate());
        DrawableCompat.setTint(wrap, this.f63818b.intValue());
        return wrap;
    }

    public final Pair<Integer, Integer> a(@Nullable TextView textView, @Nullable TextView textView2) {
        int measuredWidth = getMeasuredWidth();
        int i10 = measuredWidth / 2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = measuredWidth - getPaddingRight();
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8 && childAt != textView && childAt != textView2) {
                if (childAt.getRight() < i10 && childAt.getRight() > paddingLeft) {
                    paddingLeft = childAt.getRight();
                }
                if (childAt.getLeft() > i10 && childAt.getLeft() < paddingRight) {
                    paddingRight = childAt.getLeft();
                }
            }
        }
        return new Pair<>(Integer.valueOf(paddingLeft), Integer.valueOf(paddingRight));
    }

    public final void b(Context context) {
        Drawable background = getBackground();
        if (background == null || (background instanceof ColorDrawable)) {
            C3567j c3567j = new C3567j();
            c3567j.n0(ColorStateList.valueOf(background != null ? ((ColorDrawable) background).getColor() : 0));
            c3567j.Y(context);
            c3567j.m0(ViewCompat.getElevation(this));
            ViewCompat.setBackground(this, c3567j);
        }
    }

    public boolean c() {
        return this.f63820d;
    }

    public boolean d() {
        return this.f63819c;
    }

    public final void e(View view, Pair<Integer, Integer> pair) {
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = view.getMeasuredWidth();
        int i10 = (measuredWidth / 2) - (measuredWidth2 / 2);
        int i11 = measuredWidth2 + i10;
        int max = Math.max(Math.max(pair.first.intValue() - i10, 0), Math.max(i11 - pair.second.intValue(), 0));
        if (max > 0) {
            i10 += max;
            i11 -= max;
            view.measure(View.MeasureSpec.makeMeasureSpec(i11 - i10, 1073741824), view.getMeasuredHeightAndState());
        }
        view.layout(i10, view.getTop(), i11, view.getBottom());
    }

    public final void f() {
        if (this.f63819c || this.f63820d) {
            TextView g10 = t.g(this);
            TextView e10 = t.e(this);
            if (g10 == null && e10 == null) {
                return;
            }
            Pair<Integer, Integer> a10 = a(g10, e10);
            if (this.f63819c && g10 != null) {
                e(g10, a10);
            }
            if (!this.f63820d || e10 == null) {
                return;
            }
            e(e10, a10);
        }
    }

    @Nullable
    @ColorInt
    public Integer getNavigationIconTint() {
        return this.f63818b;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        C3568k.e(this);
    }

    @Override
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        f();
    }

    @Override
    @RequiresApi(21)
    public void setElevation(float f10) {
        super.setElevation(f10);
        C3568k.d(this, f10);
    }

    @Override
    public void setNavigationIcon(@Nullable Drawable drawable) {
        super.setNavigationIcon(g(drawable));
    }

    public void setNavigationIconTint(@ColorInt int i10) {
        this.f63818b = Integer.valueOf(i10);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    public void setSubtitleCentered(boolean z10) {
        if (this.f63820d != z10) {
            this.f63820d = z10;
            requestLayout();
        }
    }

    public void setTitleCentered(boolean z10) {
        if (this.f63819c != z10) {
            this.f63819c = z10;
            requestLayout();
        }
    }

    public MaterialToolbar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122091Of);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public MaterialToolbar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(C13421a.c(context, attributeSet, i10, r4), attributeSet, i10);
        int i11 = f63817e;
        Context context2 = getContext();
        TypedArray j10 = s.j(context2, attributeSet, C15879a.o.f125835nm, i10, i11, new int[0]);
        int i12 = C15879a.o.f125860om;
        if (j10.hasValue(i12)) {
            setNavigationIconTint(j10.getColor(i12, -1));
        }
        this.f63819c = j10.getBoolean(C15879a.o.f125910qm, false);
        this.f63820d = j10.getBoolean(C15879a.o.f125885pm, false);
        j10.recycle();
        b(context2);
    }
}
