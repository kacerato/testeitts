package Yg;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import t3.b;

public class w extends v {

    @NotNull
    public final Paint f30575D2;

    @NotNull
    public final RectF f30576F2;

    @NotNull
    public final Paint f30577v2;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public w(@NotNull Context context) {
        this(context, null, 0, 6, null);
        M.p(context, "context");
    }

    private final void B() {
        Paint paint = this.f30577v2;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        this.f30575D2.setStyle(style);
        this.f30575D2.setColor(-9079435);
        setLayerType(1, null);
    }

    private final void C(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, b.s.sI, 0, 0);
        M.o(obtainStyledAttributes, "obtainStyledAttributes(...)");
        Paint paint = this.f30575D2;
        paint.setColor(obtainStyledAttributes.getColor(0, paint.getColor()));
        obtainStyledAttributes.recycle();
    }

    private final void G0() {
        this.f30577v2.setStrokeWidth(getSpeedometerWidth());
        if (getCurrentSection() == null) {
            this.f30577v2.setColor(0);
            return;
        }
        Paint paint = this.f30577v2;
        Zg.a currentSection = getCurrentSection();
        M.m(currentSection);
        paint.setColor(currentSection.c());
    }

    @Override
    public void d0() {
        Canvas v10 = v();
        this.f30575D2.setStrokeWidth(getSpeedometerWidth());
        float speedometerWidth = (getSpeedometerWidth() * 0.5f) + getPadding();
        this.f30576F2.set(speedometerWidth, speedometerWidth, getSize() - speedometerWidth, getSize() - speedometerWidth);
        v10.drawArc(this.f30576F2, getStartDegree(), getEndDegree() - getStartDegree(), false, this.f30575D2);
        s0(v10);
        if (getTickNumber() > 0) {
            u0(v10);
        } else {
            p0(v10);
        }
    }

    public final int getSpeedometerBackColor() {
        return this.f30575D2.getColor();
    }

    @Override
    public void o0() {
        super.setBackgroundCircleColor(0);
    }

    @Override
    public void onDraw(@NotNull Canvas canvas) {
        M.p(canvas, "canvas");
        super.onDraw(canvas);
        G0();
        canvas.drawArc(this.f30576F2, getStartDegree(), (getEndDegree() - getStartDegree()) * getOffsetSpeed(), false, this.f30577v2);
        y(canvas);
        q0(canvas);
        t0(canvas);
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        d0();
    }

    public final void setSpeedometerBackColor(int i10) {
        this.f30575D2.setColor(i10);
        F();
    }

    @Override
    public void w() {
        super.setSpeedometerWidth(x(40.0f));
        getSections().get(0).l(-16728876);
        getSections().get(1).l(-16121);
        getSections().get(2).l(-769226);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public w(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        M.p(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public w(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        M.p(context, "context");
        this.f30577v2 = new Paint(1);
        this.f30575D2 = new Paint(1);
        this.f30576F2 = new RectF();
        B();
        C(context, attributeSet);
    }

    public w(Context context, AttributeSet attributeSet, int i10, int i11, C14026x c14026x) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
