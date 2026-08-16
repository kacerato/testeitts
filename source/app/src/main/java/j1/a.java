package J1;

import X1.b;
import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;

public class a {

    public static final float f10183a = 1.0f;

    public static final float f10184b = 0.54f;

    public static final float f10185c = 0.38f;

    public static final float f10186d = 0.32f;

    public static final float f10187e = 0.12f;

    @ColorInt
    public static int a(@ColorInt int i10, @IntRange(from = 0, to = 255) int i11) {
        return ColorUtils.setAlphaComponent(i10, (Color.alpha(i10) * i11) / 255);
    }

    @ColorInt
    public static int b(@NonNull Context context, @AttrRes int i10, @ColorInt int i11) {
        TypedValue a10 = b.a(context, i10);
        return a10 != null ? a10.data : i11;
    }

    @ColorInt
    public static int c(Context context, @AttrRes int i10, String str) {
        return b.g(context, i10, str);
    }

    @ColorInt
    public static int d(@NonNull View view, @AttrRes int i10) {
        return b.h(view, i10);
    }

    @ColorInt
    public static int e(@NonNull View view, @AttrRes int i10, @ColorInt int i11) {
        return b(view.getContext(), i10, i11);
    }

    public static boolean f(@ColorInt int i10) {
        return i10 != 0 && ColorUtils.calculateLuminance(i10) > 0.5d;
    }

    @ColorInt
    public static int g(@ColorInt int i10, @ColorInt int i11) {
        return ColorUtils.compositeColors(i11, i10);
    }

    @ColorInt
    public static int h(@ColorInt int i10, @ColorInt int i11, @FloatRange(from = 0.0d, to = 1.0d) float f10) {
        return g(i10, ColorUtils.setAlphaComponent(i11, Math.round(Color.alpha(i11) * f10)));
    }

    @ColorInt
    public static int i(@NonNull View view, @AttrRes int i10, @AttrRes int i11) {
        return j(view, i10, i11, 1.0f);
    }

    @ColorInt
    public static int j(@NonNull View view, @AttrRes int i10, @AttrRes int i11, @FloatRange(from = 0.0d, to = 1.0d) float f10) {
        return h(d(view, i10), d(view, i11), f10);
    }
}
