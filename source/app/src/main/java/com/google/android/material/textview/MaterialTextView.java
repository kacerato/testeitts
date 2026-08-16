package com.google.android.material.textview;

import X1.b;
import X1.c;
import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleableRes;
import androidx.appcompat.widget.AppCompatTextView;
import h2.C13421a;
import w1.C15879a;

public class MaterialTextView extends AppCompatTextView {
    public MaterialTextView(@NonNull Context context) {
        this(context, null);
    }

    public static boolean b(Context context) {
        return b.b(context, C15879a.c.f122072Ne, true);
    }

    public static int c(@NonNull Resources.Theme theme, @Nullable AttributeSet attributeSet, int i10, int i11) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, C15879a.o.f125659gm, i10, i11);
        int resourceId = obtainStyledAttributes.getResourceId(C15879a.o.f125684hm, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    public static int d(@NonNull Context context, @NonNull TypedArray typedArray, @NonNull @StyleableRes int... iArr) {
        int i10 = -1;
        for (int i11 = 0; i11 < iArr.length && i10 < 0; i11++) {
            i10 = c.c(context, typedArray, iArr[i11], -1);
        }
        return i10;
    }

    public static boolean e(@NonNull Context context, @NonNull Resources.Theme theme, @Nullable AttributeSet attributeSet, int i10, int i11) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, C15879a.o.f125659gm, i10, i11);
        int d10 = d(context, obtainStyledAttributes, C15879a.o.f125708im, C15879a.o.f125734jm);
        obtainStyledAttributes.recycle();
        return d10 != -1;
    }

    public final void a(@NonNull Resources.Theme theme, int i10) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(i10, C15879a.o.f125559cm);
        int d10 = d(getContext(), obtainStyledAttributes, C15879a.o.f125609em, C15879a.o.f125634fm);
        obtainStyledAttributes.recycle();
        if (d10 >= 0) {
            setLineHeight(d10);
        }
    }

    @Override
    public void setTextAppearance(@NonNull Context context, int i10) {
        super.setTextAppearance(context, i10);
        if (b(context)) {
            a(context.getTheme(), i10);
        }
    }

    public MaterialTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    public MaterialTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public MaterialTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(C13421a.c(context, attributeSet, i10, i11), attributeSet, i10);
        int c10;
        Context context2 = getContext();
        if (b(context2)) {
            Resources.Theme theme = context2.getTheme();
            if (e(context2, theme, attributeSet, i10, i11) || (c10 = c(theme, attributeSet, i10, i11)) == -1) {
                return;
            }
            a(theme, c10);
        }
    }
}
