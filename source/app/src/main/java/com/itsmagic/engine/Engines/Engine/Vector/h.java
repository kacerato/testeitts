package com.itsmagic.engine.Engines.Engine.Vector;

import JAVARuntime.Point3;

public class h extends K8.f {

    public int f79903b;

    public int f79904c;

    public int f79905d;

    public transient Point3 f79906e;

    public h() {
    }

    public static int B(int value, float divisor) {
        if (divisor == 0.0f) {
            return 0;
        }
        return Math.round(value / divisor);
    }

    public static int C(int value, int divisor) {
        if (divisor == 0) {
            return 0;
        }
        return Math.round(value / divisor);
    }

    public static h r0() {
        return new h();
    }

    public h A(Vector3 other) {
        return other == null ? this : y(other.getX(), other.getY(), other.getZ());
    }

    public float D(int a10) {
        return E(a10, a10, a10);
    }

    public float E(int x10, int y10, int z10) {
        return (this.f79903b * x10) + (this.f79904c * y10) + (this.f79905d * z10);
    }

    public float F(h other) {
        if (other == null) {
            return 0.0f;
        }
        return (this.f79903b * other.f79903b) + (this.f79904c * other.f79904c) + (this.f79905d * other.f79905d);
    }

    public boolean G(int a10) {
        return H(a10, a10, a10);
    }

    public boolean H(int x10, int y10, int z10) {
        return this.f79903b == x10 && this.f79904c == y10 && this.f79905d == z10;
    }

    public boolean I(h other) {
        return other != null && this.f79903b == other.f79903b && this.f79904c == other.f79904c && this.f79905d == other.f79905d;
    }

    public int J() {
        return this.f79903b;
    }

    public int K() {
        return this.f79904c;
    }

    public int L() {
        return this.f79905d;
    }

    public float M() {
        return lengthF();
    }

    public h N(float a10, float speed) {
        return O(a10, a10, a10, speed);
    }

    public h O(float x10, float y10, float z10, float speed) {
        this.f79903b = Math.round(Nc.b.N0(this.f79903b, x10, speed));
        this.f79904c = Math.round(Nc.b.N0(this.f79904c, y10, speed));
        this.f79905d = Math.round(Nc.b.N0(this.f79905d, z10, speed));
        return this;
    }

    public h P(h other, float speed) {
        return other == null ? this : O(other.f79903b, other.f79904c, other.f79905d, speed);
    }

    public h Q(int a10) {
        return S(a10, a10, a10);
    }

    public h S(int x10, int y10, int z10) {
        return new h(this.f79903b * x10, this.f79904c * y10, this.f79905d * z10);
    }

    public h T(h other) {
        return other == null ? p() : new h(this.f79903b * other.f79903b, this.f79904c * other.f79904c, this.f79905d * other.f79905d);
    }

    public h U(float a10) {
        return V(a10, a10, a10);
    }

    public h V(float x10, float y10, float z10) {
        this.f79903b = Math.round(this.f79903b * x10);
        this.f79904c = Math.round(this.f79904c * y10);
        this.f79905d = Math.round(this.f79905d * z10);
        return this;
    }

    public h W(h other) {
        if (other == null) {
            return this;
        }
        this.f79903b *= other.f79903b;
        this.f79904c *= other.f79904c;
        this.f79905d *= other.f79905d;
        return this;
    }

    public h X(Vector3 other) {
        return other == null ? this : V(other.getX(), other.getY(), other.getZ());
    }

    public h Y() {
        Z();
        return this;
    }

    public h Z() {
        float lengthF = lengthF();
        if (lengthF <= 0.0f) {
            return b0(0, 0, 0);
        }
        this.f79903b = Math.round(this.f79903b / lengthF);
        this.f79904c = Math.round(this.f79904c / lengthF);
        this.f79905d = Math.round(this.f79905d / lengthF);
        return this;
    }

    public h a0(int a10) {
        return b0(a10, a10, a10);
    }

    public h b0(int x10, int y10, int z10) {
        this.f79903b = x10;
        this.f79904c = y10;
        this.f79905d = z10;
        return this;
    }

    public h c0(h other) {
        return other == null ? b0(0, 0, 0) : b0(other.f79903b, other.f79904c, other.f79905d);
    }

    public h d(int a10) {
        return e(a10, a10, a10);
    }

    public void d0(Point3 run) {
        this.f79906e = run;
    }

    public h e(int x10, int y10, int z10) {
        return new h(this.f79903b + x10, this.f79904c + y10, this.f79905d + z10);
    }

    public int e0(int x10) {
        this.f79903b = x10;
        return x10;
    }

    public h f(h other) {
        return other == null ? p() : new h(this.f79903b + other.f79903b, this.f79904c + other.f79904c, this.f79905d + other.f79905d);
    }

    public int f0(int y10) {
        this.f79904c = y10;
        return y10;
    }

    public int g0(int z10) {
        this.f79905d = z10;
        return z10;
    }

    public h h(float a10) {
        return i(a10, a10, a10);
    }

    public float h0(h other) {
        return other == null ? sqrtLength() : k0(other).sqrtLength();
    }

    public h i(float x10, float y10, float z10) {
        this.f79903b = Math.round(this.f79903b + x10);
        this.f79904c = Math.round(this.f79904c + y10);
        this.f79905d = Math.round(this.f79905d + z10);
        return this;
    }

    public h i0(int a10) {
        return j0(a10, a10, a10);
    }

    public h j(h other) {
        if (other == null) {
            return this;
        }
        this.f79903b += other.f79903b;
        this.f79904c += other.f79904c;
        this.f79905d += other.f79905d;
        return this;
    }

    public h j0(int x10, int y10, int z10) {
        return new h(this.f79903b - x10, this.f79904c - y10, this.f79905d - z10);
    }

    public h k(Vector3 other) {
        return other == null ? this : i(other.getX(), other.getY(), other.getZ());
    }

    public h k0(h other) {
        return other == null ? p() : new h(this.f79903b - other.f79903b, this.f79904c - other.f79904c, this.f79905d - other.f79905d);
    }

    public h l(float a10, float blend) {
        return m(a10, a10, a10, blend);
    }

    public h l0(float a10) {
        return m0(a10, a10, a10);
    }

    public float lengthF() {
        return (float) Math.sqrt(sqrtLength());
    }

    public h m(float x10, float y10, float z10, float blend) {
        this.f79903b = Math.round(Nc.b.z(this.f79903b, x10, blend));
        this.f79904c = Math.round(Nc.b.z(this.f79904c, y10, blend));
        this.f79905d = Math.round(Nc.b.z(this.f79905d, z10, blend));
        return this;
    }

    public h m0(float x10, float y10, float z10) {
        this.f79903b = Math.round(this.f79903b - x10);
        this.f79904c = Math.round(this.f79904c - y10);
        this.f79905d = Math.round(this.f79905d - z10);
        return this;
    }

    public h n(h other, float blend) {
        return other == null ? this : m(other.f79903b, other.f79904c, other.f79905d, blend);
    }

    public h n0(h other) {
        if (other == null) {
            return this;
        }
        this.f79903b -= other.f79903b;
        this.f79904c -= other.f79904c;
        this.f79905d -= other.f79905d;
        return this;
    }

    public h clone() {
        return new h(this.f79903b, this.f79904c, this.f79905d);
    }

    public h o0(Vector3 other) {
        return other == null ? this : m0(other.getX(), other.getY(), other.getZ());
    }

    public h p() {
        return clone();
    }

    public Point3 p0() {
        if (this.f79906e == null) {
            this.f79906e = new Point3(this);
        }
        return this.f79906e;
    }

    public Vector3 q(int x10, int y10, int z10) {
        float f10 = (this.f79904c * z10) - (this.f79905d * y10);
        int i10 = this.f79903b;
        return new Vector3(f10, (r3 * x10) - (z10 * i10), (i10 * y10) - (r1 * x10));
    }

    public Vector3 q0() {
        return new Vector3(this.f79903b, this.f79904c, this.f79905d);
    }

    public Vector3 r(h other) {
        return other == null ? new Vector3(0.0f, 0.0f, 0.0f) : q(other.f79903b, other.f79904c, other.f79905d);
    }

    public float s(h other) {
        return other == null ? lengthF() : k0(other).lengthF();
    }

    public float sqrtLength() {
        int i10 = this.f79903b;
        float f10 = i10 * i10;
        int i11 = this.f79904c;
        float f11 = f10 + (i11 * i11);
        int i12 = this.f79905d;
        return f11 + (i12 * i12);
    }

    public String toString() {
        return "( " + this.f79903b + " , " + this.f79904c + " , " + this.f79905d + " )";
    }

    public h u(int a10) {
        return v(a10, a10, a10);
    }

    public h v(int x10, int y10, int z10) {
        return new h(C(this.f79903b, x10), C(this.f79904c, y10), C(this.f79905d, z10));
    }

    public h w(h other) {
        return other == null ? p() : new h(C(this.f79903b, other.f79903b), C(this.f79904c, other.f79904c), C(this.f79905d, other.f79905d));
    }

    public h x(float a10) {
        return y(a10, a10, a10);
    }

    public h y(float x10, float y10, float z10) {
        this.f79903b = B(this.f79903b, x10);
        this.f79904c = B(this.f79904c, y10);
        this.f79905d = B(this.f79905d, z10);
        return this;
    }

    public h z(h other) {
        if (other == null) {
            return this;
        }
        this.f79903b = C(this.f79903b, other.f79903b);
        this.f79904c = C(this.f79904c, other.f79904c);
        this.f79905d = C(this.f79905d, other.f79905d);
        return this;
    }

    public h(int a10) {
        a0(a10);
    }

    public h(int x10, int y10, int z10) {
        b0(x10, y10, z10);
    }

    public h(h other) {
        c0(other);
    }

    public h(Vector3 other) {
        if (other == null) {
            b0(0, 0, 0);
        } else {
            b0(Math.round(other.getX()), Math.round(other.getY()), Math.round(other.getZ()));
        }
    }
}
