package k2;

import a2.C3572o;
import a2.C3573p;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import k2.C13926l;

public class C13924j {

    public final Path f94676a = new Path();

    public final Path f94677b = new Path();

    public final Path f94678c = new Path();

    public final C3573p f94679d = C3573p.k();

    public C3572o f94680e;

    public void a(Canvas canvas) {
        canvas.clipPath(this.f94676a);
    }

    public void b(float f10, C3572o c3572o, C3572o c3572o2, RectF rectF, RectF rectF2, RectF rectF3, C13926l.e eVar) {
        C3572o o10 = u.o(c3572o, c3572o2, rectF, rectF3, eVar.d(), eVar.c(), f10);
        this.f94680e = o10;
        this.f94679d.e(o10, 1.0f, rectF2, this.f94677b);
        this.f94679d.e(this.f94680e, 1.0f, rectF3, this.f94678c);
        this.f94676a.op(this.f94677b, this.f94678c, Path.Op.UNION);
    }

    public C3572o c() {
        return this.f94680e;
    }

    public Path d() {
        return this.f94676a;
    }
}
