package Bb;

import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import ea.C13049a;
import java.lang.reflect.Array;
import java.util.Arrays;
import ub.p;

public class b {

    public final c f1667a;

    public final int f1668b;

    public final int f1669c;

    public p f1670d;

    public final boolean f1671e;

    public class a implements c {

        public final d[][] f1672a;

        public final p f1673b;

        public a(final d[][] val$pixels, final p val$texture) {
            this.f1672a = val$pixels;
            this.f1673b = val$texture;
        }

        @Override
        public ColorINT a(int x10, int y10) {
            d dVar = this.f1672a[x10][y10];
            return new ColorINT(dVar.f1680d, dVar.f1677a, dVar.f1678b, dVar.f1679c);
        }

        @Override
        public void apply() {
            for (int i10 = 0; i10 < b.this.f1668b; i10++) {
                for (int i11 = 0; i11 < b.this.f1669c; i11++) {
                    d dVar = this.f1672a[i10][i11];
                    this.f1673b.f0(i10, i11, dVar.f1677a, dVar.f1678b, dVar.f1679c, dVar.f1680d);
                }
            }
            this.f1673b.apply();
        }

        @Override
        public void b(int x10, int y10, float v10) {
            this.f1672a[x10][y10].f1679c = v10;
        }

        @Override
        public void c(int x10, int y10, float v10) {
            this.f1672a[x10][y10].f1680d = v10;
        }

        @Override
        public void clear() {
            Arrays.fill(this.f1672a, (Object) null);
        }

        @Override
        public void d(int x10, int y10, float r10, float g10, float b10, float a10) {
            d dVar = this.f1672a[x10][y10];
            dVar.f1677a = r10;
            dVar.f1678b = g10;
            dVar.f1679c = b10;
            dVar.f1680d = a10;
        }

        @Override
        public float e(int x10, int y10) {
            return this.f1672a[x10][y10].f1680d;
        }

        @Override
        public float f(int x10, int y10) {
            return this.f1672a[x10][y10].f1679c;
        }

        @Override
        public void g(int x10, int y10, float v10) {
            this.f1672a[x10][y10].f1677a = v10;
        }

        @Override
        public float h(int x10, int y10) {
            return this.f1672a[x10][y10].f1677a;
        }

        @Override
        public float i(int x10, int y10) {
            return this.f1672a[x10][y10].f1678b;
        }

        @Override
        public void j(int x10, int y10, float v10) {
            this.f1672a[x10][y10].f1678b = v10;
        }

        @Override
        public void k(int x10, int y10, ColorINT out) {
            d dVar = this.f1672a[x10][y10];
            out.T(dVar.f1680d, dVar.f1677a, dVar.f1678b, dVar.f1679c);
        }

        @Override
        public void l(int x10, int y10, float r10, float g10, float b10) {
            d dVar = this.f1672a[x10][y10];
            dVar.f1677a = r10;
            dVar.f1678b = g10;
            dVar.f1679c = b10;
        }

        @Override
        public void m(float r10, float g10, float b10, float a10) {
            for (int i10 = 0; i10 < b.this.f1668b; i10++) {
                for (int i11 = 0; i11 < b.this.f1669c; i11++) {
                    d dVar = this.f1672a[i10][i11];
                    dVar.f1677a = r10;
                    dVar.f1678b = g10;
                    dVar.f1679c = b10;
                    dVar.f1680d = a10;
                }
            }
        }
    }

    public class C0037b implements c {

        public final p f1675a;

        public C0037b(final p val$texture) {
            this.f1675a = val$texture;
        }

        @Override
        public ColorINT a(int x10, int y10) {
            return this.f1675a.i(x10, y10);
        }

        @Override
        public void apply() {
            this.f1675a.apply();
        }

        @Override
        public void b(int x10, int y10, float v10) {
            this.f1675a.b0(x10, y10, v10);
        }

        @Override
        public void c(int x10, int y10, float v10) {
            this.f1675a.a0(x10, y10, v10);
        }

        @Override
        public void clear() {
        }

        @Override
        public void d(int x10, int y10, float r10, float g10, float b10, float a10) {
            this.f1675a.f0(x10, y10, r10, g10, b10, a10);
        }

        @Override
        public float e(int x10, int y10) {
            return this.f1675a.l(x10, y10);
        }

        @Override
        public float f(int x10, int y10) {
            return this.f1675a.m(x10, y10);
        }

        @Override
        public void g(int x10, int y10, float v10) {
            this.f1675a.d0(x10, y10, v10);
        }

        @Override
        public float h(int x10, int y10) {
            return this.f1675a.o(x10, y10);
        }

        @Override
        public float i(int x10, int y10) {
            return this.f1675a.n(x10, y10);
        }

        @Override
        public void j(int x10, int y10, float v10) {
            this.f1675a.c0(x10, y10, v10);
        }

        @Override
        public void k(int x10, int y10, ColorINT out) {
            this.f1675a.j(x10, y10, out);
        }

        @Override
        public void l(int x10, int y10, float r10, float g10, float b10) {
            this.f1675a.e0(x10, y10, r10, g10, b10);
        }

        @Override
        public void m(float r10, float g10, float b10, float a10) {
            for (int i10 = 0; i10 < b.this.f1668b; i10++) {
                for (int i11 = 0; i11 < b.this.f1669c; i11++) {
                    this.f1675a.f0(i10, i11, r10, g10, b10, a10);
                }
            }
        }
    }

    public interface c {
        ColorINT a(int x10, int y10);

        void apply();

        void b(int x10, int y10, float v10);

        void c(int x10, int y10, float v10);

        void clear();

        void d(int x10, int y10, float r10, float g10, float b10, float a10);

        float e(int x10, int y10);

        float f(int x10, int y10);

        void g(int x10, int y10, float v10);

        float h(int x10, int y10);

        float i(int x10, int y10);

        void j(int x10, int y10, float v10);

        void k(int x10, int y10, ColorINT out);

        void l(int x10, int y10, float r10, float g10, float b10);

        void m(float r10, float g10, float b10, float a10);
    }

    public static class d {

        public float f1677a;

        public float f1678b;

        public float f1679c;

        public float f1680d;

        public d() {
        }

        public d(a aVar) {
            this();
        }
    }

    public b(d[][] pixels, p texture, boolean isAlphaFilled) {
        this.f1668b = texture.getWidth();
        this.f1669c = texture.getHeight();
        this.f1670d = texture;
        if (pixels != null) {
            this.f1671e = isAlphaFilled;
            this.f1667a = new a(pixels, texture);
        } else {
            this.f1671e = false;
            this.f1667a = new C0037b(texture);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [Bb.b$a] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    public static b A(p pVar, float f10) {
        int width = pVar.getWidth();
        int height = pVar.getHeight();
        d[][] dVarArr = 0;
        dVarArr = 0;
        try {
            d[][] dVarArr2 = (d[][]) Array.newInstance((Class<?>) d.class, width, height);
            if (dVarArr2 != null) {
                for (int i10 = 0; i10 < width; i10++) {
                    for (int i11 = 0; i11 < height; i11++) {
                        dVarArr2[i10][i11] = new d(dVarArr);
                    }
                    if (!C13049a.a(f10)) {
                        break;
                    }
                }
            }
            dVarArr = dVarArr2;
        } catch (Error e10) {
            e = e10;
            e.printStackTrace();
            return new b(dVarArr, pVar, true);
        } catch (Exception e11) {
            e = e11;
            e.printStackTrace();
            return new b(dVarArr, pVar, true);
        }
        return new b(dVarArr, pVar, true);
    }

    public static b d(p texture, float minimalRamMB) {
        texture.getWidth();
        texture.getHeight();
        return new b(null, texture, false);
    }

    public static b y(p texture) {
        return z(texture, 50.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [Bb.b$a] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    public static b z(p pVar, float f10) {
        int width = pVar.getWidth();
        int height = pVar.getHeight();
        d[][] dVarArr = 0;
        dVarArr = 0;
        try {
            d[][] dVarArr2 = (d[][]) Array.newInstance((Class<?>) d.class, width, height);
            if (dVarArr2 != null) {
                for (int i10 = 0; i10 < width; i10++) {
                    for (int i11 = 0; i11 < height; i11++) {
                        d dVar = new d(dVarArr);
                        dVar.f1677a = pVar.o(i10, i11);
                        dVar.f1678b = pVar.n(i10, i11);
                        dVar.f1679c = pVar.m(i10, i11);
                        dVar.f1680d = pVar.l(i10, i11);
                        dVarArr2[i10][i11] = dVar;
                    }
                    if (!C13049a.a(f10)) {
                        break;
                    }
                }
            }
            dVarArr = dVarArr2;
        } catch (Error e10) {
            e = e10;
            e.printStackTrace();
            return new b(dVarArr, pVar, false);
        } catch (Exception e11) {
            e = e11;
            e.printStackTrace();
            return new b(dVarArr, pVar, false);
        }
        return new b(dVarArr, pVar, false);
    }

    public void c() {
        this.f1667a.apply();
    }

    public void e() {
        this.f1667a.clear();
    }

    public void f(float r10, float g10, float b10, float a10) {
        this.f1667a.m(r10, g10, b10, a10);
    }

    public ColorINT g(int x10, int y10) {
        return this.f1667a.a(x10, y10);
    }

    public void h(int x10, int y10, ColorINT out) {
        this.f1667a.k(x10, y10, out);
    }

    public float i(int x10, int y10) {
        return this.f1667a.e(x10, y10);
    }

    public float j(int x10, int y10) {
        return this.f1667a.f(x10, y10);
    }

    public float k(int x10, int y10) {
        return this.f1667a.i(x10, y10);
    }

    public int l() {
        return this.f1669c;
    }

    public void m(float x10, float y10, ColorINT out) {
        while (x10 < 0.0f) {
            x10 += 1.0f;
        }
        while (x10 > 1.0f) {
            x10 -= 1.0f;
        }
        while (y10 < 0.0f) {
            y10 += 1.0f;
        }
        while (y10 > 1.0f) {
            y10 -= 1.0f;
        }
        h((int) (x10 * (p() - 1)), (int) (y10 * (l() - 1)), out);
    }

    public float n(int x10, int y10) {
        return this.f1667a.h(x10, y10);
    }

    public p o() {
        return this.f1670d;
    }

    public int p() {
        return this.f1668b;
    }

    public boolean q() {
        return this.f1671e;
    }

    public void r(int x10, int y10, float r10, float g10, float b10) {
        this.f1667a.l(x10, y10, r10, g10, b10);
    }

    public void s(int x10, int y10, float r10, float g10, float b10, float a10) {
        this.f1667a.d(x10, y10, r10, g10, b10, a10);
    }

    public void t(int x10, int y10, ColorINT colorINT) {
        s(x10, y10, colorINT.w(), colorINT.u(), colorINT.s(), colorINT.r());
    }

    public void u(int x10, int y10, float v10) {
        this.f1667a.c(x10, y10, v10);
    }

    public void v(int x10, int y10, float v10) {
        this.f1667a.b(x10, y10, v10);
    }

    public void w(int x10, int y10, float v10) {
        this.f1667a.j(x10, y10, v10);
    }

    public void x(int x10, int y10, float v10) {
        this.f1667a.g(x10, y10, v10);
    }
}
