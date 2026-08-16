package cb;

import com.itsmagic.engine.Engines.Engine.NubsPathBezier.FromGDX.Matrix4;
import java.io.Serializable;

public class p implements Serializable {

    public static final long f34672f = -7661875440774897168L;

    public static p f34673g = new p(0.0f, 0.0f, 0.0f, 0.0f);

    public static p f34674h = new p(0.0f, 0.0f, 0.0f, 0.0f);

    public float f34675b;

    public float f34676c;

    public float f34677d;

    public float f34678e;

    public p(float x10, float y10, float z10, float w10) {
        N(x10, y10, z10, w10);
    }

    public static final float E(final float x10, final float y10, final float z10, final float w10) {
        return (float) Math.sqrt((x10 * x10) + (y10 * y10) + (z10 * z10) + (w10 * w10));
    }

    public static final float G(final float x10, final float y10, final float z10, final float w10) {
        return (x10 * x10) + (y10 * y10) + (z10 * z10) + (w10 * w10);
    }

    public static final float f(final float x12, final float y12, final float z12, final float w12, final float x22, final float y22, final float z22, final float w22) {
        return (x12 * x22) + (y12 * y22) + (z12 * z22) + (w12 * w22);
    }

    public p A() {
        return N(0.0f, 0.0f, 0.0f, 1.0f);
    }

    public boolean B() {
        return h.t(this.f34675b) && h.t(this.f34676c) && h.t(this.f34677d) && h.q(this.f34678e, 1.0f);
    }

    public boolean C(final float tolerance) {
        return h.u(this.f34675b, tolerance) && h.u(this.f34676c, tolerance) && h.u(this.f34677d, tolerance) && h.r(this.f34678e, 1.0f, tolerance);
    }

    public float D() {
        float f10 = this.f34675b;
        float f11 = this.f34676c;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f34677d;
        float f14 = f12 + (f13 * f13);
        float f15 = this.f34678e;
        return (float) Math.sqrt(f14 + (f15 * f15));
    }

    public float F() {
        float f10 = this.f34675b;
        float f11 = this.f34676c;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f34677d;
        float f14 = f12 + (f13 * f13);
        float f15 = this.f34678e;
        return f14 + (f15 * f15);
    }

    public p H(float scalar) {
        this.f34675b *= scalar;
        this.f34676c *= scalar;
        this.f34677d *= scalar;
        this.f34678e *= scalar;
        return this;
    }

    public p I(final float x10, final float y10, final float z10, final float w10) {
        float f10 = this.f34678e;
        float f11 = this.f34675b;
        float f12 = this.f34676c;
        float f13 = this.f34677d;
        this.f34675b = (((f10 * x10) + (f11 * w10)) + (f12 * z10)) - (f13 * y10);
        this.f34676c = (((f10 * y10) + (f12 * w10)) + (f13 * x10)) - (f11 * z10);
        this.f34677d = (((f10 * z10) + (f13 * w10)) + (f11 * y10)) - (f12 * x10);
        this.f34678e = (((f10 * w10) - (f11 * x10)) - (f12 * y10)) - (f13 * z10);
        return this;
    }

    public p J(final p other) {
        float f10 = this.f34678e;
        float f11 = other.f34675b;
        float f12 = this.f34675b;
        float f13 = other.f34678e;
        float f14 = this.f34676c;
        float f15 = other.f34677d;
        float f16 = this.f34677d;
        float f17 = other.f34676c;
        this.f34675b = (((f10 * f11) + (f12 * f13)) + (f14 * f15)) - (f16 * f17);
        this.f34676c = (((f10 * f17) + (f14 * f13)) + (f16 * f11)) - (f12 * f15);
        this.f34677d = (((f10 * f15) + (f16 * f13)) + (f12 * f17)) - (f14 * f11);
        this.f34678e = (((f10 * f13) - (f12 * f11)) - (f14 * f17)) - (f16 * f15);
        return this;
    }

    public p K(final float x10, final float y10, final float z10, final float w10) {
        float f10 = this.f34675b;
        float f11 = this.f34678e;
        float f12 = this.f34677d;
        float f13 = this.f34676c;
        this.f34675b = (((w10 * f10) + (x10 * f11)) + (y10 * f12)) - (z10 * f13);
        this.f34676c = (((w10 * f13) + (y10 * f11)) + (z10 * f10)) - (x10 * f12);
        this.f34677d = (((w10 * f12) + (z10 * f11)) + (x10 * f13)) - (y10 * f10);
        this.f34678e = (((w10 * f11) - (x10 * f10)) - (y10 * f13)) - (z10 * f12);
        return this;
    }

    public p L(p other) {
        float f10 = other.f34678e;
        float f11 = this.f34675b;
        float f12 = other.f34675b;
        float f13 = this.f34678e;
        float f14 = other.f34676c;
        float f15 = this.f34677d;
        float f16 = other.f34677d;
        float f17 = this.f34676c;
        this.f34675b = (((f10 * f11) + (f12 * f13)) + (f14 * f15)) - (f16 * f17);
        this.f34676c = (((f10 * f17) + (f14 * f13)) + (f16 * f11)) - (f12 * f15);
        this.f34677d = (((f10 * f15) + (f16 * f13)) + (f12 * f17)) - (f14 * f11);
        this.f34678e = (((f10 * f13) - (f12 * f11)) - (f14 * f17)) - (f16 * f15);
        return this;
    }

    public p M() {
        float F10 = F();
        if (F10 != 0.0f && !h.q(F10, 1.0f)) {
            float sqrt = (float) Math.sqrt(F10);
            this.f34678e /= sqrt;
            this.f34675b /= sqrt;
            this.f34676c /= sqrt;
            this.f34677d /= sqrt;
        }
        return this;
    }

    public p N(float x10, float y10, float z10, float w10) {
        this.f34675b = x10;
        this.f34676c = y10;
        this.f34677d = z10;
        this.f34678e = w10;
        return this;
    }

    public p O(p quaternion) {
        return N(quaternion.f34675b, quaternion.f34676c, quaternion.f34677d, quaternion.f34678e);
    }

    public p P(x axis, float angle) {
        return U(axis.f34718b, axis.f34719c, axis.f34720d, angle);
    }

    public p Q(float yaw, float pitch, float roll) {
        return R(yaw * 0.017453292f, pitch * 0.017453292f, roll * 0.017453292f);
    }

    public p R(float yaw, float pitch, float roll) {
        double d10 = roll * 0.5f;
        float sin = (float) Math.sin(d10);
        float cos = (float) Math.cos(d10);
        double d11 = pitch * 0.5f;
        float sin2 = (float) Math.sin(d11);
        float cos2 = (float) Math.cos(d11);
        double d12 = yaw * 0.5f;
        float sin3 = (float) Math.sin(d12);
        float cos3 = (float) Math.cos(d12);
        float f10 = cos3 * sin2;
        float f11 = sin3 * cos2;
        float f12 = cos3 * cos2;
        float f13 = sin3 * sin2;
        this.f34675b = (f10 * cos) + (f11 * sin);
        this.f34676c = (f11 * cos) - (f10 * sin);
        this.f34677d = (f12 * sin) - (f13 * cos);
        this.f34678e = (f12 * cos) + (f13 * sin);
        return this;
    }

    public p S(float xx, float xy, float xz, float yx, float yy, float yz, float zx, float zy, float zz) {
        return T(false, xx, xy, xz, yx, yy, yz, zx, zy, zz);
    }

    public p T(boolean normalizeAxes, float xx, float xy, float xz, float yx, float yy, float yz, float zx, float zy, float zz) {
        if (normalizeAxes) {
            float u02 = 1.0f / x.u0(xx, xy, xz);
            float u03 = 1.0f / x.u0(yx, yy, yz);
            float u04 = 1.0f / x.u0(zx, zy, zz);
            xx *= u02;
            xy *= u02;
            xz *= u02;
            yx *= u03;
            yy *= u03;
            yz *= u03;
            zx *= u04;
            zy *= u04;
            zz *= u04;
        }
        if (xx + yy + zz >= 0.0f) {
            float sqrt = (float) Math.sqrt(r6 + 1.0f);
            this.f34678e = sqrt * 0.5f;
            float f10 = 0.5f / sqrt;
            this.f34675b = (zy - yz) * f10;
            this.f34676c = (xz - zx) * f10;
            this.f34677d = (yx - xy) * f10;
        } else if (xx > yy && xx > zz) {
            float sqrt2 = (float) Math.sqrt(((xx + 1.0d) - yy) - zz);
            this.f34675b = sqrt2 * 0.5f;
            float f11 = 0.5f / sqrt2;
            this.f34676c = (yx + xy) * f11;
            this.f34677d = (xz + zx) * f11;
            this.f34678e = (zy - yz) * f11;
        } else if (yy > zz) {
            float sqrt3 = (float) Math.sqrt(((yy + 1.0d) - xx) - zz);
            this.f34676c = sqrt3 * 0.5f;
            float f12 = 0.5f / sqrt3;
            this.f34675b = (yx + xy) * f12;
            this.f34677d = (zy + yz) * f12;
            this.f34678e = (xz - zx) * f12;
        } else {
            float sqrt4 = (float) Math.sqrt(((zz + 1.0d) - xx) - yy);
            this.f34677d = sqrt4 * 0.5f;
            float f13 = 0.5f / sqrt4;
            this.f34675b = (xz + zx) * f13;
            this.f34676c = (zy + yz) * f13;
            this.f34678e = (yx - xy) * f13;
        }
        return this;
    }

    public p U(final float x10, final float y10, final float z10, final float degrees) {
        return W(x10, y10, z10, degrees * 0.017453292f);
    }

    public p V(final x axis, final float degrees) {
        return U(axis.f34718b, axis.f34719c, axis.f34720d, degrees);
    }

    public p W(final float x10, final float y10, final float z10, final float radians) {
        float u02 = x.u0(x10, y10, z10);
        if (u02 == 0.0f) {
            return A();
        }
        float f10 = 1.0f / u02;
        double d10 = (radians < 0.0f ? 6.2831855f - ((-radians) % 6.2831855f) : radians % 6.2831855f) / 2.0f;
        float sin = (float) Math.sin(d10);
        return N(x10 * f10 * sin, y10 * f10 * sin, f10 * z10 * sin, (float) Math.cos(d10)).M();
    }

    public p X(final x axis, final float radians) {
        return W(axis.f34718b, axis.f34719c, axis.f34720d, radians);
    }

    public p Y(final float x12, final float y12, final float z12, final float x22, final float y22, final float z22) {
        return W((y12 * z22) - (z12 * y22), (z12 * x22) - (z22 * x12), (x12 * y22) - (y12 * x22), (float) Math.acos(h.i(x.V(x12, y12, z12, x22, y22, z22), -1.0f, 1.0f)));
    }

    public p Z(final x v12, final x v22) {
        float acos = (float) Math.acos(h.i(v12.o(v22), -1.0f, 1.0f));
        float f10 = v12.f34719c;
        float f11 = v22.f34720d;
        float f12 = v12.f34720d;
        float f13 = v22.f34719c;
        float f14 = v22.f34718b;
        float f15 = v12.f34718b;
        return W((f10 * f11) - (f12 * f13), (f12 * f14) - (f11 * f15), (f15 * f13) - (f10 * f14), acos);
    }

    public p a(float qx, float qy, float qz, float qw) {
        this.f34675b += qx;
        this.f34676c += qy;
        this.f34677d += qz;
        this.f34678e += qw;
        return this;
    }

    public p a0(i matrix) {
        return c0(false, matrix);
    }

    public p b(p quaternion) {
        this.f34675b += quaternion.f34675b;
        this.f34676c += quaternion.f34676c;
        this.f34677d += quaternion.f34677d;
        this.f34678e += quaternion.f34678e;
        return this;
    }

    public p b0(Matrix4 matrix) {
        return d0(false, matrix);
    }

    public p c() {
        this.f34675b = -this.f34675b;
        this.f34676c = -this.f34676c;
        this.f34677d = -this.f34677d;
        return this;
    }

    public p c0(boolean normalizeAxes, i matrix) {
        float[] fArr = matrix.f34627b;
        return T(normalizeAxes, fArr[0], fArr[3], fArr[6], fArr[1], fArr[4], fArr[7], fArr[2], fArr[5], fArr[8]);
    }

    public p d() {
        return new p(this);
    }

    public p d0(boolean normalizeAxes, Matrix4 matrix) {
        float[] fArr = matrix.f79235b;
        return T(normalizeAxes, fArr[0], fArr[4], fArr[8], fArr[1], fArr[5], fArr[9], fArr[2], fArr[6], fArr[10]);
    }

    public float e(final float x10, final float y10, final float z10, final float w10) {
        return (this.f34675b * x10) + (this.f34676c * y10) + (this.f34677d * z10) + (this.f34678e * w10);
    }

    public p e0(p end, float alpha) {
        float f10 = (this.f34675b * end.f34675b) + (this.f34676c * end.f34676c) + (this.f34677d * end.f34677d) + (this.f34678e * end.f34678e);
        if (f10 < 0.0f) {
            f10 = -f10;
        }
        float f11 = 1.0f - alpha;
        if (1.0f - f10 > 0.1d) {
            float sin = 1.0f / ((float) Math.sin((float) Math.acos(f10)));
            f11 = ((float) Math.sin(f11 * r0)) * sin;
            alpha = ((float) Math.sin(alpha * r0)) * sin;
        }
        if (f10 < 0.0f) {
            alpha = -alpha;
        }
        this.f34675b = (this.f34675b * f11) + (end.f34675b * alpha);
        this.f34676c = (this.f34676c * f11) + (end.f34676c * alpha);
        this.f34677d = (this.f34677d * f11) + (end.f34677d * alpha);
        this.f34678e = (f11 * this.f34678e) + (alpha * end.f34678e);
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return k.d(this.f34678e) == k.d(pVar.f34678e) && k.d(this.f34675b) == k.d(pVar.f34675b) && k.d(this.f34676c) == k.d(pVar.f34676c) && k.d(this.f34677d) == k.d(pVar.f34677d);
    }

    public p f0(p[] q10) {
        float length = 1.0f / q10.length;
        O(q10[0]).h(length);
        for (int i10 = 1; i10 < q10.length; i10++) {
            J(f34673g.O(q10[i10]).h(length));
        }
        M();
        return this;
    }

    public float g(final p other) {
        return (this.f34675b * other.f34675b) + (this.f34676c * other.f34676c) + (this.f34677d * other.f34677d) + (this.f34678e * other.f34678e);
    }

    public p g0(p[] q10, float[] w10) {
        O(q10[0]).h(w10[0]);
        for (int i10 = 1; i10 < q10.length; i10++) {
            J(f34673g.O(q10[i10]).h(w10[i10]));
        }
        M();
        return this;
    }

    public p h(float alpha) {
        float D10 = D();
        double d10 = D10;
        float pow = (float) Math.pow(d10, alpha);
        float acos = (float) Math.acos(this.f34678e / D10);
        float sin = ((double) Math.abs(acos)) < 0.001d ? (pow * alpha) / D10 : (float) ((pow * Math.sin(alpha * acos)) / (d10 * Math.sin(acos)));
        this.f34678e = (float) (pow * Math.cos(alpha * acos));
        this.f34675b *= sin;
        this.f34676c *= sin;
        this.f34677d *= sin;
        M();
        return this;
    }

    public void h0(final float[] matrix) {
        float f10 = this.f34675b;
        float f11 = f10 * f10;
        float f12 = this.f34676c;
        float f13 = f10 * f12;
        float f14 = this.f34677d;
        float f15 = f10 * f14;
        float f16 = this.f34678e;
        float f17 = f10 * f16;
        float f18 = f12 * f12;
        float f19 = f12 * f14;
        float f20 = f12 * f16;
        float f21 = f14 * f14;
        float f22 = f14 * f16;
        matrix[0] = 1.0f - ((f18 + f21) * 2.0f);
        matrix[4] = (f13 - f22) * 2.0f;
        matrix[8] = (f15 + f20) * 2.0f;
        matrix[12] = 0.0f;
        matrix[1] = (f13 + f22) * 2.0f;
        matrix[5] = 1.0f - ((f21 + f11) * 2.0f);
        matrix[9] = (f19 - f17) * 2.0f;
        matrix[13] = 0.0f;
        matrix[2] = (f15 - f20) * 2.0f;
        matrix[6] = (f19 + f17) * 2.0f;
        matrix[10] = 1.0f - ((f11 + f18) * 2.0f);
        matrix[14] = 0.0f;
        matrix[3] = 0.0f;
        matrix[7] = 0.0f;
        matrix[11] = 0.0f;
        matrix[15] = 1.0f;
    }

    public int hashCode() {
        return ((((((k.d(this.f34678e) + 31) * 31) + k.d(this.f34675b)) * 31) + k.d(this.f34676c)) * 31) + k.d(this.f34677d);
    }

    public float i() {
        return n() * 57.295776f;
    }

    public x i0(x v10) {
        f34674h.O(this);
        f34674h.c();
        f34674h.L(f34673g.N(v10.f34718b, v10.f34719c, v10.f34720d, 0.0f)).L(this);
        p pVar = f34674h;
        v10.f34718b = pVar.f34675b;
        v10.f34719c = pVar.f34676c;
        v10.f34720d = pVar.f34677d;
        return v10;
    }

    public float j(final float axisX, final float axisY, final float axisZ) {
        return l(axisX, axisY, axisZ) * 57.295776f;
    }

    public float k(final x axis) {
        return j(axis.f34718b, axis.f34719c, axis.f34720d);
    }

    public float l(final float axisX, final float axisY, final float axisZ) {
        float V10 = x.V(this.f34675b, this.f34676c, this.f34677d, axisX, axisY, axisZ);
        if (h.t(G(axisX * V10, axisY * V10, axisZ * V10, this.f34678e))) {
            return 0.0f;
        }
        return (float) (Math.acos(h.i((float) ((V10 < 0.0f ? -this.f34678e : this.f34678e) / Math.sqrt(r7)), -1.0f, 1.0f)) * 2.0d);
    }

    public float m(final x axis) {
        return l(axis.f34718b, axis.f34719c, axis.f34720d);
    }

    public float n() {
        float f10 = this.f34678e;
        if (f10 > 1.0f) {
            f10 /= D();
        }
        return (float) (Math.acos(f10) * 2.0d);
    }

    public float o(x axis) {
        return p(axis) * 57.295776f;
    }

    public float p(x axis) {
        if (this.f34678e > 1.0f) {
            M();
        }
        float acos = (float) (Math.acos(this.f34678e) * 2.0d);
        float f10 = this.f34678e;
        double sqrt = Math.sqrt(1.0f - (f10 * f10));
        if (sqrt < 9.999999974752427E-7d) {
            axis.f34718b = this.f34675b;
            axis.f34719c = this.f34676c;
            axis.f34720d = this.f34677d;
        } else {
            axis.f34718b = (float) (this.f34675b / sqrt);
            axis.f34719c = (float) (this.f34676c / sqrt);
            axis.f34720d = (float) (this.f34677d / sqrt);
        }
        return acos;
    }

    public int q() {
        float f10 = (this.f34676c * this.f34675b) + (this.f34677d * this.f34678e);
        if (f10 > 0.499f) {
            return 1;
        }
        return f10 < -0.499f ? -1 : 0;
    }

    public float r() {
        return s() * 57.295776f;
    }

    public float s() {
        int q10 = q();
        return q10 == 0 ? (float) Math.asin(h.i(((this.f34678e * this.f34675b) - (this.f34677d * this.f34676c)) * 2.0f, -1.0f, 1.0f)) : q10 * 3.1415927f * 0.5f;
    }

    public String toString() {
        return "[" + this.f34675b + "|" + this.f34676c + "|" + this.f34677d + "|" + this.f34678e + "]";
    }

    public float u() {
        return v() * 57.295776f;
    }

    public float v() {
        int q10 = q();
        if (q10 != 0) {
            return q10 * 2.0f * h.d(this.f34676c, this.f34678e);
        }
        float f10 = this.f34678e;
        float f11 = this.f34677d;
        float f12 = this.f34676c;
        float f13 = this.f34675b;
        return h.d(((f10 * f11) + (f12 * f13)) * 2.0f, 1.0f - (((f13 * f13) + (f11 * f11)) * 2.0f));
    }

    public void w(final float axisX, final float axisY, final float axisZ, final p swing, final p twist) {
        float V10 = x.V(this.f34675b, this.f34676c, this.f34677d, axisX, axisY, axisZ);
        twist.N(axisX * V10, axisY * V10, axisZ * V10, this.f34678e).M();
        if (V10 < 0.0f) {
            twist.H(-1.0f);
        }
        swing.O(twist).c().L(this);
    }

    public void x(final x axis, final p swing, final p twist) {
        w(axis.f34718b, axis.f34719c, axis.f34720d, swing, twist);
    }

    public float y() {
        return z() * 57.295776f;
    }

    public float z() {
        if (q() != 0) {
            return 0.0f;
        }
        float f10 = this.f34676c;
        float f11 = this.f34678e * f10;
        float f12 = this.f34675b;
        return h.d((f11 + (this.f34677d * f12)) * 2.0f, 1.0f - (((f10 * f10) + (f12 * f12)) * 2.0f));
    }

    public p() {
        A();
    }

    public p(p quaternion) {
        O(quaternion);
    }

    public p(x axis, float angle) {
        P(axis, angle);
    }
}
