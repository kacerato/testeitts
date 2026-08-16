package ah;

import Yg.v;
import android.content.Context;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nLineIndicator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LineIndicator.kt\norg/anastr/speedviewlib/components/indicators/LineIndicator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,48:1\n1#2:49\n*E\n"})
public final class C3647d extends AbstractC3645b<C3647d> {

    public final float f32200g;

    @NotNull
    public final Path f32201h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3647d(@NotNull Context context, float f10) {
        super(context);
        M.p(context, "context");
        this.f32200g = f10;
        this.f32201h = new Path();
        if (0.0f > f10 || f10 > 1.0f) {
            throw new IllegalArgumentException("Length must be between [0,1].");
        }
        q(a(8.0f));
    }

    @Override
    public void b(@NotNull Canvas canvas) {
        M.p(canvas, "canvas");
        canvas.drawPath(this.f32201h, g());
    }

    @Override
    public float c() {
        return e() * this.f32200g;
    }

    @Override
    public void r(boolean z10) {
        if (z10) {
            v i10 = i();
            M.m(i10);
            if (!i10.isInEditMode()) {
                g().setMaskFilter(new BlurMaskFilter(15.0f, BlurMaskFilter.Blur.SOLID));
                return;
            }
        }
        g().setMaskFilter(null);
    }

    @Override
    public void s() {
        this.f32201h.reset();
        Path path = this.f32201h;
        float d10 = d();
        M.m(i());
        path.moveTo(d10, r2.getPadding());
        this.f32201h.lineTo(d(), e() * this.f32200g);
        g().setStyle(Paint.Style.STROKE);
        g().setStrokeWidth(l());
        g().setColor(f());
    }
}
