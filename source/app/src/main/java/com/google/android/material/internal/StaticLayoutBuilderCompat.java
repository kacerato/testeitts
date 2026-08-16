package com.google.android.material.internal;

import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.lang.reflect.Constructor;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class StaticLayoutBuilderCompat {

    public static final int f64598n = 1;

    public static final float f64599o = 0.0f;

    public static final float f64600p = 1.0f;

    public static final String f64601q = "android.text.TextDirectionHeuristic";

    public static final String f64602r = "android.text.TextDirectionHeuristics";

    public static final String f64603s = "LTR";

    public static final String f64604t = "RTL";

    public static boolean f64605u;

    @Nullable
    public static Constructor<StaticLayout> f64606v;

    @Nullable
    public static Object f64607w;

    public CharSequence f64608a;

    public final TextPaint f64609b;

    public final int f64610c;

    public int f64612e;

    public boolean f64619l;

    public int f64611d = 0;

    public Layout.Alignment f64613f = Layout.Alignment.ALIGN_NORMAL;

    public int f64614g = Integer.MAX_VALUE;

    public float f64615h = 0.0f;

    public float f64616i = 1.0f;

    public int f64617j = f64598n;

    public boolean f64618k = true;

    @Nullable
    public TextUtils.TruncateAt f64620m = null;

    public static class StaticLayoutBuilderCompatException extends Exception {
        public StaticLayoutBuilderCompatException(Throwable th2) {
            super("Error thrown initializing StaticLayout " + th2.getMessage(), th2);
        }
    }

    public StaticLayoutBuilderCompat(CharSequence charSequence, TextPaint textPaint, int i10) {
        this.f64608a = charSequence;
        this.f64609b = textPaint;
        this.f64610c = i10;
        this.f64612e = charSequence.length();
    }

    @NonNull
    public static StaticLayoutBuilderCompat c(@NonNull CharSequence charSequence, @NonNull TextPaint textPaint, @IntRange(from = 0) int i10) {
        return new StaticLayoutBuilderCompat(charSequence, textPaint, i10);
    }

    public StaticLayout a() throws StaticLayoutBuilderCompatException {
        if (this.f64608a == null) {
            this.f64608a = "";
        }
        int max = Math.max(0, this.f64610c);
        CharSequence charSequence = this.f64608a;
        if (this.f64614g == 1) {
            charSequence = TextUtils.ellipsize(charSequence, this.f64609b, max, this.f64620m);
        }
        int min = Math.min(charSequence.length(), this.f64612e);
        this.f64612e = min;
        if (this.f64619l && this.f64614g == 1) {
            this.f64613f = Layout.Alignment.ALIGN_OPPOSITE;
        }
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, this.f64611d, min, this.f64609b, max);
        obtain.setAlignment(this.f64613f);
        obtain.setIncludePad(this.f64618k);
        obtain.setTextDirection(this.f64619l ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
        TextUtils.TruncateAt truncateAt = this.f64620m;
        if (truncateAt != null) {
            obtain.setEllipsize(truncateAt);
        }
        obtain.setMaxLines(this.f64614g);
        float f10 = this.f64615h;
        if (f10 != 0.0f || this.f64616i != 1.0f) {
            obtain.setLineSpacing(f10, this.f64616i);
        }
        if (this.f64614g > 1) {
            obtain.setHyphenationFrequency(this.f64617j);
        }
        return obtain.build();
    }

    public final void b() throws StaticLayoutBuilderCompatException {
        if (f64605u) {
            return;
        }
        try {
            f64607w = this.f64619l ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
            Class<Integer> cls = Integer.TYPE;
            Class<Float> cls2 = Float.TYPE;
            Constructor<StaticLayout> declaredConstructor = StaticLayout.class.getDeclaredConstructor(CharSequence.class, cls, cls, TextPaint.class, cls, Layout.Alignment.class, TextDirectionHeuristic.class, cls2, cls2, Boolean.TYPE, TextUtils.TruncateAt.class, cls, cls);
            f64606v = declaredConstructor;
            declaredConstructor.setAccessible(true);
            f64605u = true;
        } catch (Exception e10) {
            throw new StaticLayoutBuilderCompatException(e10);
        }
    }

    @NonNull
    public StaticLayoutBuilderCompat d(@NonNull Layout.Alignment alignment) {
        this.f64613f = alignment;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat e(@Nullable TextUtils.TruncateAt truncateAt) {
        this.f64620m = truncateAt;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat f(@IntRange(from = 0) int i10) {
        this.f64612e = i10;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat g(int i10) {
        this.f64617j = i10;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat h(boolean z10) {
        this.f64618k = z10;
        return this;
    }

    public StaticLayoutBuilderCompat i(boolean z10) {
        this.f64619l = z10;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat j(float f10, float f11) {
        this.f64615h = f10;
        this.f64616i = f11;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat k(@IntRange(from = 0) int i10) {
        this.f64614g = i10;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat l(@IntRange(from = 0) int i10) {
        this.f64611d = i10;
        return this;
    }
}
