package ah;

import Yg.v;
import android.content.Context;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class C3651h extends AbstractC3645b<C3651h> {

    @NotNull
    public final Path f32208g;

    public float f32209h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3651h(@NotNull Context context) {
        super(context);
        M.p(context, "context");
        this.f32208g = new Path();
        q(a(12.0f));
    }

    @Override
    public void b(@NotNull Canvas canvas) {
        M.p(canvas, "canvas");
        canvas.drawPath(this.f32208g, g());
    }

    @Override
    public float c() {
        return this.f32209h;
    }

    @Override
    public float j() {
        float k10 = k() / 5.0f;
        M.m(i());
        return k10 + r1.getPadding();
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
        this.f32208g.reset();
        Path path = this.f32208g;
        float d10 = d();
        float k10 = k() / 5.0f;
        M.m(i());
        path.moveTo(d10, k10 + r4.getPadding());
        float k11 = (k() * 3.0f) / 5.0f;
        M.m(i());
        this.f32209h = k11 + r1.getPadding();
        this.f32208g.lineTo(d() - l(), this.f32209h);
        this.f32208g.lineTo(d() + l(), this.f32209h);
        this.f32208g.addArc(new RectF(d() - l(), this.f32209h - l(), d() + l(), this.f32209h + l()), 0.0f, 180.0f);
        g().setColor(f());
    }
}
