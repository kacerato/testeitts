package com.itsmagic.engine.Engines.Engine.NubsPathBezier.FromGDX;

import cb.C4166a;
import cb.h;
import cb.i;
import cb.p;
import cb.x;
import java.io.Serializable;

public class Matrix4 implements Serializable {

    public static final long f79211c = -2717655254359579617L;

    public static final int f79212d = 0;

    public static final int f79213e = 4;

    public static final int f79214f = 8;

    public static final int f79215g = 12;

    public static final int f79216h = 1;

    public static final int f79217i = 5;

    public static final int f79218j = 9;

    public static final int f79219k = 13;

    public static final int f79220l = 2;

    public static final int f79221m = 6;

    public static final int f79222n = 10;

    public static final int f79223o = 14;

    public static final int f79224p = 3;

    public static final int f79225q = 7;

    public static final int f79226r = 11;

    public static final int f79227s = 15;

    public final float[] f79235b;

    public static final p f79228t = new p();

    public static final p f79229u = new p();

    public static final x f79230v = new x();

    public static final x f79231w = new x();

    public static final x f79232x = new x();

    public static final x f79233y = new x();

    public static final Matrix4 f79234z = new Matrix4();

    public static final x f79208A = new x();

    public static final x f79209B = new x();

    public static final x f79210C = new x();

    public Matrix4() {
        float[] fArr = new float[16];
        this.f79235b = fArr;
        fArr[0] = 1.0f;
        fArr[5] = 1.0f;
        fArr[10] = 1.0f;
        fArr[15] = 1.0f;
    }

    public static void A(float[] mata, float[] matb) {
        float f10 = mata[0];
        float f11 = matb[0];
        float f12 = mata[4];
        float f13 = matb[1];
        float f14 = mata[8];
        float f15 = matb[2];
        float f16 = mata[12];
        float f17 = matb[3];
        float f18 = (f10 * f11) + (f12 * f13) + (f14 * f15) + (f16 * f17);
        float f19 = matb[4];
        float f20 = matb[5];
        float f21 = matb[6];
        float f22 = matb[7];
        float f23 = (f10 * f19) + (f12 * f20) + (f14 * f21) + (f16 * f22);
        float f24 = matb[8];
        float f25 = matb[9];
        float f26 = matb[10];
        float f27 = matb[11];
        float f28 = (f10 * f24) + (f12 * f25) + (f14 * f26) + (f16 * f27);
        float f29 = matb[12];
        float f30 = matb[13];
        float f31 = matb[14];
        float f32 = matb[15];
        float f33 = (f10 * f29) + (f12 * f30) + (f14 * f31) + (f16 * f32);
        float f34 = mata[1];
        float f35 = mata[5];
        float f36 = mata[9];
        float f37 = mata[13];
        float f38 = (f34 * f11) + (f35 * f13) + (f36 * f15) + (f37 * f17);
        float f39 = (f34 * f19) + (f35 * f20) + (f36 * f21) + (f37 * f22);
        float f40 = (f34 * f24) + (f35 * f25) + (f36 * f26) + (f37 * f27);
        float f41 = (f34 * f29) + (f35 * f30) + (f36 * f31) + (f37 * f32);
        float f42 = mata[2];
        float f43 = mata[6];
        float f44 = mata[10];
        float f45 = mata[14];
        float f46 = (f42 * f11) + (f43 * f13) + (f44 * f15) + (f45 * f17);
        float f47 = (f42 * f19) + (f43 * f20) + (f44 * f21) + (f45 * f22);
        float f48 = (f42 * f24) + (f43 * f25) + (f44 * f26) + (f45 * f27);
        float f49 = (f42 * f29) + (f43 * f30) + (f44 * f31) + (f45 * f32);
        float f50 = mata[3];
        float f51 = mata[7];
        float f52 = (f11 * f50) + (f13 * f51);
        float f53 = mata[11];
        float f54 = f52 + (f15 * f53);
        float f55 = mata[15];
        mata[0] = f18;
        mata[1] = f38;
        mata[2] = f46;
        mata[3] = f54 + (f17 * f55);
        mata[4] = f23;
        mata[5] = f39;
        mata[6] = f47;
        mata[7] = (f19 * f50) + (f20 * f51) + (f21 * f53) + (f22 * f55);
        mata[8] = f28;
        mata[9] = f40;
        mata[10] = f48;
        mata[11] = (f24 * f50) + (f25 * f51) + (f26 * f53) + (f27 * f55);
        mata[12] = f33;
        mata[13] = f41;
        mata[14] = f49;
        mata[15] = (f50 * f29) + (f51 * f30) + (f53 * f31) + (f55 * f32);
    }

    public static void C(float[] mat, float[] vec) {
        float f10 = vec[0];
        float f11 = mat[0] * f10;
        float f12 = vec[1];
        float f13 = f11 + (mat[4] * f12);
        float f14 = vec[2];
        float f15 = f13 + (mat[8] * f14) + mat[12];
        float f16 = (mat[1] * f10) + (mat[5] * f12) + (mat[9] * f14) + mat[13];
        float f17 = (f10 * mat[2]) + (f12 * mat[6]) + (f14 * mat[10]) + mat[14];
        vec[0] = f15;
        vec[1] = f16;
        vec[2] = f17;
    }

    public static void D(float[] mat, float[] vec) {
        float f10 = vec[0];
        float f11 = mat[3] * f10;
        float f12 = vec[1];
        float f13 = f11 + (mat[7] * f12);
        float f14 = vec[2];
        float f15 = 1.0f / ((f13 + (mat[11] * f14)) + mat[15]);
        float f16 = ((mat[0] * f10) + (mat[4] * f12) + (mat[8] * f14) + mat[12]) * f15;
        float f17 = ((mat[1] * f10) + (mat[5] * f12) + (mat[9] * f14) + mat[13]) * f15;
        float f18 = ((f10 * mat[2]) + (f12 * mat[6]) + (f14 * mat[10]) + mat[14]) * f15;
        vec[0] = f16;
        vec[1] = f17;
        vec[2] = f18;
    }

    public static void E(float[] mat, float[] vec) {
        float f10 = vec[0];
        float f11 = mat[0] * f10;
        float f12 = vec[1];
        float f13 = f11 + (mat[4] * f12);
        float f14 = vec[2];
        float f15 = f13 + (mat[8] * f14);
        float f16 = (mat[1] * f10) + (mat[5] * f12) + (mat[9] * f14);
        float f17 = (f10 * mat[2]) + (f12 * mat[6]) + (f14 * mat[10]);
        vec[0] = f15;
        vec[1] = f16;
        vec[2] = f17;
    }

    public static float f(float[] values) {
        float f10 = values[3];
        float f11 = values[6];
        float f12 = values[9];
        float f13 = values[12];
        float f14 = values[2];
        float f15 = values[7];
        float f16 = values[5];
        float f17 = values[10];
        float f18 = values[1];
        float f19 = values[11];
        float f20 = values[8];
        float f21 = values[13];
        float f22 = (((((((((f10 * f11) * f12) * f13) - (((f14 * f15) * f12) * f13)) - (((f10 * f16) * f17) * f13)) + (((f18 * f15) * f17) * f13)) + (((f14 * f16) * f19) * f13)) - (((f18 * f11) * f19) * f13)) - (((f10 * f11) * f20) * f21)) + (f14 * f15 * f20 * f21);
        float f23 = values[4];
        float f24 = values[0];
        float f25 = (((f22 + (((f10 * f23) * f17) * f21)) - (((f24 * f15) * f17) * f21)) - (((f14 * f23) * f19) * f21)) + (f24 * f11 * f19 * f21);
        float f26 = values[14];
        float f27 = values[15];
        return (((((((((((f25 + (((f10 * f16) * f20) * f26)) - (((f18 * f15) * f20) * f26)) - (((f10 * f23) * f12) * f26)) + (((f15 * f24) * f12) * f26)) + (((f18 * f23) * f19) * f26)) - (((f24 * f16) * f19) * f26)) - (((f14 * f16) * f20) * f27)) + (((f18 * f11) * f20) * f27)) + (((f14 * f23) * f12) * f27)) - (((f11 * f24) * f12) * f27)) - (((f18 * f23) * f17) * f27)) + (f24 * f16 * f17 * f27);
    }

    public static native void mulVec(float[] mat, float[] vecs, int offset, int numVecs, int stride);

    public static native void prj(float[] mat, float[] vecs, int offset, int numVecs, int stride);

    public static native void rot(float[] mat, float[] vecs, int offset, int numVecs, int stride);

    public static boolean x(float[] values) {
        float f10 = f(values);
        if (f10 == 0.0f) {
            return false;
        }
        float f11 = values[9];
        float f12 = values[14];
        float f13 = values[7];
        float f14 = values[13];
        float f15 = values[10];
        float f16 = values[6];
        float f17 = values[11];
        float f18 = values[5];
        float f19 = values[15];
        float f20 = ((((((f11 * f12) * f13) - ((f14 * f15) * f13)) + ((f14 * f16) * f17)) - ((f18 * f12) * f17)) - ((f11 * f16) * f19)) + (f18 * f15 * f19);
        float f21 = values[12];
        float f22 = values[8];
        float f23 = values[4];
        float f24 = ((((((f21 * f15) * f13) - ((f22 * f12) * f13)) - ((f21 * f16) * f17)) + ((f23 * f12) * f17)) + ((f22 * f16) * f19)) - ((f23 * f15) * f19);
        float f25 = ((((((f22 * f14) * f13) - ((f21 * f11) * f13)) + ((f21 * f18) * f17)) - ((f23 * f14) * f17)) - ((f22 * f18) * f19)) + (f23 * f11 * f19);
        float f26 = ((((((f21 * f11) * f16) - ((f22 * f14) * f16)) - ((f21 * f18) * f15)) + ((f23 * f14) * f15)) + ((f22 * f18) * f12)) - ((f23 * f11) * f12);
        float f27 = values[3];
        float f28 = values[2];
        float f29 = values[1];
        float f30 = ((((((f14 * f15) * f27) - ((f11 * f12) * f27)) - ((f14 * f28) * f17)) + ((f29 * f12) * f17)) + ((f11 * f28) * f19)) - ((f29 * f15) * f19);
        float f31 = values[0];
        float f32 = ((((((f22 * f12) * f27) - ((f21 * f15) * f27)) + ((f21 * f28) * f17)) - ((f31 * f12) * f17)) - ((f22 * f28) * f19)) + (f31 * f15 * f19);
        float f33 = ((((((f21 * f11) * f27) - ((f22 * f14) * f27)) - ((f21 * f29) * f17)) + ((f31 * f14) * f17)) + ((f22 * f29) * f19)) - ((f31 * f11) * f19);
        float f34 = ((((((f22 * f14) * f28) - ((f21 * f11) * f28)) + ((f21 * f29) * f15)) - ((f31 * f14) * f15)) - ((f22 * f29) * f12)) + (f31 * f11 * f12);
        float f35 = ((((((f18 * f12) * f27) - ((f14 * f16) * f27)) + ((f14 * f28) * f13)) - ((f29 * f12) * f13)) - ((f18 * f28) * f19)) + (f29 * f16 * f19);
        float f36 = ((((((f21 * f16) * f27) - ((f23 * f12) * f27)) - ((f21 * f28) * f13)) + ((f31 * f12) * f13)) + ((f23 * f28) * f19)) - ((f31 * f16) * f19);
        float f37 = ((((((f23 * f14) * f27) - ((f21 * f18) * f27)) + ((f21 * f29) * f13)) - ((f31 * f14) * f13)) - ((f23 * f29) * f19)) + (f31 * f18 * f19);
        float f38 = ((((((f21 * f18) * f28) - ((f23 * f14) * f28)) - ((f21 * f29) * f16)) + ((f14 * f31) * f16)) + ((f23 * f29) * f12)) - ((f31 * f18) * f12);
        float f39 = ((((((f11 * f16) * f27) - ((f18 * f15) * f27)) - ((f11 * f28) * f13)) + ((f29 * f15) * f13)) + ((f18 * f28) * f17)) - ((f29 * f16) * f17);
        float f40 = ((((((f23 * f15) * f27) - ((f22 * f16) * f27)) + ((f22 * f28) * f13)) - ((f31 * f15) * f13)) - ((f23 * f28) * f17)) + (f31 * f16 * f17);
        float f41 = ((((((f22 * f18) * f27) - ((f23 * f11) * f27)) - ((f22 * f29) * f13)) + ((f31 * f11) * f13)) + ((f23 * f29) * f17)) - ((f31 * f18) * f17);
        float f42 = ((((((f23 * f11) * f28) - ((f22 * f18) * f28)) + ((f22 * f29) * f16)) - ((f11 * f31) * f16)) - ((f23 * f29) * f15)) + (f31 * f18 * f15);
        float f43 = 1.0f / f10;
        values[0] = f20 * f43;
        values[1] = f30 * f43;
        values[2] = f35 * f43;
        values[3] = f39 * f43;
        values[4] = f24 * f43;
        values[5] = f32 * f43;
        values[6] = f36 * f43;
        values[7] = f40 * f43;
        values[8] = f25 * f43;
        values[9] = f33 * f43;
        values[10] = f37 * f43;
        values[11] = f41 * f43;
        values[12] = f26 * f43;
        values[13] = f34 * f43;
        values[14] = f38 * f43;
        values[15] = f42 * f43;
        return true;
    }

    public Matrix4 B(Matrix4 matrix) {
        Matrix4 matrix4 = f79234z;
        matrix4.a0(matrix);
        A(matrix4.f79235b, this.f79235b);
        return a0(matrix4);
    }

    public Matrix4 B0(float x10, float y10, float z10) {
        float[] fArr = this.f79235b;
        fArr[12] = x10;
        fArr[13] = y10;
        fArr[14] = z10;
        return this;
    }

    public Matrix4 C0(x vector) {
        float[] fArr = this.f79235b;
        fArr[12] = vector.f34718b;
        fArr[13] = vector.f34719c;
        fArr[14] = vector.f34720d;
        return this;
    }

    public Matrix4 D0() {
        float[] fArr = this.f79235b;
        fArr[12] = 0.0f;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        return w().E0();
    }

    public Matrix4 E0() {
        float[] fArr = this.f79235b;
        float f10 = fArr[4];
        float f11 = fArr[8];
        float f12 = fArr[12];
        float f13 = fArr[9];
        float f14 = fArr[13];
        float f15 = fArr[14];
        fArr[4] = fArr[1];
        fArr[8] = fArr[2];
        fArr[12] = fArr[3];
        fArr[1] = f10;
        fArr[9] = fArr[6];
        fArr[13] = fArr[7];
        fArr[2] = f11;
        fArr[6] = f13;
        fArr[14] = fArr[11];
        fArr[3] = f12;
        fArr[7] = f14;
        fArr[11] = f15;
        return this;
    }

    public Matrix4 F(float axisX, float axisY, float axisZ, float degrees) {
        if (degrees == 0.0f) {
            return this;
        }
        p pVar = f79228t;
        pVar.U(axisX, axisY, axisZ, degrees);
        return G(pVar);
    }

    public Matrix4 F0(float x10, float y10, float z10) {
        float[] fArr = this.f79235b;
        fArr[12] = fArr[12] + (fArr[0] * x10) + (fArr[4] * y10) + (fArr[8] * z10);
        fArr[13] = fArr[13] + (fArr[1] * x10) + (fArr[5] * y10) + (fArr[9] * z10);
        fArr[14] = fArr[14] + (fArr[2] * x10) + (fArr[6] * y10) + (fArr[10] * z10);
        fArr[15] = fArr[15] + (fArr[3] * x10) + (fArr[7] * y10) + (fArr[11] * z10);
        return this;
    }

    public Matrix4 G(p rotation) {
        float f10 = rotation.f34675b;
        float f11 = rotation.f34676c;
        float f12 = rotation.f34677d;
        float f13 = rotation.f34678e;
        float f14 = f10 * f10;
        float f15 = f10 * f11;
        float f16 = f10 * f12;
        float f17 = f10 * f13;
        float f18 = f11 * f11;
        float f19 = f11 * f12;
        float f20 = f11 * f13;
        float f21 = f12 * f12;
        float f22 = f12 * f13;
        float f23 = 1.0f - ((f18 + f21) * 2.0f);
        float f24 = (f15 - f22) * 2.0f;
        float f25 = (f16 + f20) * 2.0f;
        float f26 = (f15 + f22) * 2.0f;
        float f27 = 1.0f - ((f21 + f14) * 2.0f);
        float f28 = (f19 - f17) * 2.0f;
        float f29 = (f16 - f20) * 2.0f;
        float f30 = (f19 + f17) * 2.0f;
        float f31 = 1.0f - ((f14 + f18) * 2.0f);
        float[] fArr = this.f79235b;
        float f32 = fArr[0];
        float f33 = fArr[4];
        float f34 = fArr[8];
        float f35 = (f32 * f23) + (f33 * f26) + (f34 * f29);
        float f36 = (f32 * f24) + (f33 * f27) + (f34 * f30);
        float f37 = (f32 * f25) + (f33 * f28) + (f34 * f31);
        float f38 = fArr[1];
        float f39 = fArr[5];
        float f40 = fArr[9];
        float f41 = (f38 * f23) + (f39 * f26) + (f40 * f29);
        float f42 = (f38 * f24) + (f39 * f27) + (f40 * f30);
        float f43 = (f38 * f25) + (f39 * f28) + (f40 * f31);
        float f44 = fArr[2];
        float f45 = fArr[6];
        float f46 = fArr[10];
        float f47 = (f44 * f23) + (f45 * f26) + (f46 * f29);
        float f48 = (f44 * f24) + (f45 * f27) + (f46 * f30);
        float f49 = (f44 * f25) + (f45 * f28) + (f46 * f31);
        float f50 = fArr[3];
        float f51 = fArr[7];
        float f52 = fArr[11];
        fArr[0] = f35;
        fArr[1] = f41;
        fArr[2] = f47;
        fArr[3] = (f23 * f50) + (f26 * f51) + (f29 * f52);
        fArr[4] = f36;
        fArr[5] = f42;
        fArr[6] = f48;
        fArr[7] = (f24 * f50) + (f27 * f51) + (f30 * f52);
        fArr[8] = f37;
        fArr[9] = f43;
        fArr[10] = f49;
        fArr[11] = (f50 * f25) + (f51 * f28) + (f52 * f31);
        return this;
    }

    public Matrix4 G0(x translation) {
        return F0(translation.f34718b, translation.f34719c, translation.f34720d);
    }

    public Matrix4 H(x axis, float degrees) {
        if (degrees == 0.0f) {
            return this;
        }
        p pVar = f79228t;
        pVar.P(axis, degrees);
        return G(pVar);
    }

    public Matrix4 H0(float x10, float y10, float z10) {
        float[] fArr = this.f79235b;
        fArr[12] = fArr[12] + x10;
        fArr[13] = fArr[13] + y10;
        fArr[14] = fArr[14] + z10;
        return this;
    }

    public Matrix4 I(final x v12, final x v22) {
        return G(f79228t.Z(v12, v22));
    }

    public Matrix4 I0(x vector) {
        float[] fArr = this.f79235b;
        fArr[12] = fArr[12] + vector.f34718b;
        fArr[13] = fArr[13] + vector.f34719c;
        fArr[14] = fArr[14] + vector.f34720d;
        return this;
    }

    public Matrix4 J(float axisX, float axisY, float axisZ, float radians) {
        if (radians == 0.0f) {
            return this;
        }
        p pVar = f79228t;
        pVar.W(axisX, axisY, axisZ, radians);
        return G(pVar);
    }

    public Matrix4 K(x axis, float radians) {
        if (radians == 0.0f) {
            return this;
        }
        p pVar = f79228t;
        pVar.X(axis, radians);
        return G(pVar);
    }

    public Matrix4 L(final x direction, final x up) {
        x xVar = f79230v;
        xVar.K(direction).h();
        x xVar2 = f79231w;
        xVar2.K(direction).T(up).h();
        x xVar3 = f79232x;
        xVar3.K(xVar2).T(xVar).h();
        float[] fArr = this.f79235b;
        float f10 = fArr[0];
        float f11 = xVar2.f34718b;
        float f12 = fArr[4];
        float f13 = xVar2.f34719c;
        float f14 = fArr[8];
        float f15 = xVar2.f34720d;
        float f16 = (f10 * f11) + (f12 * f13) + (f14 * f15);
        float f17 = xVar3.f34718b;
        float f18 = xVar3.f34719c;
        float f19 = xVar3.f34720d;
        float f20 = (f10 * f17) + (f12 * f18) + (f14 * f19);
        float f21 = xVar.f34718b;
        float f22 = xVar.f34719c;
        float f23 = xVar.f34720d;
        float f24 = (f10 * (-f21)) + (f12 * (-f22)) + (f14 * (-f23));
        float f25 = fArr[1];
        float f26 = fArr[5];
        float f27 = fArr[9];
        float f28 = (f25 * f11) + (f26 * f13) + (f27 * f15);
        float f29 = (f25 * f17) + (f26 * f18) + (f27 * f19);
        float f30 = (f25 * (-f21)) + (f26 * (-f22)) + (f27 * (-f23));
        float f31 = fArr[2];
        float f32 = fArr[6];
        float f33 = fArr[10];
        float f34 = (f31 * f11) + (f32 * f13) + (f33 * f15);
        float f35 = (f31 * f17) + (f32 * f18) + (f33 * f19);
        float f36 = (f31 * (-f21)) + (f32 * (-f22)) + (f33 * (-f23));
        float f37 = fArr[3];
        float f38 = fArr[7];
        float f39 = fArr[11];
        fArr[0] = f16;
        fArr[1] = f28;
        fArr[2] = f34;
        fArr[3] = (f11 * f37) + (f13 * f38) + (f15 * f39);
        fArr[4] = f20;
        fArr[5] = f29;
        fArr[6] = f35;
        fArr[7] = (f17 * f37) + (f18 * f38) + (f19 * f39);
        fArr[8] = f24;
        fArr[9] = f30;
        fArr[10] = f36;
        fArr[11] = (f37 * (-f21)) + (f38 * (-f22)) + (f39 * (-f23));
        return this;
    }

    public Matrix4 M(final x target, final x up) {
        x xVar = f79233y;
        float f10 = target.f34718b;
        float[] fArr = this.f79235b;
        xVar.Q0(f10 - fArr[12], target.f34719c - fArr[13], target.f34720d - fArr[14]);
        return L(xVar, up);
    }

    public Matrix4 N(float scaleX, float scaleY, float scaleZ) {
        float[] fArr = this.f79235b;
        fArr[0] = fArr[0] * scaleX;
        fArr[4] = fArr[4] * scaleY;
        fArr[8] = fArr[8] * scaleZ;
        fArr[1] = fArr[1] * scaleX;
        fArr[5] = fArr[5] * scaleY;
        fArr[9] = fArr[9] * scaleZ;
        fArr[2] = fArr[2] * scaleX;
        fArr[6] = fArr[6] * scaleY;
        fArr[10] = fArr[10] * scaleZ;
        fArr[3] = fArr[3] * scaleX;
        fArr[7] = fArr[7] * scaleY;
        fArr[11] = fArr[11] * scaleZ;
        return this;
    }

    public Matrix4 O(float scale) {
        float[] fArr = this.f79235b;
        fArr[0] = fArr[0] * scale;
        fArr[5] = fArr[5] * scale;
        fArr[10] = fArr[10] * scale;
        return this;
    }

    public Matrix4 P(float x10, float y10, float z10) {
        float[] fArr = this.f79235b;
        fArr[0] = fArr[0] * x10;
        fArr[5] = fArr[5] * y10;
        fArr[10] = fArr[10] * z10;
        return this;
    }

    public Matrix4 Q(x scale) {
        float[] fArr = this.f79235b;
        fArr[0] = fArr[0] * scale.f34718b;
        fArr[5] = fArr[5] * scale.f34719c;
        fArr[10] = fArr[10] * scale.f34720d;
        return this;
    }

    public Matrix4 R(float quaternionX, float quaternionY, float quaternionZ, float quaternionW) {
        return S(0.0f, 0.0f, 0.0f, quaternionX, quaternionY, quaternionZ, quaternionW);
    }

    public Matrix4 S(float translationX, float translationY, float translationZ, float quaternionX, float quaternionY, float quaternionZ, float quaternionW) {
        float f10 = quaternionX * 2.0f;
        float f11 = quaternionY * 2.0f;
        float f12 = 2.0f * quaternionZ;
        float f13 = quaternionW * f10;
        float f14 = quaternionW * f11;
        float f15 = quaternionW * f12;
        float f16 = f10 * quaternionX;
        float f17 = quaternionX * f11;
        float f18 = quaternionX * f12;
        float f19 = f11 * quaternionY;
        float f20 = quaternionY * f12;
        float f21 = f12 * quaternionZ;
        float[] fArr = this.f79235b;
        fArr[0] = 1.0f - (f19 + f21);
        fArr[4] = f17 - f15;
        fArr[8] = f18 + f14;
        fArr[12] = translationX;
        fArr[1] = f17 + f15;
        fArr[5] = 1.0f - (f21 + f16);
        fArr[9] = f20 - f13;
        fArr[13] = translationY;
        fArr[2] = f18 - f14;
        fArr[6] = f20 + f13;
        fArr[10] = 1.0f - (f16 + f19);
        fArr[14] = translationZ;
        fArr[3] = 0.0f;
        fArr[7] = 0.0f;
        fArr[11] = 0.0f;
        fArr[15] = 1.0f;
        return this;
    }

    public Matrix4 T(float translationX, float translationY, float translationZ, float quaternionX, float quaternionY, float quaternionZ, float quaternionW, float scaleX, float scaleY, float scaleZ) {
        float f10 = quaternionX * 2.0f;
        float f11 = quaternionY * 2.0f;
        float f12 = 2.0f * quaternionZ;
        float f13 = quaternionW * f10;
        float f14 = quaternionW * f11;
        float f15 = quaternionW * f12;
        float f16 = f10 * quaternionX;
        float f17 = quaternionX * f11;
        float f18 = quaternionX * f12;
        float f19 = f11 * quaternionY;
        float f20 = quaternionY * f12;
        float f21 = f12 * quaternionZ;
        float[] fArr = this.f79235b;
        fArr[0] = (1.0f - (f19 + f21)) * scaleX;
        fArr[4] = (f17 - f15) * scaleY;
        fArr[8] = (f18 + f14) * scaleZ;
        fArr[12] = translationX;
        fArr[1] = scaleX * (f17 + f15);
        fArr[5] = (1.0f - (f21 + f16)) * scaleY;
        fArr[9] = (f20 - f13) * scaleZ;
        fArr[13] = translationY;
        fArr[2] = scaleX * (f18 - f14);
        fArr[6] = scaleY * (f20 + f13);
        fArr[10] = (1.0f - (f16 + f19)) * scaleZ;
        fArr[14] = translationZ;
        fArr[3] = 0.0f;
        fArr[7] = 0.0f;
        fArr[11] = 0.0f;
        fArr[15] = 1.0f;
        return this;
    }

    public Matrix4 U(C4166a affine) {
        float[] fArr = this.f79235b;
        fArr[0] = affine.f34495b;
        fArr[1] = affine.f34498e;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = affine.f34496c;
        fArr[5] = affine.f34499f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 1.0f;
        fArr[11] = 0.0f;
        fArr[12] = affine.f34497d;
        fArr[13] = affine.f34500g;
        fArr[14] = 0.0f;
        fArr[15] = 1.0f;
        return this;
    }

    public Matrix4 V(i mat) {
        float[] fArr = this.f79235b;
        float[] fArr2 = mat.f34627b;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        fArr[2] = fArr2[2];
        fArr[3] = 0.0f;
        fArr[4] = fArr2[3];
        fArr[5] = fArr2[4];
        fArr[6] = fArr2[5];
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 1.0f;
        fArr[11] = 0.0f;
        fArr[12] = fArr2[6];
        fArr[13] = fArr2[7];
        fArr[14] = 0.0f;
        fArr[15] = fArr2[8];
        return this;
    }

    public Matrix4 W(p quaternion) {
        return R(quaternion.f34675b, quaternion.f34676c, quaternion.f34677d, quaternion.f34678e);
    }

    public Matrix4 X(x position, p orientation) {
        return S(position.f34718b, position.f34719c, position.f34720d, orientation.f34675b, orientation.f34676c, orientation.f34677d, orientation.f34678e);
    }

    public Matrix4 Y(x position, p orientation, x scale) {
        return T(position.f34718b, position.f34719c, position.f34720d, orientation.f34675b, orientation.f34676c, orientation.f34677d, orientation.f34678e, scale.f34718b, scale.f34719c, scale.f34720d);
    }

    public Matrix4 Z(x xAxis, x yAxis, x zAxis, x pos) {
        float[] fArr = this.f79235b;
        fArr[0] = xAxis.f34718b;
        fArr[4] = xAxis.f34719c;
        fArr[8] = xAxis.f34720d;
        fArr[1] = yAxis.f34718b;
        fArr[5] = yAxis.f34719c;
        fArr[9] = yAxis.f34720d;
        fArr[2] = zAxis.f34718b;
        fArr[6] = zAxis.f34719c;
        fArr[10] = zAxis.f34720d;
        fArr[12] = pos.f34718b;
        fArr[13] = pos.f34719c;
        fArr[14] = pos.f34720d;
        fArr[3] = 0.0f;
        fArr[7] = 0.0f;
        fArr[11] = 0.0f;
        fArr[15] = 1.0f;
        return this;
    }

    public Matrix4 a(Matrix4 other, float w10) {
        x xVar = f79233y;
        k(xVar);
        x xVar2 = f79209B;
        other.k(xVar2);
        p pVar = f79228t;
        i(pVar);
        p pVar2 = f79229u;
        other.i(pVar2);
        x xVar3 = f79210C;
        r(xVar3);
        x xVar4 = f79208A;
        other.r(xVar4);
        x d10 = xVar.d(w10);
        float f10 = 1.0f - w10;
        u0(d10.m(xVar2.d(f10)));
        G(pVar.e0(pVar2, f10));
        C0(xVar3.d(w10).m(xVar4.d(f10)));
        return this;
    }

    public Matrix4 a0(Matrix4 matrix) {
        return b0(matrix.f79235b);
    }

    public Matrix4 b(Matrix4[] t10) {
        float length = 1.0f / t10.length;
        x xVar = f79233y;
        Matrix4 matrix4 = t10[0];
        x xVar2 = f79210C;
        xVar.K(matrix4.k(xVar2).d(length));
        f79228t.O(t10[0].i(f79229u).h(length));
        f79209B.K(t10[0].r(xVar2).d(length));
        for (int i10 = 1; i10 < t10.length; i10++) {
            x xVar3 = f79233y;
            Matrix4 matrix42 = t10[i10];
            x xVar4 = f79210C;
            xVar3.m(matrix42.k(xVar4).d(length));
            f79228t.J(t10[i10].i(f79229u).h(length));
            f79209B.m(t10[i10].r(xVar4).d(length));
        }
        p pVar = f79228t;
        pVar.M();
        u0(f79233y);
        G(pVar);
        C0(f79209B);
        return this;
    }

    public Matrix4 b0(float[] values) {
        float[] fArr = this.f79235b;
        System.arraycopy(values, 0, fArr, 0, fArr.length);
        return this;
    }

    public Matrix4 c(Matrix4[] t10, float[] w10) {
        x xVar = f79233y;
        Matrix4 matrix4 = t10[0];
        x xVar2 = f79210C;
        xVar.K(matrix4.k(xVar2).d(w10[0]));
        f79228t.O(t10[0].i(f79229u).h(w10[0]));
        f79209B.K(t10[0].r(xVar2).d(w10[0]));
        for (int i10 = 1; i10 < t10.length; i10++) {
            x xVar3 = f79233y;
            Matrix4 matrix42 = t10[i10];
            x xVar4 = f79210C;
            xVar3.m(matrix42.k(xVar4).d(w10[i10]));
            f79228t.J(t10[i10].i(f79229u).h(w10[i10]));
            f79209B.m(t10[i10].r(xVar4).d(w10[i10]));
        }
        p pVar = f79228t;
        pVar.M();
        u0(f79233y);
        G(pVar);
        C0(f79209B);
        return this;
    }

    public Matrix4 c0(C4166a affine) {
        float[] fArr = this.f79235b;
        fArr[0] = affine.f34495b;
        fArr[1] = affine.f34498e;
        fArr[4] = affine.f34496c;
        fArr[5] = affine.f34499f;
        fArr[12] = affine.f34497d;
        fArr[13] = affine.f34500g;
        return this;
    }

    public Matrix4 d() {
        return new Matrix4(this);
    }

    public Matrix4 d0(Matrix4 mat) {
        float[] fArr = this.f79235b;
        float[] fArr2 = mat.f79235b;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        fArr[4] = fArr2[4];
        fArr[5] = fArr2[5];
        fArr[12] = fArr2[12];
        fArr[13] = fArr2[13];
        return this;
    }

    public float e() {
        float[] fArr = this.f79235b;
        float f10 = fArr[3];
        float f11 = fArr[6];
        float f12 = fArr[9];
        float f13 = fArr[12];
        float f14 = fArr[2];
        float f15 = fArr[7];
        float f16 = fArr[5];
        float f17 = fArr[10];
        float f18 = fArr[1];
        float f19 = fArr[11];
        float f20 = fArr[8];
        float f21 = fArr[13];
        float f22 = (((((((((f10 * f11) * f12) * f13) - (((f14 * f15) * f12) * f13)) - (((f10 * f16) * f17) * f13)) + (((f18 * f15) * f17) * f13)) + (((f14 * f16) * f19) * f13)) - (((f18 * f11) * f19) * f13)) - (((f10 * f11) * f20) * f21)) + (f14 * f15 * f20 * f21);
        float f23 = fArr[4];
        float f24 = fArr[0];
        float f25 = (((f22 + (((f10 * f23) * f17) * f21)) - (((f24 * f15) * f17) * f21)) - (((f14 * f23) * f19) * f21)) + (f24 * f11 * f19 * f21);
        float f26 = fArr[14];
        float f27 = fArr[15];
        return (((((((((((f25 + (((f10 * f16) * f20) * f26)) - (((f18 * f15) * f20) * f26)) - (((f10 * f23) * f12) * f26)) + (((f15 * f24) * f12) * f26)) + (((f18 * f23) * f19) * f26)) - (((f24 * f16) * f19) * f26)) - (((f14 * f16) * f20) * f27)) + (((f18 * f11) * f20) * f27)) + (((f14 * f23) * f12) * f27)) - (((f11 * f24) * f12) * f27)) - (((f18 * f23) * f17) * f27)) + (f24 * f16 * f17 * f27);
    }

    public Matrix4 e0(float yaw, float pitch, float roll) {
        p pVar = f79228t;
        pVar.Q(yaw, pitch, roll);
        return W(pVar);
    }

    public Matrix4 f0(float yaw, float pitch, float roll) {
        p pVar = f79228t;
        pVar.R(yaw, pitch, roll);
        return W(pVar);
    }

    public float g() {
        float[] fArr = this.f79235b;
        float f10 = fArr[0];
        float f11 = fArr[5];
        float f12 = fArr[10];
        float f13 = fArr[4];
        float f14 = fArr[9];
        float f15 = fArr[2];
        float f16 = (f10 * f11 * f12) + (f13 * f14 * f15);
        float f17 = fArr[8];
        float f18 = fArr[1];
        float f19 = fArr[6];
        return (((f16 + ((f17 * f18) * f19)) - ((f10 * f14) * f19)) - ((f13 * f18) * f12)) - ((f17 * f11) * f15);
    }

    public Matrix4 g0(x direction, x up) {
        x xVar = f79230v;
        xVar.K(direction).h();
        x xVar2 = f79231w;
        xVar2.K(direction).T(up).h();
        x xVar3 = f79232x;
        xVar3.K(xVar2).T(xVar).h();
        v();
        float[] fArr = this.f79235b;
        fArr[0] = xVar2.f34718b;
        fArr[4] = xVar2.f34719c;
        fArr[8] = xVar2.f34720d;
        fArr[1] = xVar3.f34718b;
        fArr[5] = xVar3.f34719c;
        fArr[9] = xVar3.f34720d;
        fArr[2] = -xVar.f34718b;
        fArr[6] = -xVar.f34719c;
        fArr[10] = -xVar.f34720d;
        return this;
    }

    public void h(float[] dst) {
        float[] fArr = this.f79235b;
        dst[0] = fArr[0];
        dst[1] = fArr[1];
        dst[2] = fArr[2];
        dst[3] = fArr[4];
        dst[4] = fArr[5];
        dst[5] = fArr[6];
        dst[6] = fArr[8];
        dst[7] = fArr[9];
        dst[8] = fArr[10];
        dst[9] = fArr[12];
        dst[10] = fArr[13];
        dst[11] = fArr[14];
    }

    public Matrix4 h0(x position, x target, x up) {
        x xVar = f79233y;
        xVar.K(target).e(position);
        g0(xVar, up);
        z(f79234z.v0(-position.f34718b, -position.f34719c, -position.f34720d));
        return this;
    }

    public p i(p rotation) {
        return rotation.b0(this);
    }

    public Matrix4 i0(float left, float right, float bottom, float top, float near, float far) {
        float f10 = right - left;
        float f11 = top - bottom;
        float f12 = far - near;
        float f13 = (-(right + left)) / f10;
        float f14 = (-(top + bottom)) / f11;
        float[] fArr = this.f79235b;
        fArr[0] = 2.0f / f10;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = 2.0f / f11;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = (-2.0f) / f12;
        fArr[11] = 0.0f;
        fArr[12] = f13;
        fArr[13] = f14;
        fArr[14] = (-(far + near)) / f12;
        fArr[15] = 1.0f;
        return this;
    }

    public p j(p rotation, boolean normalizeAxes) {
        return rotation.d0(normalizeAxes, this);
    }

    public Matrix4 j0(float x10, float y10, float width, float height) {
        i0(x10, x10 + width, y10, y10 + height, 0.0f, 1.0f);
        return this;
    }

    public x k(x scale) {
        return scale.Q0(l(), n(), p());
    }

    public Matrix4 k0(float x10, float y10, float width, float height, float near, float far) {
        i0(x10, x10 + width, y10, y10 + height, near, far);
        return this;
    }

    public float l() {
        return (h.t(this.f79235b[4]) && h.t(this.f79235b[8])) ? Math.abs(this.f79235b[0]) : (float) Math.sqrt(m());
    }

    public Matrix4 l0(float near, float far, float fovy, float aspectRatio) {
        v();
        float tan = (float) (1.0d / Math.tan((fovy * 0.017453292519943295d) / 2.0d));
        float f10 = near - far;
        float f11 = (far + near) / f10;
        float f12 = ((far * 2.0f) * near) / f10;
        float[] fArr = this.f79235b;
        fArr[0] = tan / aspectRatio;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = tan;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = f11;
        fArr[11] = -1.0f;
        fArr[12] = 0.0f;
        fArr[13] = 0.0f;
        fArr[14] = f12;
        fArr[15] = 0.0f;
        return this;
    }

    public float m() {
        float[] fArr = this.f79235b;
        float f10 = fArr[0];
        float f11 = fArr[4];
        float f12 = fArr[8];
        return (f10 * f10) + (f11 * f11) + (f12 * f12);
    }

    public Matrix4 m0(float left, float right, float bottom, float top, float near, float far) {
        float f10 = near * 2.0f;
        float f11 = right - left;
        float f12 = top - bottom;
        float f13 = (right + left) / f11;
        float f14 = (top + bottom) / f12;
        float f15 = near - far;
        float f16 = (far + near) / f15;
        float f17 = ((far * 2.0f) * near) / f15;
        float[] fArr = this.f79235b;
        fArr[0] = f10 / f11;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = f10 / f12;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = f13;
        fArr[9] = f14;
        fArr[10] = f16;
        fArr[11] = -1.0f;
        fArr[12] = 0.0f;
        fArr[13] = 0.0f;
        fArr[14] = f17;
        fArr[15] = 0.0f;
        return this;
    }

    public float n() {
        return (h.t(this.f79235b[1]) && h.t(this.f79235b[9])) ? Math.abs(this.f79235b[5]) : (float) Math.sqrt(o());
    }

    public Matrix4 n0(float axisX, float axisY, float axisZ, float degrees) {
        if (degrees != 0.0f) {
            return W(f79228t.U(axisX, axisY, axisZ, degrees));
        }
        v();
        return this;
    }

    public float o() {
        float[] fArr = this.f79235b;
        float f10 = fArr[1];
        float f11 = fArr[5];
        float f12 = fArr[9];
        return (f10 * f10) + (f11 * f11) + (f12 * f12);
    }

    public Matrix4 o0(final float x12, final float y12, final float z12, final float x22, final float y22, final float z22) {
        return W(f79228t.Y(x12, y12, z12, x22, y22, z22));
    }

    public float p() {
        return (h.t(this.f79235b[2]) && h.t(this.f79235b[6])) ? Math.abs(this.f79235b[10]) : (float) Math.sqrt(q());
    }

    public Matrix4 p0(x axis, float degrees) {
        if (degrees != 0.0f) {
            return W(f79228t.P(axis, degrees));
        }
        v();
        return this;
    }

    public float q() {
        float[] fArr = this.f79235b;
        float f10 = fArr[2];
        float f11 = fArr[6];
        float f12 = fArr[10];
        return (f10 * f10) + (f11 * f11) + (f12 * f12);
    }

    public Matrix4 q0(final x v12, final x v22) {
        return W(f79228t.Z(v12, v22));
    }

    public x r(x position) {
        float[] fArr = this.f79235b;
        position.f34718b = fArr[12];
        position.f34719c = fArr[13];
        position.f34720d = fArr[14];
        return position;
    }

    public Matrix4 r0(float axisX, float axisY, float axisZ, float radians) {
        if (radians != 0.0f) {
            return W(f79228t.W(axisX, axisY, axisZ, radians));
        }
        v();
        return this;
    }

    public float[] s() {
        return this.f79235b;
    }

    public Matrix4 s0(x axis, float radians) {
        if (radians != 0.0f) {
            return W(f79228t.X(axis, radians));
        }
        v();
        return this;
    }

    public Matrix4 t0(float x10, float y10, float z10) {
        v();
        float[] fArr = this.f79235b;
        fArr[0] = x10;
        fArr[5] = y10;
        fArr[10] = z10;
        return this;
    }

    public String toString() {
        return "[" + this.f79235b[0] + "|" + this.f79235b[4] + "|" + this.f79235b[8] + "|" + this.f79235b[12] + "]\n[" + this.f79235b[1] + "|" + this.f79235b[5] + "|" + this.f79235b[9] + "|" + this.f79235b[13] + "]\n[" + this.f79235b[2] + "|" + this.f79235b[6] + "|" + this.f79235b[10] + "|" + this.f79235b[14] + "]\n[" + this.f79235b[3] + "|" + this.f79235b[7] + "|" + this.f79235b[11] + "|" + this.f79235b[15] + "]\n";
    }

    public boolean u() {
        return (h.q(this.f79235b[0], 1.0f) && h.q(this.f79235b[5], 1.0f) && h.q(this.f79235b[10], 1.0f) && h.t(this.f79235b[4]) && h.t(this.f79235b[8]) && h.t(this.f79235b[1]) && h.t(this.f79235b[9]) && h.t(this.f79235b[2]) && h.t(this.f79235b[6])) ? false : true;
    }

    public Matrix4 u0(x vector) {
        v();
        float[] fArr = this.f79235b;
        fArr[0] = vector.f34718b;
        fArr[5] = vector.f34719c;
        fArr[10] = vector.f34720d;
        return this;
    }

    public Matrix4 v() {
        float[] fArr = this.f79235b;
        fArr[0] = 1.0f;
        fArr[4] = 0.0f;
        fArr[8] = 0.0f;
        fArr[12] = 0.0f;
        fArr[1] = 0.0f;
        fArr[5] = 1.0f;
        fArr[9] = 0.0f;
        fArr[13] = 0.0f;
        fArr[2] = 0.0f;
        fArr[6] = 0.0f;
        fArr[10] = 1.0f;
        fArr[14] = 0.0f;
        fArr[3] = 0.0f;
        fArr[7] = 0.0f;
        fArr[11] = 0.0f;
        fArr[15] = 1.0f;
        return this;
    }

    public Matrix4 v0(float x10, float y10, float z10) {
        v();
        float[] fArr = this.f79235b;
        fArr[12] = x10;
        fArr[13] = y10;
        fArr[14] = z10;
        return this;
    }

    public Matrix4 w() {
        float[] fArr = this.f79235b;
        float f10 = fArr[3];
        float f11 = fArr[6];
        float f12 = fArr[9];
        float f13 = fArr[12];
        float f14 = fArr[2];
        float f15 = fArr[7];
        float f16 = fArr[5];
        float f17 = fArr[10];
        float f18 = fArr[1];
        float f19 = fArr[11];
        float f20 = fArr[8];
        float f21 = fArr[13];
        float f22 = fArr[4];
        float f23 = fArr[0];
        float f24 = fArr[14];
        float f25 = fArr[15];
        float f26 = (((((((((((((((((((((((((f10 * f11) * f12) * f13) - (((f14 * f15) * f12) * f13)) - (((f10 * f16) * f17) * f13)) + (((f18 * f15) * f17) * f13)) + (((f14 * f16) * f19) * f13)) - (((f18 * f11) * f19) * f13)) - (((f10 * f11) * f20) * f21)) + (((f14 * f15) * f20) * f21)) + (((f10 * f22) * f17) * f21)) - (((f23 * f15) * f17) * f21)) - (((f14 * f22) * f19) * f21)) + (((f23 * f11) * f19) * f21)) + (((f10 * f16) * f20) * f24)) - (((f18 * f15) * f20) * f24)) - (((f10 * f22) * f12) * f24)) + (((f23 * f15) * f12) * f24)) + (((f18 * f22) * f19) * f24)) - (((f23 * f16) * f19) * f24)) - (((f14 * f16) * f20) * f25)) + (((f18 * f11) * f20) * f25)) + (((f14 * f22) * f12) * f25)) - (((f23 * f11) * f12) * f25)) - (((f18 * f22) * f17) * f25)) + (f23 * f16 * f17 * f25);
        if (f26 == 0.0f) {
            throw new RuntimeException("non-invertible matrix");
        }
        float f27 = ((((((f12 * f24) * f15) - ((f21 * f17) * f15)) + ((f21 * f11) * f19)) - ((f16 * f24) * f19)) - ((f12 * f11) * f25)) + (f16 * f17 * f25);
        float f28 = ((((((f13 * f17) * f15) - ((f20 * f24) * f15)) - ((f13 * f11) * f19)) + ((f22 * f24) * f19)) + ((f20 * f11) * f25)) - ((f22 * f17) * f25);
        float f29 = ((((((f20 * f21) * f15) - ((f13 * f12) * f15)) + ((f13 * f16) * f19)) - ((f22 * f21) * f19)) - ((f20 * f16) * f25)) + (f22 * f12 * f25);
        float f30 = ((((((f13 * f12) * f11) - ((f20 * f21) * f11)) - ((f13 * f16) * f17)) + ((f22 * f21) * f17)) + ((f20 * f16) * f24)) - ((f22 * f12) * f24);
        float f31 = ((((((f21 * f17) * f10) - ((f12 * f24) * f10)) - ((f21 * f14) * f19)) + ((f18 * f24) * f19)) + ((f12 * f14) * f25)) - ((f18 * f17) * f25);
        float f32 = ((((((f20 * f24) * f10) - ((f13 * f17) * f10)) + ((f13 * f14) * f19)) - ((f23 * f24) * f19)) - ((f20 * f14) * f25)) + (f23 * f17 * f25);
        float f33 = ((((((f13 * f12) * f10) - ((f20 * f21) * f10)) - ((f13 * f18) * f19)) + ((f23 * f21) * f19)) + ((f20 * f18) * f25)) - ((f23 * f12) * f25);
        float f34 = ((((((f20 * f21) * f14) - ((f13 * f12) * f14)) + ((f13 * f18) * f17)) - ((f23 * f21) * f17)) - ((f20 * f18) * f24)) + (f23 * f12 * f24);
        float f35 = ((((((f16 * f24) * f10) - ((f21 * f11) * f10)) + ((f21 * f14) * f15)) - ((f18 * f24) * f15)) - ((f16 * f14) * f25)) + (f18 * f11 * f25);
        float f36 = ((((((f13 * f11) * f10) - ((f22 * f24) * f10)) - ((f13 * f14) * f15)) + ((f23 * f24) * f15)) + ((f22 * f14) * f25)) - ((f23 * f11) * f25);
        float f37 = ((((((f22 * f21) * f10) - ((f13 * f16) * f10)) + ((f13 * f18) * f15)) - ((f23 * f21) * f15)) - ((f22 * f18) * f25)) + (f23 * f16 * f25);
        float f38 = ((((((f13 * f16) * f14) - ((f22 * f21) * f14)) - ((f13 * f18) * f11)) + ((f21 * f23) * f11)) + ((f22 * f18) * f24)) - ((f23 * f16) * f24);
        float f39 = ((((((f12 * f11) * f10) - ((f16 * f17) * f10)) - ((f12 * f14) * f15)) + ((f18 * f17) * f15)) + ((f16 * f14) * f19)) - ((f18 * f11) * f19);
        float f40 = ((((((f22 * f17) * f10) - ((f20 * f11) * f10)) + ((f20 * f14) * f15)) - ((f23 * f17) * f15)) - ((f22 * f14) * f19)) + (f23 * f11 * f19);
        float f41 = ((((((f20 * f16) * f10) - ((f22 * f12) * f10)) - ((f20 * f18) * f15)) + ((f23 * f12) * f15)) + ((f22 * f18) * f19)) - ((f23 * f16) * f19);
        float f42 = ((((((f22 * f12) * f14) - ((f20 * f16) * f14)) + ((f20 * f18) * f11)) - ((f12 * f23) * f11)) - ((f22 * f18) * f17)) + (f23 * f16 * f17);
        float f43 = 1.0f / f26;
        fArr[0] = f27 * f43;
        fArr[1] = f31 * f43;
        fArr[2] = f35 * f43;
        fArr[3] = f39 * f43;
        fArr[4] = f28 * f43;
        fArr[5] = f32 * f43;
        fArr[6] = f36 * f43;
        fArr[7] = f40 * f43;
        fArr[8] = f29 * f43;
        fArr[9] = f33 * f43;
        fArr[10] = f37 * f43;
        fArr[11] = f41 * f43;
        fArr[12] = f30 * f43;
        fArr[13] = f34 * f43;
        fArr[14] = f38 * f43;
        fArr[15] = f42 * f43;
        return this;
    }

    public Matrix4 w0(x vector) {
        v();
        float[] fArr = this.f79235b;
        fArr[12] = vector.f34718b;
        fArr[13] = vector.f34719c;
        fArr[14] = vector.f34720d;
        return this;
    }

    public Matrix4 x0(float translationX, float translationY, float translationZ, float scalingX, float scalingY, float scalingZ) {
        v();
        float[] fArr = this.f79235b;
        fArr[12] = translationX;
        fArr[13] = translationY;
        fArr[14] = translationZ;
        fArr[0] = scalingX;
        fArr[5] = scalingY;
        fArr[10] = scalingZ;
        return this;
    }

    public Matrix4 y(Matrix4 matrix, float alpha) {
        for (int i10 = 0; i10 < 16; i10++) {
            float[] fArr = this.f79235b;
            fArr[i10] = (fArr[i10] * (1.0f - alpha)) + (matrix.f79235b[i10] * alpha);
        }
        return this;
    }

    public Matrix4 y0(x translation, x scaling) {
        v();
        float[] fArr = this.f79235b;
        fArr[12] = translation.f34718b;
        fArr[13] = translation.f34719c;
        fArr[14] = translation.f34720d;
        fArr[0] = scaling.f34718b;
        fArr[5] = scaling.f34719c;
        fArr[10] = scaling.f34720d;
        return this;
    }

    public Matrix4 z(Matrix4 matrix) {
        A(this.f79235b, matrix.f79235b);
        return this;
    }

    public Matrix4 z0(x position, x forward, x up) {
        x xVar = f79209B;
        xVar.K(forward).h();
        x xVar2 = f79208A;
        xVar2.K(xVar).T(up).h();
        x xVar3 = f79210C;
        xVar3.K(xVar2).T(xVar).h();
        Z(xVar2, xVar3, xVar.d(-1.0f), position);
        return this;
    }

    public Matrix4(Matrix4 matrix) {
        this.f79235b = new float[16];
        a0(matrix);
    }

    public Matrix4(float[] values) {
        this.f79235b = new float[16];
        b0(values);
    }

    public Matrix4(p quaternion) {
        this.f79235b = new float[16];
        W(quaternion);
    }

    public Matrix4(x position, p rotation, x scale) {
        this.f79235b = new float[16];
        Y(position, rotation, scale);
    }
}
