package ah;

import Yg.v;
import android.content.Context;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Path;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class C3646c extends AbstractC3645b<C3646c> {

    @NotNull
    public final Path f32198g;

    public float f32199h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3646c(@NotNull Context context) {
        super(context);
        M.p(context, "context");
        this.f32198g = new Path();
        q(a(12.0f));
    }

    @Override
    public void b(@NotNull Canvas canvas) {
        M.p(canvas, "canvas");
        canvas.drawPath(this.f32198g, g());
    }

    @Override
    public float c() {
        return this.f32199h;
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
        this.f32198g.reset();
        Path path = this.f32198g;
        float d10 = d();
        M.m(i());
        path.moveTo(d10, r2.getPadding());
        float k10 = k() * 0.5f;
        M.m(i());
        this.f32199h = k10 + r1.getPadding();
        this.f32198g.lineTo(d() - l(), this.f32199h);
        this.f32198g.lineTo(d(), this.f32199h + l());
        this.f32198g.lineTo(d() + l(), this.f32199h);
        g().setColor(f());
    }
}
