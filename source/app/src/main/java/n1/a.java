package N1;

import X1.b;
import android.content.Context;
import android.graphics.Color;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.internal.A;
import w1.C15879a;

public class a {

    public static final float f15461f = 4.5f;

    public static final float f15462g = 2.0f;

    public static final int f15463h = (int) Math.round(5.1000000000000005d);

    public final boolean f15464a;

    public final int f15465b;

    public final int f15466c;

    public final int f15467d;

    public final float f15468e;

    public a(@NonNull Context context) {
        this(b.b(context, C15879a.c.f122115Q4, false), J1.a.b(context, C15879a.c.f122098P4, 0), J1.a.b(context, C15879a.c.f122080O4, 0), J1.a.b(context, C15879a.c.f122164T2, 0), context.getResources().getDisplayMetrics().density);
    }

    public int a(float f10) {
        return Math.round(b(f10) * 255.0f);
    }

    public float b(float f10) {
        if (this.f15468e <= 0.0f || f10 <= 0.0f) {
            return 0.0f;
        }
        return Math.min(((((float) Math.log1p(f10 / r0)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
    }

    @ColorInt
    public int c(@ColorInt int i10, float f10) {
        int i11;
        float b10 = b(f10);
        int alpha = Color.alpha(i10);
        int h10 = J1.a.h(ColorUtils.setAlphaComponent(i10, 255), this.f15465b, b10);
        if (b10 > 0.0f && (i11 = this.f15466c) != 0) {
            h10 = J1.a.g(h10, ColorUtils.setAlphaComponent(i11, f15463h));
        }
        return ColorUtils.setAlphaComponent(h10, alpha);
    }

    @ColorInt
    public int d(@ColorInt int i10, float f10, @NonNull View view) {
        return c(i10, f10 + i(view));
    }

    @ColorInt
    public int e(@ColorInt int i10, float f10) {
        return (this.f15464a && m(i10)) ? c(i10, f10) : i10;
    }

    @ColorInt
    public int f(@ColorInt int i10, float f10, @NonNull View view) {
        return e(i10, f10 + i(view));
    }

    @ColorInt
    public int g(float f10) {
        return e(this.f15467d, f10);
    }

    @ColorInt
    public int h(float f10, @NonNull View view) {
        return g(f10 + i(view));
    }

    public float i(@NonNull View view) {
        return A.i(view);
    }

    @ColorInt
    public int j() {
        return this.f15465b;
    }

    @ColorInt
    public int k() {
        return this.f15467d;
    }

    public boolean l() {
        return this.f15464a;
    }

    public final boolean m(@ColorInt int i10) {
        return ColorUtils.setAlphaComponent(i10, 255) == this.f15467d;
    }

    public a(boolean z10, @ColorInt int i10, @ColorInt int i11, @ColorInt int i12, float f10) {
        this.f15464a = z10;
        this.f15465b = i10;
        this.f15466c = i11;
        this.f15467d = i12;
        this.f15468e = f10;
    }
}
