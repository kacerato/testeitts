package cb;

import com.itsmagic.engine.Engines.Engine.NubsPathBezier.FromGDX.GdxRuntimeException;
import com.itsmagic.engine.Engines.Engine.NubsPathBezier.FromGDX.Matrix4;
import java.io.Serializable;

public final class C4166a implements Serializable {

    public static final long f34494h = 1524569123485049187L;

    public float f34495b = 1.0f;

    public float f34496c = 0.0f;

    public float f34497d = 0.0f;

    public float f34498e = 0.0f;

    public float f34499f = 1.0f;

    public float f34500g = 0.0f;

    public C4166a() {
    }

    public C4166a A(float degrees) {
        float n10 = h.n(degrees);
        float U10 = h.U(degrees);
        this.f34495b = n10;
        this.f34496c = -U10;
        this.f34497d = 0.0f;
        this.f34498e = U10;
        this.f34499f = n10;
        this.f34500g = 0.0f;
        return this;
    }

    public C4166a B(float cos, float sin) {
        this.f34495b = cos;
        this.f34496c = -sin;
        this.f34497d = 0.0f;
        this.f34498e = sin;
        this.f34499f = cos;
        this.f34500g = 0.0f;
        return this;
    }

    public C4166a C(float radians) {
        float m10 = h.m(radians);
        float T10 = h.T(radians);
        this.f34495b = m10;
        this.f34496c = -T10;
        this.f34497d = 0.0f;
        this.f34498e = T10;
        this.f34499f = m10;
        this.f34500g = 0.0f;
        return this;
    }

    public C4166a D(float scaleX, float scaleY) {
        this.f34495b = scaleX;
        this.f34496c = 0.0f;
        this.f34497d = 0.0f;
        this.f34498e = 0.0f;
        this.f34499f = scaleY;
        this.f34500g = 0.0f;
        return this;
    }

    public C4166a E(w scale) {
        return D(scale.f34710b, scale.f34711c);
    }

    public C4166a F(float shearX, float shearY) {
        this.f34495b = 1.0f;
        this.f34496c = shearX;
        this.f34497d = 0.0f;
        this.f34498e = shearY;
        this.f34499f = 1.0f;
        this.f34500g = 0.0f;
        return this;
    }

    public C4166a G(w shear) {
        return F(shear.f34710b, shear.f34711c);
    }

    public C4166a H(float x10, float y10) {
        this.f34495b = 1.0f;
        this.f34496c = 0.0f;
        this.f34497d = x10;
        this.f34498e = 0.0f;
        this.f34499f = 1.0f;
        this.f34500g = y10;
        return this;
    }

    public C4166a I(w trn) {
        return H(trn.f34710b, trn.f34711c);
    }

    public C4166a J(float x10, float y10, float radians, float scaleX, float scaleY) {
        this.f34497d = x10;
        this.f34500g = y10;
        if (radians == 0.0f) {
            this.f34495b = scaleX;
            this.f34496c = 0.0f;
            this.f34498e = 0.0f;
            this.f34499f = scaleY;
        } else {
            float T10 = h.T(radians);
            float m10 = h.m(radians);
            this.f34495b = m10 * scaleX;
            this.f34496c = (-T10) * scaleY;
            this.f34498e = T10 * scaleX;
            this.f34499f = m10 * scaleY;
        }
        return this;
    }

    public C4166a K(w trn, float radians, w scale) {
        return J(trn.f34710b, trn.f34711c, radians, scale.f34710b, scale.f34711c);
    }

    public C4166a L(float x10, float y10, float degrees, float scaleX, float scaleY) {
        this.f34497d = x10;
        this.f34500g = y10;
        if (degrees == 0.0f) {
            this.f34495b = scaleX;
            this.f34496c = 0.0f;
            this.f34498e = 0.0f;
            this.f34499f = scaleY;
        } else {
            float U10 = h.U(degrees);
            float n10 = h.n(degrees);
            this.f34495b = n10 * scaleX;
            this.f34496c = (-U10) * scaleY;
            this.f34498e = U10 * scaleX;
            this.f34499f = n10 * scaleY;
        }
        return this;
    }

    public C4166a M(w trn, float degrees, w scale) {
        return L(trn.f34710b, trn.f34711c, degrees, scale.f34710b, scale.f34711c);
    }

    public C4166a N(float x10, float y10, float scaleX, float scaleY) {
        this.f34495b = scaleX;
        this.f34496c = 0.0f;
        this.f34497d = x10;
        this.f34498e = 0.0f;
        this.f34499f = scaleY;
        this.f34500g = y10;
        return this;
    }

    public C4166a O(w trn, w scale) {
        return N(trn.f34710b, trn.f34711c, scale.f34710b, scale.f34711c);
    }

    public C4166a P(float shearX, float shearY) {
        float f10 = this.f34495b;
        float f11 = this.f34496c;
        this.f34495b = (shearY * f11) + f10;
        this.f34496c = f11 + (f10 * shearX);
        float f12 = this.f34498e;
        float f13 = this.f34499f;
        this.f34498e = (shearY * f13) + f12;
        this.f34499f = f13 + (shearX * f12);
        return this;
    }

    public C4166a Q(w shear) {
        return P(shear.f34710b, shear.f34711c);
    }

    public C4166a R(float x10, float y10) {
        this.f34497d += (this.f34495b * x10) + (this.f34496c * y10);
        this.f34500g += (this.f34498e * x10) + (this.f34499f * y10);
        return this;
    }

    public C4166a S(w trn) {
        return R(trn.f34710b, trn.f34711c);
    }

    public void a(w point) {
        float f10 = point.f34710b;
        float f11 = point.f34711c;
        point.f34710b = (this.f34495b * f10) + (this.f34496c * f11) + this.f34497d;
        point.f34711c = (this.f34498e * f10) + (this.f34499f * f11) + this.f34500g;
    }

    public float b() {
        return (this.f34495b * this.f34499f) - (this.f34496c * this.f34498e);
    }

    public w c(w position) {
        position.f34710b = this.f34497d;
        position.f34711c = this.f34500g;
        return position;
    }

    public C4166a d() {
        this.f34495b = 1.0f;
        this.f34496c = 0.0f;
        this.f34497d = 0.0f;
        this.f34498e = 0.0f;
        this.f34499f = 1.0f;
        this.f34500g = 0.0f;
        return this;
    }

    public C4166a e() {
        float b10 = b();
        if (b10 == 0.0f) {
            throw new GdxRuntimeException("Can't invert a singular affine matrix");
        }
        float f10 = 1.0f / b10;
        float f11 = this.f34499f;
        float f12 = this.f34496c;
        float f13 = -f12;
        float f14 = this.f34500g;
        float f15 = this.f34497d;
        float f16 = this.f34498e;
        float f17 = -f16;
        float f18 = this.f34495b;
        this.f34495b = f11 * f10;
        this.f34496c = f13 * f10;
        this.f34497d = ((f12 * f14) - (f11 * f15)) * f10;
        this.f34498e = f17 * f10;
        this.f34499f = f18 * f10;
        this.f34500g = f10 * ((f16 * f15) - (f14 * f18));
        return this;
    }

    public boolean f() {
        return this.f34495b == 1.0f && this.f34497d == 0.0f && this.f34500g == 0.0f && this.f34499f == 1.0f && this.f34496c == 0.0f && this.f34498e == 0.0f;
    }

    public boolean g() {
        return this.f34495b == 1.0f && this.f34499f == 1.0f && this.f34496c == 0.0f && this.f34498e == 0.0f;
    }

    public C4166a h(C4166a other) {
        float f10 = this.f34495b;
        float f11 = other.f34495b;
        float f12 = this.f34496c;
        float f13 = other.f34498e;
        float f14 = (f10 * f11) + (f12 * f13);
        float f15 = other.f34496c;
        float f16 = other.f34499f;
        float f17 = (f10 * f15) + (f12 * f16);
        float f18 = other.f34497d;
        float f19 = other.f34500g;
        float f20 = (f10 * f18) + (f12 * f19) + this.f34497d;
        float f21 = this.f34498e;
        float f22 = this.f34499f;
        float f23 = (f11 * f21) + (f13 * f22);
        float f24 = (f15 * f21) + (f16 * f22);
        float f25 = (f21 * f18) + (f22 * f19) + this.f34500g;
        this.f34495b = f14;
        this.f34496c = f17;
        this.f34497d = f20;
        this.f34498e = f23;
        this.f34499f = f24;
        this.f34500g = f25;
        return this;
    }

    public C4166a i(C4166a other) {
        float f10 = other.f34495b;
        float f11 = this.f34495b;
        float f12 = other.f34496c;
        float f13 = this.f34498e;
        float f14 = (f10 * f11) + (f12 * f13);
        float f15 = this.f34496c;
        float f16 = this.f34499f;
        float f17 = (f10 * f15) + (f12 * f16);
        float f18 = this.f34497d;
        float f19 = this.f34500g;
        float f20 = (f10 * f18) + (f12 * f19) + other.f34497d;
        float f21 = other.f34498e;
        float f22 = other.f34499f;
        float f23 = (f11 * f21) + (f13 * f22);
        float f24 = (f15 * f21) + (f16 * f22);
        float f25 = (f21 * f18) + (f22 * f19) + other.f34500g;
        this.f34495b = f14;
        this.f34496c = f17;
        this.f34497d = f20;
        this.f34498e = f23;
        this.f34499f = f24;
        this.f34500g = f25;
        return this;
    }

    public C4166a j(float degrees) {
        if (degrees == 0.0f) {
            return this;
        }
        float n10 = h.n(degrees);
        float U10 = h.U(degrees);
        float f10 = this.f34495b;
        float f11 = this.f34498e;
        float f12 = (n10 * f10) - (U10 * f11);
        float f13 = this.f34496c;
        float f14 = this.f34499f;
        float f15 = (n10 * f13) - (U10 * f14);
        float f16 = this.f34497d;
        float f17 = this.f34500g;
        this.f34495b = f12;
        this.f34496c = f15;
        this.f34497d = (n10 * f16) - (U10 * f17);
        this.f34498e = (f10 * U10) + (f11 * n10);
        this.f34499f = (f13 * U10) + (f14 * n10);
        this.f34500g = (U10 * f16) + (n10 * f17);
        return this;
    }

    public C4166a k(float radians) {
        if (radians == 0.0f) {
            return this;
        }
        float m10 = h.m(radians);
        float T10 = h.T(radians);
        float f10 = this.f34495b;
        float f11 = this.f34498e;
        float f12 = (m10 * f10) - (T10 * f11);
        float f13 = this.f34496c;
        float f14 = this.f34499f;
        float f15 = (m10 * f13) - (T10 * f14);
        float f16 = this.f34497d;
        float f17 = this.f34500g;
        this.f34495b = f12;
        this.f34496c = f15;
        this.f34497d = (m10 * f16) - (T10 * f17);
        this.f34498e = (f10 * T10) + (f11 * m10);
        this.f34499f = (f13 * T10) + (f14 * m10);
        this.f34500g = (T10 * f16) + (m10 * f17);
        return this;
    }

    public C4166a l(float scaleX, float scaleY) {
        this.f34495b *= scaleX;
        this.f34496c *= scaleX;
        this.f34497d *= scaleX;
        this.f34498e *= scaleY;
        this.f34499f *= scaleY;
        this.f34500g *= scaleY;
        return this;
    }

    public C4166a m(w scale) {
        return l(scale.f34710b, scale.f34711c);
    }

    public C4166a n(float shearX, float shearY) {
        float f10 = this.f34495b;
        float f11 = this.f34498e;
        float f12 = (shearX * f11) + f10;
        float f13 = this.f34496c;
        float f14 = this.f34499f;
        float f15 = (shearX * f14) + f13;
        float f16 = this.f34497d;
        float f17 = this.f34500g;
        this.f34495b = f12;
        this.f34496c = f15;
        this.f34497d = (shearX * f17) + f16;
        this.f34498e = f11 + (f10 * shearY);
        this.f34499f = f14 + (f13 * shearY);
        this.f34500g = f17 + (shearY * f16);
        return this;
    }

    public C4166a o(w shear) {
        return n(shear.f34710b, shear.f34711c);
    }

    public C4166a p(float x10, float y10) {
        this.f34497d += x10;
        this.f34500g += y10;
        return this;
    }

    public C4166a q(w trn) {
        return p(trn.f34710b, trn.f34711c);
    }

    public C4166a r(float degrees) {
        if (degrees == 0.0f) {
            return this;
        }
        float n10 = h.n(degrees);
        float U10 = h.U(degrees);
        float f10 = this.f34495b;
        float f11 = this.f34496c;
        float f12 = (f10 * n10) + (f11 * U10);
        float f13 = -U10;
        float f14 = (f10 * f13) + (f11 * n10);
        float f15 = this.f34498e;
        float f16 = this.f34499f;
        this.f34495b = f12;
        this.f34496c = f14;
        this.f34498e = (f15 * n10) + (U10 * f16);
        this.f34499f = (f15 * f13) + (f16 * n10);
        return this;
    }

    public C4166a s(float radians) {
        if (radians == 0.0f) {
            return this;
        }
        float m10 = h.m(radians);
        float T10 = h.T(radians);
        float f10 = this.f34495b;
        float f11 = this.f34496c;
        float f12 = (f10 * m10) + (f11 * T10);
        float f13 = -T10;
        float f14 = (f10 * f13) + (f11 * m10);
        float f15 = this.f34498e;
        float f16 = this.f34499f;
        this.f34495b = f12;
        this.f34496c = f14;
        this.f34498e = (f15 * m10) + (T10 * f16);
        this.f34499f = (f15 * f13) + (f16 * m10);
        return this;
    }

    public String toString() {
        return "[" + this.f34495b + "|" + this.f34496c + "|" + this.f34497d + "]\n[" + this.f34498e + "|" + this.f34499f + "|" + this.f34500g + "]\n[0.0|0.0|0.1]";
    }

    public C4166a u(float scaleX, float scaleY) {
        this.f34495b *= scaleX;
        this.f34496c *= scaleY;
        this.f34498e *= scaleX;
        this.f34499f *= scaleY;
        return this;
    }

    public C4166a v(w scale) {
        return u(scale.f34710b, scale.f34711c);
    }

    public C4166a w(C4166a other) {
        this.f34495b = other.f34495b;
        this.f34496c = other.f34496c;
        this.f34497d = other.f34497d;
        this.f34498e = other.f34498e;
        this.f34499f = other.f34499f;
        this.f34500g = other.f34500g;
        return this;
    }

    public C4166a x(i matrix) {
        float[] fArr = matrix.f34627b;
        this.f34495b = fArr[0];
        this.f34496c = fArr[3];
        this.f34497d = fArr[6];
        this.f34498e = fArr[1];
        this.f34499f = fArr[4];
        this.f34500g = fArr[7];
        return this;
    }

    public C4166a y(Matrix4 matrix) {
        float[] fArr = matrix.f79235b;
        this.f34495b = fArr[0];
        this.f34496c = fArr[4];
        this.f34497d = fArr[12];
        this.f34498e = fArr[1];
        this.f34499f = fArr[5];
        this.f34500g = fArr[13];
        return this;
    }

    public C4166a z(C4166a l10, C4166a r10) {
        float f10 = l10.f34495b * r10.f34495b;
        float f11 = l10.f34496c;
        float f12 = r10.f34498e;
        this.f34495b = f10 + (f11 * f12);
        float f13 = l10.f34495b;
        float f14 = r10.f34496c * f13;
        float f15 = r10.f34499f;
        this.f34496c = f14 + (f11 * f15);
        float f16 = f13 * r10.f34497d;
        float f17 = l10.f34496c;
        float f18 = r10.f34500g;
        this.f34497d = f16 + (f17 * f18) + l10.f34497d;
        float f19 = l10.f34498e * r10.f34495b;
        float f20 = l10.f34499f;
        this.f34498e = f19 + (f12 * f20);
        float f21 = l10.f34498e;
        this.f34499f = (r10.f34496c * f21) + (f20 * f15);
        this.f34500g = (f21 * r10.f34497d) + (l10.f34499f * f18) + l10.f34500g;
        return this;
    }

    public C4166a(C4166a other) {
        w(other);
    }
}
