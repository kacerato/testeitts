package cb;

import com.itsmagic.engine.Engines.Engine.NubsPathBezier.FromGDX.GdxRuntimeException;
import java.io.Serializable;
import org.openjdk.tools.doclint.DocLint;

public class w implements Serializable, y<w> {

    public static final long f34706d = 913902788239530931L;

    public static final w f34707e = new w(1.0f, 0.0f);

    public static final w f34708f = new w(0.0f, 1.0f);

    public static final w f34709g = new w(0.0f, 0.0f);

    public float f34710b;

    public float f34711c;

    public w() {
    }

    public static float a0(float x12, float y12, float x22, float y22) {
        return (x12 * x22) + (y12 * y22);
    }

    public static float d0(float x12, float y12, float x22, float y22) {
        float f10 = x22 - x12;
        float f11 = y22 - y12;
        return (float) Math.sqrt((f10 * f10) + (f11 * f11));
    }

    public static float g0(float x12, float y12, float x22, float y22) {
        float f10 = x22 - x12;
        float f11 = y22 - y12;
        return (f10 * f10) + (f11 * f11);
    }

    public static float y0(float x10, float y10) {
        return (float) Math.sqrt((x10 * x10) + (y10 * y10));
    }

    public static float z0(float x10, float y10) {
        return (x10 * x10) + (y10 * y10);
    }

    @Override
    public w s(w target, float alpha) {
        float f10 = 1.0f - alpha;
        this.f34710b = (this.f34710b * f10) + (target.f34710b * alpha);
        this.f34711c = (this.f34711c * f10) + (target.f34711c * alpha);
        return this;
    }

    @Override
    public boolean C() {
        return F(1.0E-9f);
    }

    @Override
    public w I(float limit) {
        return u(limit * limit);
    }

    @Override
    public w u(float limit2) {
        return x() > limit2 ? d((float) Math.sqrt(limit2 / r0)) : this;
    }

    public w E0(i mat) {
        float f10 = this.f34710b;
        float[] fArr = mat.f34627b;
        float f11 = fArr[0] * f10;
        float f12 = this.f34711c;
        float f13 = f11 + (fArr[3] * f12) + fArr[6];
        float f14 = (f10 * fArr[1]) + (f12 * fArr[4]) + fArr[7];
        this.f34710b = f13;
        this.f34711c = f14;
        return this;
    }

    @Override
    public boolean F(final float margin) {
        return Math.abs(x() - 1.0f) < margin;
    }

    @Override
    public w i(w vec, float scalar) {
        this.f34710b += vec.f34710b * scalar;
        this.f34711c += vec.f34711c * scalar;
        return this;
    }

    @Override
    public w M(w vec, w mulVec) {
        this.f34710b += vec.f34710b * mulVec.f34710b;
        this.f34711c += vec.f34711c * mulVec.f34711c;
        return this;
    }

    @Override
    public w h() {
        float v10 = v();
        if (v10 != 0.0f) {
            this.f34710b /= v10;
            this.f34711c /= v10;
        }
        return this;
    }

    @Deprecated
    public w I0(float degrees) {
        return O0(degrees * 0.017453292f);
    }

    @Override
    public boolean J(final float margin) {
        return x() < margin;
    }

    public w J0(int dir) {
        float f10 = this.f34710b;
        if (dir >= 0) {
            this.f34710b = -this.f34711c;
            this.f34711c = f10;
        } else {
            this.f34710b = this.f34711c;
            this.f34711c = -f10;
        }
        return this;
    }

    @Deprecated
    public w K0(w reference, float degrees) {
        return e(reference).N0(degrees).m(reference);
    }

    public w L0(w reference, float degrees) {
        return e(reference).N0(degrees).m(reference);
    }

    public w M0(w reference, float radians) {
        return e(reference).O0(radians).m(reference);
    }

    public w N(float x10, float y10) {
        this.f34710b += x10;
        this.f34711c += y10;
        return this;
    }

    public w N0(float degrees) {
        return O0(degrees * 0.017453292f);
    }

    @Override
    public w m(w v10) {
        this.f34710b += v10.f34710b;
        this.f34711c += v10.f34711c;
        return this;
    }

    public w O0(float radians) {
        double d10 = radians;
        float cos = (float) Math.cos(d10);
        float sin = (float) Math.sin(d10);
        float f10 = this.f34710b;
        float f11 = this.f34711c;
        this.f34710b = (f10 * cos) - (f11 * sin);
        this.f34711c = (f10 * sin) + (f11 * cos);
        return this;
    }

    @Deprecated
    public float P() {
        float atan2 = ((float) Math.atan2(this.f34711c, this.f34710b)) * 57.295776f;
        return atan2 < 0.0f ? atan2 + 360.0f : atan2;
    }

    @Override
    public w d(float scalar) {
        this.f34710b *= scalar;
        this.f34711c *= scalar;
        return this;
    }

    @Deprecated
    public float Q(w reference) {
        return ((float) Math.atan2(Y(reference), o(reference))) * 57.295776f;
    }

    public w Q0(float x10, float y10) {
        this.f34710b *= x10;
        this.f34711c *= y10;
        return this;
    }

    public float R() {
        float atan2 = ((float) Math.atan2(this.f34711c, this.f34710b)) * 57.295776f;
        return atan2 < 0.0f ? atan2 + 360.0f : atan2;
    }

    @Override
    public w G(w v10) {
        this.f34710b *= v10.f34710b;
        this.f34711c *= v10.f34711c;
        return this;
    }

    public float S(w reference) {
        float atan2 = ((float) Math.atan2(reference.Y(this), reference.o(this))) * 57.295776f;
        return atan2 < 0.0f ? atan2 + 360.0f : atan2;
    }

    public float T() {
        return (float) Math.atan2(this.f34711c, this.f34710b);
    }

    public float U(w reference) {
        return (float) Math.atan2(reference.Y(this), reference.o(this));
    }

    public w U0(float x10, float y10) {
        this.f34710b = x10;
        this.f34711c = y10;
        return this;
    }

    @Override
    public w p(float min, float max) {
        float x10 = x();
        if (x10 == 0.0f) {
            return this;
        }
        if (x10 > max * max) {
            return d((float) Math.sqrt(r4 / x10));
        }
        return x10 < min * min ? d((float) Math.sqrt(r3 / x10)) : this;
    }

    @Override
    public w K(w v10) {
        this.f34710b = v10.f34710b;
        this.f34711c = v10.f34711c;
        return this;
    }

    @Override
    public w n() {
        return new w(this);
    }

    @Deprecated
    public w W0(float degrees) {
        return Y0(degrees * 0.017453292f);
    }

    public float X(float x10, float y10) {
        return (this.f34710b * y10) - (this.f34711c * x10);
    }

    public w X0(float degrees) {
        return Y0(degrees * 0.017453292f);
    }

    public float Y(w v10) {
        return (this.f34710b * v10.f34711c) - (this.f34711c * v10.f34710b);
    }

    public w Y0(float radians) {
        U0(v(), 0.0f);
        O0(radians);
        return this;
    }

    public float Z(float ox, float oy) {
        return (this.f34710b * ox) + (this.f34711c * oy);
    }

    @Override
    public w b(float len) {
        return y(len * len);
    }

    @Override
    public boolean a() {
        return this.f34710b == 0.0f && this.f34711c == 0.0f;
    }

    @Override
    public w y(float len2) {
        float x10 = x();
        return (x10 == 0.0f || x10 == len2) ? this : d((float) Math.sqrt(len2 / x10));
    }

    @Override
    public float o(w v10) {
        return (this.f34710b * v10.f34710b) + (this.f34711c * v10.f34711c);
    }

    @Override
    public w f() {
        float F10 = h.F(0.0f, 6.2831855f);
        return U0(h.m(F10), h.T(F10));
    }

    public float c0(float x10, float y10) {
        float f10 = x10 - this.f34710b;
        float f11 = y10 - this.f34711c;
        return (float) Math.sqrt((f10 * f10) + (f11 * f11));
    }

    @Override
    public w A() {
        this.f34710b = 0.0f;
        this.f34711c = 0.0f;
        return this;
    }

    public w d1(float x10, float y10) {
        this.f34710b -= x10;
        this.f34711c -= y10;
        return this;
    }

    @Override
    public float L(w v10) {
        float f10 = v10.f34710b - this.f34710b;
        float f11 = v10.f34711c - this.f34711c;
        return (float) Math.sqrt((f10 * f10) + (f11 * f11));
    }

    @Override
    public w e(w v10) {
        this.f34710b -= v10.f34710b;
        this.f34711c -= v10.f34711c;
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        w wVar = (w) obj;
        return k.b(this.f34710b) == k.b(wVar.f34710b) && k.b(this.f34711c) == k.b(wVar.f34711c);
    }

    public float f0(float x10, float y10) {
        float f10 = x10 - this.f34710b;
        float f11 = y10 - this.f34711c;
        return (f10 * f10) + (f11 * f11);
    }

    @Override
    public float q(w v10) {
        float f10 = v10.f34710b - this.f34710b;
        float f11 = v10.f34711c - this.f34711c;
        return (f10 * f10) + (f11 * f11);
    }

    public int hashCode() {
        return ((k.b(this.f34710b) + 31) * 31) + k.b(this.f34711c);
    }

    public boolean i0(float x10, float y10) {
        return j0(x10, y10, 1.0E-6f);
    }

    public boolean j0(float x10, float y10, float epsilon) {
        return Math.abs(x10 - this.f34710b) <= epsilon && Math.abs(y10 - this.f34711c) <= epsilon;
    }

    public boolean k0(final w other) {
        return w(other, 1.0E-6f);
    }

    @Override
    public boolean w(w other, float epsilon) {
        return other != null && Math.abs(other.f34710b - this.f34710b) <= epsilon && Math.abs(other.f34711c - this.f34711c) <= epsilon;
    }

    public w m0(String v10) {
        int indexOf = v10.indexOf(44, 1);
        if (indexOf != -1 && v10.charAt(0) == '(' && v10.charAt(v10.length() - 1) == ')') {
            try {
                return U0(Float.parseFloat(v10.substring(1, indexOf)), Float.parseFloat(v10.substring(indexOf + 1, v10.length() - 1)));
            } catch (NumberFormatException unused) {
            }
        }
        throw new GdxRuntimeException("Malformed Vector2: " + v10);
    }

    @Override
    public boolean E(w vector) {
        return o(vector) < 0.0f;
    }

    @Override
    public boolean D(w vector) {
        return o(vector) > 0.0f;
    }

    @Override
    public w z(w target, float alpha, g interpolation) {
        return s(target, interpolation.a(alpha));
    }

    @Override
    public boolean k(w other) {
        return j(other) && o(other) > 0.0f;
    }

    @Override
    public boolean r(w other, float epsilon) {
        return B(other, epsilon) && o(other) > 0.0f;
    }

    @Override
    public boolean c(w other) {
        return j(other) && o(other) < 0.0f;
    }

    @Override
    public boolean l(w other, float epsilon) {
        return B(other, epsilon) && o(other) < 0.0f;
    }

    public String toString() {
        return "(" + this.f34710b + DocLint.SEPARATOR + this.f34711c + ")";
    }

    @Override
    public boolean j(w other) {
        return h.t((this.f34710b * other.f34711c) - (this.f34711c * other.f34710b));
    }

    @Override
    public float v() {
        float f10 = this.f34710b;
        float f11 = this.f34711c;
        return (float) Math.sqrt((f10 * f10) + (f11 * f11));
    }

    @Override
    public boolean B(w other, float epsilon) {
        return h.u((this.f34710b * other.f34711c) - (this.f34711c * other.f34710b), epsilon);
    }

    @Override
    public boolean H(w vector) {
        return h.t(o(vector));
    }

    @Override
    public float x() {
        float f10 = this.f34710b;
        float f11 = this.f34711c;
        return (f10 * f10) + (f11 * f11);
    }

    @Override
    public boolean g(w vector, float epsilon) {
        return h.u(o(vector), epsilon);
    }

    public w(float x10, float y10) {
        this.f34710b = x10;
        this.f34711c = y10;
    }

    public w(w v10) {
        K(v10);
    }
}
