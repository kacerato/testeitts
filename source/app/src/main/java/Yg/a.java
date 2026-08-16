package Yg;

import Yg.j;
import ah.AbstractC3645b;
import ah.C3653j;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.util.AttributeSet;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.H;
import t3.b;

@t0({"SMAP\nAwesomeSpeedometer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AwesomeSpeedometer.kt\norg/anastr/speedviewlib/AwesomeSpeedometer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,188:1\n1924#2,3:189\n*S KotlinDebug\n*F\n+ 1 AwesomeSpeedometer.kt\norg/anastr/speedviewlib/AwesomeSpeedometer\n*L\n154#1:189,3\n*E\n"})
public class a extends v {

    @NotNull
    public final Path f30444D2;

    @NotNull
    public final Paint f30445F2;

    @NotNull
    public final Paint f30446H2;

    @NotNull
    public final Paint f30447L2;

    @NotNull
    public final RectF f30448M2;

    public int f30449R2;

    @NotNull
    public final Path f30450v2;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public a(@NotNull Context context) {
        this(context, null, 0, 6, null);
        M.p(context, "context");
    }

    private final void B() {
        Paint paint = this.f30445F2;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        getTextPaint().setTextAlign(Paint.Align.CENTER);
        this.f30446H2.setStyle(style);
        this.f30447L2.setColor(-13022805);
    }

    private final void C(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, b.s.f116411e4, 0, 0);
        M.o(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.f30449R2 = obtainStyledAttributes.getColor(0, this.f30449R2);
        Paint paint = this.f30447L2;
        paint.setColor(obtainStyledAttributes.getColor(1, paint.getColor()));
        obtainStyledAttributes.recycle();
    }

    public final void G0(@NotNull Canvas c10) {
        M.p(c10, "c");
        int endDegree = getEndDegree() - getStartDegree();
        int i10 = 0;
        for (Float f10 : getTicks()) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                H.b0();
            }
            float f11 = endDegree;
            float startDegree = getStartDegree() + (f10.floatValue() * f11);
            c10.save();
            c10.rotate(90.0f + startDegree, getSize() * 0.5f, getSize() * 0.5f);
            c10.drawPath(this.f30444D2, this.f30447L2);
            if (i11 != getTickNumber()) {
                c10.save();
                float startDegree2 = (getStartDegree() + (f11 * getTicks().get(i11).floatValue())) - startDegree;
                for (int i12 = 1; i12 < 10; i12++) {
                    c10.rotate(0.1f * startDegree2, getSize() * 0.5f, getSize() * 0.5f);
                    if (i12 == 5) {
                        this.f30445F2.setStrokeWidth((getSize() / 22.0f) / 5.0f);
                    } else {
                        this.f30445F2.setStrokeWidth((getSize() / 22.0f) / 9.0f);
                    }
                    c10.drawPath(this.f30450v2, this.f30445F2);
                }
                c10.restore();
            }
            c10.restore();
            i10 = i11;
        }
    }

    public final void H0() {
        this.f30446H2.setStrokeWidth(getSpeedometerWidth());
        this.f30445F2.setColor(getMarkColor());
    }

    public final void I0() {
        float sizePa = ((getSizePa() * 0.5f) - getSpeedometerWidth()) / (getSizePa() * 0.5f);
        float f10 = 1.0f - sizePa;
        int backgroundCircleColor = getBackgroundCircleColor();
        int i10 = this.f30449R2;
        int backgroundCircleColor2 = getBackgroundCircleColor();
        int backgroundCircleColor3 = getBackgroundCircleColor();
        int i11 = this.f30449R2;
        this.f30446H2.setShader(new RadialGradient(getSize() * 0.5f, getSize() * 0.5f, getSizePa() * 0.5f, new int[]{backgroundCircleColor, i10, backgroundCircleColor2, backgroundCircleColor3, i11, i11}, new float[]{sizePa, (0.1f * f10) + sizePa, (0.36f * f10) + sizePa, (0.64f * f10) + sizePa, (f10 * 0.9f) + sizePa, 1.0f}, Shader.TileMode.CLAMP));
    }

    @Override
    public void d0() {
        Canvas v10 = v();
        H0();
        float viewSizePa = getViewSizePa() / 22.0f;
        this.f30450v2.reset();
        this.f30450v2.moveTo(getSize() * 0.5f, getPadding());
        this.f30450v2.lineTo(getSize() * 0.5f, getPadding() + viewSizePa);
        this.f30445F2.setStrokeWidth(viewSizePa / 5.0f);
        setInitTickPadding(getViewSizePa() / 20.0f);
        this.f30444D2.reset();
        this.f30444D2.moveTo(getSize() * 0.5f, getPadding() + (getViewSizePa() / 20.0f));
        float viewSize = (getViewSize() / 20.0f) / 2.0f;
        this.f30444D2.lineTo((getSize() * 0.5f) - viewSize, getPadding());
        this.f30444D2.lineTo((getSize() * 0.5f) + viewSize, getPadding());
        float speedometerWidth = (getSpeedometerWidth() * 0.5f) + getPadding();
        this.f30448M2.set(speedometerWidth, speedometerWidth, getSize() - speedometerWidth, getSize() - speedometerWidth);
        v10.drawArc(this.f30448M2, 0.0f, 360.0f, false, this.f30446H2);
        G0(v10);
        s0(v10);
        u0(v10);
    }

    public final int getSpeedometerColor() {
        return this.f30449R2;
    }

    @Override
    public float getSpeedometerWidth() {
        return super.getSpeedometerWidth();
    }

    public final int getTrianglesColor() {
        return this.f30447L2.getColor();
    }

    @Override
    public void o0() {
        Context context = getContext();
        M.o(context, "getContext(...)");
        setIndicator(new C3653j(context));
        AbstractC3645b<?> indicator = getIndicator();
        indicator.q(indicator.a(25.0f));
        indicator.m(-16718106);
        super.E0(135, 455);
        super.setBackgroundCircleColor(-14606047);
        super.setTickNumber(9);
        super.setTickPadding(0.0f);
    }

    @Override
    public void onDraw(@NotNull Canvas canvas) {
        M.p(canvas, "canvas");
        super.onDraw(canvas);
        y(canvas);
        q0(canvas);
        t0(canvas);
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        I0();
        d0();
    }

    public final void setSpeedometerColor(int i10) {
        this.f30449R2 = i10;
        I0();
        F();
    }

    @Override
    public void setSpeedometerWidth(float f10) {
        super.setSpeedometerWidth(f10);
        RectF rectF = this.f30448M2;
        if (rectF != null) {
            float f11 = f10 * 0.5f;
            rectF.set(f11, f11, getSize() - f11, getSize() - f11);
            I0();
            F();
        }
    }

    public final void setTrianglesColor(int i10) {
        this.f30447L2.setColor(i10);
        F();
    }

    @Override
    public void w() {
        super.setSpeedometerWidth(x(60.0f));
        super.setTextColor(-15776);
        super.setSpeedTextColor(-1);
        super.setUnitTextColor(-1);
        super.setTextTypeface(Typeface.create(Typeface.DEFAULT, 1));
        super.setSpeedTextPosition(j.a.CENTER);
        super.setUnitUnderSpeedText(true);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public a(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        M.p(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public a(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        M.p(context, "context");
        this.f30450v2 = new Path();
        this.f30444D2 = new Path();
        this.f30445F2 = new Paint(1);
        this.f30446H2 = new Paint(1);
        this.f30447L2 = new Paint(1);
        this.f30448M2 = new RectF();
        this.f30449R2 = -16718106;
        B();
        C(context, attributeSet);
    }

    public a(Context context, AttributeSet attributeSet, int i10, int i11, C14026x c14026x) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
