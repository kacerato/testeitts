package V1;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;

public final class d extends j<g> {

    public int f26465c;

    public float f26466d;

    public float f26467e;

    public float f26468f;

    public d(@NonNull g gVar) {
        super(gVar);
        this.f26465c = 1;
    }

    @Override
    public void a(@NonNull Canvas canvas, @FloatRange(from = 0.0d, to = 1.0d) float f10) {
        S s10 = this.f26526a;
        float f11 = (((g) s10).f26496g / 2.0f) + ((g) s10).f26497h;
        canvas.translate(f11, f11);
        canvas.rotate(-90.0f);
        float f12 = -f11;
        canvas.clipRect(f12, f12, f11, f11);
        this.f26465c = ((g) this.f26526a).f26498i == 0 ? 1 : -1;
        this.f26466d = ((g) r5).f26459a * f10;
        this.f26467e = ((g) r5).f26460b * f10;
        this.f26468f = (((g) r5).f26496g - ((g) r5).f26459a) / 2.0f;
        if ((this.f26527b.k() && ((g) this.f26526a).f26463e == 2) || (this.f26527b.j() && ((g) this.f26526a).f26464f == 1)) {
            this.f26468f += ((1.0f - f10) * ((g) this.f26526a).f26459a) / 2.0f;
        } else if ((this.f26527b.k() && ((g) this.f26526a).f26463e == 1) || (this.f26527b.j() && ((g) this.f26526a).f26464f == 2)) {
            this.f26468f -= ((1.0f - f10) * ((g) this.f26526a).f26459a) / 2.0f;
        }
    }

    @Override
    public void b(@NonNull Canvas canvas, @NonNull Paint paint, @FloatRange(from = 0.0d, to = 1.0d) float f10, @FloatRange(from = 0.0d, to = 1.0d) float f11, @ColorInt int i10) {
        if (f10 == f11) {
            return;
        }
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        paint.setColor(i10);
        paint.setStrokeWidth(this.f26466d);
        int i11 = this.f26465c;
        float f12 = f10 * 360.0f * i11;
        float f13 = (f11 >= f10 ? f11 - f10 : (f11 + 1.0f) - f10) * 360.0f * i11;
        float f14 = this.f26468f;
        canvas.drawArc(new RectF(-f14, -f14, f14, f14), f12, f13, false, paint);
        if (this.f26467e <= 0.0f || Math.abs(f13) >= 360.0f) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        float f15 = this.f26467e;
        RectF rectF = new RectF(-f15, -f15, f15, f15);
        h(canvas, paint, this.f26466d, this.f26467e, f12, true, rectF);
        h(canvas, paint, this.f26466d, this.f26467e, f12 + f13, false, rectF);
    }

    @Override
    public void c(@NonNull Canvas canvas, @NonNull Paint paint) {
        int a10 = J1.a.a(((g) this.f26526a).f26462d, this.f26527b.getAlpha());
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        paint.setColor(a10);
        paint.setStrokeWidth(this.f26466d);
        float f10 = this.f26468f;
        canvas.drawArc(new RectF(-f10, -f10, f10, f10), 0.0f, 360.0f, false, paint);
    }

    @Override
    public int d() {
        return i();
    }

    @Override
    public int e() {
        return i();
    }

    public final void h(Canvas canvas, Paint paint, float f10, float f11, float f12, boolean z10, RectF rectF) {
        float f13 = z10 ? -1.0f : 1.0f;
        canvas.save();
        canvas.rotate(f12);
        float f14 = f10 / 2.0f;
        float f15 = f13 * f11;
        canvas.drawRect((this.f26468f - f14) + f11, Math.min(0.0f, this.f26465c * f15), (this.f26468f + f14) - f11, Math.max(0.0f, f15 * this.f26465c), paint);
        canvas.translate((this.f26468f - f14) + f11, 0.0f);
        canvas.drawArc(rectF, 180.0f, (-f13) * 90.0f * this.f26465c, true, paint);
        canvas.translate(f10 - (f11 * 2.0f), 0.0f);
        canvas.drawArc(rectF, 0.0f, f13 * 90.0f * this.f26465c, true, paint);
        canvas.restore();
    }

    public final int i() {
        S s10 = this.f26526a;
        return ((g) s10).f26496g + (((g) s10).f26497h * 2);
    }
}
