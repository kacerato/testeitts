package Yg;

import Yg.j;
import Yg.n;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import t3.b;

public class p extends n {

    @NotNull
    public final Path f30529W;

    @NotNull
    public final Paint f30530q0;

    @NotNull
    public final Paint f30531v0;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public p(@NotNull Context context) {
        this(context, null, 0, 6, null);
        M.p(context, "context");
    }

    private final void C(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, b.s.Kq, 0, 0);
        M.o(obtainStyledAttributes, "obtainStyledAttributes(...)");
        Paint paint = this.f30530q0;
        paint.setColor(obtainStyledAttributes.getColor(2, paint.getColor()));
        Paint paint2 = this.f30531v0;
        paint2.setColor(obtainStyledAttributes.getColor(1, paint2.getColor()));
        obtainStyledAttributes.recycle();
    }

    public final void B() {
        this.f30530q0.setColor(-16711681);
        this.f30531v0.setColor(-2697257);
    }

    public final int getSpeedometerBackColor() {
        return this.f30531v0.getColor();
    }

    public final int getSpeedometerColor() {
        return this.f30530q0.getColor();
    }

    @Override
    public void h0() {
        j0();
        Canvas v10 = v();
        Canvas g02 = g0();
        v10.translate(getPadding(), getPadding());
        v10.drawPath(this.f30529W, this.f30531v0);
        g02.drawPath(this.f30529W, this.f30530q0);
    }

    public final void i0() {
        this.f30529W.reset();
        this.f30529W.moveTo(0.0f, getHeightPa());
        this.f30529W.lineTo(0.0f, getHeightPa() - (getHeightPa() * 0.1f));
        this.f30529W.quadTo(getWidthPa() * 0.75f, getHeightPa() * 0.75f, getWidthPa(), 0.0f);
        this.f30529W.lineTo(getWidthPa(), getHeightPa());
        this.f30529W.lineTo(0.0f, getHeightPa());
    }

    public final void j0() {
        if (getOrientation() == n.a.HORIZONTAL) {
            i0();
        } else {
            k0();
        }
    }

    public final void k0() {
        this.f30529W.reset();
        this.f30529W.moveTo(0.0f, getHeightPa());
        this.f30529W.lineTo(getWidthPa() * 0.1f, getHeightPa());
        this.f30529W.quadTo(getWidthPa() * 0.25f, getHeightPa() * 0.25f, getWidthPa(), 0.0f);
        this.f30529W.lineTo(0.0f, 0.0f);
        this.f30529W.lineTo(0.0f, getHeightPa());
    }

    @Override
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getOrientation() == n.a.HORIZONTAL) {
            int i12 = measuredWidth / 2;
            if (measuredHeight > i12) {
                setMeasuredDimension(measuredWidth, i12);
                return;
            } else {
                setMeasuredDimension(measuredHeight * 2, measuredHeight);
                return;
            }
        }
        int i13 = measuredHeight / 2;
        if (measuredWidth > i13) {
            setMeasuredDimension(i13, measuredHeight);
        } else {
            setMeasuredDimension(measuredWidth, measuredWidth * 2);
        }
    }

    public final void setSpeedometerBackColor(int i10) {
        this.f30531v0.setColor(i10);
        F();
    }

    public final void setSpeedometerColor(int i10) {
        this.f30530q0.setColor(i10);
        F();
    }

    @Override
    public void w() {
        super.setSpeedTextPosition(j.a.CENTER);
        super.setUnitUnderSpeedText(true);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public p(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        M.p(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public p(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        M.p(context, "context");
        this.f30529W = new Path();
        this.f30530q0 = new Paint(1);
        this.f30531v0 = new Paint(1);
        B();
        C(context, attributeSet);
    }

    public p(Context context, AttributeSet attributeSet, int i10, int i11, C14026x c14026x) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
