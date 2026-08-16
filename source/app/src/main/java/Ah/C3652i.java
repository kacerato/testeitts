package ah;

import Yg.v;
import android.content.Context;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Path;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class C3652i extends AbstractC3645b<C3652i> {

    @NotNull
    public final Path f32210g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3652i(@NotNull Context context) {
        super(context);
        M.p(context, "context");
        this.f32210g = new Path();
        q(a(16.0f));
    }

    @Override
    public void b(@NotNull Canvas canvas) {
        M.p(canvas, "canvas");
        canvas.drawPath(this.f32210g, g());
    }

    @Override
    public float j() {
        float k10 = k() * 0.18f;
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
        this.f32210g.reset();
        this.f32210g.moveTo(d(), e());
        Path path = this.f32210g;
        float d10 = d() - l();
        float k10 = k() * 0.34f;
        M.m(i());
        float padding = k10 + r4.getPadding();
        float d11 = d();
        float k11 = k() * 0.18f;
        M.m(i());
        path.quadTo(d10, padding, d11, k11 + r6.getPadding());
        Path path2 = this.f32210g;
        float d12 = d() + l();
        float k12 = k() * 0.34f;
        M.m(i());
        path2.quadTo(d12, k12 + r3.getPadding(), d(), e());
        g().setColor(f());
    }
}
