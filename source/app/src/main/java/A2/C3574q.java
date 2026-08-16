package a2;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class C3574q {

    public static final float f31793j = 270.0f;

    public static final float f31794k = 180.0f;

    @Deprecated
    public float f31795a;

    @Deprecated
    public float f31796b;

    @Deprecated
    public float f31797c;

    @Deprecated
    public float f31798d;

    @Deprecated
    public float f31799e;

    @Deprecated
    public float f31800f;

    public final List<g> f31801g = new ArrayList();

    public final List<i> f31802h = new ArrayList();

    public boolean f31803i;

    public class a extends i {

        public final List f31804b;

        public final Matrix f31805c;

        public a(List list, Matrix matrix) {
            this.f31804b = list;
            this.f31805c = matrix;
        }

        @Override
        public void b(Matrix matrix, Z1.b bVar, int i10, Canvas canvas) {
            Iterator it = this.f31804b.iterator();
            while (it.hasNext()) {
                ((i) it.next()).b(this.f31805c, bVar, i10, canvas);
            }
        }
    }

    public static class b extends i {

        public final d f31807b;

        public b(d dVar) {
            this.f31807b = dVar;
        }

        @Override
        public void b(Matrix matrix, @NonNull Z1.b bVar, int i10, @NonNull Canvas canvas) {
            bVar.a(canvas, matrix, new RectF(this.f31807b.k(), this.f31807b.o(), this.f31807b.l(), this.f31807b.j()), i10, this.f31807b.m(), this.f31807b.n());
        }
    }

    public static class c extends i {

        public final f f31808b;

        public final float f31809c;

        public final float f31810d;

        public c(f fVar, float f10, float f11) {
            this.f31808b = fVar;
            this.f31809c = f10;
            this.f31810d = f11;
        }

        @Override
        public void b(Matrix matrix, @NonNull Z1.b bVar, int i10, @NonNull Canvas canvas) {
            RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(this.f31808b.f31825c - this.f31810d, this.f31808b.f31824b - this.f31809c), 0.0f);
            Matrix matrix2 = new Matrix(matrix);
            matrix2.preTranslate(this.f31809c, this.f31810d);
            matrix2.preRotate(c());
            bVar.b(canvas, matrix2, rectF, i10);
        }

        public float c() {
            return (float) Math.toDegrees(Math.atan((this.f31808b.f31825c - this.f31810d) / (this.f31808b.f31824b - this.f31809c)));
        }
    }

    public static class d extends g {

        public static final RectF f31811h = new RectF();

        @Deprecated
        public float f31812b;

        @Deprecated
        public float f31813c;

        @Deprecated
        public float f31814d;

        @Deprecated
        public float f31815e;

        @Deprecated
        public float f31816f;

        @Deprecated
        public float f31817g;

        public d(float f10, float f11, float f12, float f13) {
            q(f10);
            u(f11);
            r(f12);
            p(f13);
        }

        @Override
        public void a(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.f31826a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            RectF rectF = f31811h;
            rectF.set(k(), o(), l(), j());
            path.arcTo(rectF, m(), n(), false);
            path.transform(matrix);
        }

        public final float j() {
            return this.f31815e;
        }

        public final float k() {
            return this.f31812b;
        }

        public final float l() {
            return this.f31814d;
        }

        public final float m() {
            return this.f31816f;
        }

        public final float n() {
            return this.f31817g;
        }

        public final float o() {
            return this.f31813c;
        }

        public final void p(float f10) {
            this.f31815e = f10;
        }

        public final void q(float f10) {
            this.f31812b = f10;
        }

        public final void r(float f10) {
            this.f31814d = f10;
        }

        public final void s(float f10) {
            this.f31816f = f10;
        }

        public final void t(float f10) {
            this.f31817g = f10;
        }

        public final void u(float f10) {
            this.f31813c = f10;
        }
    }

    public static class e extends g {

        public float f31818b;

        public float f31819c;

        public float f31820d;

        public float f31821e;

        public float f31822f;

        public float f31823g;

        public e(float f10, float f11, float f12, float f13, float f14, float f15) {
            h(f10);
            j(f11);
            i(f12);
            k(f13);
            l(f14);
            m(f15);
        }

        @Override
        public void a(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.f31826a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.cubicTo(this.f31818b, this.f31819c, this.f31820d, this.f31821e, this.f31822f, this.f31823g);
            path.transform(matrix);
        }

        public final float b() {
            return this.f31818b;
        }

        public final float c() {
            return this.f31820d;
        }

        public final float d() {
            return this.f31819c;
        }

        public final float e() {
            return this.f31819c;
        }

        public final float f() {
            return this.f31822f;
        }

        public final float g() {
            return this.f31823g;
        }

        public final void h(float f10) {
            this.f31818b = f10;
        }

        public final void i(float f10) {
            this.f31820d = f10;
        }

        public final void j(float f10) {
            this.f31819c = f10;
        }

        public final void k(float f10) {
            this.f31821e = f10;
        }

        public final void l(float f10) {
            this.f31822f = f10;
        }

        public final void m(float f10) {
            this.f31823g = f10;
        }
    }

    public static class f extends g {

        public float f31824b;

        public float f31825c;

        @Override
        public void a(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.f31826a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f31824b, this.f31825c);
            path.transform(matrix);
        }
    }

    public static abstract class g {

        public final Matrix f31826a = new Matrix();

        public abstract void a(Matrix matrix, Path path);
    }

    public static class h extends g {

        @Deprecated
        public float f31827b;

        @Deprecated
        public float f31828c;

        @Deprecated
        public float f31829d;

        @Deprecated
        public float f31830e;

        private float h() {
            return this.f31829d;
        }

        private float i() {
            return this.f31830e;
        }

        public void l(float f10) {
            this.f31829d = f10;
        }

        public void m(float f10) {
            this.f31830e = f10;
        }

        @Override
        public void a(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.f31826a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.quadTo(f(), g(), h(), i());
            path.transform(matrix);
        }

        public final float f() {
            return this.f31827b;
        }

        public final float g() {
            return this.f31828c;
        }

        public final void j(float f10) {
            this.f31827b = f10;
        }

        public final void k(float f10) {
            this.f31828c = f10;
        }
    }

    public static abstract class i {

        public static final Matrix f31831a = new Matrix();

        public final void a(Z1.b bVar, int i10, Canvas canvas) {
            b(f31831a, bVar, i10, canvas);
        }

        public abstract void b(Matrix matrix, Z1.b bVar, int i10, Canvas canvas);
    }

    public C3574q() {
        p(0.0f, 0.0f);
    }

    public void a(float f10, float f11, float f12, float f13, float f14, float f15) {
        d dVar = new d(f10, f11, f12, f13);
        dVar.s(f14);
        dVar.t(f15);
        this.f31801g.add(dVar);
        b bVar = new b(dVar);
        float f16 = f14 + f15;
        boolean z10 = f15 < 0.0f;
        if (z10) {
            f14 = (f14 + 180.0f) % 360.0f;
        }
        c(bVar, f14, z10 ? (180.0f + f16) % 360.0f : f16);
        double d10 = f16;
        t(((f10 + f12) * 0.5f) + (((f12 - f10) / 2.0f) * ((float) Math.cos(Math.toRadians(d10)))));
        u(((f11 + f13) * 0.5f) + (((f13 - f11) / 2.0f) * ((float) Math.sin(Math.toRadians(d10)))));
    }

    public final void b(float f10) {
        if (h() == f10) {
            return;
        }
        float h10 = ((f10 - h()) + 360.0f) % 360.0f;
        if (h10 > 180.0f) {
            return;
        }
        d dVar = new d(j(), k(), j(), k());
        dVar.s(h());
        dVar.t(h10);
        this.f31802h.add(new b(dVar));
        r(f10);
    }

    public final void c(i iVar, float f10, float f11) {
        b(f10);
        this.f31802h.add(iVar);
        r(f11);
    }

    public void d(Matrix matrix, Path path) {
        int size = this.f31801g.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f31801g.get(i10).a(matrix, path);
        }
    }

    public boolean e() {
        return this.f31803i;
    }

    @NonNull
    public i f(Matrix matrix) {
        b(i());
        return new a(new ArrayList(this.f31802h), new Matrix(matrix));
    }

    @RequiresApi(21)
    public void g(float f10, float f11, float f12, float f13, float f14, float f15) {
        this.f31801g.add(new e(f10, f11, f12, f13, f14, f15));
        this.f31803i = true;
        t(f14);
        u(f15);
    }

    public final float h() {
        return this.f31799e;
    }

    public final float i() {
        return this.f31800f;
    }

    public float j() {
        return this.f31797c;
    }

    public float k() {
        return this.f31798d;
    }

    public float l() {
        return this.f31795a;
    }

    public float m() {
        return this.f31796b;
    }

    public void n(float f10, float f11) {
        f fVar = new f();
        fVar.f31824b = f10;
        fVar.f31825c = f11;
        this.f31801g.add(fVar);
        c cVar = new c(fVar, j(), k());
        c(cVar, cVar.c() + 270.0f, cVar.c() + 270.0f);
        t(f10);
        u(f11);
    }

    @RequiresApi(21)
    public void o(float f10, float f11, float f12, float f13) {
        h hVar = new h();
        hVar.j(f10);
        hVar.k(f11);
        hVar.l(f12);
        hVar.m(f13);
        this.f31801g.add(hVar);
        this.f31803i = true;
        t(f12);
        u(f13);
    }

    public void p(float f10, float f11) {
        q(f10, f11, 270.0f, 0.0f);
    }

    public void q(float f10, float f11, float f12, float f13) {
        v(f10);
        w(f11);
        t(f10);
        u(f11);
        r(f12);
        s((f12 + f13) % 360.0f);
        this.f31801g.clear();
        this.f31802h.clear();
        this.f31803i = false;
    }

    public final void r(float f10) {
        this.f31799e = f10;
    }

    public final void s(float f10) {
        this.f31800f = f10;
    }

    public final void t(float f10) {
        this.f31797c = f10;
    }

    public final void u(float f10) {
        this.f31798d = f10;
    }

    public final void v(float f10) {
        this.f31795a = f10;
    }

    public final void w(float f10) {
        this.f31796b = f10;
    }

    public C3574q(float f10, float f11) {
        p(f10, f11);
    }
}
