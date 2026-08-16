package G0;

import A0.a;
import T0.C3042l;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Button;
import androidx.annotation.Nullable;
import androidx.core.graphics.drawable.DrawableCompat;

public final class N extends Button {
    public N(Context context, @Nullable AttributeSet attributeSet) {
        super(context, null, R.attr.buttonStyle);
    }

    public static final int b(int i10, int i11, int i12, int i13) {
        if (i10 == 0) {
            return i11;
        }
        if (i10 == 1) {
            return i12;
        }
        if (i10 == 2) {
            return i13;
        }
        throw new IllegalStateException("Unknown color scheme: " + i10);
    }

    public final void a(Resources resources, int i10, int i11) {
        setTypeface(Typeface.DEFAULT_BOLD);
        setTextSize(14.0f);
        int i12 = (int) ((resources.getDisplayMetrics().density * 48.0f) + 0.5f);
        setMinHeight(i12);
        setMinWidth(i12);
        int i13 = a.c.f75b;
        int i14 = a.c.f80g;
        int b10 = b(i11, i13, i14, i14);
        int i15 = a.c.f84k;
        int i16 = a.c.f89p;
        int b11 = b(i11, i15, i16, i16);
        if (i10 == 0 || i10 == 1) {
            b10 = b11;
        } else if (i10 != 2) {
            throw new IllegalStateException("Unknown button size: " + i10);
        }
        Drawable wrap = DrawableCompat.wrap(resources.getDrawable(b10));
        DrawableCompat.setTintList(wrap, resources.getColorStateList(a.b.f73k));
        DrawableCompat.setTintMode(wrap, PorterDuff.Mode.SRC_ATOP);
        setBackgroundDrawable(wrap);
        int i17 = a.b.f63a;
        int i18 = a.b.f68f;
        setTextColor((ColorStateList) A.r(resources.getColorStateList(b(i11, i17, i18, i18))));
        if (i10 == 0) {
            setText(resources.getString(a.e.f119p));
        } else if (i10 == 1) {
            setText(resources.getString(a.e.f120q));
        } else {
            if (i10 != 2) {
                throw new IllegalStateException("Unknown button size: " + i10);
            }
            setText((CharSequence) null);
        }
        setTransformationMethod(null);
        if (C3042l.l(getContext())) {
            setGravity(19);
        }
    }
}
