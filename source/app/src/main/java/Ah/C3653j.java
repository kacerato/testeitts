package ah;

import Yg.v;
import android.content.Context;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Path;
import android.graphics.Shader;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class C3653j extends AbstractC3645b<C3653j> {

    @NotNull
    public Path f32211g;

    public float f32212h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3653j(@NotNull Context context) {
        super(context);
        M.p(context, "context");
        this.f32211g = new Path();
        q(a(25.0f));
    }

    @Override
    public void b(@NotNull Canvas canvas) {
        M.p(canvas, "canvas");
        canvas.drawPath(this.f32211g, g());
    }

    @Override
    public float c() {
        return this.f32212h + l();
    }

    @Override
    public float j() {
        return this.f32212h;
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
        this.f32211g = new Path();
        v i10 = i();
        M.m(i10);
        float padding = i10.getPadding();
        v i11 = i();
        M.m(i11);
        this.f32212h = padding + i11.getSpeedometerWidth() + a(5.0f);
        this.f32211g.moveTo(d(), this.f32212h);
        this.f32211g.lineTo(d() - l(), this.f32212h + l());
        this.f32211g.lineTo(d() + l(), this.f32212h + l());
        this.f32211g.moveTo(0.0f, 0.0f);
        g().setShader(new LinearGradient(d(), this.f32212h, d(), this.f32212h + l(), f(), Color.argb(0, Color.red(f()), Color.green(f()), Color.blue(f())), Shader.TileMode.CLAMP));
    }
}
