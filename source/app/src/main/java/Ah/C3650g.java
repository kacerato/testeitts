package ah;

import Yg.v;
import android.content.Context;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class C3650g extends AbstractC3645b<C3650g> {

    @NotNull
    public final Path f32206g;

    public float f32207h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3650g(@NotNull Context context) {
        super(context);
        M.p(context, "context");
        this.f32206g = new Path();
        q(a(12.0f));
    }

    @Override
    public void b(@NotNull Canvas canvas) {
        M.p(canvas, "canvas");
        canvas.drawPath(this.f32206g, g());
    }

    @Override
    public float c() {
        return this.f32207h;
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
        this.f32206g.reset();
        Path path = this.f32206g;
        float d10 = d();
        M.m(i());
        path.moveTo(d10, r2.getPadding());
        float k10 = (k() * 2.0f) / 3.0f;
        M.m(i());
        this.f32207h = k10 + r1.getPadding();
        this.f32206g.lineTo(d() - l(), this.f32207h);
        this.f32206g.lineTo(d() + l(), this.f32207h);
        this.f32206g.addArc(new RectF(d() - l(), this.f32207h - l(), d() + l(), this.f32207h + l()), 0.0f, 180.0f);
        g().setColor(f());
    }
}
