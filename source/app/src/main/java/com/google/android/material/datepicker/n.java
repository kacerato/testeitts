package com.google.android.material.datepicker;

import a2.C3567j;
import android.app.DatePickerDialog;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import w1.C15879a;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP, RestrictTo.Scope.TESTS})
public class n extends DatePickerDialog {

    @AttrRes
    public static final int f64353d = 16843612;

    @StyleRes
    public static final int f64354e = C15879a.n.f124153B3;

    @NonNull
    public final Drawable f64355b;

    @NonNull
    public final Rect f64356c;

    public n(@NonNull Context context) {
        this(context, 0);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setBackgroundDrawable(this.f64355b);
        getWindow().getDecorView().setOnTouchListener(new K1.a(this, this.f64356c));
    }

    public n(@NonNull Context context, int i10) {
        this(context, i10, null, -1, -1, -1);
    }

    public n(@NonNull Context context, @Nullable DatePickerDialog.OnDateSetListener onDateSetListener, int i10, int i11, int i12) {
        this(context, 0, onDateSetListener, i10, i11, i12);
    }

    public n(@NonNull Context context, int i10, @Nullable DatePickerDialog.OnDateSetListener onDateSetListener, int i11, int i12, int i13) {
        super(context, i10, onDateSetListener, i11, i12, i13);
        Context context2 = getContext();
        int g10 = X1.b.g(getContext(), C15879a.c.f122164T2, getClass().getCanonicalName());
        int i14 = f64354e;
        C3567j c3567j = new C3567j(context2, null, 16843612, i14);
        c3567j.n0(ColorStateList.valueOf(g10));
        Rect a10 = K1.c.a(context2, 16843612, i14);
        this.f64356c = a10;
        this.f64355b = K1.c.b(c3567j, a10);
    }
}
