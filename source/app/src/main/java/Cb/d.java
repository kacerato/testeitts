package cb;

import cb.y;

public class d<T extends y<T>> implements n<T> {

    public static final float f34514i = 0.16666667f;

    public T[] f34515a;

    public b<T> f34516b;

    public int f34517c;

    public boolean f34518d;

    public int f34519e;

    public T f34520f;

    public T f34521g;

    public T f34522h;

    public d() {
    }

    public static <T extends y<T>> T i(T t10, float f10, T[] tArr, int i10, boolean z10, T t11) {
        int length = tArr.length;
        if (!z10) {
            length -= i10;
        }
        float f11 = length * f10;
        int i11 = f10 >= 1.0f ? length - 1 : (int) f11;
        return (T) j(t10, i11, f11 - i11, tArr, i10, z10, t11);
    }

    public static <T extends y<T>> T j(T t10, int i10, float f10, T[] tArr, int i11, boolean z10, T t11) {
        if (i11 == 3) {
            return (T) l(t10, i10, f10, tArr, z10, t11);
        }
        throw new IllegalArgumentException();
    }

    public static <T extends y<T>> T k(T t10, float f10, T[] tArr, boolean z10, T t11) {
        int length = tArr.length;
        if (!z10) {
            length -= 3;
        }
        float f11 = length * f10;
        int i10 = f10 >= 1.0f ? length - 1 : (int) f11;
        return (T) l(t10, i10, f11 - i10, tArr, z10, t11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T extends y<T>> T l(final T out, final int i10, final float u10, final T[] points, final boolean continuous, final T tmp) {
        int length = points.length;
        float f10 = 1.0f - u10;
        float f11 = u10 * u10;
        float f12 = f11 * u10;
        out.K(points[i10]).d((((f12 * 3.0f) - (6.0f * f11)) + 4.0f) * 0.16666667f);
        if (continuous || i10 > 0) {
            out.m(tmp.K(points[((length + i10) - 1) % length]).d(f10 * f10 * f10 * 0.16666667f));
        }
        if (continuous || i10 < length - 1) {
            out.m(tmp.K(points[(i10 + 1) % length]).d((((-3.0f) * f12) + (f11 * 3.0f) + (u10 * 3.0f) + 1.0f) * 0.16666667f));
        }
        if (continuous || i10 < length - 2) {
            out.m(tmp.K(points[(i10 + 2) % length]).d(f12 * 0.16666667f));
        }
        return out;
    }

    public static <T extends y<T>> T m(T t10, float f10, T[] tArr, boolean z10, T t11) {
        int length = tArr.length;
        if (!z10) {
            length -= 3;
        }
        float f11 = length * f10;
        int i10 = f10 >= 1.0f ? length - 1 : (int) f11;
        return (T) l(t10, i10, f11 - i10, tArr, z10, t11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T extends y<T>> T n(final T out, final int i10, final float u10, final T[] points, final boolean continuous, final T tmp) {
        int length = points.length;
        float f10 = 1.0f - u10;
        float f11 = u10 * u10;
        out.K(points[i10]).d((1.5f * f11) - (2.0f * u10));
        if (continuous || i10 > 0) {
            out.m(tmp.K(points[((length + i10) - 1) % length]).d((-0.5f) * f10 * f10));
        }
        if (continuous || i10 < length - 1) {
            out.m(tmp.K(points[(i10 + 1) % length]).d(((-1.5f) * f11) + u10 + 0.5f));
        }
        if (continuous || i10 < length - 2) {
            out.m(tmp.K(points[(i10 + 2) % length]).d(f11 * 0.5f));
        }
        return out;
    }

    public static <T extends y<T>> T o(T t10, float f10, T[] tArr, int i10, boolean z10, T t11) {
        int length = tArr.length;
        if (!z10) {
            length -= i10;
        }
        float f11 = length * f10;
        int i11 = f10 >= 1.0f ? length - 1 : (int) f11;
        return (T) p(t10, i11, f11 - i11, tArr, i10, z10, t11);
    }

    public static <T extends y<T>> T p(T t10, int i10, float f10, T[] tArr, int i11, boolean z10, T t11) {
        if (i11 == 3) {
            return (T) n(t10, i10, f10, tArr, z10, t11);
        }
        throw new IllegalArgumentException();
    }

    @Override
    public float b(int samples) {
        float f10 = 0.0f;
        for (int i10 = 0; i10 < samples; i10++) {
            this.f34521g.K(this.f34522h);
            d(this.f34522h, i10 / (samples - 1.0f));
            if (i10 > 0) {
                f10 += this.f34521g.L(this.f34522h);
            }
        }
        return f10;
    }

    @Override
    public float e(T v10) {
        return g(v10, t(v10));
    }

    public float g(final T in2, final int near) {
        T t10 = this.f34516b.get(near);
        T t11 = this.f34516b.get(near > 0 ? near - 1 : this.f34519e - 1);
        T t12 = this.f34516b.get((near + 1) % this.f34519e);
        if (in2.q(t12) >= in2.q(t11)) {
            if (near <= 0) {
                near = this.f34519e;
            }
            near--;
            t12 = t10;
            t10 = t11;
        }
        float q10 = t10.q(t12);
        float q11 = in2.q(t12);
        float q12 = in2.q(t10);
        float sqrt = (float) Math.sqrt(q10);
        return (near + h.i((sqrt - (((q11 + q10) - q12) / (2.0f * sqrt))) / sqrt, 0.0f, 1.0f)) / this.f34519e;
    }

    public float h(final T in2, int start, final int count) {
        return g(in2, u(in2, start, count));
    }

    @Override
    public T c(final T out, final float t10) {
        int i10 = this.f34519e;
        float f10 = i10 * t10;
        int i11 = t10 >= 1.0f ? i10 - 1 : (int) f10;
        return r(out, i11, f10 - i11);
    }

    public T r(T t10, int i10, float f10) {
        boolean z10 = this.f34518d;
        if (!z10) {
            i10 += (int) (this.f34517c * 0.5f);
        }
        return (T) p(t10, i10, f10, this.f34515a, this.f34517c, z10, this.f34520f);
    }

    @Override
    public float a(T v10) {
        return e(v10);
    }

    public int t(final T in2) {
        return u(in2, 0, this.f34519e);
    }

    public int u(final T in2, int start, final int count) {
        while (start < 0) {
            start += this.f34519e;
        }
        int i10 = start % this.f34519e;
        float q10 = in2.q(this.f34516b.get(i10));
        for (int i11 = 1; i11 < count; i11++) {
            int i12 = (start + i11) % this.f34519e;
            float q11 = in2.q(this.f34516b.get(i12));
            if (q11 < q10) {
                i10 = i12;
                q10 = q11;
            }
        }
        return i10;
    }

    public d v(T[] tArr, int i10, boolean z10) {
        if (this.f34520f == null) {
            this.f34520f = (T) tArr[0].n();
        }
        if (this.f34521g == null) {
            this.f34521g = (T) tArr[0].n();
        }
        if (this.f34522h == null) {
            this.f34522h = (T) tArr[0].n();
        }
        this.f34515a = tArr;
        this.f34517c = i10;
        this.f34518d = z10;
        int length = tArr.length;
        if (!z10) {
            length -= i10;
        }
        this.f34519e = length;
        b<T> bVar = this.f34516b;
        if (bVar == null) {
            this.f34516b = new b<>(length);
        } else {
            bVar.clear();
            this.f34516b.n(this.f34519e);
        }
        for (int i11 = 0; i11 < this.f34519e; i11++) {
            this.f34516b.c(j(tArr[0].n(), z10 ? i11 : (int) (i11 + (i10 * 0.5f)), 0.0f, tArr, i10, z10, this.f34520f));
        }
        return this;
    }

    @Override
    public T d(T out, float t10) {
        int i10 = this.f34519e;
        float f10 = i10 * t10;
        int i11 = t10 >= 1.0f ? i10 - 1 : (int) f10;
        return x(out, i11, f10 - i11);
    }

    public T x(T t10, int i10, float f10) {
        boolean z10 = this.f34518d;
        if (!z10) {
            i10 += (int) (this.f34517c * 0.5f);
        }
        return (T) j(t10, i10, f10, this.f34515a, this.f34517c, z10, this.f34520f);
    }

    public d(final T[] controlPoints, final int degree, final boolean continuous) {
        v(controlPoints, degree, continuous);
    }
}
