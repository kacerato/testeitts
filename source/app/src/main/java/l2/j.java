package l2;

import a2.C3572o;
import a2.C3573p;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.RequiresApi;
import l2.l;

@RequiresApi(21)
public class j {

    public final Path f95949a = new Path();

    public final Path f95950b = new Path();

    public final Path f95951c = new Path();

    public final C3573p f95952d = C3573p.k();

    public C3572o f95953e;

    public void a(Canvas canvas) {
        canvas.clipPath(this.f95949a);
    }

    public void b(float f10, C3572o c3572o, C3572o c3572o2, RectF rectF, RectF rectF2, RectF rectF3, l.e eVar) {
        C3572o o10 = v.o(c3572o, c3572o2, rectF, rectF3, eVar.d(), eVar.c(), f10);
        this.f95953e = o10;
        this.f95952d.e(o10, 1.0f, rectF2, this.f95950b);
        this.f95952d.e(this.f95953e, 1.0f, rectF3, this.f95951c);
        this.f95949a.op(this.f95950b, this.f95951c, Path.Op.UNION);
    }

    public C3572o c() {
        return this.f95953e;
    }

    public Path d() {
        return this.f95949a;
    }
}
