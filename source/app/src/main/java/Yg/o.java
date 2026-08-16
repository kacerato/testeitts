package Yg;

import ah.AbstractC3645b;
import ah.C3652i;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.graphics.Typeface;
import android.util.AttributeSet;
import ch.C4189a;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import t3.b;

public class o extends v {

    @NotNull
    public final Paint f30520D2;

    @NotNull
    public final Paint f30521F2;

    @NotNull
    public final Paint f30522H2;

    @NotNull
    public final RectF f30523L2;

    public int f30524M2;

    public int f30525R2;

    public boolean f30526V2;

    public float f30527i3;

    @NotNull
    public final Paint f30528v2;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public o(@NotNull Context context) {
        this(context, null, 0, 6, null);
        M.p(context, "context");
    }

    private final void B() {
        this.f30528v2.setStyle(Paint.Style.STROKE);
        this.f30528v2.setStrokeCap(Paint.Cap.ROUND);
        this.f30522H2.setColor(-1);
    }

    private final void C(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            z0();
            return;
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, b.s.sx, 0, 0);
        M.o(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.f30524M2 = obtainStyledAttributes.getColor(3, this.f30524M2);
        this.f30525R2 = obtainStyledAttributes.getColor(2, this.f30525R2);
        Paint paint = this.f30522H2;
        paint.setColor(obtainStyledAttributes.getColor(0, paint.getColor()));
        setCenterCircleRadius(obtainStyledAttributes.getDimension(1, this.f30527i3));
        this.f30526V2 = obtainStyledAttributes.getBoolean(4, this.f30526V2);
        obtainStyledAttributes.recycle();
        z0();
    }

    private final void G0() {
        this.f30528v2.setStrokeWidth(getSpeedometerWidth());
        this.f30528v2.setShader(J0());
    }

    private final void z0() {
        this.f30520D2.setColor(this.f30525R2);
    }

    public final boolean H0() {
        return this.f30526V2;
    }

    public final void I0() {
        this.f30521F2.setShader(new RadialGradient(getSize() * 0.5f, getPadding() + (getSpeedometerWidth() * 0.5f) + x(8.0f), (getSpeedometerWidth() * 0.5f) + x(8.0f), new int[]{Color.argb(160, Color.red(this.f30525R2), Color.green(this.f30525R2), Color.blue(this.f30525R2)), Color.argb(10, Color.red(this.f30525R2), Color.green(this.f30525R2), Color.blue(this.f30525R2))}, new float[]{0.4f, 1.0f}, Shader.TileMode.CLAMP));
    }

    public final SweepGradient J0() {
        int argb = Color.argb(150, Color.red(this.f30524M2), Color.green(this.f30524M2), Color.blue(this.f30524M2));
        int argb2 = Color.argb(220, Color.red(this.f30524M2), Color.green(this.f30524M2), Color.blue(this.f30524M2));
        int argb3 = Color.argb(70, Color.red(this.f30524M2), Color.green(this.f30524M2), Color.blue(this.f30524M2));
        int argb4 = Color.argb(15, Color.red(this.f30524M2), Color.green(this.f30524M2), Color.blue(this.f30524M2));
        float offsetSpeed = (getOffsetSpeed() * (getEndDegree() - getStartDegree())) / 360.0f;
        SweepGradient sweepGradient = new SweepGradient(getSize() * 0.5f, getSize() * 0.5f, new int[]{argb, argb2, this.f30524M2, argb3, argb4, argb}, new float[]{0.0f, offsetSpeed * 0.5f, offsetSpeed, offsetSpeed, 0.99f, 1.0f});
        Matrix matrix = new Matrix();
        matrix.postRotate(getStartDegree(), getSize() * 0.5f, getSize() * 0.5f);
        sweepGradient.setLocalMatrix(matrix);
        return sweepGradient;
    }

    @Override
    public void d0() {
        Canvas v10 = v();
        G0();
        s0(v10);
        if (getTickNumber() > 0) {
            u0(v10);
        } else {
            p0(v10);
        }
    }

    public final int getCenterCircleColor() {
        return this.f30522H2.getColor();
    }

    public final float getCenterCircleRadius() {
        return this.f30527i3;
    }

    public final int getPointerColor() {
        return this.f30525R2;
    }

    public final int getSpeedometerColor() {
        return this.f30524M2;
    }

    @Override
    public void o0() {
        super.setMarksNumber(8);
        super.setMarksPadding(getSpeedometerWidth() + x(12.0f));
        super.setTickPadding(getSpeedometerWidth() + x(10.0f));
        super.setMarkStyle(Zg.b.ROUND);
        super.setMarkHeight(x(5.0f));
        super.setMarkWidth(x(2.0f));
        Context context = getContext();
        M.o(context, "getContext(...)");
        setIndicator(new C3652i(context));
        AbstractC3645b<?> indicator = getIndicator();
        indicator.q(indicator.a(16.0f));
        indicator.m(-1);
        super.setBackgroundCircleColor(-12006167);
    }

    @Override
    public void onDraw(@NotNull Canvas canvas) {
        M.p(canvas, "canvas");
        super.onDraw(canvas);
        G0();
        float b10 = C4189a.b(getSpeedometerWidth(), this.f30523L2.width());
        canvas.drawArc(this.f30523L2, getStartDegree() + b10, (getEndDegree() - getStartDegree()) - (b10 * 2.0f), false, this.f30528v2);
        if (this.f30526V2) {
            canvas.save();
            canvas.rotate(90 + getDegree(), getSize() * 0.5f, getSize() * 0.5f);
            canvas.drawCircle(getSize() * 0.5f, (getSpeedometerWidth() * 0.5f) + x(8.0f) + getPadding(), (getSpeedometerWidth() * 0.5f) + x(8.0f), this.f30521F2);
            canvas.drawCircle(getSize() * 0.5f, (getSpeedometerWidth() * 0.5f) + x(8.0f) + getPadding(), (getSpeedometerWidth() * 0.5f) + x(1.0f), this.f30520D2);
            canvas.restore();
        }
        y(canvas);
        q0(canvas);
        int centerCircleColor = getCenterCircleColor();
        this.f30522H2.setColor(Color.argb((int) (Color.alpha(centerCircleColor) * 0.5f), Color.red(centerCircleColor), Color.green(centerCircleColor), Color.blue(centerCircleColor)));
        canvas.drawCircle(getSize() * 0.5f, getSize() * 0.5f, this.f30527i3 + x(6.0f), this.f30522H2);
        this.f30522H2.setColor(centerCircleColor);
        canvas.drawCircle(getSize() * 0.5f, getSize() * 0.5f, this.f30527i3, this.f30522H2);
        t0(canvas);
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        float speedometerWidth = (getSpeedometerWidth() * 0.5f) + x(8.0f) + getPadding();
        this.f30523L2.set(speedometerWidth, speedometerWidth, getSize() - speedometerWidth, getSize() - speedometerWidth);
        I0();
        d0();
    }

    public final void setCenterCircleColor(int i10) {
        this.f30522H2.setColor(i10);
        if (isAttachedToWindow()) {
            invalidate();
        }
    }

    public final void setCenterCircleRadius(float f10) {
        this.f30527i3 = f10;
        if (isAttachedToWindow()) {
            invalidate();
        }
    }

    public final void setPointerColor(int i10) {
        this.f30525R2 = i10;
        this.f30520D2.setColor(i10);
        I0();
        if (isAttachedToWindow()) {
            invalidate();
        }
    }

    public final void setSpeedometerColor(int i10) {
        this.f30524M2 = i10;
        if (isAttachedToWindow()) {
            invalidate();
        }
    }

    public final void setWithPointer(boolean z10) {
        this.f30526V2 = z10;
        if (isAttachedToWindow()) {
            invalidate();
        }
    }

    @Override
    public void w() {
        super.setSpeedometerWidth(x(10.0f));
        super.setTextColor(-1);
        super.setSpeedTextColor(-1);
        super.setUnitTextColor(-1);
        super.setSpeedTextSize(x(24.0f));
        super.setUnitTextSize(x(11.0f));
        super.setSpeedTextTypeface(Typeface.create(Typeface.DEFAULT, 1));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public o(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        M.p(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public o(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        M.p(context, "context");
        this.f30528v2 = new Paint(1);
        this.f30520D2 = new Paint(1);
        this.f30521F2 = new Paint(1);
        this.f30522H2 = new Paint(1);
        this.f30523L2 = new RectF();
        this.f30524M2 = -1118482;
        this.f30525R2 = -1;
        this.f30526V2 = true;
        this.f30527i3 = x(12.0f);
        B();
        C(context, attributeSet);
    }

    public o(Context context, AttributeSet attributeSet, int i10, int i11, C14026x c14026x) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
