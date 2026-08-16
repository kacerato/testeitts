package a2;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;

public class C3573p {

    public final C3574q[] f31775a = new C3574q[4];

    public final Matrix[] f31776b = new Matrix[4];

    public final Matrix[] f31777c = new Matrix[4];

    public final PointF f31778d = new PointF();

    public final Path f31779e = new Path();

    public final Path f31780f = new Path();

    public final C3574q f31781g = new C3574q();

    public final float[] f31782h = new float[2];

    public final float[] f31783i = new float[2];

    public final Path f31784j = new Path();

    public final Path f31785k = new Path();

    public boolean f31786l = true;

    public static class a {

        public static final C3573p f31787a = new C3573p();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public interface b {
        void a(C3574q c3574q, Matrix matrix, int i10);

        void b(C3574q c3574q, Matrix matrix, int i10);
    }

    public static final class c {

        @NonNull
        public final C3572o f31788a;

        @NonNull
        public final Path f31789b;

        @NonNull
        public final RectF f31790c;

        @Nullable
        public final b f31791d;

        public final float f31792e;

        public c(@NonNull C3572o c3572o, float f10, RectF rectF, @Nullable b bVar, Path path) {
            this.f31791d = bVar;
            this.f31788a = c3572o;
            this.f31792e = f10;
            this.f31790c = rectF;
            this.f31789b = path;
        }
    }

    public C3573p() {
        for (int i10 = 0; i10 < 4; i10++) {
            this.f31775a[i10] = new C3574q();
            this.f31776b[i10] = new Matrix();
            this.f31777c[i10] = new Matrix();
        }
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @UiThread
    public static C3573p k() {
        return a.f31787a;
    }

    public final float a(int i10) {
        return (i10 + 1) * 90;
    }

    public final void b(@NonNull c cVar, int i10) {
        this.f31782h[0] = this.f31775a[i10].l();
        this.f31782h[1] = this.f31775a[i10].m();
        this.f31776b[i10].mapPoints(this.f31782h);
        if (i10 == 0) {
            Path path = cVar.f31789b;
            float[] fArr = this.f31782h;
            path.moveTo(fArr[0], fArr[1]);
        } else {
            Path path2 = cVar.f31789b;
            float[] fArr2 = this.f31782h;
            path2.lineTo(fArr2[0], fArr2[1]);
        }
        this.f31775a[i10].d(this.f31776b[i10], cVar.f31789b);
        b bVar = cVar.f31791d;
        if (bVar != null) {
            bVar.b(this.f31775a[i10], this.f31776b[i10], i10);
        }
    }

    public final void c(@NonNull c cVar, int i10) {
        int i11 = (i10 + 1) % 4;
        this.f31782h[0] = this.f31775a[i10].j();
        this.f31782h[1] = this.f31775a[i10].k();
        this.f31776b[i10].mapPoints(this.f31782h);
        this.f31783i[0] = this.f31775a[i11].l();
        this.f31783i[1] = this.f31775a[i11].m();
        this.f31776b[i11].mapPoints(this.f31783i);
        float f10 = this.f31782h[0];
        float[] fArr = this.f31783i;
        float max = Math.max(((float) Math.hypot(f10 - fArr[0], r1[1] - fArr[1])) - 0.001f, 0.0f);
        float i12 = i(cVar.f31790c, i10);
        this.f31781g.p(0.0f, 0.0f);
        C3564g j10 = j(i10, cVar.f31788a);
        j10.b(max, i12, cVar.f31792e, this.f31781g);
        this.f31784j.reset();
        this.f31781g.d(this.f31777c[i10], this.f31784j);
        if (this.f31786l && (j10.a() || l(this.f31784j, i10) || l(this.f31784j, i11))) {
            Path path = this.f31784j;
            path.op(path, this.f31780f, Path.Op.DIFFERENCE);
            this.f31782h[0] = this.f31781g.l();
            this.f31782h[1] = this.f31781g.m();
            this.f31777c[i10].mapPoints(this.f31782h);
            Path path2 = this.f31779e;
            float[] fArr2 = this.f31782h;
            path2.moveTo(fArr2[0], fArr2[1]);
            this.f31781g.d(this.f31777c[i10], this.f31779e);
        } else {
            this.f31781g.d(this.f31777c[i10], cVar.f31789b);
        }
        b bVar = cVar.f31791d;
        if (bVar != null) {
            bVar.a(this.f31781g, this.f31777c[i10], i10);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void d(C3572o c3572o, float f10, RectF rectF, b bVar, @NonNull Path path) {
        path.rewind();
        this.f31779e.rewind();
        this.f31780f.rewind();
        this.f31780f.addRect(rectF, Path.Direction.CW);
        c cVar = new c(c3572o, f10, rectF, bVar, path);
        for (int i10 = 0; i10 < 4; i10++) {
            m(cVar, i10);
            o(i10);
        }
        for (int i11 = 0; i11 < 4; i11++) {
            b(cVar, i11);
            c(cVar, i11);
        }
        path.close();
        this.f31779e.close();
        if (this.f31779e.isEmpty()) {
            return;
        }
        path.op(this.f31779e, Path.Op.UNION);
    }

    public void e(C3572o c3572o, float f10, RectF rectF, @NonNull Path path) {
        d(c3572o, f10, rectF, null, path);
    }

    public final void f(int i10, @NonNull RectF rectF, @NonNull PointF pointF) {
        if (i10 == 1) {
            pointF.set(rectF.right, rectF.bottom);
            return;
        }
        if (i10 == 2) {
            pointF.set(rectF.left, rectF.bottom);
        } else if (i10 != 3) {
            pointF.set(rectF.right, rectF.top);
        } else {
            pointF.set(rectF.left, rectF.top);
        }
    }

    public final InterfaceC3561d g(int i10, @NonNull C3572o c3572o) {
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? c3572o.t() : c3572o.r() : c3572o.j() : c3572o.l();
    }

    public final C3562e h(int i10, @NonNull C3572o c3572o) {
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? c3572o.s() : c3572o.q() : c3572o.i() : c3572o.k();
    }

    public final float i(@NonNull RectF rectF, int i10) {
        float[] fArr = this.f31782h;
        C3574q c3574q = this.f31775a[i10];
        fArr[0] = c3574q.f31797c;
        fArr[1] = c3574q.f31798d;
        this.f31776b[i10].mapPoints(fArr);
        return (i10 == 1 || i10 == 3) ? Math.abs(rectF.centerX() - this.f31782h[0]) : Math.abs(rectF.centerY() - this.f31782h[1]);
    }

    public final C3564g j(int i10, @NonNull C3572o c3572o) {
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? c3572o.o() : c3572o.p() : c3572o.n() : c3572o.h();
    }

    @RequiresApi(19)
    public final boolean l(Path path, int i10) {
        this.f31785k.reset();
        this.f31775a[i10].d(this.f31776b[i10], this.f31785k);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        this.f31785k.computeBounds(rectF, true);
        path.op(this.f31785k, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (rectF.isEmpty()) {
            return rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return true;
    }

    public final void m(@NonNull c cVar, int i10) {
        h(i10, cVar.f31788a).c(this.f31775a[i10], 90.0f, cVar.f31792e, cVar.f31790c, g(i10, cVar.f31788a));
        float a10 = a(i10);
        this.f31776b[i10].reset();
        f(i10, cVar.f31790c, this.f31778d);
        Matrix matrix = this.f31776b[i10];
        PointF pointF = this.f31778d;
        matrix.setTranslate(pointF.f32425x, pointF.f32426y);
        this.f31776b[i10].preRotate(a10);
    }

    public void n(boolean z10) {
        this.f31786l = z10;
    }

    public final void o(int i10) {
        this.f31782h[0] = this.f31775a[i10].j();
        this.f31782h[1] = this.f31775a[i10].k();
        this.f31776b[i10].mapPoints(this.f31782h);
        float a10 = a(i10);
        this.f31777c[i10].reset();
        Matrix matrix = this.f31777c[i10];
        float[] fArr = this.f31782h;
        matrix.setTranslate(fArr[0], fArr[1]);
        this.f31777c[i10].preRotate(a10);
    }
}
