package com.itsmagic.engine.Engines.Engine.Vector;

import JAVARuntime.Point2;
import org.openjdk.tools.doclint.DocLint;

public class g extends K8.f {

    public int f79900b;

    public int f79901c;

    public transient Point2 f79902d;

    public g() {
    }

    public static int h0(int value, float divisor) {
        if (divisor == 0.0f) {
            return 0;
        }
        return Math.round(value / divisor);
    }

    public static g r0() {
        return new g();
    }

    public g A(Vector2 other) {
        return other == null ? this : y(other.getX(), other.getY());
    }

    public float B(int a10) {
        return C(a10, a10);
    }

    public float C(int x10, int y10) {
        return (this.f79900b * x10) + (this.f79901c * y10);
    }

    public float D(g other) {
        if (other == null) {
            return 0.0f;
        }
        return (this.f79900b * other.f79900b) + (this.f79901c * other.f79901c);
    }

    public boolean E(int a10) {
        return F(a10, a10);
    }

    public boolean F(int x10, int y10) {
        return this.f79900b == x10 && this.f79901c == y10;
    }

    public boolean G(g other) {
        return other != null && this.f79900b == other.f79900b && this.f79901c == other.f79901c;
    }

    public int H() {
        return this.f79900b;
    }

    public int I() {
        return this.f79901c;
    }

    public float J() {
        return lengthF();
    }

    public g K(float a10, float speed) {
        return L(a10, a10, speed);
    }

    public g L(float x10, float y10, float speed) {
        this.f79900b = Math.round(Nc.b.N0(this.f79900b, x10, speed));
        this.f79901c = Math.round(Nc.b.N0(this.f79901c, y10, speed));
        return this;
    }

    public g M(g other, float speed) {
        return other == null ? this : L(other.f79900b, other.f79901c, speed);
    }

    public g N(float a10, float speed) {
        return O(a10, a10, speed);
    }

    public g O(float x10, float y10, float speed) {
        this.f79900b = Math.round(Nc.b.N0(this.f79900b, x10, speed));
        this.f79901c = Math.round(Nc.b.N0(this.f79901c, y10, speed));
        return this;
    }

    public g P(g other, float speed) {
        return other == null ? this : O(other.f79900b, other.f79901c, speed);
    }

    public g Q(int a10) {
        return S(a10, a10);
    }

    public g S(int x10, int y10) {
        return new g(this.f79900b * x10, this.f79901c * y10);
    }

    public g T(g other) {
        return other == null ? p() : new g(this.f79900b * other.f79900b, this.f79901c * other.f79901c);
    }

    public g U(float a10) {
        return V(a10, a10);
    }

    public g V(float x10, float y10) {
        this.f79900b = Math.round(this.f79900b * x10);
        this.f79901c = Math.round(this.f79901c * y10);
        return this;
    }

    public g W(g other) {
        if (other == null) {
            return this;
        }
        this.f79900b *= other.f79900b;
        this.f79901c *= other.f79901c;
        return this;
    }

    public g X(Vector2 other) {
        return other == null ? this : V(other.getX(), other.getY());
    }

    public g Y() {
        return clone().Z();
    }

    public g Z() {
        float lengthF = lengthF();
        if (lengthF <= 0.0f) {
            return j0(0, 0);
        }
        this.f79900b = Math.round(this.f79900b / lengthF);
        this.f79901c = Math.round(this.f79901c / lengthF);
        return this;
    }

    public g a0(int a10) {
        return b0(a10, a10);
    }

    public g b0(int x10, int y10) {
        return new g(this.f79900b - x10, this.f79901c - y10);
    }

    public g c0(g other) {
        return other == null ? p() : new g(this.f79900b - other.f79900b, this.f79901c - other.f79901c);
    }

    public g d(int a10) {
        return e(a10, a10);
    }

    public g d0(float a10) {
        return e0(a10, a10);
    }

    public g e(int x10, int y10) {
        return new g(this.f79900b + x10, this.f79901c + y10);
    }

    public g e0(float x10, float y10) {
        this.f79900b = Math.round(this.f79900b - x10);
        this.f79901c = Math.round(this.f79901c - y10);
        return this;
    }

    public g f(g other) {
        return other == null ? p() : new g(this.f79900b + other.f79900b, this.f79901c + other.f79901c);
    }

    public g f0(g other) {
        if (other == null) {
            return this;
        }
        this.f79900b -= other.f79900b;
        this.f79901c -= other.f79901c;
        return this;
    }

    public g g0(Vector2 other) {
        return other == null ? this : e0(other.getX(), other.getY());
    }

    public g h(float a10) {
        return i(a10, a10);
    }

    public g i(float x10, float y10) {
        this.f79900b = Math.round(this.f79900b + x10);
        this.f79901c = Math.round(this.f79901c + y10);
        return this;
    }

    public g i0(int a10) {
        return j0(a10, a10);
    }

    public g j(g other) {
        if (other == null) {
            return this;
        }
        this.f79900b += other.f79900b;
        this.f79901c += other.f79901c;
        return this;
    }

    public g j0(int x10, int y10) {
        this.f79900b = x10;
        this.f79901c = y10;
        return this;
    }

    public g k(Vector2 other) {
        return other == null ? this : i(other.getX(), other.getY());
    }

    public g k0(g other) {
        return other == null ? j0(0, 0) : j0(other.f79900b, other.f79901c);
    }

    public g l(float a10, float blend) {
        return m(a10, a10, blend);
    }

    public g l0(Vector2 other) {
        return other == null ? j0(0, 0) : j0(Math.round(other.getX()), Math.round(other.getY()));
    }

    public float lengthF() {
        return (float) Math.sqrt(sqrtLength());
    }

    public g m(float x10, float y10, float blend) {
        this.f79900b = Math.round(Nc.b.z(this.f79900b, x10, blend));
        this.f79901c = Math.round(Nc.b.z(this.f79901c, y10, blend));
        return this;
    }

    public void m0(Point2 run) {
        this.f79902d = run;
    }

    public g n(g other, float blend) {
        return other == null ? this : m(other.f79900b, other.f79901c, blend);
    }

    public int n0(int x10) {
        this.f79900b = x10;
        return x10;
    }

    public g clone() {
        return new g(this.f79900b, this.f79901c);
    }

    public int o0(int y10) {
        this.f79901c = y10;
        return y10;
    }

    public g p() {
        return clone();
    }

    public float p0(g other) {
        return other == null ? sqrtLength() : c0(other).sqrtLength();
    }

    public Vector3 q(int x10, int y10) {
        return new Vector3(0.0f, 0.0f, (this.f79900b * y10) - (this.f79901c * x10));
    }

    public Point2 q0() {
        if (this.f79902d == null) {
            this.f79902d = new Point2(this);
        }
        return this.f79902d;
    }

    public Vector3 r(g other) {
        return other == null ? new Vector3(0.0f, 0.0f, 0.0f) : q(other.f79900b, other.f79901c);
    }

    public float s(g other) {
        return other == null ? lengthF() : c0(other).lengthF();
    }

    public float sqrtLength() {
        int i10 = this.f79900b;
        float f10 = i10 * i10;
        int i11 = this.f79901c;
        return f10 + (i11 * i11);
    }

    public String toString() {
        return "(" + this.f79900b + DocLint.SEPARATOR + this.f79901c + ")";
    }

    public Vector2 toVector2() {
        return new Vector2(this.f79900b, this.f79901c);
    }

    public g u(int a10) {
        return v(a10, a10);
    }

    public g v(int x10, int y10) {
        return new g(h0(this.f79900b, x10), h0(this.f79901c, y10));
    }

    public g w(g other) {
        return other == null ? p() : new g(h0(this.f79900b, other.f79900b), h0(this.f79901c, other.f79901c));
    }

    public g x(float a10) {
        return y(a10, a10);
    }

    public g y(float x10, float y10) {
        this.f79900b = h0(this.f79900b, x10);
        this.f79901c = h0(this.f79901c, y10);
        return this;
    }

    public g z(g other) {
        if (other == null) {
            return this;
        }
        this.f79900b = h0(this.f79900b, other.f79900b);
        this.f79901c = h0(this.f79901c, other.f79901c);
        return this;
    }

    public g(int a10) {
        i0(a10);
    }

    public g(int x10, int y10) {
        j0(x10, y10);
    }

    public g(g other) {
        k0(other);
    }

    public g(Vector2 other) {
        if (other == null) {
            j0(0, 0);
        } else {
            j0(Math.round(other.getX()), Math.round(other.getY()));
        }
    }
}
