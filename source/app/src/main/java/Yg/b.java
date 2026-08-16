package Yg;

import ah.AbstractC3645b;
import ah.C3651h;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import ch.C4189a;
import java.util.Iterator;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import t3.b;

@t0({"SMAP\nDeluxeSpeedView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeluxeSpeedView.kt\norg/anastr/speedviewlib/DeluxeSpeedView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,207:1\n1915#2,2:208\n1915#2,2:210\n*S KotlinDebug\n*F\n+ 1 DeluxeSpeedView.kt\norg/anastr/speedviewlib/DeluxeSpeedView\n*L\n122#1:208,2\n166#1:210,2\n*E\n"})
public class b extends v {

    @NotNull
    public final Paint f30451D2;

    @NotNull
    public final Paint f30452F2;

    @NotNull
    public final Paint f30453H2;

    @NotNull
    public final Paint f30454L2;

    @NotNull
    public final RectF f30455M2;

    public boolean f30456R2;

    public float f30457V2;

    @NotNull
    public final Path f30458v2;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public b(@NotNull Context context) {
        this(context, null, 0, 6, null);
        M.p(context, "context");
    }

    private final void B() {
        Paint paint = this.f30452F2;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        this.f30453H2.setStyle(style);
        this.f30454L2.setColor(-1);
        this.f30451D2.setColor(-2039584);
        setLayerType(1, null);
        setWithEffects(this.f30456R2);
    }

    private final void C(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            z0();
            return;
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, b.s.f116109Ri, 0, 0);
        M.o(obtainStyledAttributes, "obtainStyledAttributes(...)");
        Paint paint = this.f30454L2;
        paint.setColor(obtainStyledAttributes.getColor(3, paint.getColor()));
        this.f30456R2 = obtainStyledAttributes.getBoolean(4, this.f30456R2);
        Paint paint2 = this.f30451D2;
        paint2.setColor(obtainStyledAttributes.getColor(0, paint2.getColor()));
        setCenterCircleRadius(obtainStyledAttributes.getDimension(1, this.f30457V2));
        int i10 = obtainStyledAttributes.getInt(2, -1);
        if (i10 != -1) {
            Iterator<Zg.a> it = getSections().iterator();
            while (it.hasNext()) {
                it.next().t(Zg.b.values()[i10]);
            }
        }
        obtainStyledAttributes.recycle();
        setWithEffects(this.f30456R2);
        z0();
    }

    private final void G0() {
        this.f30452F2.setStrokeWidth(getSpeedometerWidth());
        this.f30453H2.setColor(getMarkColor());
    }

    public final boolean H0() {
        return this.f30456R2;
    }

    @Override
    public void d0() {
        Canvas v10 = v();
        G0();
        this.f30458v2.reset();
        this.f30458v2.moveTo(getSize() * 0.5f, getSpeedometerWidth() + getPadding());
        this.f30458v2.lineTo(getSize() * 0.5f, getSpeedometerWidth() + getPadding() + (getViewSizePa() / 20.0f));
        this.f30453H2.setStrokeWidth(3.0f);
        for (Zg.a aVar : getSections()) {
            float h10 = (aVar.h() * 0.5f) + getPadding() + aVar.e();
            this.f30455M2.set(h10, h10, getSize() - h10, getSize() - h10);
            this.f30452F2.setStrokeWidth(aVar.h());
            this.f30452F2.setColor(aVar.c());
            float startDegree = getStartDegree() + ((getEndDegree() - getStartDegree()) * aVar.f());
            float endDegree = ((getEndDegree() - getStartDegree()) * aVar.d()) - (startDegree - getStartDegree());
            if (aVar.g() == Zg.b.ROUND) {
                float b10 = C4189a.b(aVar.h(), this.f30455M2.width());
                this.f30452F2.setStrokeCap(Paint.Cap.ROUND);
                v10.drawArc(this.f30455M2, startDegree + b10, endDegree - (b10 * 2.0f), false, this.f30452F2);
            } else {
                this.f30452F2.setStrokeCap(Paint.Cap.BUTT);
                v10.drawArc(this.f30455M2, startDegree, endDegree, false, this.f30452F2);
            }
        }
        v10.save();
        v10.rotate(getStartDegree() + 90.0f, getSize() * 0.5f, getSize() * 0.5f);
        for (float startDegree2 = getStartDegree(); startDegree2 < getEndDegree() - 10.0f; startDegree2 += 10.0f) {
            v10.rotate(10.0f, getSize() * 0.5f, getSize() * 0.5f);
            v10.drawPath(this.f30458v2, this.f30453H2);
        }
        v10.restore();
        s0(v10);
        if (getTickNumber() > 0) {
            u0(v10);
        } else {
            p0(v10);
        }
    }

    public final int getCenterCircleColor() {
        return this.f30451D2.getColor();
    }

    public final float getCenterCircleRadius() {
        return this.f30457V2;
    }

    public final int getSpeedBackgroundColor() {
        return this.f30454L2.getColor();
    }

    @Override
    public void o0() {
        Context context = getContext();
        M.o(context, "getContext(...)");
        setIndicator(new C3651h(context));
        getIndicator().m(-16711700);
        super.setBackgroundCircleColor(-14606047);
        super.setMarksNumber(8);
    }

    @Override
    public void onDraw(@NotNull Canvas canvas) {
        M.p(canvas, "canvas");
        super.onDraw(canvas);
        RectF speedUnitTextBounds = getSpeedUnitTextBounds();
        speedUnitTextBounds.left -= 2.0f;
        speedUnitTextBounds.right += 2.0f;
        speedUnitTextBounds.bottom += 2.0f;
        canvas.drawRect(speedUnitTextBounds, this.f30454L2);
        y(canvas);
        q0(canvas);
        canvas.drawCircle(getSize() * 0.5f, getSize() * 0.5f, this.f30457V2, this.f30451D2);
        t0(canvas);
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        d0();
    }

    public final void setCenterCircleColor(int i10) {
        this.f30451D2.setColor(i10);
        if (isAttachedToWindow()) {
            invalidate();
        }
    }

    public final void setCenterCircleRadius(float f10) {
        this.f30457V2 = f10;
        if (isAttachedToWindow()) {
            invalidate();
        }
    }

    @Override
    public void setIndicator(@NotNull AbstractC3645b.EnumC0862b indicator) {
        M.p(indicator, "indicator");
        super.setIndicator(indicator);
        getIndicator().t(this.f30456R2);
    }

    public final void setSpeedBackgroundColor(int i10) {
        this.f30454L2.setColor(i10);
        F();
    }

    public final void setWithEffects(boolean z10) {
        this.f30456R2 = z10;
        if (isInEditMode()) {
            return;
        }
        getIndicator().t(z10);
        if (z10) {
            Paint markPaint = getMarkPaint();
            BlurMaskFilter.Blur blur = BlurMaskFilter.Blur.SOLID;
            markPaint.setMaskFilter(new BlurMaskFilter(5.0f, blur));
            this.f30454L2.setMaskFilter(new BlurMaskFilter(8.0f, blur));
            this.f30451D2.setMaskFilter(new BlurMaskFilter(10.0f, blur));
        } else {
            getMarkPaint().setMaskFilter(null);
            this.f30454L2.setMaskFilter(null);
            this.f30451D2.setMaskFilter(null);
        }
        F();
    }

    @Override
    public void w() {
        super.setTextColor(-1);
        getSections().get(0).l(-13138129);
        getSections().get(1).l(-6061516);
        getSections().get(2).l(-6610912);
    }

    public final void z0() {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public b(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        M.p(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public b(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        M.p(context, "context");
        this.f30458v2 = new Path();
        this.f30451D2 = new Paint(1);
        this.f30452F2 = new Paint(1);
        this.f30453H2 = new Paint(1);
        this.f30454L2 = new Paint(1);
        this.f30455M2 = new RectF();
        this.f30456R2 = true;
        this.f30457V2 = x(20.0f);
        B();
        C(context, attributeSet);
    }

    public b(Context context, AttributeSet attributeSet, int i10, int i11, C14026x c14026x) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
