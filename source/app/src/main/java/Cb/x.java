package cb;

import com.itsmagic.engine.Engines.Engine.NubsPathBezier.FromGDX.GdxRuntimeException;
import com.itsmagic.engine.Engines.Engine.NubsPathBezier.FromGDX.Matrix4;
import java.io.Serializable;
import org.openjdk.tools.doclint.DocLint;

public class x implements Serializable, y<x> {

    public static final long f34712e = 3840054589595372522L;

    public static final x f34713f = new x(1.0f, 0.0f, 0.0f);

    public static final x f34714g = new x(0.0f, 1.0f, 0.0f);

    public static final x f34715h = new x(0.0f, 0.0f, 1.0f);

    public static final x f34716i = new x(0.0f, 0.0f, 0.0f);

    public static final Matrix4 f34717j = new Matrix4();

    public float f34718b;

    public float f34719c;

    public float f34720d;

    public x() {
    }

    public static float V(float x12, float y12, float z12, float x22, float y22, float z22) {
        return (x12 * x22) + (y12 * y22) + (z12 * z22);
    }

    public static float Y(final float x12, final float y12, final float z12, final float x22, final float y22, final float z22) {
        float f10 = x22 - x12;
        float f11 = y22 - y12;
        float f12 = z22 - z12;
        return (float) Math.sqrt((f10 * f10) + (f11 * f11) + (f12 * f12));
    }

    public static float b0(final float x12, final float y12, final float z12, final float x22, final float y22, final float z22) {
        float f10 = x22 - x12;
        float f11 = y22 - y12;
        float f12 = z22 - z12;
        return (f10 * f10) + (f11 * f11) + (f12 * f12);
    }

    public static float u0(final float x10, final float y10, final float z10) {
        return (float) Math.sqrt((x10 * x10) + (y10 * y10) + (z10 * z10));
    }

    public static float v0(final float x10, final float y10, final float z10) {
        return (x10 * x10) + (y10 * y10) + (z10 * z10);
    }

    public x B0(final p quat) {
        return quat.i0(this);
    }

    @Override
    public boolean C() {
        return F(1.0E-9f);
    }

    public x C0(final Matrix4 matrix) {
        float[] fArr = matrix.f79235b;
        float f10 = this.f34718b;
        float f11 = fArr[0] * f10;
        float f12 = this.f34719c;
        float f13 = f11 + (fArr[4] * f12);
        float f14 = this.f34720d;
        return Q0(f13 + (fArr[8] * f14) + fArr[12], (fArr[1] * f10) + (fArr[5] * f12) + (fArr[9] * f14) + fArr[13], (f10 * fArr[2]) + (f12 * fArr[6]) + (f14 * fArr[10]) + fArr[14]);
    }

    public x D0(float[] matrix) {
        float f10 = this.f34718b;
        float f11 = matrix[0] * f10;
        float f12 = this.f34719c;
        float f13 = f11 + (matrix[3] * f12);
        float f14 = this.f34720d;
        return Q0(f13 + (matrix[6] * f14) + matrix[9], (matrix[1] * f10) + (matrix[4] * f12) + (matrix[7] * f14) + matrix[10], (f10 * matrix[2]) + (f12 * matrix[5]) + (f14 * matrix[8]) + matrix[11]);
    }

    @Override
    public x i(x vec, float scalar) {
        this.f34718b += vec.f34718b * scalar;
        this.f34719c += vec.f34719c * scalar;
        this.f34720d += vec.f34720d * scalar;
        return this;
    }

    @Override
    public boolean F(final float margin) {
        return Math.abs(x() - 1.0f) < margin;
    }

    @Override
    public x M(x vec, x mulVec) {
        this.f34718b += vec.f34718b * mulVec.f34718b;
        this.f34719c += vec.f34719c * mulVec.f34719c;
        this.f34720d += vec.f34720d * mulVec.f34720d;
        return this;
    }

    @Override
    public x h() {
        float x10 = x();
        return (x10 == 0.0f || x10 == 1.0f) ? this : d(1.0f / ((float) Math.sqrt(x10)));
    }

    public x H0(final Matrix4 matrix) {
        float[] fArr = matrix.f79235b;
        float f10 = this.f34718b;
        float f11 = fArr[3] * f10;
        float f12 = this.f34719c;
        float f13 = f11 + (fArr[7] * f12);
        float f14 = this.f34720d;
        float f15 = 1.0f / ((f13 + (fArr[11] * f14)) + fArr[15]);
        return Q0(((fArr[0] * f10) + (fArr[4] * f12) + (fArr[8] * f14) + fArr[12]) * f15, ((fArr[1] * f10) + (fArr[5] * f12) + (fArr[9] * f14) + fArr[13]) * f15, ((f10 * fArr[2]) + (f12 * fArr[6]) + (f14 * fArr[10]) + fArr[14]) * f15);
    }

    public x I0(final Matrix4 matrix) {
        float[] fArr = matrix.f79235b;
        float f10 = this.f34718b;
        float f11 = fArr[0] * f10;
        float f12 = this.f34719c;
        float f13 = f11 + (fArr[4] * f12);
        float f14 = this.f34720d;
        return Q0(f13 + (fArr[8] * f14), (fArr[1] * f10) + (fArr[5] * f12) + (fArr[9] * f14), (f10 * fArr[2]) + (f12 * fArr[6]) + (f14 * fArr[10]));
    }

    @Override
    public boolean J(final float margin) {
        return x() < margin;
    }

    public x J0(float degrees, float axisX, float axisY, float axisZ) {
        return C0(f34717j.n0(axisX, axisY, axisZ, degrees));
    }

    public x K0(final x axis, float degrees) {
        Matrix4 matrix4 = f34717j;
        matrix4.p0(axis, degrees);
        return C0(matrix4);
    }

    public x L0(float radians, float axisX, float axisY, float axisZ) {
        return C0(f34717j.r0(axisX, axisY, axisZ, radians));
    }

    public x M0(final x axis, float radians) {
        Matrix4 matrix4 = f34717j;
        matrix4.s0(axis, radians);
        return C0(matrix4);
    }

    public x N(float values) {
        return Q0(this.f34718b + values, this.f34719c + values, this.f34720d + values);
    }

    @Override
    public x d(float scalar) {
        return Q0(this.f34718b * scalar, this.f34719c * scalar, this.f34720d * scalar);
    }

    public x O(float x10, float y10, float z10) {
        return Q0(this.f34718b + x10, this.f34719c + y10, this.f34720d + z10);
    }

    public x O0(float vx, float vy, float vz) {
        return Q0(this.f34718b * vx, this.f34719c * vy, this.f34720d * vz);
    }

    @Override
    public x m(final x vector) {
        return O(vector.f34718b, vector.f34719c, vector.f34720d);
    }

    @Override
    public x G(final x other) {
        return Q0(this.f34718b * other.f34718b, this.f34719c * other.f34719c, this.f34720d * other.f34720d);
    }

    @Override
    public x p(float min, float max) {
        float x10 = x();
        if (x10 == 0.0f) {
            return this;
        }
        if (x10 > max * max) {
            return d((float) Math.sqrt(r4 / x10));
        }
        return x10 < min * min ? d((float) Math.sqrt(r3 / x10)) : this;
    }

    public x Q0(float x10, float y10, float z10) {
        this.f34718b = x10;
        this.f34719c = y10;
        this.f34720d = z10;
        return this;
    }

    @Override
    public x n() {
        return new x(this);
    }

    public x R0(final w vector, float z10) {
        return Q0(vector.f34710b, vector.f34711c, z10);
    }

    public x S(float x10, float y10, float z10) {
        float f10 = this.f34719c;
        float f11 = this.f34720d;
        float f12 = (f10 * z10) - (f11 * y10);
        float f13 = this.f34718b;
        return Q0(f12, (f11 * x10) - (z10 * f13), (f13 * y10) - (f10 * x10));
    }

    public x T(final x vector) {
        float f10 = this.f34719c;
        float f11 = vector.f34720d;
        float f12 = this.f34720d;
        float f13 = vector.f34719c;
        float f14 = (f10 * f11) - (f12 * f13);
        float f15 = vector.f34718b;
        float f16 = this.f34718b;
        return Q0(f14, (f12 * f15) - (f11 * f16), (f16 * f13) - (f10 * f15));
    }

    public float U(float x10, float y10, float z10) {
        return (this.f34718b * x10) + (this.f34719c * y10) + (this.f34720d * z10);
    }

    @Override
    public x K(final x vector) {
        return Q0(vector.f34718b, vector.f34719c, vector.f34720d);
    }

    public x V0(final float[] values) {
        return Q0(values[0], values[1], values[2]);
    }

    @Override
    public float o(final x vector) {
        return (this.f34718b * vector.f34718b) + (this.f34719c * vector.f34719c) + (this.f34720d * vector.f34720d);
    }

    public x W0(float azimuthalAngle, float polarAngle) {
        float m10 = h.m(polarAngle);
        float T10 = h.T(polarAngle);
        return Q0(h.m(azimuthalAngle) * T10, h.T(azimuthalAngle) * T10, m10);
    }

    public float X(float x10, float y10, float z10) {
        float f10 = x10 - this.f34718b;
        float f11 = y10 - this.f34719c;
        float f12 = z10 - this.f34720d;
        return (float) Math.sqrt((f10 * f10) + (f11 * f11) + (f12 * f12));
    }

    @Override
    public x b(float len) {
        return y(len * len);
    }

    @Override
    public x y(float len2) {
        float x10 = x();
        return (x10 == 0.0f || x10 == len2) ? this : d((float) Math.sqrt(len2 / x10));
    }

    @Override
    public float L(final x vector) {
        float f10 = vector.f34718b - this.f34718b;
        float f11 = vector.f34719c - this.f34719c;
        float f12 = vector.f34720d - this.f34720d;
        return (float) Math.sqrt((f10 * f10) + (f11 * f11) + (f12 * f12));
    }

    @Override
    public x f() {
        return W0(h.D() * 6.2831855f, (float) Math.acos((h.D() * 2.0f) - 1.0f));
    }

    @Override
    public boolean a() {
        return this.f34718b == 0.0f && this.f34719c == 0.0f && this.f34720d == 0.0f;
    }

    public float a0(float x10, float y10, float z10) {
        float f10 = x10 - this.f34718b;
        float f11 = y10 - this.f34719c;
        float f12 = z10 - this.f34720d;
        return (f10 * f10) + (f11 * f11) + (f12 * f12);
    }

    @Override
    public x A() {
        this.f34718b = 0.0f;
        this.f34719c = 0.0f;
        this.f34720d = 0.0f;
        return this;
    }

    public x b1(final x target, float alpha) {
        float o10 = o(target);
        double d10 = o10;
        if (d10 > 0.9995d || d10 < -0.9995d) {
            return s(target, alpha);
        }
        double acos = ((float) Math.acos(d10)) * alpha;
        float sin = (float) Math.sin(acos);
        float f10 = target.f34718b - (this.f34718b * o10);
        float f11 = target.f34719c - (this.f34719c * o10);
        float f12 = target.f34720d - (this.f34720d * o10);
        float f13 = (f10 * f10) + (f11 * f11) + (f12 * f12);
        float sqrt = sin * (f13 >= 1.0E-4f ? 1.0f / ((float) Math.sqrt(f13)) : 1.0f);
        return d((float) Math.cos(acos)).O(f10 * sqrt, f11 * sqrt, f12 * sqrt).h();
    }

    @Override
    public float q(x point) {
        float f10 = point.f34718b - this.f34718b;
        float f11 = point.f34719c - this.f34719c;
        float f12 = point.f34720d - this.f34720d;
        return (f10 * f10) + (f11 * f11) + (f12 * f12);
    }

    public x c1(float value) {
        return Q0(this.f34718b - value, this.f34719c - value, this.f34720d - value);
    }

    public boolean d0(float x10, float y10, float z10) {
        return e0(x10, y10, z10, 1.0E-6f);
    }

    public x d1(float x10, float y10, float z10) {
        return Q0(this.f34718b - x10, this.f34719c - y10, this.f34720d - z10);
    }

    public boolean e0(float x10, float y10, float z10, float epsilon) {
        return Math.abs(x10 - this.f34718b) <= epsilon && Math.abs(y10 - this.f34719c) <= epsilon && Math.abs(z10 - this.f34720d) <= epsilon;
    }

    @Override
    public x e(final x a_vec) {
        return d1(a_vec.f34718b, a_vec.f34719c, a_vec.f34720d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        x xVar = (x) obj;
        return k.b(this.f34718b) == k.b(xVar.f34718b) && k.b(this.f34719c) == k.b(xVar.f34719c) && k.b(this.f34720d) == k.b(xVar.f34720d);
    }

    public boolean f0(final x other) {
        return w(other, 1.0E-6f);
    }

    public x f1(i matrix) {
        float[] fArr = matrix.f34627b;
        float f10 = this.f34718b;
        float f11 = fArr[0] * f10;
        float f12 = this.f34719c;
        float f13 = f11 + (fArr[1] * f12);
        float f14 = this.f34720d;
        return Q0(f13 + (fArr[2] * f14), (fArr[3] * f10) + (fArr[4] * f12) + (fArr[5] * f14), (f10 * fArr[6]) + (f12 * fArr[7]) + (f14 * fArr[8]));
    }

    @Override
    public boolean w(final x other, float epsilon) {
        return other != null && Math.abs(other.f34718b - this.f34718b) <= epsilon && Math.abs(other.f34719c - this.f34719c) <= epsilon && Math.abs(other.f34720d - this.f34720d) <= epsilon;
    }

    public x g1(final Matrix4 matrix) {
        float[] fArr = matrix.f79235b;
        float f10 = this.f34718b;
        float f11 = fArr[0] * f10;
        float f12 = this.f34719c;
        float f13 = f11 + (fArr[1] * f12);
        float f14 = this.f34720d;
        return Q0(f13 + (fArr[2] * f14) + fArr[3], (fArr[4] * f10) + (fArr[5] * f12) + (fArr[6] * f14) + fArr[7], (f10 * fArr[8]) + (f12 * fArr[9]) + (f14 * fArr[10]) + fArr[11]);
    }

    public x h0(String v10) {
        int indexOf = v10.indexOf(44, 1);
        int i10 = indexOf + 1;
        int indexOf2 = v10.indexOf(44, i10);
        if (indexOf != -1 && indexOf2 != -1 && v10.charAt(0) == '(' && v10.charAt(v10.length() - 1) == ')') {
            try {
                return Q0(Float.parseFloat(v10.substring(1, indexOf)), Float.parseFloat(v10.substring(i10, indexOf2)), Float.parseFloat(v10.substring(indexOf2 + 1, v10.length() - 1)));
            } catch (NumberFormatException unused) {
            }
        }
        throw new GdxRuntimeException("Malformed Vector3: " + v10);
    }

    public x h1(final Matrix4 matrix) {
        float[] fArr = matrix.f79235b;
        float f10 = this.f34718b;
        float f11 = fArr[0] * f10;
        float f12 = this.f34719c;
        float f13 = f11 + (fArr[1] * f12);
        float f14 = this.f34720d;
        return Q0(f13 + (fArr[2] * f14), (fArr[4] * f10) + (fArr[5] * f12) + (fArr[6] * f14), (f10 * fArr[8]) + (f12 * fArr[9]) + (f14 * fArr[10]));
    }

    public int hashCode() {
        return ((((k.b(this.f34718b) + 31) * 31) + k.b(this.f34719c)) * 31) + k.b(this.f34720d);
    }

    @Override
    public boolean E(x vector) {
        return o(vector) < 0.0f;
    }

    public x i1(final Matrix4 matrix) {
        float[] fArr = matrix.f79235b;
        float f10 = this.f34718b;
        float f11 = fArr[12];
        float f12 = f10 - f11;
        this.f34718b = f12;
        float f13 = this.f34719c - f11;
        this.f34719c = f13;
        float f14 = this.f34720d - f11;
        this.f34720d = f14;
        return Q0((fArr[0] * f12) + (fArr[1] * f13) + (fArr[2] * f14), (fArr[4] * f12) + (fArr[5] * f13) + (fArr[6] * f14), (f12 * fArr[8]) + (f13 * fArr[9]) + (f14 * fArr[10]));
    }

    @Override
    public boolean D(x vector) {
        return o(vector) > 0.0f;
    }

    public boolean k0(final x vector) {
        return this.f34718b == vector.f34718b && this.f34719c == vector.f34719c && this.f34720d == vector.f34720d;
    }

    @Override
    public x z(x target, float alpha, g interpolator) {
        return s(target, interpolator.b(0.0f, 1.0f, alpha));
    }

    @Override
    public boolean k(x other) {
        return j(other) && D(other);
    }

    @Override
    public boolean r(x other, float epsilon) {
        return B(other, epsilon) && D(other);
    }

    @Override
    public boolean c(x other) {
        return j(other) && E(other);
    }

    @Override
    public boolean l(x other, float epsilon) {
        return B(other, epsilon) && E(other);
    }

    @Override
    public boolean j(x other) {
        float f10 = this.f34719c;
        float f11 = other.f34720d;
        float f12 = this.f34720d;
        float f13 = other.f34719c;
        float f14 = (f10 * f11) - (f12 * f13);
        float f15 = other.f34718b;
        float f16 = this.f34718b;
        return v0(f14, (f12 * f15) - (f11 * f16), (f16 * f13) - (f10 * f15)) <= 1.0E-6f;
    }

    @Override
    public boolean B(x other, float epsilon) {
        float f10 = this.f34719c;
        float f11 = other.f34720d;
        float f12 = this.f34720d;
        float f13 = other.f34719c;
        float f14 = (f10 * f11) - (f12 * f13);
        float f15 = other.f34718b;
        float f16 = this.f34718b;
        return v0(f14, (f12 * f15) - (f11 * f16), (f16 * f13) - (f10 * f15)) <= epsilon;
    }

    @Override
    public boolean H(x vector) {
        return h.t(o(vector));
    }

    @Override
    public boolean g(x vector, float epsilon) {
        return h.u(o(vector), epsilon);
    }

    public String toString() {
        return "(" + this.f34718b + DocLint.SEPARATOR + this.f34719c + DocLint.SEPARATOR + this.f34720d + ")";
    }

    @Override
    public float v() {
        float f10 = this.f34718b;
        float f11 = this.f34719c;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f34720d;
        return (float) Math.sqrt(f12 + (f13 * f13));
    }

    @Override
    public x s(final x target, float alpha) {
        float f10 = this.f34718b;
        this.f34718b = f10 + ((target.f34718b - f10) * alpha);
        float f11 = this.f34719c;
        this.f34719c = f11 + ((target.f34719c - f11) * alpha);
        float f12 = this.f34720d;
        this.f34720d = f12 + (alpha * (target.f34720d - f12));
        return this;
    }

    @Override
    public float x() {
        float f10 = this.f34718b;
        float f11 = this.f34719c;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f34720d;
        return f12 + (f13 * f13);
    }

    @Override
    public x I(float limit) {
        return u(limit * limit);
    }

    @Override
    public x u(float limit2) {
        if (x() > limit2) {
            d((float) Math.sqrt(limit2 / r0));
        }
        return this;
    }

    public x z0(i matrix) {
        float[] fArr = matrix.f34627b;
        float f10 = this.f34718b;
        float f11 = fArr[0] * f10;
        float f12 = this.f34719c;
        float f13 = f11 + (fArr[3] * f12);
        float f14 = this.f34720d;
        return Q0(f13 + (fArr[6] * f14), (fArr[1] * f10) + (fArr[4] * f12) + (fArr[7] * f14), (f10 * fArr[2]) + (f12 * fArr[5]) + (f14 * fArr[8]));
    }

    public x(float x10, float y10, float z10) {
        Q0(x10, y10, z10);
    }

    public x(final x vector) {
        K(vector);
    }

    public x(final float[] values) {
        Q0(values[0], values[1], values[2]);
    }

    public x(final w vector, float z10) {
        Q0(vector.f34710b, vector.f34711c, z10);
    }
}
