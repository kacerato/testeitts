package Yg;

import ah.AbstractC3645b;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import t3.b;

public class q extends v {

    @NotNull
    public final Path f30532D2;

    @NotNull
    public final Path f30533F2;

    @NotNull
    public final Paint f30534H2;

    @NotNull
    public final Paint f30535L2;

    @NotNull
    public final Paint f30536M2;

    @NotNull
    public final Paint f30537R2;

    public boolean f30538V2;

    public int f30539i3;

    @NotNull
    public final Path f30540v2;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public q(@NotNull Context context) {
        this(context, null, 0, 6, null);
        M.p(context, "context");
    }

    private final void B() {
        Paint paint = this.f30534H2;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        this.f30534H2.setStrokeWidth(x(3.0f));
        this.f30535L2.setStyle(style);
        this.f30535L2.setStrokeWidth(x(3.0f));
        this.f30537R2.setStyle(style);
        this.f30537R2.setStrokeWidth(x(1.8f));
        this.f30537R2.setColor(-1);
        this.f30536M2.setColor(-1);
        setLayerType(1, null);
        setWithEffects(this.f30538V2);
    }

    private final void C(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, b.s.Rz, 0, 0);
        M.o(obtainStyledAttributes, "obtainStyledAttributes(...)");
        Paint paint = this.f30537R2;
        paint.setColor(obtainStyledAttributes.getColor(1, paint.getColor()));
        int i10 = obtainStyledAttributes.getInt(0, this.f30539i3);
        float dimension = obtainStyledAttributes.getDimension(2, this.f30534H2.getStrokeWidth());
        this.f30534H2.setStrokeWidth(dimension);
        this.f30535L2.setStrokeWidth(dimension);
        Paint paint2 = this.f30536M2;
        paint2.setColor(obtainStyledAttributes.getColor(3, paint2.getColor()));
        this.f30538V2 = obtainStyledAttributes.getBoolean(4, this.f30538V2);
        obtainStyledAttributes.recycle();
        setWithEffects(this.f30538V2);
        if (1 > i10 || i10 >= 21) {
            return;
        }
        this.f30539i3 = i10;
    }

    public final boolean G0() {
        return this.f30538V2;
    }

    public final void H0() {
        this.f30540v2.reset();
        this.f30540v2.moveTo(getSize() * 0.5f, getPadding());
        this.f30540v2.lineTo(getSize() * 0.5f, getSpeedometerWidth() + getPadding());
    }

    @Override
    public void d0() {
        Canvas v10 = v();
        H0();
        this.f30532D2.reset();
        this.f30532D2.moveTo(getSize() / 2.0f, getSize() / 2.0f);
        this.f30532D2.lineTo(getSize() / 2.0f, (getSizePa() / 3.2f) + getPadding());
        this.f30532D2.moveTo(getSize() / 2.0f, (getSizePa() / 3.2f) + getPadding());
        this.f30532D2.lineTo(getSize() / 2.2f, (getSizePa() / 3.0f) + getPadding());
        this.f30532D2.moveTo(getSize() / 2.2f, (getSizePa() / 3.0f) + getPadding());
        this.f30532D2.lineTo(getSize() / 2.1f, (getSizePa() / 4.5f) + getPadding());
        this.f30533F2.reset();
        this.f30533F2.moveTo(getSize() / 2.0f, getSize() / 2.0f);
        this.f30533F2.lineTo(getSize() / 2.0f, (getSizePa() / 3.2f) + getPadding());
        this.f30533F2.moveTo(getSize() / 2.0f, (getSizePa() / 3.2f) + getPadding());
        this.f30533F2.lineTo(getSize() / 2.2f, (getSizePa() / 3.8f) + getPadding());
        this.f30533F2.moveTo(getSize() / 2.0f, (getSizePa() / 3.2f) + getPadding());
        this.f30533F2.lineTo(getSize() / 1.8f, (getSizePa() / 3.8f) + getPadding());
        v10.save();
        for (int i10 = 0; i10 < 6; i10++) {
            v10.rotate(58.0f, getSize() * 0.5f, getSize() * 0.5f);
            if (i10 % 2 == 0) {
                v10.drawPath(this.f30532D2, this.f30537R2);
            } else {
                v10.drawPath(this.f30533F2, this.f30537R2);
            }
        }
        v10.restore();
        s0(v10);
        if (getTickNumber() > 0) {
            u0(v10);
        } else {
            p0(v10);
        }
    }

    public final int getDegreeBetweenMark() {
        return this.f30539i3;
    }

    public final int getRayColor() {
        return this.f30537R2.getColor();
    }

    public final float getRayMarkWidth() {
        return this.f30534H2.getStrokeWidth();
    }

    public final int getSpeedBackgroundColor() {
        return this.f30536M2.getColor();
    }

    @Override
    public void o0() {
        super.setBackgroundCircleColor(-14606047);
        super.setMarkColor(-16777216);
    }

    @Override
    public void onDraw(@NotNull Canvas canvas) {
        int i10;
        M.p(canvas, "canvas");
        super.onDraw(canvas);
        canvas.save();
        canvas.rotate(getStartDegree() + 90.0f, getSize() * 0.5f, getSize() * 0.5f);
        int startDegree = getStartDegree();
        while (startDegree < getEndDegree()) {
            if (getDegree() <= startDegree) {
                this.f30534H2.setColor(getMarkColor());
                canvas.drawPath(this.f30540v2, this.f30534H2);
                canvas.rotate(this.f30539i3, getSize() * 0.5f, getSize() * 0.5f);
                i10 = this.f30539i3;
            } else {
                if (getCurrentSection() != null) {
                    Paint paint = this.f30535L2;
                    Zg.a currentSection = getCurrentSection();
                    M.m(currentSection);
                    paint.setColor(currentSection.c());
                } else {
                    this.f30535L2.setColor(0);
                }
                canvas.drawPath(this.f30540v2, this.f30535L2);
                canvas.rotate(this.f30539i3, getSize() * 0.5f, getSize() / 2.0f);
                i10 = this.f30539i3;
            }
            startDegree += i10;
        }
        canvas.restore();
        RectF speedUnitTextBounds = getSpeedUnitTextBounds();
        speedUnitTextBounds.left -= 2.0f;
        speedUnitTextBounds.right += 2.0f;
        speedUnitTextBounds.bottom += 2.0f;
        canvas.drawRect(speedUnitTextBounds, this.f30536M2);
        y(canvas);
        q0(canvas);
        t0(canvas);
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        H0();
        d0();
    }

    public final void setDegreeBetweenMark(int i10) {
        if (i10 <= 0 || i10 > 20) {
            return;
        }
        this.f30539i3 = i10;
        if (isAttachedToWindow()) {
            invalidate();
        }
    }

    @Override
    public void setIndicator(@NotNull AbstractC3645b.EnumC0862b indicator) {
        M.p(indicator, "indicator");
        super.setIndicator(indicator);
        getIndicator().t(this.f30538V2);
    }

    public final void setRayColor(int i10) {
        this.f30537R2.setColor(i10);
        F();
    }

    public final void setRayMarkWidth(float f10) {
        this.f30534H2.setStrokeWidth(f10);
        this.f30535L2.setStrokeWidth(f10);
        if (isAttachedToWindow()) {
            invalidate();
        }
    }

    public final void setSpeedBackgroundColor(int i10) {
        this.f30536M2.setColor(i10);
        F();
    }

    public final void setWithEffects(boolean z10) {
        this.f30538V2 = z10;
        if (isInEditMode()) {
            return;
        }
        getIndicator().t(z10);
        if (z10) {
            Paint paint = this.f30537R2;
            BlurMaskFilter.Blur blur = BlurMaskFilter.Blur.SOLID;
            paint.setMaskFilter(new BlurMaskFilter(3.0f, blur));
            this.f30535L2.setMaskFilter(new BlurMaskFilter(5.0f, blur));
            this.f30536M2.setMaskFilter(new BlurMaskFilter(8.0f, blur));
        } else {
            this.f30537R2.setMaskFilter(null);
            this.f30535L2.setMaskFilter(null);
            this.f30536M2.setMaskFilter(null);
        }
        F();
    }

    @Override
    public void w() {
        super.setTextColor(-1);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public q(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        M.p(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public q(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        M.p(context, "context");
        this.f30540v2 = new Path();
        this.f30532D2 = new Path();
        this.f30533F2 = new Path();
        this.f30534H2 = new Paint(1);
        this.f30535L2 = new Paint(1);
        this.f30536M2 = new Paint(1);
        this.f30537R2 = new Paint(1);
        this.f30538V2 = true;
        this.f30539i3 = 5;
        B();
        C(context, attributeSet);
    }

    public q(Context context, AttributeSet attributeSet, int i10, int i11, C14026x c14026x) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
