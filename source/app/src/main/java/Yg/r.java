package Yg;

import ah.C3650g;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
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

@t0({"SMAP\nSpeedView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpeedView.kt\norg/anastr/speedviewlib/SpeedView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,126:1\n1915#2,2:127\n1915#2,2:129\n*S KotlinDebug\n*F\n+ 1 SpeedView.kt\norg/anastr/speedviewlib/SpeedView\n*L\n76#1:127,2\n100#1:129,2\n*E\n"})
public class r extends v {

    @NotNull
    public final Paint f30541D2;

    @NotNull
    public final RectF f30542F2;

    public float f30543H2;

    @NotNull
    public final Paint f30544v2;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public r(@NotNull Context context) {
        this(context, null, 0, 6, null);
        M.p(context, "context");
    }

    private final void B() {
        this.f30541D2.setStyle(Paint.Style.STROKE);
        this.f30544v2.setColor(-12303292);
    }

    private final void C(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, b.s.yC, 0, 0);
        M.o(obtainStyledAttributes, "obtainStyledAttributes(...)");
        Paint paint = this.f30544v2;
        paint.setColor(obtainStyledAttributes.getColor(0, paint.getColor()));
        setCenterCircleRadius(obtainStyledAttributes.getDimension(1, this.f30543H2));
        int i10 = obtainStyledAttributes.getInt(2, -1);
        if (i10 != -1) {
            Iterator<Zg.a> it = getSections().iterator();
            while (it.hasNext()) {
                it.next().t(Zg.b.values()[i10]);
            }
        }
        obtainStyledAttributes.recycle();
    }

    @Override
    public void d0() {
        Canvas v10 = v();
        for (Zg.a aVar : getSections()) {
            float h10 = (aVar.h() * 0.5f) + getPadding() + aVar.e();
            this.f30542F2.set(h10, h10, getSize() - h10, getSize() - h10);
            this.f30541D2.setStrokeWidth(aVar.h());
            this.f30541D2.setColor(aVar.c());
            float startDegree = getStartDegree() + ((getEndDegree() - getStartDegree()) * aVar.f());
            float endDegree = ((getEndDegree() - getStartDegree()) * aVar.d()) - (startDegree - getStartDegree());
            if (aVar.g() == Zg.b.ROUND) {
                float b10 = C4189a.b(aVar.h(), this.f30542F2.width());
                this.f30541D2.setStrokeCap(Paint.Cap.ROUND);
                v10.drawArc(this.f30542F2, startDegree + b10, endDegree - (b10 * 2.0f), false, this.f30541D2);
            } else {
                this.f30541D2.setStrokeCap(Paint.Cap.BUTT);
                v10.drawArc(this.f30542F2, startDegree, endDegree, false, this.f30541D2);
            }
        }
        s0(v10);
        if (getTickNumber() > 0) {
            u0(v10);
        } else {
            p0(v10);
        }
    }

    public final int getCenterCircleColor() {
        return this.f30544v2.getColor();
    }

    public final float getCenterCircleRadius() {
        return this.f30543H2;
    }

    @Override
    public void o0() {
        Context context = getContext();
        M.o(context, "getContext(...)");
        setIndicator(new C3650g(context));
        super.setBackgroundCircleColor(0);
        super.setMarksNumber(8);
    }

    @Override
    public void onDraw(@NotNull Canvas canvas) {
        M.p(canvas, "canvas");
        super.onDraw(canvas);
        y(canvas);
        q0(canvas);
        canvas.drawCircle(getSize() * 0.5f, getSize() * 0.5f, this.f30543H2, this.f30544v2);
        t0(canvas);
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        d0();
    }

    public final void setCenterCircleColor(int i10) {
        this.f30544v2.setColor(i10);
        if (isAttachedToWindow()) {
            invalidate();
        }
    }

    public final void setCenterCircleRadius(float f10) {
        this.f30543H2 = f10;
        if (isAttachedToWindow()) {
            invalidate();
        }
    }

    @Override
    public void w() {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public r(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        M.p(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Lf.k
    public r(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        M.p(context, "context");
        this.f30544v2 = new Paint(1);
        this.f30541D2 = new Paint(1);
        this.f30542F2 = new RectF();
        this.f30543H2 = x(20.0f);
        B();
        C(context, attributeSet);
    }

    public r(Context context, AttributeSet attributeSet, int i10, int i11, C14026x c14026x) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
