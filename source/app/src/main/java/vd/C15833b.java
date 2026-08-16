package vd;

import Lf.k;
import Mf.l;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import vd.d;

public final class C15833b extends View {

    public static final float f121486C = 100.0f;

    public static final float f121487D = 270.0f;

    public static final long f121488E = 1500;

    public static final a f121489F = new a(null);

    public float f121490A;

    public final Runnable f121491B;

    public ValueAnimator f121492b;

    public Handler f121493c;

    public RectF f121494d;

    public Paint f121495e;

    public Paint f121496f;

    public float f121497g;

    public float f121498h;

    public float f121499i;

    public float f121500j;

    public int f121501k;

    @Nullable
    public Integer f121502l;

    @Nullable
    public Integer f121503m;

    @NotNull
    public EnumC2071b f121504n;

    public int f121505o;

    @Nullable
    public Integer f121506p;

    @Nullable
    public Integer f121507q;

    @NotNull
    public EnumC2071b f121508r;

    public boolean f121509s;

    public float f121510t;

    @NotNull
    public c f121511u;

    public boolean f121512v;

    @Nullable
    public l<? super Float, P0> f121513w;

    @Nullable
    public l<? super Boolean, P0> f121514x;

    public float f121515y;

    public c f121516z;

    public static final class a {
        public a() {
        }

        public a(C14026x c14026x) {
            this();
        }
    }

    public enum EnumC2071b {
        LEFT_TO_RIGHT(1),
        RIGHT_TO_LEFT(2),
        TOP_TO_BOTTOM(3),
        BOTTOM_TO_END(4);

        private final int value;

        EnumC2071b(int i10) {
            this.value = i10;
        }

        public final int a() {
            return this.value;
        }
    }

    public enum c {
        TO_RIGHT(1),
        TO_LEFT(2);

        private final int value;

        c(int i10) {
            this.value = i10;
        }

        public final int a() {
            return this.value;
        }
    }

    public static final class d implements Runnable {
        public d() {
        }

        @Override
        public final void run() {
            if (C15833b.this.getIndeterminateMode()) {
                C15833b.this.p();
                C15833b c15833b = C15833b.this;
                c15833b.setProgressDirectionIndeterminateMode(c15833b.r(c15833b.f121516z));
                C15833b c15833b2 = C15833b.this;
                if (c15833b2.m(c15833b2.f121516z)) {
                    C15833b.v(C15833b.this, 0.0f, Long.valueOf(C15833b.f121488E), null, null, 12, null);
                } else {
                    C15833b c15833b3 = C15833b.this;
                    C15833b.v(c15833b3, c15833b3.getProgressMax(), Long.valueOf(C15833b.f121488E), null, null, 12, null);
                }
            }
        }
    }

    public static final class e implements ValueAnimator.AnimatorUpdateListener {
        public e() {
        }

        @Override
        public final void onAnimationUpdate(ValueAnimator animation) {
            M.h(animation, "animation");
            Object animatedValue = animation.getAnimatedValue();
            if (!(animatedValue instanceof Float)) {
                animatedValue = null;
            }
            Float f10 = (Float) animatedValue;
            if (f10 != null) {
                float floatValue = f10.floatValue();
                if (C15833b.this.getIndeterminateMode()) {
                    C15833b.this.setProgressIndeterminateMode(floatValue);
                } else {
                    C15833b.this.setProgress(floatValue);
                }
                if (C15833b.this.getIndeterminateMode()) {
                    float f11 = (floatValue * DisplayMetrics.DENSITY_360) / 100;
                    C15833b c15833b = C15833b.this;
                    if (!c15833b.m(c15833b.f121516z)) {
                        f11 = -f11;
                    }
                    c15833b.setStartAngleIndeterminateMode(f11 + 270.0f);
                }
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15833b(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        M.q(context, "context");
        this.f121494d = new RectF();
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        this.f121495e = paint;
        Paint paint2 = new Paint();
        paint2.setAntiAlias(true);
        paint2.setStyle(style);
        this.f121496f = paint2;
        this.f121498h = 100.0f;
        this.f121499i = getResources().getDimension(d.b.f121537b);
        this.f121500j = getResources().getDimension(d.b.f121536a);
        this.f121501k = -16777216;
        EnumC2071b enumC2071b = EnumC2071b.LEFT_TO_RIGHT;
        this.f121504n = enumC2071b;
        this.f121505o = -7829368;
        this.f121508r = enumC2071b;
        this.f121510t = 270.0f;
        c cVar = c.TO_RIGHT;
        this.f121511u = cVar;
        this.f121516z = cVar;
        this.f121490A = 270.0f;
        this.f121491B = new d();
        l(context, attributeSet);
    }

    public final void setProgressDirectionIndeterminateMode(c cVar) {
        this.f121516z = cVar;
        invalidate();
    }

    public final void setProgressIndeterminateMode(float f10) {
        this.f121515y = f10;
        invalidate();
    }

    public final void setStartAngleIndeterminateMode(float f10) {
        this.f121490A = f10;
        invalidate();
    }

    public static void v(C15833b c15833b, float f10, Long l10, TimeInterpolator timeInterpolator, Long l11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            l10 = null;
        }
        if ((i10 & 4) != 0) {
            timeInterpolator = null;
        }
        if ((i10 & 8) != 0) {
            l11 = null;
        }
        c15833b.u(f10, l10, timeInterpolator, l11);
    }

    public final int getBackgroundProgressBarColor() {
        return this.f121505o;
    }

    @NotNull
    public final EnumC2071b getBackgroundProgressBarColorDirection() {
        return this.f121508r;
    }

    @Nullable
    public final Integer getBackgroundProgressBarColorEnd() {
        return this.f121507q;
    }

    @Nullable
    public final Integer getBackgroundProgressBarColorStart() {
        return this.f121506p;
    }

    public final float getBackgroundProgressBarWidth() {
        return this.f121500j;
    }

    public final boolean getIndeterminateMode() {
        return this.f121512v;
    }

    @Nullable
    public final l<Boolean, P0> getOnIndeterminateModeChangeListener() {
        return this.f121514x;
    }

    @Nullable
    public final l<Float, P0> getOnProgressChangeListener() {
        return this.f121513w;
    }

    public final float getProgress() {
        return this.f121497g;
    }

    public final int getProgressBarColor() {
        return this.f121501k;
    }

    @NotNull
    public final EnumC2071b getProgressBarColorDirection() {
        return this.f121504n;
    }

    @Nullable
    public final Integer getProgressBarColorEnd() {
        return this.f121503m;
    }

    @Nullable
    public final Integer getProgressBarColorStart() {
        return this.f121502l;
    }

    public final float getProgressBarWidth() {
        return this.f121499i;
    }

    @NotNull
    public final c getProgressDirection() {
        return this.f121511u;
    }

    public final float getProgressMax() {
        return this.f121498h;
    }

    public final boolean getRoundBorder() {
        return this.f121509s;
    }

    public final float getStartAngle() {
        return this.f121510t;
    }

    public final LinearGradient j(int i10, int i11, EnumC2071b enumC2071b) {
        float width;
        float f10;
        float f11;
        float f12;
        int i12 = C15834c.f121519a[enumC2071b.ordinal()];
        if (i12 != 1) {
            if (i12 == 2) {
                f10 = getWidth();
                f11 = 0.0f;
            } else if (i12 == 3) {
                f12 = getHeight();
                f10 = 0.0f;
                f11 = 0.0f;
                width = 0.0f;
            } else if (i12 != 4) {
                f10 = 0.0f;
                f11 = 0.0f;
            } else {
                f11 = getHeight();
                f10 = 0.0f;
                width = 0.0f;
                f12 = width;
            }
            width = f11;
            f12 = width;
        } else {
            width = getWidth();
            f10 = 0.0f;
            f11 = 0.0f;
            f12 = 0.0f;
        }
        return new LinearGradient(f10, f11, width, f12, i10, i11, Shader.TileMode.CLAMP);
    }

    public final float k(float f10) {
        Resources system = Resources.getSystem();
        M.h(system, "Resources.getSystem()");
        return f10 * system.getDisplayMetrics().density;
    }

    public final void l(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, d.c.f121538a, 0, 0);
        M.h(obtainStyledAttributes, "context.theme.obtainStyl\u2026ircularProgressBar, 0, 0)");
        setProgress(obtainStyledAttributes.getFloat(d.c.f121545h, this.f121497g));
        setProgressMax(obtainStyledAttributes.getFloat(d.c.f121547j, this.f121498h));
        setProgressBarWidth(q(obtainStyledAttributes.getDimension(d.c.f121552o, this.f121499i)));
        setBackgroundProgressBarWidth(q(obtainStyledAttributes.getDimension(d.c.f121543f, this.f121500j)));
        setProgressBarColor(obtainStyledAttributes.getInt(d.c.f121548k, this.f121501k));
        int color = obtainStyledAttributes.getColor(d.c.f121551n, 0);
        if (color != 0) {
            setProgressBarColorStart(Integer.valueOf(color));
        }
        int color2 = obtainStyledAttributes.getColor(d.c.f121550m, 0);
        if (color2 != 0) {
            setProgressBarColorEnd(Integer.valueOf(color2));
        }
        setProgressBarColorDirection(w(obtainStyledAttributes.getInteger(d.c.f121549l, this.f121504n.a())));
        setBackgroundProgressBarColor(obtainStyledAttributes.getInt(d.c.f121539b, this.f121505o));
        int color3 = obtainStyledAttributes.getColor(d.c.f121542e, 0);
        if (color3 != 0) {
            setBackgroundProgressBarColorStart(Integer.valueOf(color3));
        }
        int color4 = obtainStyledAttributes.getColor(d.c.f121541d, 0);
        if (color4 != 0) {
            setBackgroundProgressBarColorEnd(Integer.valueOf(color4));
        }
        setBackgroundProgressBarColorDirection(w(obtainStyledAttributes.getInteger(d.c.f121540c, this.f121508r.a())));
        setProgressDirection(x(obtainStyledAttributes.getInteger(d.c.f121546i, this.f121511u.a())));
        setRoundBorder(obtainStyledAttributes.getBoolean(d.c.f121553p, this.f121509s));
        setStartAngle(obtainStyledAttributes.getFloat(d.c.f121554q, 0.0f));
        setIndeterminateMode(obtainStyledAttributes.getBoolean(d.c.f121544g, this.f121512v));
        obtainStyledAttributes.recycle();
    }

    public final boolean m(@NotNull c cVar) {
        return cVar == c.TO_RIGHT;
    }

    public final void n() {
        Paint paint = this.f121495e;
        Integer num = this.f121506p;
        int intValue = num != null ? num.intValue() : this.f121505o;
        Integer num2 = this.f121507q;
        paint.setShader(j(intValue, num2 != null ? num2.intValue() : this.f121505o, this.f121508r));
    }

    public final void o() {
        Paint paint = this.f121496f;
        Integer num = this.f121502l;
        int intValue = num != null ? num.intValue() : this.f121501k;
        Integer num2 = this.f121503m;
        paint.setShader(j(intValue, num2 != null ? num2.intValue() : this.f121501k, this.f121504n));
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f121492b;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        Handler handler = this.f121493c;
        if (handler != null) {
            handler.removeCallbacks(this.f121491B);
        }
    }

    @Override
    public void onDraw(@NotNull Canvas canvas) {
        M.q(canvas, "canvas");
        super.onDraw(canvas);
        canvas.drawOval(this.f121494d, this.f121495e);
        boolean z10 = this.f121512v;
        float f10 = ((z10 ? this.f121515y : this.f121497g) * 100.0f) / this.f121498h;
        boolean z11 = false;
        boolean z12 = z10 && m(this.f121516z);
        if (!this.f121512v && m(this.f121511u)) {
            z11 = true;
        }
        canvas.drawArc(this.f121494d, this.f121512v ? this.f121490A : this.f121510t, (((z12 || z11) ? DisplayMetrics.DENSITY_360 : -360) * f10) / 100, false, this.f121496f);
    }

    @Override
    public void onMeasure(int i10, int i11) {
        int min = Math.min(View.getDefaultSize(getSuggestedMinimumWidth(), i10), View.getDefaultSize(getSuggestedMinimumHeight(), i11));
        setMeasuredDimension(min, min);
        float f10 = this.f121499i;
        float f11 = this.f121500j;
        if (f10 <= f11) {
            f10 = f11;
        }
        float f12 = f10 / 2;
        float f13 = 0 + f12;
        float f14 = min - f12;
        this.f121494d.set(f13, f13, f14, f14);
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        o();
        n();
        invalidate();
    }

    public final void p() {
        Handler handler = this.f121493c;
        if (handler != null) {
            handler.postDelayed(this.f121491B, f121488E);
        }
    }

    public final float q(float f10) {
        Resources system = Resources.getSystem();
        M.h(system, "Resources.getSystem()");
        return f10 / system.getDisplayMetrics().density;
    }

    public final c r(@NotNull c cVar) {
        return m(cVar) ? c.TO_LEFT : c.TO_RIGHT;
    }

    @k
    public final void s(float f10, @Nullable Long l10) {
        v(this, f10, l10, null, null, 12, null);
    }

    @Override
    public void setBackgroundColor(int i10) {
        setBackgroundProgressBarColor(i10);
    }

    public final void setBackgroundProgressBarColor(int i10) {
        this.f121505o = i10;
        n();
        invalidate();
    }

    public final void setBackgroundProgressBarColorDirection(@NotNull EnumC2071b value) {
        M.q(value, "value");
        this.f121508r = value;
        n();
        invalidate();
    }

    public final void setBackgroundProgressBarColorEnd(@Nullable Integer num) {
        this.f121507q = num;
        n();
        invalidate();
    }

    public final void setBackgroundProgressBarColorStart(@Nullable Integer num) {
        this.f121506p = num;
        n();
        invalidate();
    }

    public final void setBackgroundProgressBarWidth(float f10) {
        float k10 = k(f10);
        this.f121500j = k10;
        this.f121495e.setStrokeWidth(k10);
        requestLayout();
        invalidate();
    }

    public final void setIndeterminateMode(boolean z10) {
        this.f121512v = z10;
        l<? super Boolean, P0> lVar = this.f121514x;
        if (lVar != null) {
            lVar.invoke(Boolean.valueOf(z10));
        }
        setProgressIndeterminateMode(0.0f);
        setProgressDirectionIndeterminateMode(c.TO_RIGHT);
        setStartAngleIndeterminateMode(270.0f);
        Handler handler = this.f121493c;
        if (handler != null) {
            handler.removeCallbacks(this.f121491B);
        }
        ValueAnimator valueAnimator = this.f121492b;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        Handler handler2 = new Handler();
        this.f121493c = handler2;
        if (this.f121512v) {
            handler2.post(this.f121491B);
        }
    }

    public final void setOnIndeterminateModeChangeListener(@Nullable l<? super Boolean, P0> lVar) {
        this.f121514x = lVar;
    }

    public final void setOnProgressChangeListener(@Nullable l<? super Float, P0> lVar) {
        this.f121513w = lVar;
    }

    public final void setProgress(float f10) {
        float f11 = this.f121497g;
        float f12 = this.f121498h;
        if (f11 > f12) {
            f10 = f12;
        }
        this.f121497g = f10;
        l<? super Float, P0> lVar = this.f121513w;
        if (lVar != null) {
            lVar.invoke(Float.valueOf(f10));
        }
        invalidate();
    }

    public final void setProgressBarColor(int i10) {
        this.f121501k = i10;
        o();
        invalidate();
    }

    public final void setProgressBarColorDirection(@NotNull EnumC2071b value) {
        M.q(value, "value");
        this.f121504n = value;
        o();
        invalidate();
    }

    public final void setProgressBarColorEnd(@Nullable Integer num) {
        this.f121503m = num;
        o();
        invalidate();
    }

    public final void setProgressBarColorStart(@Nullable Integer num) {
        this.f121502l = num;
        o();
        invalidate();
    }

    public final void setProgressBarWidth(float f10) {
        float k10 = k(f10);
        this.f121499i = k10;
        this.f121496f.setStrokeWidth(k10);
        requestLayout();
        invalidate();
    }

    public final void setProgressDirection(@NotNull c value) {
        M.q(value, "value");
        this.f121511u = value;
        invalidate();
    }

    public final void setProgressMax(float f10) {
        if (this.f121498h < 0) {
            f10 = 100.0f;
        }
        this.f121498h = f10;
        invalidate();
    }

    @k
    public final void setProgressWithAnimation(float f10) {
        v(this, f10, null, null, null, 14, null);
    }

    public final void setRoundBorder(boolean z10) {
        this.f121509s = z10;
        this.f121496f.setStrokeCap(z10 ? Paint.Cap.ROUND : Paint.Cap.BUTT);
        invalidate();
    }

    public final void setStartAngle(float f10) {
        float f11;
        float f12 = f10 + 270.0f;
        while (true) {
            f11 = DisplayMetrics.DENSITY_360;
            if (f12 <= f11) {
                break;
            } else {
                f12 -= f11;
            }
        }
        if (f12 < 0) {
            f12 = 0.0f;
        } else if (f12 > f11) {
            f12 = 360.0f;
        }
        this.f121510t = f12;
        invalidate();
    }

    @k
    public final void t(float f10, @Nullable Long l10, @Nullable TimeInterpolator timeInterpolator) {
        v(this, f10, l10, timeInterpolator, null, 8, null);
    }

    @k
    public final void u(float f10, @Nullable Long l10, @Nullable TimeInterpolator timeInterpolator, @Nullable Long l11) {
        ValueAnimator valueAnimator;
        ValueAnimator valueAnimator2 = this.f121492b;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        this.f121492b = ValueAnimator.ofFloat(this.f121512v ? this.f121515y : this.f121497g, f10);
        if (l10 != null) {
            long longValue = l10.longValue();
            ValueAnimator valueAnimator3 = this.f121492b;
            if (valueAnimator3 != null) {
                valueAnimator3.setDuration(longValue);
            }
        }
        if (timeInterpolator != null && (valueAnimator = this.f121492b) != null) {
            valueAnimator.setInterpolator(timeInterpolator);
        }
        if (l11 != null) {
            long longValue2 = l11.longValue();
            ValueAnimator valueAnimator4 = this.f121492b;
            if (valueAnimator4 != null) {
                valueAnimator4.setStartDelay(longValue2);
            }
        }
        ValueAnimator valueAnimator5 = this.f121492b;
        if (valueAnimator5 != null) {
            valueAnimator5.addUpdateListener(new e());
        }
        ValueAnimator valueAnimator6 = this.f121492b;
        if (valueAnimator6 != null) {
            valueAnimator6.start();
        }
    }

    public final EnumC2071b w(int i10) {
        if (i10 == 1) {
            return EnumC2071b.LEFT_TO_RIGHT;
        }
        if (i10 == 2) {
            return EnumC2071b.RIGHT_TO_LEFT;
        }
        if (i10 == 3) {
            return EnumC2071b.TOP_TO_BOTTOM;
        }
        if (i10 == 4) {
            return EnumC2071b.BOTTOM_TO_END;
        }
        throw new IllegalArgumentException("This value is not supported for GradientDirection: " + i10);
    }

    public final c x(int i10) {
        if (i10 == 1) {
            return c.TO_RIGHT;
        }
        if (i10 == 2) {
            return c.TO_LEFT;
        }
        throw new IllegalArgumentException("This value is not supported for ProgressDirection: " + i10);
    }

    public C15833b(Context context, AttributeSet attributeSet, int i10, C14026x c14026x) {
        this(context, (i10 & 2) != 0 ? null : attributeSet);
    }
}
