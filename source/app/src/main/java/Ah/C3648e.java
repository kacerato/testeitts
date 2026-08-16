package ah;

import Yg.v;
import android.content.Context;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class C3648e extends AbstractC3645b<C3648e> {

    @NotNull
    public final Path f32202g;

    @NotNull
    public final Path f32203h;

    @NotNull
    public final Paint f32204i;

    public float f32205j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3648e(@NotNull Context context) {
        super(context);
        M.p(context, "context");
        this.f32202g = new Path();
        this.f32203h = new Path();
        Paint paint = new Paint(1);
        this.f32204i = paint;
        q(a(12.0f));
        paint.setStyle(Paint.Style.STROKE);
    }

    @Override
    public void b(@NotNull Canvas canvas) {
        M.p(canvas, "canvas");
        canvas.drawPath(this.f32202g, g());
        canvas.drawPath(this.f32203h, this.f32204i);
    }

    @Override
    public float c() {
        return this.f32205j;
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
        this.f32202g.reset();
        this.f32203h.reset();
        Path path = this.f32202g;
        float d10 = d();
        M.m(i());
        path.moveTo(d10, r2.getPadding());
        float l10 = ((float) (l() * Math.sin(Math.toRadians(260.0d)))) + (k() * 0.5f);
        M.m(i());
        this.f32205j = l10 + r1.getPadding();
        float l11 = ((float) (l() * Math.cos(Math.toRadians(260.0d)))) + (k() * 0.5f);
        M.m(i());
        this.f32202g.lineTo(l11 + r1.getPadding(), this.f32205j);
        this.f32202g.arcTo(new RectF(d() - l(), e() - l(), d() + l(), e() + l()), 260.0f, 20.0f);
        float l12 = l() * 0.25f;
        this.f32203h.addCircle(d(), e(), (l() - (0.5f * l12)) + 0.6f, Path.Direction.CW);
        g().setColor(f());
        this.f32204i.setColor(f());
        this.f32204i.setStrokeWidth(l12);
    }
}
