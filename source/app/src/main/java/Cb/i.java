package cb;

import com.itsmagic.engine.Engines.Engine.NubsPathBezier.FromGDX.GdxRuntimeException;
import com.itsmagic.engine.Engines.Engine.NubsPathBezier.FromGDX.Matrix4;
import java.io.Serializable;

public class i implements Serializable {

    public static final long f34617d = 7907569533774959788L;

    public static final int f34618e = 0;

    public static final int f34619f = 3;

    public static final int f34620g = 6;

    public static final int f34621h = 1;

    public static final int f34622i = 4;

    public static final int f34623j = 7;

    public static final int f34624k = 2;

    public static final int f34625l = 5;

    public static final int f34626m = 8;

    public float[] f34627b;

    public float[] f34628c;

    public i() {
        this.f34627b = new float[9];
        this.f34628c = new float[9];
        g();
    }

    public static void j(float[] mata, float[] matb) {
        float f10 = mata[0];
        float f11 = matb[0];
        float f12 = mata[3];
        float f13 = matb[1];
        float f14 = mata[6];
        float f15 = matb[2];
        float f16 = (f10 * f11) + (f12 * f13) + (f14 * f15);
        float f17 = matb[3];
        float f18 = matb[4];
        float f19 = matb[5];
        float f20 = (f10 * f17) + (f12 * f18) + (f14 * f19);
        float f21 = matb[6];
        float f22 = matb[7];
        float f23 = matb[8];
        float f24 = (f10 * f21) + (f12 * f22) + (f14 * f23);
        float f25 = mata[1];
        float f26 = mata[4];
        float f27 = mata[7];
        float f28 = (f25 * f11) + (f26 * f13) + (f27 * f15);
        float f29 = (f25 * f17) + (f26 * f18) + (f27 * f19);
        float f30 = (f25 * f21) + (f26 * f22) + (f27 * f23);
        float f31 = mata[2];
        float f32 = mata[5];
        float f33 = (f11 * f31) + (f13 * f32);
        float f34 = mata[8];
        mata[0] = f16;
        mata[1] = f28;
        mata[2] = f33 + (f15 * f34);
        mata[3] = f20;
        mata[4] = f29;
        mata[5] = (f17 * f31) + (f18 * f32) + (f19 * f34);
        mata[6] = f24;
        mata[7] = f30;
        mata[8] = (f31 * f21) + (f32 * f22) + (f34 * f23);
    }

    public i A(float radians) {
        double d10 = radians;
        float cos = (float) Math.cos(d10);
        float sin = (float) Math.sin(d10);
        float[] fArr = this.f34627b;
        fArr[0] = cos;
        fArr[1] = sin;
        fArr[2] = 0.0f;
        fArr[3] = -sin;
        fArr[4] = cos;
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
        return this;
    }

    public i B(float scaleX, float scaleY) {
        float[] fArr = this.f34627b;
        fArr[0] = scaleX;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = scaleY;
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
        return this;
    }

    public i C(w scale) {
        float[] fArr = this.f34627b;
        fArr[0] = scale.f34710b;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = scale.f34711c;
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
        return this;
    }

    public i D(float x10, float y10) {
        float[] fArr = this.f34627b;
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 1.0f;
        fArr[5] = 0.0f;
        fArr[6] = x10;
        fArr[7] = y10;
        fArr[8] = 1.0f;
        return this;
    }

    public i E(w translation) {
        float[] fArr = this.f34627b;
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 1.0f;
        fArr[5] = 0.0f;
        fArr[6] = translation.f34710b;
        fArr[7] = translation.f34711c;
        fArr[8] = 1.0f;
        return this;
    }

    public i F(float x10, float y10) {
        float[] fArr = this.f34627b;
        float[] fArr2 = this.f34628c;
        fArr2[0] = 1.0f;
        fArr2[1] = 0.0f;
        fArr2[2] = 0.0f;
        fArr2[3] = 0.0f;
        fArr2[4] = 1.0f;
        fArr2[5] = 0.0f;
        fArr2[6] = x10;
        fArr2[7] = y10;
        fArr2[8] = 1.0f;
        j(fArr, fArr2);
        return this;
    }

    public i G(w translation) {
        float[] fArr = this.f34627b;
        float[] fArr2 = this.f34628c;
        fArr2[0] = 1.0f;
        fArr2[1] = 0.0f;
        fArr2[2] = 0.0f;
        fArr2[3] = 0.0f;
        fArr2[4] = 1.0f;
        fArr2[5] = 0.0f;
        fArr2[6] = translation.f34710b;
        fArr2[7] = translation.f34711c;
        fArr2[8] = 1.0f;
        j(fArr, fArr2);
        return this;
    }

    public i H() {
        float[] fArr = this.f34627b;
        float f10 = fArr[1];
        float f11 = fArr[2];
        float f12 = fArr[3];
        float f13 = fArr[5];
        float f14 = fArr[6];
        float f15 = fArr[7];
        fArr[3] = f10;
        fArr[6] = f11;
        fArr[1] = f12;
        fArr[7] = f13;
        fArr[2] = f14;
        fArr[5] = f15;
        return this;
    }

    public i I(float x10, float y10) {
        float[] fArr = this.f34627b;
        fArr[6] = fArr[6] + x10;
        fArr[7] = fArr[7] + y10;
        return this;
    }

    public i J(w vector) {
        float[] fArr = this.f34627b;
        fArr[6] = fArr[6] + vector.f34710b;
        fArr[7] = fArr[7] + vector.f34711c;
        return this;
    }

    public i K(x vector) {
        float[] fArr = this.f34627b;
        fArr[6] = fArr[6] + vector.f34718b;
        fArr[7] = fArr[7] + vector.f34719c;
        return this;
    }

    public float a() {
        float[] fArr = this.f34627b;
        float f10 = fArr[0];
        float f11 = fArr[4];
        float f12 = fArr[8];
        float f13 = fArr[3];
        float f14 = fArr[7];
        float f15 = fArr[2];
        float f16 = (f10 * f11 * f12) + (f13 * f14 * f15);
        float f17 = fArr[6];
        float f18 = fArr[1];
        float f19 = fArr[5];
        return (((f16 + ((f17 * f18) * f19)) - ((f10 * f14) * f19)) - ((f13 * f18) * f12)) - ((f17 * f11) * f15);
    }

    public float b() {
        float[] fArr = this.f34627b;
        return ((float) Math.atan2(fArr[1], fArr[0])) * 57.295776f;
    }

    public float c() {
        float[] fArr = this.f34627b;
        return (float) Math.atan2(fArr[1], fArr[0]);
    }

    public w d(w scale) {
        float[] fArr = this.f34627b;
        float f10 = fArr[0];
        float f11 = fArr[3];
        scale.f34710b = (float) Math.sqrt((f10 * f10) + (f11 * f11));
        float f12 = fArr[1];
        float f13 = fArr[4];
        scale.f34711c = (float) Math.sqrt((f12 * f12) + (f13 * f13));
        return scale;
    }

    public w e(w position) {
        float[] fArr = this.f34627b;
        position.f34710b = fArr[6];
        position.f34711c = fArr[7];
        return position;
    }

    public float[] f() {
        return this.f34627b;
    }

    public i g() {
        float[] fArr = this.f34627b;
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 1.0f;
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
        return this;
    }

    public i h() {
        float a10 = a();
        if (a10 == 0.0f) {
            throw new GdxRuntimeException("Can't invert a singular matrix");
        }
        float f10 = 1.0f / a10;
        float[] fArr = this.f34628c;
        float[] fArr2 = this.f34627b;
        float f11 = fArr2[4];
        float f12 = fArr2[8];
        float f13 = fArr2[5];
        float f14 = fArr2[7];
        float f15 = (f11 * f12) - (f13 * f14);
        fArr[0] = f15;
        float f16 = fArr2[2];
        float f17 = (f16 * f14) - (fArr2[1] * f12);
        fArr[1] = f17;
        float f18 = fArr2[1];
        float f19 = (f18 * f13) - (f16 * f11);
        fArr[2] = f19;
        float f20 = fArr2[6];
        float f21 = (f13 * f20) - (fArr2[3] * f12);
        fArr[3] = f21;
        float f22 = fArr2[0];
        float f23 = fArr2[2];
        float f24 = (f12 * f22) - (f23 * f20);
        fArr[4] = f24;
        float f25 = fArr2[3];
        float f26 = (f23 * f25) - (f13 * f22);
        fArr[5] = f26;
        float f27 = fArr2[4];
        float f28 = (f25 * f14) - (f20 * f27);
        fArr[6] = f28;
        float f29 = (fArr2[6] * f18) - (f14 * f22);
        fArr[7] = f29;
        float f30 = (f22 * f27) - (f18 * f25);
        fArr[8] = f30;
        fArr2[0] = f15 * f10;
        fArr2[1] = f17 * f10;
        fArr2[2] = f19 * f10;
        fArr2[3] = f21 * f10;
        fArr2[4] = f24 * f10;
        fArr2[5] = f26 * f10;
        fArr2[6] = f28 * f10;
        fArr2[7] = f29 * f10;
        fArr2[8] = f10 * f30;
        return this;
    }

    public i i(i m10) {
        float[] fArr = this.f34627b;
        float f10 = fArr[0];
        float[] fArr2 = m10.f34627b;
        float f11 = fArr2[0];
        float f12 = fArr[3];
        float f13 = fArr2[1];
        float f14 = fArr[6];
        float f15 = fArr2[2];
        float f16 = (f10 * f11) + (f12 * f13) + (f14 * f15);
        float f17 = fArr2[3];
        float f18 = fArr2[4];
        float f19 = fArr2[5];
        float f20 = (f10 * f17) + (f12 * f18) + (f14 * f19);
        float f21 = fArr2[6];
        float f22 = fArr2[7];
        float f23 = fArr2[8];
        float f24 = (f10 * f21) + (f12 * f22) + (f14 * f23);
        float f25 = fArr[1];
        float f26 = fArr[4];
        float f27 = fArr[7];
        float f28 = (f25 * f11) + (f26 * f13) + (f27 * f15);
        float f29 = (f25 * f17) + (f26 * f18) + (f27 * f19);
        float f30 = (f25 * f21) + (f26 * f22) + (f27 * f23);
        float f31 = fArr[2];
        float f32 = fArr[5];
        float f33 = (f11 * f31) + (f13 * f32);
        float f34 = fArr[8];
        fArr[0] = f16;
        fArr[1] = f28;
        fArr[2] = f33 + (f15 * f34);
        fArr[3] = f20;
        fArr[4] = f29;
        fArr[5] = (f17 * f31) + (f18 * f32) + (f19 * f34);
        fArr[6] = f24;
        fArr[7] = f30;
        fArr[8] = (f31 * f21) + (f32 * f22) + (f34 * f23);
        return this;
    }

    public i k(i m10) {
        float[] fArr = this.f34627b;
        float[] fArr2 = m10.f34627b;
        float f10 = fArr2[0];
        float f11 = fArr[0];
        float f12 = fArr2[3];
        float f13 = fArr[1];
        float f14 = fArr2[6];
        float f15 = fArr[2];
        float f16 = (f10 * f11) + (f12 * f13) + (f14 * f15);
        float f17 = fArr[3];
        float f18 = fArr[4];
        float f19 = fArr[5];
        float f20 = (f10 * f17) + (f12 * f18) + (f14 * f19);
        float f21 = fArr[6];
        float f22 = fArr[7];
        float f23 = fArr[8];
        float f24 = (f10 * f21) + (f12 * f22) + (f14 * f23);
        float f25 = fArr2[1];
        float f26 = fArr2[4];
        float f27 = fArr2[7];
        float f28 = (f25 * f11) + (f26 * f13) + (f27 * f15);
        float f29 = (f25 * f17) + (f26 * f18) + (f27 * f19);
        float f30 = (f25 * f21) + (f26 * f22) + (f27 * f23);
        float f31 = fArr2[2];
        float f32 = fArr2[5];
        float f33 = fArr2[8];
        fArr[0] = f16;
        fArr[1] = f28;
        fArr[2] = (f11 * f31) + (f13 * f32) + (f15 * f33);
        fArr[3] = f20;
        fArr[4] = f29;
        fArr[5] = (f17 * f31) + (f18 * f32) + (f19 * f33);
        fArr[6] = f24;
        fArr[7] = f30;
        fArr[8] = (f31 * f21) + (f32 * f22) + (f33 * f23);
        return this;
    }

    public i l(float degrees) {
        return m(degrees * 0.017453292f);
    }

    public i m(float radians) {
        if (radians == 0.0f) {
            return this;
        }
        double d10 = radians;
        float cos = (float) Math.cos(d10);
        float sin = (float) Math.sin(d10);
        float[] fArr = this.f34628c;
        fArr[0] = cos;
        fArr[1] = sin;
        fArr[2] = 0.0f;
        fArr[3] = -sin;
        fArr[4] = cos;
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
        j(this.f34627b, fArr);
        return this;
    }

    public i n(float scaleX, float scaleY) {
        float[] fArr = this.f34628c;
        fArr[0] = scaleX;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = scaleY;
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
        j(this.f34627b, fArr);
        return this;
    }

    public i o(w scale) {
        float[] fArr = this.f34628c;
        fArr[0] = scale.f34710b;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = scale.f34711c;
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
        j(this.f34627b, fArr);
        return this;
    }

    public i p(float scale) {
        float[] fArr = this.f34627b;
        fArr[0] = fArr[0] * scale;
        fArr[4] = fArr[4] * scale;
        return this;
    }

    public i q(w scale) {
        float[] fArr = this.f34627b;
        fArr[0] = fArr[0] * scale.f34710b;
        fArr[4] = fArr[4] * scale.f34711c;
        return this;
    }

    public i r(x scale) {
        float[] fArr = this.f34627b;
        fArr[0] = fArr[0] * scale.f34718b;
        fArr[4] = fArr[4] * scale.f34719c;
        return this;
    }

    public i s(C4166a affine) {
        float[] fArr = this.f34627b;
        fArr[0] = affine.f34495b;
        fArr[1] = affine.f34498e;
        fArr[2] = 0.0f;
        fArr[3] = affine.f34496c;
        fArr[4] = affine.f34499f;
        fArr[5] = 0.0f;
        fArr[6] = affine.f34497d;
        fArr[7] = affine.f34500g;
        fArr[8] = 1.0f;
        return this;
    }

    public String toString() {
        float[] fArr = this.f34627b;
        return "[" + fArr[0] + "|" + fArr[3] + "|" + fArr[6] + "]\n[" + fArr[1] + "|" + fArr[4] + "|" + fArr[7] + "]\n[" + fArr[2] + "|" + fArr[5] + "|" + fArr[8] + "]";
    }

    public i u(i mat) {
        float[] fArr = mat.f34627b;
        float[] fArr2 = this.f34627b;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        return this;
    }

    public i v(Matrix4 mat) {
        float[] fArr = this.f34627b;
        float[] fArr2 = mat.f79235b;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        fArr[2] = fArr2[2];
        fArr[3] = fArr2[4];
        fArr[4] = fArr2[5];
        fArr[5] = fArr2[6];
        fArr[6] = fArr2[8];
        fArr[7] = fArr2[9];
        fArr[8] = fArr2[10];
        return this;
    }

    public i w(float[] values) {
        float[] fArr = this.f34627b;
        System.arraycopy(values, 0, fArr, 0, fArr.length);
        return this;
    }

    public i x(float degrees) {
        return A(degrees * 0.017453292f);
    }

    public i y(x axis, float degrees) {
        return z(axis, h.n(degrees), h.U(degrees));
    }

    public i z(x axis, float cos, float sin) {
        float[] fArr = this.f34627b;
        float f10 = 1.0f - cos;
        float f11 = axis.f34718b;
        fArr[0] = (f10 * f11 * f11) + cos;
        float f12 = axis.f34719c;
        float f13 = axis.f34720d;
        fArr[3] = ((f10 * f11) * f12) - (f13 * sin);
        fArr[6] = (f10 * f13 * f11) + (f12 * sin);
        fArr[1] = (f10 * f11 * f12) + (f13 * sin);
        fArr[4] = (f10 * f12 * f12) + cos;
        fArr[7] = ((f10 * f12) * f13) - (f11 * sin);
        fArr[2] = ((f10 * f13) * f11) - (f12 * sin);
        fArr[5] = (f12 * f10 * f13) + (f11 * sin);
        fArr[8] = (f10 * f13 * f13) + cos;
        return this;
    }

    public i(i matrix) {
        this.f34627b = new float[9];
        this.f34628c = new float[9];
        u(matrix);
    }

    public i(float[] values) {
        this.f34627b = new float[9];
        this.f34628c = new float[9];
        w(values);
    }
}
