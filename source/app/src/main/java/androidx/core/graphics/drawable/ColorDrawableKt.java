package androidx.core.graphics.drawable;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import kotlin.jvm.internal.M;

public final class ColorDrawableKt {
    public static final ColorDrawable toDrawable(int i10) {
        return new ColorDrawable(i10);
    }

    public static final ColorDrawable toDrawable(Color color) {
        M.p(color, "<this>");
        return new ColorDrawable(color.toArgb());
    }
}
