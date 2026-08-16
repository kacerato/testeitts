package Ae;

import android.graphics.Color;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;

public abstract class a {
    @ColorInt
    public static int a(@ColorInt int i10, @IntRange(from = 0, to = 255) int i11) {
        return (i10 & 16777215) | (i11 << 24);
    }

    @ColorInt
    public static int b(@ColorInt int i10, @ColorInt int i11, @FloatRange(from = 0.0d, to = 1.0d) float f10) {
        float f11 = 1.0f - f10;
        return Color.rgb((int) ((Color.red(i10) * f11) + (Color.red(i11) * f10)), (int) ((Color.green(i10) * f11) + (Color.green(i11) * f10)), (int) ((f11 * Color.blue(i10)) + (f10 * Color.blue(i11))));
    }
}
