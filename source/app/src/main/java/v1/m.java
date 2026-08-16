package V1;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;

public final class m extends j<q> {

    public float f26533c;

    public float f26534d;

    public float f26535e;

    public m(@NonNull q qVar) {
        super(qVar);
        this.f26533c = 300.0f;
    }

    private static void h(Canvas canvas, Paint paint, float f10, float f11, float f12, boolean z10, RectF rectF) {
        canvas.save();
        canvas.translate(f12, 0.0f);
        if (!z10) {
            canvas.rotate(180.0f);
        }
        float f13 = ((-f10) / 2.0f) + f11;
        float f14 = (f10 / 2.0f) - f11;
        canvas.drawRect(-f11, f13, 0.0f, f14, paint);
        canvas.save();
        canvas.translate(0.0f, f13);
        canvas.drawArc(rectF, 180.0f, 90.0f, true, paint);
        canvas.restore();
        canvas.translate(0.0f, f14);
        canvas.drawArc(rectF, 180.0f, -90.0f, true, paint);
        canvas.restore();
    }

    @Override
    public void a(@NonNull Canvas canvas, @FloatRange(from = 0.0d, to = 1.0d) float f10) {
        Rect clipBounds = canvas.getClipBounds();
        this.f26533c = clipBounds.width();
        float f11 = ((q) this.f26526a).f26459a;
        canvas.translate(clipBounds.left + (clipBounds.width() / 2.0f), clipBounds.top + (clipBounds.height() / 2.0f) + Math.max(0.0f, (clipBounds.height() - ((q) this.f26526a).f26459a) / 2.0f));
        if (((q) this.f26526a).f26568i) {
            canvas.scale(-1.0f, 1.0f);
        }
        if ((this.f26527b.k() && ((q) this.f26526a).f26463e == 1) || (this.f26527b.j() && ((q) this.f26526a).f26464f == 2)) {
            canvas.scale(1.0f, -1.0f);
        }
        if (this.f26527b.k() || this.f26527b.j()) {
            canvas.translate(0.0f, (((q) this.f26526a).f26459a * (f10 - 1.0f)) / 2.0f);
        }
        float f12 = this.f26533c;
        canvas.clipRect((-f12) / 2.0f, (-f11) / 2.0f, f12 / 2.0f, f11 / 2.0f);
        S s10 = this.f26526a;
        this.f26534d = ((q) s10).f26459a * f10;
        this.f26535e = ((q) s10).f26460b * f10;
    }

    @Override
    public void b(@NonNull Canvas canvas, @NonNull Paint paint, @FloatRange(from = 0.0d, to = 1.0d) float f10, @FloatRange(from = 0.0d, to = 1.0d) float f11, @ColorInt int i10) {
        if (f10 == f11) {
            return;
        }
        float f12 = this.f26533c;
        float f13 = this.f26535e;
        float f14 = ((-f12) / 2.0f) + f13 + ((f12 - (f13 * 2.0f)) * f10);
        float f15 = ((-f12) / 2.0f) + f13 + ((f12 - (f13 * 2.0f)) * f11);
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setColor(i10);
        float f16 = this.f26534d;
        canvas.drawRect(f14, (-f16) / 2.0f, f15, f16 / 2.0f, paint);
        float f17 = this.f26535e;
        RectF rectF = new RectF(-f17, -f17, f17, f17);
        h(canvas, paint, this.f26534d, this.f26535e, f14, true, rectF);
        h(canvas, paint, this.f26534d, this.f26535e, f15, false, rectF);
    }

    @Override
    public void c(@NonNull Canvas canvas, @NonNull Paint paint) {
        int a10 = J1.a.a(((q) this.f26526a).f26462d, this.f26527b.getAlpha());
        float f10 = ((-this.f26533c) / 2.0f) + this.f26535e;
        float f11 = -f10;
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setColor(a10);
        float f12 = this.f26534d;
        canvas.drawRect(f10, (-f12) / 2.0f, f11, f12 / 2.0f, paint);
        float f13 = this.f26535e;
        RectF rectF = new RectF(-f13, -f13, f13, f13);
        h(canvas, paint, this.f26534d, this.f26535e, f10, true, rectF);
        h(canvas, paint, this.f26534d, this.f26535e, f11, false, rectF);
    }

    @Override
    public int d() {
        return ((q) this.f26526a).f26459a;
    }

    @Override
    public int e() {
        return -1;
    }
}
