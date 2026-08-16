package com.google.common.cache;

import javax.annotation.CheckForNull;
import w2.B;
import w2.H;
import w2.z;

@v2.b
@g
public final class f {

    public final long f65428a;

    public final long f65429b;

    public final long f65430c;

    public final long f65431d;

    public final long f65432e;

    public final long f65433f;

    public f(long j10, long j11, long j12, long j13, long j14, long j15) {
        H.d(j10 >= 0);
        H.d(j11 >= 0);
        H.d(j12 >= 0);
        H.d(j13 >= 0);
        H.d(j14 >= 0);
        H.d(j15 >= 0);
        this.f65428a = j10;
        this.f65429b = j11;
        this.f65430c = j12;
        this.f65431d = j13;
        this.f65432e = j14;
        this.f65433f = j15;
    }

    public double a() {
        long x10 = E2.h.x(this.f65430c, this.f65431d);
        if (x10 == 0) {
            return 0.0d;
        }
        return this.f65432e / x10;
    }

    public long b() {
        return this.f65433f;
    }

    public long c() {
        return this.f65428a;
    }

    public double d() {
        long m10 = m();
        if (m10 == 0) {
            return 1.0d;
        }
        return this.f65428a / m10;
    }

    public long e() {
        return E2.h.x(this.f65430c, this.f65431d);
    }

    public boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f65428a == fVar.f65428a && this.f65429b == fVar.f65429b && this.f65430c == fVar.f65430c && this.f65431d == fVar.f65431d && this.f65432e == fVar.f65432e && this.f65433f == fVar.f65433f;
    }

    public long f() {
        return this.f65431d;
    }

    public double g() {
        long x10 = E2.h.x(this.f65430c, this.f65431d);
        if (x10 == 0) {
            return 0.0d;
        }
        return this.f65431d / x10;
    }

    public long h() {
        return this.f65430c;
    }

    public int hashCode() {
        return B.b(Long.valueOf(this.f65428a), Long.valueOf(this.f65429b), Long.valueOf(this.f65430c), Long.valueOf(this.f65431d), Long.valueOf(this.f65432e), Long.valueOf(this.f65433f));
    }

    public f i(f fVar) {
        return new f(Math.max(0L, E2.h.A(this.f65428a, fVar.f65428a)), Math.max(0L, E2.h.A(this.f65429b, fVar.f65429b)), Math.max(0L, E2.h.A(this.f65430c, fVar.f65430c)), Math.max(0L, E2.h.A(this.f65431d, fVar.f65431d)), Math.max(0L, E2.h.A(this.f65432e, fVar.f65432e)), Math.max(0L, E2.h.A(this.f65433f, fVar.f65433f)));
    }

    public long j() {
        return this.f65429b;
    }

    public double k() {
        long m10 = m();
        if (m10 == 0) {
            return 0.0d;
        }
        return this.f65429b / m10;
    }

    public f l(f fVar) {
        return new f(E2.h.x(this.f65428a, fVar.f65428a), E2.h.x(this.f65429b, fVar.f65429b), E2.h.x(this.f65430c, fVar.f65430c), E2.h.x(this.f65431d, fVar.f65431d), E2.h.x(this.f65432e, fVar.f65432e), E2.h.x(this.f65433f, fVar.f65433f));
    }

    public long m() {
        return E2.h.x(this.f65428a, this.f65429b);
    }

    public long n() {
        return this.f65432e;
    }

    public String toString() {
        return z.c(this).e("hitCount", this.f65428a).e("missCount", this.f65429b).e("loadSuccessCount", this.f65430c).e("loadExceptionCount", this.f65431d).e("totalLoadTime", this.f65432e).e("evictionCount", this.f65433f).toString();
    }
}
