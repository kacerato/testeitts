package com.google.android.material.datepicker;

import a2.C3567j;
import a2.C3572o;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.StyleRes;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import w1.C15879a;

public final class b {

    @NonNull
    public final Rect f64239a;

    public final ColorStateList f64240b;

    public final ColorStateList f64241c;

    public final ColorStateList f64242d;

    public final int f64243e;

    public final C3572o f64244f;

    public b(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i10, C3572o c3572o, @NonNull Rect rect) {
        Preconditions.checkArgumentNonnegative(rect.left);
        Preconditions.checkArgumentNonnegative(rect.top);
        Preconditions.checkArgumentNonnegative(rect.right);
        Preconditions.checkArgumentNonnegative(rect.bottom);
        this.f64239a = rect;
        this.f64240b = colorStateList2;
        this.f64241c = colorStateList;
        this.f64242d = colorStateList3;
        this.f64243e = i10;
        this.f64244f = c3572o;
    }

    @NonNull
    public static b a(@NonNull Context context, @StyleRes int i10) {
        Preconditions.checkArgument(i10 != 0, "Cannot create a CalendarItemStyle with a styleResId of 0");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i10, C15879a.o.f125909ql);
        Rect rect = new Rect(obtainStyledAttributes.getDimensionPixelOffset(C15879a.o.f125934rl, 0), obtainStyledAttributes.getDimensionPixelOffset(C15879a.o.f125984tl, 0), obtainStyledAttributes.getDimensionPixelOffset(C15879a.o.f125959sl, 0), obtainStyledAttributes.getDimensionPixelOffset(C15879a.o.f126009ul, 0));
        ColorStateList a10 = X1.c.a(context, obtainStyledAttributes, C15879a.o.f126034vl);
        ColorStateList a11 = X1.c.a(context, obtainStyledAttributes, C15879a.o.f124884Al);
        ColorStateList a12 = X1.c.a(context, obtainStyledAttributes, C15879a.o.f126109yl);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C15879a.o.f126133zl, 0);
        C3572o m10 = C3572o.b(context, obtainStyledAttributes.getResourceId(C15879a.o.f126059wl, 0), obtainStyledAttributes.getResourceId(C15879a.o.f126084xl, 0)).m();
        obtainStyledAttributes.recycle();
        return new b(a10, a11, a12, dimensionPixelSize, m10, rect);
    }

    public int b() {
        return this.f64239a.bottom;
    }

    public int c() {
        return this.f64239a.left;
    }

    public int d() {
        return this.f64239a.right;
    }

    public int e() {
        return this.f64239a.top;
    }

    public void f(@NonNull TextView textView) {
        C3567j c3567j = new C3567j();
        C3567j c3567j2 = new C3567j();
        c3567j.setShapeAppearanceModel(this.f64244f);
        c3567j2.setShapeAppearanceModel(this.f64244f);
        c3567j.n0(this.f64241c);
        c3567j.D0(this.f64243e, this.f64242d);
        textView.setTextColor(this.f64240b);
        RippleDrawable rippleDrawable = new RippleDrawable(this.f64240b.withAlpha(30), c3567j, c3567j2);
        Rect rect = this.f64239a;
        ViewCompat.setBackground(textView, new InsetDrawable((Drawable) rippleDrawable, rect.left, rect.top, rect.right, rect.bottom));
    }
}
