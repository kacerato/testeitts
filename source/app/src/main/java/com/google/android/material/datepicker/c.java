package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import androidx.annotation.NonNull;
import w1.C15879a;

public final class c {

    @NonNull
    public final b f64245a;

    @NonNull
    public final b f64246b;

    @NonNull
    public final b f64247c;

    @NonNull
    public final b f64248d;

    @NonNull
    public final b f64249e;

    @NonNull
    public final b f64250f;

    @NonNull
    public final b f64251g;

    @NonNull
    public final Paint f64252h;

    public c(@NonNull Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(X1.b.g(context, C15879a.c.f122291aa, k.class.getCanonicalName()), C15879a.o.f125633fl);
        this.f64245a = b.a(context, obtainStyledAttributes.getResourceId(C15879a.o.f125733jl, 0));
        this.f64251g = b.a(context, obtainStyledAttributes.getResourceId(C15879a.o.f125683hl, 0));
        this.f64246b = b.a(context, obtainStyledAttributes.getResourceId(C15879a.o.f125707il, 0));
        this.f64247c = b.a(context, obtainStyledAttributes.getResourceId(C15879a.o.f125759kl, 0));
        ColorStateList a10 = X1.c.a(context, obtainStyledAttributes, C15879a.o.f125809ml);
        this.f64248d = b.a(context, obtainStyledAttributes.getResourceId(C15879a.o.f125859ol, 0));
        this.f64249e = b.a(context, obtainStyledAttributes.getResourceId(C15879a.o.f125834nl, 0));
        this.f64250f = b.a(context, obtainStyledAttributes.getResourceId(C15879a.o.f125884pl, 0));
        Paint paint = new Paint();
        this.f64252h = paint;
        paint.setColor(a10.getDefaultColor());
        obtainStyledAttributes.recycle();
    }
}
