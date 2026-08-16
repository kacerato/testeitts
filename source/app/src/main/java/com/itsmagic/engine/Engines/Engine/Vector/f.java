package com.itsmagic.engine.Engines.Engine.Vector;

import Ic.M;
import JAVARuntime.Matrix4;
import com.bumptech.glide.load.engine.GlideException;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.jme3.math.FastMath;
import com.jme3.math.Vector3f;
import com.jme3.math.Vector4f;
import com.threed.jpct.Matrix;

public class f extends K8.f {

    public static final f f79880A;

    public static final f f79881B;

    public static final float[] f79882u;

    public float f79883b;

    public float f79884c;

    public float f79885d;

    public float f79886e;

    public float f79887g;

    public float f79888i;

    public float f79889j;

    public float f79890k;

    public float f79891l;

    public float f79892m;

    public float f79893n;

    public float f79894o;

    public float f79895p;

    public float f79896q;

    public float f79897r;

    public float f79898s;

    public Matrix4 f79899t;

    static {
        float[] fArr = new float[16];
        f79882u = fArr;
        f fVar = new f();
        fVar.G();
        fVar.Z0(new Vector3(), new Quaternion(), new Vector3(1.0f));
        fVar.o(fArr);
        f79880A = new f(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
        f79881B = new f();
    }

    public f() {
        G();
    }

    public static float B1(float[] collumMajorMatrix) {
        float f10 = collumMajorMatrix[8];
        float f11 = collumMajorMatrix[9];
        float f12 = collumMajorMatrix[10];
        return (float) Math.sqrt((f10 * f10) + (f11 * f11) + (f12 * f12));
    }

    public static void a0(float[] leftSideMatrix, float[] rightSideMatrix, float[] store) {
        float f10 = leftSideMatrix[0];
        float f11 = leftSideMatrix[4];
        float f12 = leftSideMatrix[8];
        float f13 = leftSideMatrix[12];
        float f14 = leftSideMatrix[1];
        float f15 = leftSideMatrix[5];
        float f16 = leftSideMatrix[9];
        float f17 = leftSideMatrix[13];
        float f18 = leftSideMatrix[2];
        float f19 = leftSideMatrix[6];
        float f20 = leftSideMatrix[10];
        float f21 = leftSideMatrix[14];
        float f22 = leftSideMatrix[3];
        float f23 = leftSideMatrix[7];
        float f24 = leftSideMatrix[11];
        float f25 = leftSideMatrix[15];
        float f26 = rightSideMatrix[0];
        float f27 = rightSideMatrix[4];
        float f28 = rightSideMatrix[8];
        float f29 = rightSideMatrix[12];
        float f30 = rightSideMatrix[1];
        float f31 = rightSideMatrix[5];
        float f32 = rightSideMatrix[9];
        float f33 = rightSideMatrix[13];
        float f34 = rightSideMatrix[2];
        float f35 = rightSideMatrix[6];
        float f36 = rightSideMatrix[10];
        float f37 = rightSideMatrix[14];
        float f38 = rightSideMatrix[3];
        float f39 = rightSideMatrix[7];
        float f40 = rightSideMatrix[11];
        float f41 = rightSideMatrix[15];
        store[0] = (f10 * f26) + (f11 * f30) + (f12 * f34) + (f13 * f38);
        store[4] = (f10 * f27) + (f11 * f31) + (f12 * f35) + (f13 * f39);
        store[8] = (f10 * f28) + (f11 * f32) + (f12 * f36) + (f13 * f40);
        store[12] = (f10 * f29) + (f11 * f33) + (f12 * f37) + (f13 * f41);
        store[1] = (f14 * f26) + (f15 * f30) + (f16 * f34) + (f17 * f38);
        store[5] = (f14 * f27) + (f15 * f31) + (f16 * f35) + (f17 * f39);
        store[9] = (f14 * f28) + (f15 * f32) + (f16 * f36) + (f17 * f40);
        store[13] = (f14 * f29) + (f15 * f33) + (f16 * f37) + (f17 * f41);
        store[2] = (f18 * f26) + (f19 * f30) + (f20 * f34) + (f21 * f38);
        store[6] = (f18 * f27) + (f19 * f31) + (f20 * f35) + (f21 * f39);
        store[10] = (f18 * f28) + (f19 * f32) + (f20 * f36) + (f21 * f40);
        store[14] = (f18 * f29) + (f19 * f33) + (f20 * f37) + (f21 * f41);
        store[3] = (f26 * f22) + (f30 * f23) + (f34 * f24) + (f38 * f25);
        store[7] = (f27 * f22) + (f31 * f23) + (f35 * f24) + (f39 * f25);
        store[11] = (f28 * f22) + (f32 * f23) + (f36 * f24) + (f40 * f25);
        store[15] = (f22 * f29) + (f23 * f33) + (f24 * f37) + (f25 * f41);
    }

    public static boolean n(f mat) {
        return ((double) Math.abs(mat.f79883b - 1.0f)) <= 1.0E-4d && ((double) Math.abs(mat.f79888i - 1.0f)) <= 1.0E-4d && ((double) Math.abs(mat.f79893n - 1.0f)) <= 1.0E-4d && ((double) Math.abs(mat.f79898s - 1.0f)) <= 1.0E-4d && ((double) Math.abs(mat.f79884c)) <= 1.0E-4d && ((double) Math.abs(mat.f79885d)) <= 1.0E-4d && ((double) Math.abs(mat.f79886e)) <= 1.0E-4d && ((double) Math.abs(mat.f79887g)) <= 1.0E-4d && ((double) Math.abs(mat.f79889j)) <= 1.0E-4d && ((double) Math.abs(mat.f79890k)) <= 1.0E-4d && ((double) Math.abs(mat.f79891l)) <= 1.0E-4d && ((double) Math.abs(mat.f79892m)) <= 1.0E-4d && ((double) Math.abs(mat.f79894o)) <= 1.0E-4d && ((double) Math.abs(mat.f79895p)) <= 1.0E-4d && ((double) Math.abs(mat.f79896q)) <= 1.0E-4d && ((double) Math.abs(mat.f79897r)) <= 1.0E-4d;
    }

    public static float x1(float[] collumMajorMatrix) {
        float f10 = collumMajorMatrix[0];
        float f11 = collumMajorMatrix[1];
        float f12 = collumMajorMatrix[2];
        return (float) Math.sqrt((f10 * f10) + (f11 * f11) + (f12 * f12));
    }

    public static float[] y() {
        return f79882u;
    }

    public static float z1(float[] collumMajorMatrix) {
        float f10 = collumMajorMatrix[4];
        float f11 = collumMajorMatrix[5];
        float f12 = collumMajorMatrix[6];
        return (float) Math.sqrt((f10 * f10) + (f11 * f11) + (f12 * f12));
    }

    public void A(Vector3 data) {
        data.setX(data.getX() - this.f79886e);
        data.setY(data.getY() - this.f79890k);
        data.setZ(data.getZ() - this.f79894o);
    }

    public float A1() {
        float f10 = this.f79885d;
        float f11 = this.f79889j;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f79893n;
        return (float) Math.sqrt(f12 + (f13 * f13));
    }

    public void B(float[] vec) {
        if (vec.length != 3) {
            throw new IllegalArgumentException("vec must be of size 3.");
        }
        vec[0] = vec[0] - this.f79886e;
        vec[1] = vec[1] - this.f79890k;
        vec[2] = vec[2] - this.f79894o;
    }

    public void B0(float[] angles) {
        if (angles.length != 3) {
            throw new IllegalArgumentException("Angles must be of size 3.");
        }
        C0(new float[]{angles[0] * 57.295776f, angles[1] * 57.295776f, angles[2] * 57.295776f});
    }

    public f C() {
        return D(null);
    }

    public void C0(float[] angles) {
        if (angles.length != 3) {
            throw new IllegalArgumentException("Angles must be of size 3.");
        }
        double cos = FastMath.cos(angles[0]);
        double sin = FastMath.sin(angles[0]);
        double cos2 = FastMath.cos(angles[1]);
        double sin2 = FastMath.sin(angles[1]);
        double cos3 = FastMath.cos(angles[2]);
        double sin3 = FastMath.sin(angles[2]);
        this.f79883b = (float) (cos2 * cos3);
        this.f79887g = (float) (cos2 * sin3);
        this.f79891l = (float) (-sin2);
        double d10 = sin * sin2;
        double d11 = sin2 * cos;
        this.f79884c = (float) ((d10 * cos3) - (cos * sin3));
        this.f79888i = (float) ((d10 * sin3) + (cos * cos3));
        this.f79892m = (float) (sin * cos2);
        this.f79885d = (float) ((d11 * cos3) + (sin * sin3));
        this.f79889j = (float) ((d11 * sin3) - (sin * cos3));
        this.f79893n = (float) (cos * cos2);
    }

    public Vector3 C1() {
        return new Vector3(this.f79886e, this.f79890k, this.f79894o);
    }

    public f D(f store) {
        f fVar = store == null ? new f() : store;
        float f10 = this.f79883b;
        float f11 = this.f79888i;
        float f12 = this.f79884c;
        float f13 = this.f79887g;
        float f14 = (f10 * f11) - (f12 * f13);
        float f15 = this.f79889j;
        float f16 = this.f79885d;
        float f17 = (f10 * f15) - (f16 * f13);
        float f18 = this.f79890k;
        float f19 = this.f79886e;
        float f20 = (f10 * f18) - (f13 * f19);
        float f21 = (f12 * f15) - (f16 * f11);
        float f22 = (f12 * f18) - (f11 * f19);
        float f23 = (f16 * f18) - (f19 * f15);
        float f24 = this.f79891l;
        float f25 = this.f79896q;
        float f26 = this.f79892m;
        float f27 = this.f79895p;
        float f28 = (f24 * f25) - (f26 * f27);
        float f29 = this.f79897r;
        float f30 = this.f79893n;
        float f31 = (f24 * f29) - (f30 * f27);
        f fVar2 = fVar;
        float f32 = this.f79898s;
        float f33 = this.f79894o;
        float f34 = (f24 * f32) - (f27 * f33);
        float f35 = (f26 * f29) - (f30 * f25);
        float f36 = (f26 * f32) - (f25 * f33);
        float f37 = (f30 * f32) - (f33 * f29);
        float f38 = (((((f14 * f37) - (f17 * f36)) + (f20 * f35)) + (f21 * f34)) - (f22 * f31)) + (f23 * f28);
        if (FastMath.abs(f38) <= 0.0f) {
            throw new ArithmeticException("This matrix cannot be inverted");
        }
        float f39 = this.f79888i;
        float f40 = this.f79889j;
        float f41 = this.f79890k;
        fVar2.f79883b = ((f39 * f37) - (f40 * f36)) + (f41 * f35);
        fVar2.f79887g = (((-this.f79887g) * f37) + (f40 * f34)) - (f41 * f31);
        float f42 = this.f79887g;
        fVar2.f79891l = ((f42 * f36) - (f39 * f34)) + (f41 * f28);
        fVar2.f79895p = (((-f42) * f35) + (f39 * f31)) - (f40 * f28);
        float f43 = (-this.f79884c) * f37;
        float f44 = this.f79885d;
        float f45 = this.f79886e;
        fVar2.f79884c = (f43 + (f44 * f36)) - (f45 * f35);
        float f46 = this.f79883b;
        fVar2.f79888i = ((f37 * f46) - (f44 * f34)) + (f45 * f31);
        float f47 = (-f46) * f36;
        float f48 = this.f79884c;
        fVar2.f79892m = (f47 + (f34 * f48)) - (f45 * f28);
        fVar2.f79896q = ((f46 * f35) - (f48 * f31)) + (f44 * f28);
        float f49 = this.f79896q;
        float f50 = this.f79897r;
        float f51 = this.f79898s;
        fVar2.f79885d = ((f49 * f23) - (f50 * f22)) + (f51 * f21);
        float f52 = this.f79895p;
        fVar2.f79889j = (((-f52) * f23) + (f50 * f20)) - (f51 * f17);
        fVar2.f79893n = ((f52 * f22) - (f49 * f20)) + (f51 * f14);
        fVar2.f79897r = (((-f52) * f21) + (f49 * f17)) - (f50 * f14);
        float f53 = this.f79892m;
        float f54 = this.f79893n;
        float f55 = ((-f53) * f23) + (f54 * f22);
        float f56 = this.f79894o;
        fVar2.f79886e = f55 - (f56 * f21);
        float f57 = this.f79891l;
        fVar2.f79890k = ((f57 * f23) - (f54 * f20)) + (f56 * f17);
        fVar2.f79894o = (((-f57) * f22) + (f20 * f53)) - (f56 * f14);
        fVar2.f79898s = ((f57 * f21) - (f53 * f17)) + (f54 * f14);
        fVar2.e0(1.0f / f38);
        return fVar2;
    }

    public void D0(float[] translation) {
        if (translation.length != 3) {
            throw new IllegalArgumentException("Translation size must be 3.");
        }
        this.f79886e = -translation[0];
        this.f79890k = -translation[1];
        this.f79894o = -translation[2];
    }

    public Vector3 D1(Vector3 vector) {
        vector.set(this.f79886e, this.f79890k, this.f79894o);
        return vector;
    }

    public f E() {
        float f10 = this.f79883b;
        float f11 = this.f79888i;
        float f12 = this.f79884c;
        float f13 = this.f79887g;
        float f14 = (f10 * f11) - (f12 * f13);
        float f15 = this.f79889j;
        float f16 = this.f79885d;
        float f17 = (f10 * f15) - (f16 * f13);
        float f18 = this.f79890k;
        float f19 = this.f79886e;
        float f20 = (f10 * f18) - (f13 * f19);
        float f21 = (f12 * f15) - (f16 * f11);
        float f22 = (f12 * f18) - (f11 * f19);
        float f23 = (f16 * f18) - (f19 * f15);
        float f24 = this.f79891l;
        float f25 = this.f79896q;
        float f26 = this.f79892m;
        float f27 = this.f79895p;
        float f28 = (f24 * f25) - (f26 * f27);
        float f29 = this.f79897r;
        float f30 = this.f79893n;
        float f31 = (f24 * f29) - (f30 * f27);
        float f32 = this.f79898s;
        float f33 = this.f79894o;
        float f34 = (f24 * f32) - (f27 * f33);
        float f35 = (f26 * f29) - (f30 * f25);
        float f36 = (f26 * f32) - (f25 * f33);
        float f37 = (f30 * f32) - (f33 * f29);
        float f38 = (((((f14 * f37) - (f17 * f36)) + (f20 * f35)) + (f21 * f34)) - (f22 * f31)) + (f23 * f28);
        if (FastMath.abs(f38) <= 0.0f) {
            return O1();
        }
        float f39 = this.f79888i;
        float f40 = this.f79889j;
        float f41 = this.f79890k;
        float f42 = ((f39 * f37) - (f40 * f36)) + (f41 * f35);
        float f43 = this.f79887g;
        float f44 = (((-f43) * f37) + (f40 * f34)) - (f41 * f31);
        float f45 = ((f43 * f36) - (f39 * f34)) + (f41 * f28);
        float f46 = (((-f43) * f35) + (f39 * f31)) - (f40 * f28);
        float f47 = this.f79884c;
        float f48 = this.f79885d;
        float f49 = this.f79886e;
        float f50 = (((-f47) * f37) + (f48 * f36)) - (f49 * f35);
        float f51 = this.f79883b;
        float f52 = ((f37 * f51) - (f48 * f34)) + (f49 * f31);
        float f53 = (((-f51) * f36) + (f34 * f47)) - (f49 * f28);
        float f54 = ((f51 * f35) - (f47 * f31)) + (f48 * f28);
        float f55 = this.f79896q;
        float f56 = this.f79897r;
        float f57 = this.f79898s;
        float f58 = ((f55 * f23) - (f56 * f22)) + (f57 * f21);
        float f59 = this.f79895p;
        float f60 = (((-f59) * f23) + (f56 * f20)) - (f57 * f17);
        float f61 = ((f59 * f22) - (f55 * f20)) + (f57 * f14);
        float f62 = (((-f59) * f21) + (f55 * f17)) - (f56 * f14);
        float f63 = this.f79892m;
        float f64 = this.f79893n;
        float f65 = this.f79894o;
        float f66 = this.f79891l;
        this.f79883b = f42;
        this.f79884c = f50;
        this.f79885d = f58;
        this.f79886e = (((-f63) * f23) + (f64 * f22)) - (f65 * f21);
        this.f79887g = f44;
        this.f79888i = f52;
        this.f79889j = f60;
        this.f79890k = ((f23 * f66) - (f64 * f20)) + (f65 * f17);
        this.f79891l = f45;
        this.f79892m = f53;
        this.f79893n = f61;
        this.f79894o = (((-f66) * f22) + (f20 * f63)) - (f65 * f14);
        this.f79895p = f46;
        this.f79896q = f54;
        this.f79897r = f62;
        this.f79898s = ((f66 * f21) - (f63 * f17)) + (f64 * f14);
        e0(1.0f / f38);
        return this;
    }

    public void E0(Vector3 scale) {
        float x10 = scale.getX();
        float y10 = scale.getY();
        float z10 = scale.getZ();
        this.f79883b = x10;
        this.f79884c = 0.0f;
        this.f79885d = 0.0f;
        this.f79886e = 0.0f;
        this.f79887g = 0.0f;
        this.f79888i = y10;
        this.f79889j = 0.0f;
        this.f79890k = 0.0f;
        this.f79891l = 0.0f;
        this.f79892m = 0.0f;
        this.f79893n = z10;
        this.f79894o = 0.0f;
        this.f79895p = 0.0f;
        this.f79896q = 0.0f;
        this.f79897r = 0.0f;
        this.f79898s = 1.0f;
    }

    public Vector3f E1(Vector3f vector) {
        vector.set(this.f79886e, this.f79890k, this.f79894o);
        return vector;
    }

    public boolean F() {
        return this.f79883b == 1.0f && this.f79884c == 0.0f && this.f79885d == 0.0f && this.f79886e == 0.0f && this.f79887g == 0.0f && this.f79888i == 1.0f && this.f79889j == 0.0f && this.f79890k == 0.0f && this.f79891l == 0.0f && this.f79892m == 0.0f && this.f79893n == 1.0f && this.f79894o == 0.0f && this.f79895p == 0.0f && this.f79896q == 0.0f && this.f79897r == 0.0f && this.f79898s == 1.0f;
    }

    public void F0(float x10, float y10, float z10, float w10) {
        M a10 = M.a();
        Vector3f vector3f = a10.f9064k;
        v1(vector3f);
        setScale(1.0f, 1.0f, 1.0f);
        float f10 = (w10 * w10) + (x10 * x10) + (y10 * y10) + (z10 * z10);
        float f11 = f10 != 1.0f ? f10 > 0.0f ? 2.0f / f10 : 0.0f : 2.0f;
        float f12 = x10 * f11;
        float f13 = y10 * f11;
        float f14 = f11 * z10;
        float f15 = x10 * f12;
        float f16 = x10 * f13;
        float f17 = x10 * f14;
        float f18 = f12 * w10;
        float f19 = y10 * f13;
        float f20 = y10 * f14;
        float f21 = f13 * w10;
        float f22 = z10 * f14;
        float f23 = w10 * f14;
        this.f79883b = 1.0f - (f19 + f22);
        this.f79884c = f16 - f23;
        this.f79885d = f17 + f21;
        this.f79887g = f16 + f23;
        this.f79888i = 1.0f - (f22 + f15);
        this.f79889j = f20 - f18;
        this.f79891l = f17 - f21;
        this.f79892m = f20 + f18;
        this.f79893n = 1.0f - (f15 + f19);
        H0(vector3f);
        a10.b();
    }

    public float F1() {
        return this.f79886e;
    }

    public void G() {
        this.f79886e = 0.0f;
        this.f79885d = 0.0f;
        this.f79884c = 0.0f;
        this.f79890k = 0.0f;
        this.f79889j = 0.0f;
        this.f79887g = 0.0f;
        this.f79894o = 0.0f;
        this.f79892m = 0.0f;
        this.f79891l = 0.0f;
        this.f79897r = 0.0f;
        this.f79896q = 0.0f;
        this.f79895p = 0.0f;
        this.f79898s = 1.0f;
        this.f79893n = 1.0f;
        this.f79888i = 1.0f;
        this.f79883b = 1.0f;
    }

    public void G0(Quaternion quat) {
        quat.U0(this);
    }

    public float G1() {
        return this.f79890k;
    }

    public Quaternion H(Quaternion vec, Quaternion store) {
        if (vec == null) {
            return null;
        }
        if (store == null) {
            store = new Quaternion();
        }
        float x10 = (this.f79883b * vec.getX()) + (this.f79887g * vec.getY()) + (this.f79891l * vec.getZ()) + (this.f79895p * vec.I());
        float x11 = (this.f79884c * vec.getX()) + (this.f79888i * vec.getY()) + (this.f79892m * vec.getZ()) + (this.f79896q * vec.I());
        float x12 = (this.f79885d * vec.getX()) + (this.f79889j * vec.getY()) + (this.f79893n * vec.getZ()) + (this.f79897r * vec.I());
        float x13 = (this.f79886e * vec.getX()) + (this.f79890k * vec.getY()) + (this.f79894o * vec.getZ()) + (this.f79898s * vec.I());
        store.setX(x10);
        store.setY(x11);
        store.setZ(x12);
        store.G0(x13);
        return store;
    }

    public void H0(Vector3f scale) {
        setScale(scale.f81611x, scale.f81612y, scale.f81613z);
    }

    public float H1() {
        return this.f79894o;
    }

    public f I(float scalar) {
        f fVar = new f();
        fVar.s0(this);
        fVar.e0(scalar);
        return fVar;
    }

    public void I0(float posX, float posY, float posZ) {
        this.f79883b = 1.0f;
        this.f79884c = 0.0f;
        this.f79885d = 0.0f;
        this.f79886e = posX;
        this.f79887g = 0.0f;
        this.f79888i = 1.0f;
        this.f79889j = 0.0f;
        this.f79890k = posY;
        this.f79891l = 0.0f;
        this.f79892m = 0.0f;
        this.f79893n = 1.0f;
        this.f79894o = posZ;
        this.f79895p = 0.0f;
        this.f79896q = 0.0f;
        this.f79897r = 0.0f;
        this.f79898s = 1.0f;
    }

    public f J(float scalar, f store) {
        store.s0(this);
        store.e0(scalar);
        return store;
    }

    public void J0(float posX, float posY, float posZ, float scaleX, float scaleY, float scaleZ) {
        this.f79883b = scaleX * 1.0f;
        this.f79884c = scaleY * 0.0f;
        this.f79885d = scaleZ * 0.0f;
        this.f79886e = posX;
        this.f79887g = scaleX * 0.0f;
        this.f79888i = scaleY * 1.0f;
        this.f79889j = scaleZ * 0.0f;
        this.f79890k = posY;
        this.f79891l = scaleX * 0.0f;
        this.f79892m = scaleY * 0.0f;
        this.f79893n = scaleZ * 1.0f;
        this.f79894o = posZ;
        this.f79895p = 0.0f;
        this.f79896q = 0.0f;
        this.f79897r = 0.0f;
        this.f79898s = 1.0f;
    }

    public void J1(Vector3 data) {
        data.setX(data.getX() + this.f79886e);
        data.setY(data.getY() + this.f79890k);
        data.setZ(data.getZ() + this.f79894o);
    }

    public f K(f in2) {
        return L(in2, null);
    }

    public void K0(float px, float py, float pz, float sx, float sy, float sz, float rw, float rx, float ry, float rz) {
        float f10 = (rw * rw) + (rx * rx) + (ry * ry) + (rz * rz);
        float f11 = f10 != 1.0f ? f10 > 0.0f ? 2.0f / f10 : 0.0f : 2.0f;
        float f12 = rx * f11;
        float f13 = ry * f11;
        float f14 = f11 * rz;
        float f15 = rx * f12;
        float f16 = rx * f13;
        float f17 = rx * f14;
        float f18 = f12 * rw;
        float f19 = ry * f13;
        float f20 = ry * f14;
        float f21 = f13 * rw;
        float f22 = rz * f14;
        float f23 = f14 * rw;
        float f24 = f16 - f23;
        float f25 = f16 + f23;
        this.f79883b = sx * (1.0f - (f19 + f22));
        this.f79884c = sy * f24;
        this.f79885d = sz * (f17 + f21);
        this.f79886e = px;
        this.f79887g = sx * f25;
        this.f79888i = sy * (1.0f - (f22 + f15));
        this.f79889j = sz * (f20 - f18);
        this.f79890k = py;
        this.f79891l = sx * (f17 - f21);
        this.f79892m = sy * (f20 + f18);
        this.f79893n = (1.0f - (f15 + f19)) * sz;
        this.f79894o = pz;
        this.f79895p = 0.0f;
        this.f79896q = 0.0f;
        this.f79897r = 0.0f;
        this.f79898s = 1.0f;
    }

    public float K1(Vector3 other) {
        return other.distance(this.f79886e, this.f79890k, this.f79894o);
    }

    public f L(f in2, f store) {
        f fVar = store == null ? new f() : store;
        M a10 = M.a();
        float[] fArr = a10.f9050M;
        float f10 = this.f79883b;
        float f11 = in2.f79883b;
        float f12 = this.f79884c;
        float f13 = in2.f79887g;
        float f14 = this.f79885d;
        float f15 = in2.f79891l;
        float f16 = this.f79886e;
        float f17 = in2.f79895p;
        float f18 = (f10 * f11) + (f12 * f13) + (f14 * f15) + (f16 * f17);
        fArr[0] = f18;
        float f19 = in2.f79884c;
        float f20 = in2.f79888i;
        f fVar2 = fVar;
        float f21 = in2.f79892m;
        float f22 = in2.f79896q;
        float f23 = (f10 * f19) + (f12 * f20) + (f14 * f21) + (f16 * f22);
        fArr[1] = f23;
        float f24 = in2.f79885d;
        float f25 = f10 * f24;
        float f26 = in2.f79889j;
        float f27 = f25 + (f12 * f26);
        float f28 = in2.f79893n;
        float f29 = f27 + (f14 * f28);
        float f30 = in2.f79897r;
        float f31 = f29 + (f16 * f30);
        fArr[2] = f31;
        float f32 = in2.f79886e;
        float f33 = f10 * f32;
        float f34 = in2.f79890k;
        float f35 = f33 + (f12 * f34);
        float f36 = in2.f79894o;
        float f37 = in2.f79898s;
        float f38 = f35 + (f14 * f36) + (f16 * f37);
        fArr[3] = f38;
        float f39 = this.f79887g;
        float f40 = this.f79888i;
        float f41 = (f39 * f11) + (f40 * f13);
        float f42 = this.f79889j;
        float f43 = f41 + (f42 * f15);
        float f44 = this.f79890k;
        float f45 = f43 + (f44 * f17);
        fArr[4] = f45;
        float f46 = (f39 * f19) + (f40 * f20) + (f42 * f21) + (f44 * f22);
        fArr[5] = f46;
        float f47 = (f39 * f24) + (f40 * f26) + (f42 * f28) + (f44 * f30);
        fArr[6] = f47;
        float f48 = (f39 * f32) + (f40 * f34) + (f42 * f36) + (f44 * f37);
        fArr[7] = f48;
        float f49 = this.f79891l;
        float f50 = this.f79892m;
        float f51 = this.f79893n;
        float f52 = this.f79894o;
        float f53 = (f49 * f11) + (f50 * f13) + (f51 * f15) + (f52 * f17);
        fArr[8] = f53;
        float f54 = (f49 * f19) + (f50 * f20) + (f51 * f21) + (f52 * f22);
        fArr[9] = f54;
        float f55 = (f49 * f24) + (f50 * f26) + (f51 * f28) + (f52 * f30);
        fArr[10] = f55;
        float f56 = (f49 * f32) + (f50 * f34) + (f51 * f36) + (f52 * f37);
        fArr[11] = f56;
        float f57 = this.f79895p;
        float f58 = this.f79896q;
        float f59 = this.f79897r;
        float f60 = this.f79898s;
        float f61 = (f11 * f57) + (f58 * f13) + (f59 * f15) + (f17 * f60);
        fArr[12] = f61;
        float f62 = (f19 * f57) + (f20 * f58) + (f21 * f59) + (f22 * f60);
        fArr[13] = f62;
        float f63 = (f57 * f24) + (f58 * f26) + (f59 * f28) + (f60 * f30);
        fArr[14] = f63;
        float f64 = (f57 * f32) + (f58 * f34) + (f59 * f36) + (f60 * f37);
        fArr[15] = f64;
        fVar2.f79883b = f18;
        fVar2.f79884c = f23;
        fVar2.f79885d = f31;
        fVar2.f79886e = f38;
        fVar2.f79887g = f45;
        fVar2.f79888i = f46;
        fVar2.f79889j = f47;
        fVar2.f79890k = f48;
        fVar2.f79891l = f53;
        fVar2.f79892m = f54;
        fVar2.f79893n = f55;
        fVar2.f79894o = f56;
        fVar2.f79895p = f61;
        fVar2.f79896q = f62;
        fVar2.f79897r = f63;
        fVar2.f79898s = f64;
        a10.b();
        return fVar2;
    }

    public void L0(float px, float py, float pz, float sx, float sy, float sz, Quaternion rotation) {
        float j02 = rotation.j0();
        float f10 = j02 != 1.0f ? j02 > 0.0f ? 2.0f / j02 : 0.0f : 2.0f;
        float x10 = rotation.getX() * f10;
        float y10 = rotation.getY() * f10;
        float z10 = rotation.getZ() * f10;
        float x11 = rotation.getX() * x10;
        float x12 = rotation.getX() * y10;
        float x13 = rotation.getX() * z10;
        float I10 = rotation.I() * x10;
        float y11 = rotation.getY() * y10;
        float y12 = rotation.getY() * z10;
        float I11 = rotation.I() * y10;
        float z11 = rotation.getZ() * z10;
        float I12 = rotation.I() * z10;
        this.f79883b = sx * (1.0f - (y11 + z11));
        this.f79884c = sy * (x12 - I12);
        this.f79885d = sz * (x13 + I11);
        this.f79886e = px;
        this.f79887g = sx * (x12 + I12);
        this.f79888i = (1.0f - (z11 + x11)) * sy;
        this.f79889j = sz * (y12 - I10);
        this.f79890k = py;
        this.f79891l = sx * (x13 - I11);
        this.f79892m = sy * (y12 + I10);
        this.f79893n = (1.0f - (x11 + y11)) * sz;
        this.f79894o = pz;
        this.f79895p = 0.0f;
        this.f79896q = 0.0f;
        this.f79897r = 0.0f;
        this.f79898s = 1.0f;
    }

    public float L1(Vector3 other) {
        return other.sqrtDistance(this.f79886e, this.f79890k, this.f79894o);
    }

    public Vector3 M(float x10, float y10, float z10) {
        return N(x10, y10, z10, null);
    }

    public void M0(float posX, float posY, float posZ, Vector3 scale) {
        float x10 = scale.getX();
        float y10 = scale.getY();
        float z10 = scale.getZ();
        this.f79883b = x10 * 1.0f;
        this.f79884c = y10 * 0.0f;
        this.f79885d = z10 * 0.0f;
        this.f79886e = posX;
        this.f79887g = x10 * 0.0f;
        this.f79888i = y10 * 1.0f;
        this.f79889j = z10 * 0.0f;
        this.f79890k = posY;
        this.f79891l = x10 * 0.0f;
        this.f79892m = y10 * 0.0f;
        this.f79893n = z10 * 1.0f;
        this.f79894o = posZ;
        this.f79895p = 0.0f;
        this.f79896q = 0.0f;
        this.f79897r = 0.0f;
        this.f79898s = 1.0f;
    }

    public f M1() {
        float[] fArr = new float[16];
        v(fArr, true);
        return new f(fArr);
    }

    public Vector3 N(float x10, float y10, float z10, Vector3 store) {
        if (store == null) {
            store = new Vector3();
        }
        store.setX((this.f79883b * x10) + (this.f79884c * y10) + (this.f79885d * z10) + this.f79886e);
        store.setY((this.f79887g * x10) + (this.f79888i * y10) + (this.f79889j * z10) + this.f79890k);
        store.setZ((this.f79891l * x10) + (this.f79892m * y10) + (this.f79893n * z10) + this.f79894o);
        return store;
    }

    public void N0(float px, float py, float pz, Vector3 scale, Quaternion rotation) {
        float j02 = rotation.j0();
        float f10 = j02 != 1.0f ? j02 > 0.0f ? 2.0f / j02 : 0.0f : 2.0f;
        float x10 = rotation.getX() * f10;
        float y10 = rotation.getY() * f10;
        float z10 = rotation.getZ() * f10;
        float x11 = rotation.getX() * x10;
        float x12 = rotation.getX() * y10;
        float x13 = rotation.getX() * z10;
        float I10 = rotation.I() * x10;
        float y11 = rotation.getY() * y10;
        float y12 = rotation.getY() * z10;
        float I11 = rotation.I() * y10;
        float z11 = rotation.getZ() * z10;
        float I12 = rotation.I() * z10;
        this.f79883b = scale.getX() * (1.0f - (y11 + z11));
        this.f79884c = scale.getY() * (x12 - I12);
        this.f79885d = scale.getZ() * (x13 + I11);
        this.f79886e = px;
        this.f79887g = scale.getX() * (x12 + I12);
        this.f79888i = scale.getY() * (1.0f - (z11 + x11));
        this.f79889j = scale.getZ() * (y12 - I10);
        this.f79890k = py;
        this.f79891l = scale.getX() * (x13 - I11);
        this.f79892m = scale.getY() * (y12 + I10);
        this.f79893n = scale.getZ() * (1.0f - (x11 + y11));
        this.f79894o = pz;
        this.f79895p = 0.0f;
        this.f79896q = 0.0f;
        this.f79897r = 0.0f;
        this.f79898s = 1.0f;
    }

    public f N1() {
        float f10 = this.f79884c;
        this.f79884c = this.f79887g;
        this.f79887g = f10;
        float f11 = this.f79885d;
        this.f79885d = this.f79891l;
        this.f79891l = f11;
        float f12 = this.f79886e;
        this.f79886e = this.f79895p;
        this.f79895p = f12;
        float f13 = this.f79889j;
        this.f79889j = this.f79892m;
        this.f79892m = f13;
        float f14 = this.f79890k;
        this.f79890k = this.f79896q;
        this.f79896q = f14;
        float f15 = this.f79894o;
        this.f79894o = this.f79897r;
        this.f79897r = f15;
        return this;
    }

    public Vector3 O(Vector3 vec) {
        return P(vec, null);
    }

    public void O0(Transform transform) {
        float w02 = transform.w0();
        float x02 = transform.x0();
        float y02 = transform.y0();
        float F02 = transform.F0();
        float G02 = transform.G0();
        float H02 = transform.H0();
        K0(w02, x02, y02, transform.M0(), transform.N0(), transform.O0(), transform.E0(), F02, G02, H02);
    }

    public f O1() {
        this.f79886e = 0.0f;
        this.f79885d = 0.0f;
        this.f79884c = 0.0f;
        this.f79883b = 0.0f;
        this.f79890k = 0.0f;
        this.f79889j = 0.0f;
        this.f79888i = 0.0f;
        this.f79887g = 0.0f;
        this.f79894o = 0.0f;
        this.f79893n = 0.0f;
        this.f79892m = 0.0f;
        this.f79891l = 0.0f;
        this.f79898s = 0.0f;
        this.f79897r = 0.0f;
        this.f79896q = 0.0f;
        this.f79895p = 0.0f;
        return this;
    }

    public Vector3 P(Vector3 vec, Vector3 store) {
        if (store == null) {
            store = new Vector3();
        }
        float x10 = vec.getX();
        float y10 = vec.getY();
        float z10 = vec.getZ();
        store.setX((this.f79883b * x10) + (this.f79884c * y10) + (this.f79885d * z10) + this.f79886e);
        store.setY((this.f79887g * x10) + (this.f79888i * y10) + (this.f79889j * z10) + this.f79890k);
        store.setZ((this.f79891l * x10) + (this.f79892m * y10) + (this.f79893n * z10) + this.f79894o);
        return store;
    }

    public void P0(Transform transform, float px, float py, float pz, boolean rotation, boolean scale) {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        if (rotation) {
            float F02 = transform.F0();
            f11 = F02;
            f12 = transform.G0();
            f13 = transform.H0();
            f10 = transform.E0();
        } else {
            f10 = 1.0f;
            f11 = 0.0f;
            f12 = 0.0f;
            f13 = 0.0f;
        }
        if (scale) {
            f14 = transform.M0();
            f15 = transform.N0();
            f16 = transform.O0();
        } else {
            f14 = 1.0f;
            f15 = 1.0f;
            f16 = 1.0f;
        }
        K0(px, py, pz, f14, f15, f16, f10, f11, f12, f13);
    }

    public Vector4 Q(Vector4 vec, Vector4 store) {
        if (vec == null) {
            throw new NullPointerException("vec can't be null");
        }
        if (store == null) {
            store = new Vector4();
        }
        float f10 = vec.f79845x;
        float f11 = vec.f79846y;
        float f12 = vec.f79847z;
        float f13 = vec.f79844w;
        store.f79845x = (this.f79883b * f10) + (this.f79884c * f11) + (this.f79885d * f12) + (this.f79886e * f13);
        store.f79846y = (this.f79887g * f10) + (this.f79888i * f11) + (this.f79889j * f12) + (this.f79890k * f13);
        store.f79847z = (this.f79891l * f10) + (this.f79892m * f11) + (this.f79893n * f12) + (this.f79894o * f13);
        store.f79844w = (this.f79895p * f10) + (this.f79896q * f11) + (this.f79897r * f12) + (this.f79898s * f13);
        return store;
    }

    public void Q0(Transform transform, boolean position, boolean rotation, boolean scale) {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        float f19;
        if (position) {
            f10 = transform.w0();
            f11 = transform.x0();
            f12 = transform.y0();
        } else {
            f10 = 0.0f;
            f11 = 0.0f;
            f12 = 0.0f;
        }
        if (rotation) {
            float F02 = transform.F0();
            f13 = F02;
            f14 = transform.G0();
            f15 = transform.H0();
            f16 = transform.E0();
        } else {
            f13 = 0.0f;
            f14 = 0.0f;
            f15 = 0.0f;
            f16 = 1.0f;
        }
        if (scale) {
            f17 = transform.M0();
            f18 = transform.N0();
            f19 = transform.O0();
        } else {
            f17 = 1.0f;
            f18 = 1.0f;
            f19 = 1.0f;
        }
        K0(f10, f11, f12, f17, f18, f19, f16, f13, f14, f15);
    }

    public void R0(Quaternion rotation) {
        float I10 = rotation.I();
        float x10 = rotation.getX();
        float y10 = rotation.getY();
        float z10 = rotation.getZ();
        float f10 = (I10 * I10) + (x10 * x10) + (y10 * y10) + (z10 * z10);
        float f11 = f10 != 1.0f ? f10 > 0.0f ? 2.0f / f10 : 0.0f : 2.0f;
        float f12 = x10 * f11;
        float f13 = y10 * f11;
        float f14 = f11 * z10;
        float f15 = x10 * f12;
        float f16 = x10 * f13;
        float f17 = x10 * f14;
        float f18 = f12 * I10;
        float f19 = y10 * f13;
        float f20 = y10 * f14;
        float f21 = f13 * I10;
        float f22 = z10 * f14;
        float f23 = I10 * f14;
        float f24 = f16 - f23;
        this.f79883b = (1.0f - (f19 + f22)) * 1.0f;
        this.f79884c = f24 * 1.0f;
        this.f79885d = (f17 + f21) * 1.0f;
        this.f79886e = 0.0f;
        this.f79887g = (f16 + f23) * 1.0f;
        this.f79888i = (1.0f - (f22 + f15)) * 1.0f;
        this.f79889j = (f20 - f18) * 1.0f;
        this.f79890k = 0.0f;
        this.f79891l = (f17 - f21) * 1.0f;
        this.f79892m = (f20 + f18) * 1.0f;
        this.f79893n = (1.0f - (f15 + f19)) * 1.0f;
        this.f79894o = 0.0f;
        this.f79895p = 0.0f;
        this.f79896q = 0.0f;
        this.f79897r = 0.0f;
        this.f79898s = 1.0f;
    }

    public Vector3f S(Vector3f vec, Vector3f store) {
        if (store == null) {
            store = new Vector3f();
        }
        float f10 = vec.f81611x;
        float f11 = vec.f81612y;
        float f12 = vec.f81613z;
        store.f81611x = (this.f79883b * f10) + (this.f79884c * f11) + (this.f79885d * f12) + this.f79886e;
        store.f81612y = (this.f79887g * f10) + (this.f79888i * f11) + (this.f79889j * f12) + this.f79890k;
        store.f81613z = (this.f79891l * f10) + (this.f79892m * f11) + (this.f79893n * f12) + this.f79894o;
        return store;
    }

    public Vector4f T(Vector4f vec) {
        return U(vec, null);
    }

    public Vector4f U(Vector4f vec, Vector4f store) {
        if (vec == null) {
            throw new NullPointerException("vec can't be null");
        }
        if (store == null) {
            store = new Vector4f();
        }
        float f10 = vec.f81615x;
        float f11 = vec.f81616y;
        float f12 = vec.f81617z;
        float f13 = vec.f81614w;
        store.f81615x = (this.f79883b * f10) + (this.f79884c * f11) + (this.f79885d * f12) + (this.f79886e * f13);
        store.f81616y = (this.f79887g * f10) + (this.f79888i * f11) + (this.f79889j * f12) + (this.f79890k * f13);
        store.f81617z = (this.f79891l * f10) + (this.f79892m * f11) + (this.f79893n * f12) + (this.f79894o * f13);
        store.f81614w = (this.f79895p * f10) + (this.f79896q * f11) + (this.f79897r * f12) + (this.f79898s * f13);
        return store;
    }

    public void U0(Vector3 position) {
        float x10 = position.getX();
        float y10 = position.getY();
        float z10 = position.getZ();
        this.f79883b = 1.0f;
        this.f79884c = 0.0f;
        this.f79885d = 0.0f;
        this.f79886e = x10;
        this.f79887g = 0.0f;
        this.f79888i = 1.0f;
        this.f79889j = 0.0f;
        this.f79890k = y10;
        this.f79891l = 0.0f;
        this.f79892m = 0.0f;
        this.f79893n = 1.0f;
        this.f79894o = z10;
        this.f79895p = 0.0f;
        this.f79896q = 0.0f;
        this.f79897r = 0.0f;
        this.f79898s = 1.0f;
    }

    public float[] V(float[] vec4f) {
        if (vec4f == null || vec4f.length != 4) {
            return null;
        }
        float f10 = vec4f[0];
        float f11 = vec4f[1];
        float f12 = vec4f[2];
        float f13 = vec4f[3];
        vec4f[0] = (this.f79883b * f10) + (this.f79884c * f11) + (this.f79885d * f12) + (this.f79886e * f13);
        vec4f[1] = (this.f79887g * f10) + (this.f79888i * f11) + (this.f79889j * f12) + (this.f79890k * f13);
        vec4f[2] = (this.f79891l * f10) + (this.f79892m * f11) + (this.f79893n * f12) + (this.f79894o * f13);
        vec4f[3] = (this.f79895p * f10) + (this.f79896q * f11) + (this.f79897r * f12) + (this.f79898s * f13);
        return vec4f;
    }

    public void V0(Vector3 position, float scale) {
        J0(position.getX(), position.getY(), position.getZ(), scale, scale, scale);
    }

    public Vector3 W(Vector3 vec, Vector3 store) {
        if (vec == null) {
            return null;
        }
        if (store == null) {
            store = new Vector3();
        }
        float x10 = vec.getX();
        float y10 = vec.getY();
        float z10 = vec.getZ();
        store.setX((this.f79883b * x10) + (this.f79887g * y10) + (this.f79891l * z10) + (this.f79895p * 1.0f));
        store.setY((this.f79884c * x10) + (this.f79888i * y10) + (this.f79892m * z10) + (this.f79896q * 1.0f));
        store.setZ((this.f79885d * x10) + (this.f79889j * y10) + (this.f79893n * z10) + (this.f79897r * 1.0f));
        return store;
    }

    public void W0(Vector3 position, float scale, Quaternion rotation) {
        float j02 = rotation.j0();
        float f10 = j02 != 1.0f ? j02 > 0.0f ? 2.0f / j02 : 0.0f : 2.0f;
        float x10 = rotation.getX() * f10;
        float y10 = rotation.getY() * f10;
        float z10 = rotation.getZ() * f10;
        float x11 = rotation.getX() * x10;
        float x12 = rotation.getX() * y10;
        float x13 = rotation.getX() * z10;
        float I10 = rotation.I() * x10;
        float y11 = rotation.getY() * y10;
        float y12 = rotation.getY() * z10;
        float I11 = rotation.I() * y10;
        float z11 = rotation.getZ() * z10;
        float I12 = rotation.I() * z10;
        this.f79883b = scale * (1.0f - (y11 + z11));
        this.f79884c = scale * (x12 - I12);
        this.f79885d = scale * (x13 + I11);
        this.f79886e = position.getX();
        this.f79887g = scale * (x12 + I12);
        this.f79888i = (1.0f - (z11 + x11)) * scale;
        this.f79889j = scale * (y12 - I10);
        this.f79890k = position.getY();
        this.f79891l = scale * (x13 - I11);
        this.f79892m = scale * (y12 + I10);
        this.f79893n = (1.0f - (x11 + y11)) * scale;
        this.f79894o = position.getZ();
        this.f79895p = 0.0f;
        this.f79896q = 0.0f;
        this.f79897r = 0.0f;
        this.f79898s = 1.0f;
    }

    public float[] X(float[] vec4f) {
        if (vec4f == null || vec4f.length != 4) {
            return null;
        }
        float f10 = vec4f[0];
        float f11 = vec4f[1];
        float f12 = vec4f[2];
        float f13 = vec4f[3];
        vec4f[0] = (this.f79883b * f10) + (this.f79887g * f11) + (this.f79891l * f12) + (this.f79895p * f13);
        vec4f[1] = (this.f79884c * f10) + (this.f79888i * f11) + (this.f79892m * f12) + (this.f79896q * f13);
        vec4f[2] = (this.f79885d * f10) + (this.f79889j * f11) + (this.f79893n * f12) + (this.f79897r * f13);
        vec4f[3] = (this.f79886e * f10) + (this.f79890k * f11) + (this.f79894o * f12) + (this.f79898s * f13);
        return vec4f;
    }

    public void X0(Vector3 position, Quaternion rotation) {
        float j02 = rotation.j0();
        float f10 = j02 != 1.0f ? j02 > 0.0f ? 2.0f / j02 : 0.0f : 2.0f;
        float x10 = rotation.getX() * f10;
        float y10 = rotation.getY() * f10;
        float z10 = rotation.getZ() * f10;
        float x11 = rotation.getX() * x10;
        float x12 = rotation.getX() * y10;
        float x13 = rotation.getX() * z10;
        float I10 = rotation.I() * x10;
        float y11 = rotation.getY() * y10;
        float y12 = rotation.getY() * z10;
        float I11 = rotation.I() * y10;
        float z11 = rotation.getZ() * z10;
        float I12 = rotation.I() * z10;
        float f11 = x12 - I12;
        this.f79883b = (1.0f - (y11 + z11)) * 1.0f;
        this.f79884c = f11 * 1.0f;
        this.f79885d = (x13 + I11) * 1.0f;
        this.f79886e = position.getX();
        this.f79887g = (x12 + I12) * 1.0f;
        this.f79888i = (1.0f - (z11 + x11)) * 1.0f;
        this.f79889j = (y12 - I10) * 1.0f;
        this.f79890k = position.getY();
        this.f79891l = (x13 - I11) * 1.0f;
        this.f79892m = (y12 + I10) * 1.0f;
        this.f79893n = (1.0f - (x11 + y11)) * 1.0f;
        this.f79894o = position.getZ();
        this.f79895p = 0.0f;
        this.f79896q = 0.0f;
        this.f79897r = 0.0f;
        this.f79898s = 1.0f;
    }

    public void Y(float[] matrix, f store) {
        float f10 = matrix[0];
        float f11 = matrix[4];
        float f12 = matrix[8];
        float f13 = matrix[12];
        float f14 = matrix[1];
        float f15 = matrix[5];
        float f16 = matrix[9];
        float f17 = matrix[13];
        float f18 = matrix[2];
        float f19 = matrix[6];
        float f20 = matrix[10];
        float f21 = matrix[14];
        float f22 = matrix[3];
        float f23 = matrix[7];
        float f24 = matrix[11];
        float f25 = matrix[15];
        float f26 = this.f79883b * f10;
        float f27 = this.f79884c;
        float f28 = f26 + (f27 * f14);
        float f29 = this.f79885d;
        float f30 = f28 + (f29 * f18);
        float f31 = this.f79886e;
        store.f79883b = f30 + (f31 * f22);
        float f32 = this.f79883b;
        store.f79884c = (f32 * f11) + (f27 * f15) + (f29 * f19) + (f31 * f23);
        float f33 = f32 * f12;
        float f34 = this.f79884c;
        store.f79885d = f33 + (f34 * f16) + (f29 * f20) + (f31 * f24);
        store.f79886e = (f32 * f13) + (f34 * f17) + (this.f79885d * f21) + (f31 * f25);
        float f35 = this.f79887g * f10;
        float f36 = this.f79888i;
        float f37 = f35 + (f36 * f14);
        float f38 = this.f79889j;
        float f39 = f37 + (f38 * f18);
        float f40 = this.f79890k;
        store.f79887g = f39 + (f40 * f22);
        float f41 = this.f79887g;
        store.f79888i = (f41 * f11) + (f36 * f15) + (f38 * f19) + (f40 * f23);
        float f42 = this.f79888i;
        store.f79889j = (f41 * f12) + (f42 * f16) + (f38 * f20) + (f40 * f24);
        store.f79890k = (f41 * f13) + (f42 * f17) + (this.f79889j * f21) + (f40 * f25);
        float f43 = this.f79891l * f10;
        float f44 = this.f79892m;
        float f45 = f43 + (f44 * f14);
        float f46 = this.f79893n;
        float f47 = f45 + (f46 * f18);
        float f48 = this.f79894o;
        store.f79891l = f47 + (f48 * f22);
        float f49 = this.f79891l;
        store.f79892m = (f49 * f11) + (f44 * f15) + (f46 * f19) + (f48 * f23);
        float f50 = this.f79892m;
        store.f79893n = (f49 * f12) + (f50 * f16) + (f46 * f20) + (f48 * f24);
        store.f79894o = (f49 * f13) + (f50 * f17) + (this.f79893n * f21) + (f48 * f25);
        float f51 = this.f79895p * f10;
        float f52 = this.f79896q;
        float f53 = f51 + (f52 * f14);
        float f54 = this.f79897r;
        float f55 = f53 + (f54 * f18);
        float f56 = this.f79898s;
        store.f79895p = f55 + (f22 * f56);
        float f57 = this.f79895p;
        store.f79896q = (f11 * f57) + (f52 * f15) + (f19 * f54) + (f23 * f56);
        float f58 = this.f79896q;
        store.f79897r = (f57 * f12) + (f16 * f58) + (f54 * f20) + (f24 * f56);
        store.f79898s = (f57 * f13) + (f58 * f17) + (this.f79897r * f21) + (f56 * f25);
    }

    public void Y0(Vector3 position, Quaternion rotation, float scale) {
        float j02 = rotation.j0();
        float f10 = j02 != 1.0f ? j02 > 0.0f ? 2.0f / j02 : 0.0f : 2.0f;
        float x10 = rotation.getX() * f10;
        float y10 = rotation.getY() * f10;
        float z10 = rotation.getZ() * f10;
        float x11 = rotation.getX() * x10;
        float x12 = rotation.getX() * y10;
        float x13 = rotation.getX() * z10;
        float I10 = rotation.I() * x10;
        float y11 = rotation.getY() * y10;
        float y12 = rotation.getY() * z10;
        float I11 = rotation.I() * y10;
        float z11 = rotation.getZ() * z10;
        float I12 = rotation.I() * z10;
        this.f79883b = scale * (1.0f - (y11 + z11));
        this.f79884c = scale * (x12 - I12);
        this.f79885d = scale * (x13 + I11);
        this.f79886e = position.getX();
        this.f79887g = scale * (x12 + I12);
        this.f79888i = (1.0f - (z11 + x11)) * scale;
        this.f79889j = scale * (y12 - I10);
        this.f79890k = position.getY();
        this.f79891l = scale * (x13 - I11);
        this.f79892m = scale * (y12 + I10);
        this.f79893n = (1.0f - (x11 + y11)) * scale;
        this.f79894o = position.getZ();
        this.f79895p = 0.0f;
        this.f79896q = 0.0f;
        this.f79897r = 0.0f;
        this.f79898s = 1.0f;
    }

    public void Z(float[] matrix, float[] store) {
        float f10 = matrix[0];
        float f11 = matrix[4];
        float f12 = matrix[8];
        float f13 = matrix[12];
        float f14 = matrix[1];
        float f15 = matrix[5];
        float f16 = matrix[9];
        float f17 = matrix[13];
        float f18 = matrix[2];
        float f19 = matrix[6];
        float f20 = matrix[10];
        float f21 = matrix[14];
        float f22 = matrix[3];
        float f23 = matrix[7];
        float f24 = matrix[11];
        float f25 = matrix[15];
        float f26 = this.f79883b;
        float f27 = this.f79884c;
        float f28 = this.f79885d;
        float f29 = this.f79886e;
        store[0] = (f26 * f10) + (f27 * f14) + (f28 * f18) + (f29 * f22);
        store[4] = (f26 * f11) + (f27 * f15) + (f28 * f19) + (f29 * f23);
        store[8] = (f26 * f12) + (f27 * f16) + (f28 * f20) + (f29 * f24);
        store[12] = (f26 * f13) + (f27 * f17) + (f28 * f21) + (f29 * f25);
        float f30 = this.f79887g;
        float f31 = this.f79888i;
        float f32 = this.f79889j;
        float f33 = this.f79890k;
        store[1] = (f30 * f10) + (f31 * f14) + (f32 * f18) + (f33 * f22);
        store[5] = (f30 * f11) + (f31 * f15) + (f32 * f19) + (f33 * f23);
        store[9] = (f30 * f12) + (f31 * f16) + (f32 * f20) + (f33 * f24);
        store[13] = (f30 * f13) + (f31 * f17) + (f32 * f21) + (f33 * f25);
        float f34 = this.f79891l;
        float f35 = this.f79892m;
        float f36 = this.f79893n;
        float f37 = this.f79894o;
        store[2] = (f34 * f10) + (f35 * f14) + (f36 * f18) + (f37 * f22);
        store[6] = (f34 * f11) + (f35 * f15) + (f36 * f19) + (f37 * f23);
        store[10] = (f34 * f12) + (f35 * f16) + (f36 * f20) + (f37 * f24);
        store[14] = (f34 * f13) + (f35 * f17) + (f36 * f21) + (f37 * f25);
        float f38 = this.f79895p;
        float f39 = this.f79896q;
        float f40 = this.f79897r;
        float f41 = this.f79898s;
        store[3] = (f10 * f38) + (f14 * f39) + (f18 * f40) + (f22 * f41);
        store[7] = (f11 * f38) + (f15 * f39) + (f19 * f40) + (f23 * f41);
        store[11] = (f12 * f38) + (f16 * f39) + (f20 * f40) + (f24 * f41);
        store[15] = (f38 * f13) + (f39 * f17) + (f40 * f21) + (f41 * f25);
    }

    public void Z0(Vector3 position, Quaternion rotation, Vector3 scale) {
        float j02 = rotation.j0();
        float f10 = j02 != 1.0f ? j02 > 0.0f ? 2.0f / j02 : 0.0f : 2.0f;
        float x10 = rotation.getX() * f10;
        float y10 = rotation.getY() * f10;
        float z10 = rotation.getZ() * f10;
        float x11 = rotation.getX() * x10;
        float x12 = rotation.getX() * y10;
        float x13 = rotation.getX() * z10;
        float I10 = rotation.I() * x10;
        float y11 = rotation.getY() * y10;
        float y12 = rotation.getY() * z10;
        float I11 = rotation.I() * y10;
        float z11 = rotation.getZ() * z10;
        float I12 = rotation.I() * z10;
        this.f79883b = scale.getX() * (1.0f - (y11 + z11));
        this.f79884c = scale.getY() * (x12 - I12);
        this.f79885d = scale.getZ() * (x13 + I11);
        this.f79886e = position.getX();
        this.f79887g = scale.getX() * (x12 + I12);
        this.f79888i = scale.getY() * (1.0f - (z11 + x11));
        this.f79889j = scale.getZ() * (y12 - I10);
        this.f79890k = position.getY();
        this.f79891l = scale.getX() * (x13 - I11);
        this.f79892m = scale.getY() * (y12 + I10);
        this.f79893n = scale.getZ() * (1.0f - (x11 + y11));
        this.f79894o = position.getZ();
        this.f79895p = 0.0f;
        this.f79896q = 0.0f;
        this.f79897r = 0.0f;
        this.f79898s = 1.0f;
    }

    public void a1(Vector3 position, Vector3 scale) {
        J0(position.getX(), position.getY(), position.getZ(), scale.getX(), scale.getY(), scale.getZ());
    }

    public void b0(f in2, f store) {
        float f10 = this.f79883b * in2.f79883b;
        float f11 = this.f79884c;
        float f12 = in2.f79887g;
        float f13 = this.f79885d;
        float f14 = in2.f79891l;
        float f15 = this.f79886e;
        float f16 = in2.f79895p;
        store.f79883b = f10 + (f11 * f12) + (f13 * f14) + (f15 * f16);
        float f17 = this.f79883b;
        float f18 = in2.f79884c * f17;
        float f19 = in2.f79888i;
        float f20 = f18 + (f11 * f19);
        float f21 = in2.f79892m;
        float f22 = in2.f79896q;
        store.f79884c = f20 + (f13 * f21) + (f15 * f22);
        float f23 = in2.f79885d * f17;
        float f24 = this.f79884c;
        float f25 = in2.f79889j;
        float f26 = in2.f79893n;
        float f27 = f23 + (f24 * f25) + (f13 * f26);
        float f28 = in2.f79897r;
        store.f79885d = f27 + (f15 * f28);
        float f29 = f17 * in2.f79886e;
        float f30 = in2.f79890k;
        float f31 = f29 + (f24 * f30);
        float f32 = this.f79885d;
        float f33 = in2.f79894o;
        float f34 = f31 + (f32 * f33);
        float f35 = in2.f79898s;
        store.f79886e = f34 + (f15 * f35);
        float f36 = this.f79887g;
        float f37 = in2.f79883b;
        float f38 = f36 * f37;
        float f39 = this.f79888i;
        float f40 = f38 + (f12 * f39);
        float f41 = this.f79889j;
        float f42 = f40 + (f41 * f14);
        float f43 = this.f79890k;
        store.f79887g = f42 + (f43 * f16);
        float f44 = this.f79887g;
        float f45 = in2.f79884c;
        store.f79888i = (f44 * f45) + (f39 * f19) + (f41 * f21) + (f43 * f22);
        float f46 = in2.f79885d;
        float f47 = f44 * f46;
        float f48 = this.f79888i;
        store.f79889j = f47 + (f25 * f48) + (f41 * f26) + (f43 * f28);
        float f49 = in2.f79886e;
        store.f79890k = (f44 * f49) + (f48 * f30) + (this.f79889j * f33) + (f43 * f35);
        float f50 = this.f79891l * f37;
        float f51 = this.f79892m;
        float f52 = in2.f79887g;
        float f53 = this.f79893n;
        float f54 = this.f79894o;
        store.f79891l = f50 + (f51 * f52) + (f53 * f14) + (f54 * f16);
        float f55 = this.f79891l;
        float f56 = f55 * f45;
        float f57 = in2.f79888i;
        store.f79892m = f56 + (f51 * f57) + (f21 * f53) + (f54 * f22);
        float f58 = this.f79892m;
        float f59 = in2.f79889j;
        store.f79893n = (f55 * f46) + (f58 * f59) + (f53 * f26) + (f54 * f28);
        float f60 = in2.f79890k;
        store.f79894o = (f55 * f49) + (f58 * f60) + (this.f79893n * f33) + (f54 * f35);
        float f61 = this.f79895p * f37;
        float f62 = this.f79896q;
        float f63 = f61 + (f52 * f62);
        float f64 = this.f79897r;
        float f65 = f63 + (in2.f79891l * f64);
        float f66 = this.f79898s;
        store.f79895p = f65 + (f66 * f16);
        float f67 = this.f79895p;
        store.f79896q = (f67 * f45) + (f62 * f57) + (in2.f79892m * f64) + (f66 * f22);
        float f68 = this.f79896q;
        store.f79897r = (f67 * f46) + (f59 * f68) + (f64 * in2.f79893n) + (f28 * f66);
        store.f79898s = (f67 * f49) + (f68 * f60) + (this.f79897r * in2.f79894o) + (f66 * f35);
    }

    public void b1(Vector3 position, Vector3 scale, Quaternion rotation) {
        float j02 = rotation.j0();
        float f10 = j02 != 1.0f ? j02 > 0.0f ? 2.0f / j02 : 0.0f : 2.0f;
        float x10 = rotation.getX() * f10;
        float y10 = rotation.getY() * f10;
        float z10 = rotation.getZ() * f10;
        float x11 = rotation.getX() * x10;
        float x12 = rotation.getX() * y10;
        float x13 = rotation.getX() * z10;
        float I10 = rotation.I() * x10;
        float y11 = rotation.getY() * y10;
        float y12 = rotation.getY() * z10;
        float I11 = rotation.I() * y10;
        float z11 = rotation.getZ() * z10;
        float I12 = rotation.I() * z10;
        this.f79883b = scale.getX() * (1.0f - (y11 + z11));
        this.f79884c = scale.getY() * (x12 - I12);
        this.f79885d = scale.getZ() * (x13 + I11);
        this.f79886e = position.getX();
        this.f79887g = scale.getX() * (x12 + I12);
        this.f79888i = scale.getY() * (1.0f - (z11 + x11));
        this.f79889j = scale.getZ() * (y12 - I10);
        this.f79890k = position.getY();
        this.f79891l = scale.getX() * (x13 - I11);
        this.f79892m = scale.getY() * (y12 + I10);
        this.f79893n = scale.getZ() * (1.0f - (x11 + y11));
        this.f79894o = position.getZ();
        this.f79895p = 0.0f;
        this.f79896q = 0.0f;
        this.f79897r = 0.0f;
        this.f79898s = 1.0f;
    }

    public void c0(f in2, float[] store) {
        float f10 = this.f79883b;
        float f11 = in2.f79883b;
        float f12 = this.f79884c;
        float f13 = in2.f79887g;
        float f14 = this.f79885d;
        float f15 = in2.f79891l;
        float f16 = this.f79886e;
        float f17 = in2.f79895p;
        store[0] = (f10 * f11) + (f12 * f13) + (f14 * f15) + (f16 * f17);
        float f18 = in2.f79884c;
        float f19 = in2.f79888i;
        float f20 = in2.f79892m;
        float f21 = in2.f79896q;
        store[4] = (f10 * f18) + (f12 * f19) + (f14 * f20) + (f16 * f21);
        float f22 = in2.f79885d;
        float f23 = f10 * f22;
        float f24 = in2.f79889j;
        float f25 = f23 + (f12 * f24);
        float f26 = in2.f79893n;
        float f27 = f25 + (f14 * f26);
        float f28 = in2.f79897r;
        store[8] = f27 + (f16 * f28);
        float f29 = in2.f79886e;
        float f30 = f10 * f29;
        float f31 = in2.f79890k;
        float f32 = f30 + (f12 * f31);
        float f33 = in2.f79894o;
        float f34 = in2.f79898s;
        store[12] = f32 + (f14 * f33) + (f16 * f34);
        float f35 = this.f79887g;
        float f36 = this.f79888i;
        float f37 = (f35 * f11) + (f36 * f13);
        float f38 = this.f79889j;
        float f39 = f37 + (f38 * f15);
        float f40 = this.f79890k;
        store[1] = f39 + (f40 * f17);
        store[5] = (f35 * f18) + (f36 * f19) + (f38 * f20) + (f40 * f21);
        store[9] = (f35 * f22) + (f36 * f24) + (f38 * f26) + (f40 * f28);
        store[13] = (f35 * f29) + (f36 * f31) + (f38 * f33) + (f40 * f34);
        float f41 = this.f79891l;
        float f42 = this.f79892m;
        float f43 = this.f79893n;
        float f44 = this.f79894o;
        store[2] = (f41 * f11) + (f42 * f13) + (f43 * f15) + (f44 * f17);
        store[6] = (f41 * f18) + (f42 * f19) + (f43 * f20) + (f44 * f21);
        store[10] = (f41 * f22) + (f42 * f24) + (f43 * f26) + (f44 * f28);
        store[14] = (f41 * f29) + (f42 * f31) + (f43 * f33) + (f44 * f34);
        float f45 = this.f79895p;
        float f46 = this.f79896q;
        float f47 = this.f79897r;
        float f48 = (f11 * f45) + (f46 * f13) + (f47 * f15);
        float f49 = this.f79898s;
        store[3] = f48 + (f17 * f49);
        store[7] = (f18 * f45) + (f19 * f46) + (f20 * f47) + (f21 * f49);
        store[11] = (f45 * f22) + (f46 * f24) + (f47 * f26) + (f28 * f49);
        store[15] = (f45 * f29) + (f46 * f31) + (f47 * f33) + (f49 * f34);
    }

    public void c1(Vector3 position, Vector3 scale, e rotMat) {
        this.f79883b = scale.getX() * rotMat.f79871b;
        this.f79884c = scale.getY() * rotMat.f79872c;
        this.f79885d = scale.getZ() * rotMat.f79873d;
        this.f79886e = position.getX();
        this.f79887g = scale.getX() * rotMat.f79874e;
        this.f79888i = scale.getY() * rotMat.f79875g;
        this.f79889j = scale.getZ() * rotMat.f79876i;
        this.f79890k = position.getY();
        this.f79891l = scale.getX() * rotMat.f79877j;
        this.f79892m = scale.getY() * rotMat.f79878k;
        this.f79893n = scale.getZ() * rotMat.f79879l;
        this.f79894o = position.getZ();
        this.f79895p = 0.0f;
        this.f79896q = 0.0f;
        this.f79897r = 0.0f;
        this.f79898s = 1.0f;
    }

    public f d(f mat) {
        f fVar = new f();
        fVar.f79883b = this.f79883b + mat.f79883b;
        fVar.f79884c = this.f79884c + mat.f79884c;
        fVar.f79885d = this.f79885d + mat.f79885d;
        fVar.f79886e = this.f79886e + mat.f79886e;
        fVar.f79887g = this.f79887g + mat.f79887g;
        fVar.f79888i = this.f79888i + mat.f79888i;
        fVar.f79889j = this.f79889j + mat.f79889j;
        fVar.f79890k = this.f79890k + mat.f79890k;
        fVar.f79891l = this.f79891l + mat.f79891l;
        fVar.f79892m = this.f79892m + mat.f79892m;
        fVar.f79893n = this.f79893n + mat.f79893n;
        fVar.f79894o = this.f79894o + mat.f79894o;
        fVar.f79895p = this.f79895p + mat.f79895p;
        fVar.f79896q = this.f79896q + mat.f79896q;
        fVar.f79897r = this.f79897r + mat.f79897r;
        fVar.f79898s = this.f79898s + mat.f79898s;
        return fVar;
    }

    public f d0(f in2) {
        return L(in2, this);
    }

    public void d1(Vector3f position, Quaternion rotation) {
        float j02 = rotation.j0();
        float f10 = j02 != 1.0f ? j02 > 0.0f ? 2.0f / j02 : 0.0f : 2.0f;
        float x10 = rotation.getX() * f10;
        float y10 = rotation.getY() * f10;
        float z10 = rotation.getZ() * f10;
        float x11 = rotation.getX() * x10;
        float x12 = rotation.getX() * y10;
        float x13 = rotation.getX() * z10;
        float I10 = rotation.I() * x10;
        float y11 = rotation.getY() * y10;
        float y12 = rotation.getY() * z10;
        float I11 = rotation.I() * y10;
        float z11 = rotation.getZ() * z10;
        float I12 = rotation.I() * z10;
        float f11 = x12 - I12;
        this.f79883b = (1.0f - (y11 + z11)) * 1.0f;
        this.f79884c = f11 * 1.0f;
        this.f79885d = (x13 + I11) * 1.0f;
        this.f79886e = position.getX();
        this.f79887g = (x12 + I12) * 1.0f;
        this.f79888i = (1.0f - (z11 + x11)) * 1.0f;
        this.f79889j = (y12 - I10) * 1.0f;
        this.f79890k = position.getY();
        this.f79891l = (x13 - I11) * 1.0f;
        this.f79892m = (y12 + I10) * 1.0f;
        this.f79893n = (1.0f - (x11 + y11)) * 1.0f;
        this.f79894o = position.getZ();
        this.f79895p = 0.0f;
        this.f79896q = 0.0f;
        this.f79897r = 0.0f;
        this.f79898s = 1.0f;
    }

    public void e(f mat) {
        this.f79883b += mat.f79883b;
        this.f79884c += mat.f79884c;
        this.f79885d += mat.f79885d;
        this.f79886e += mat.f79886e;
        this.f79887g += mat.f79887g;
        this.f79888i += mat.f79888i;
        this.f79889j += mat.f79889j;
        this.f79890k += mat.f79890k;
        this.f79891l += mat.f79891l;
        this.f79892m += mat.f79892m;
        this.f79893n += mat.f79893n;
        this.f79894o += mat.f79894o;
        this.f79895p += mat.f79895p;
        this.f79896q += mat.f79896q;
        this.f79897r += mat.f79897r;
        this.f79898s += mat.f79898s;
    }

    public void e0(float scalar) {
        this.f79883b *= scalar;
        this.f79884c *= scalar;
        this.f79885d *= scalar;
        this.f79886e *= scalar;
        this.f79887g *= scalar;
        this.f79888i *= scalar;
        this.f79889j *= scalar;
        this.f79890k *= scalar;
        this.f79891l *= scalar;
        this.f79892m *= scalar;
        this.f79893n *= scalar;
        this.f79894o *= scalar;
        this.f79895p *= scalar;
        this.f79896q *= scalar;
        this.f79897r *= scalar;
        this.f79898s *= scalar;
    }

    public void e1(Vector3f position, com.jme3.math.Quaternion rotation) {
        float norm = rotation.norm();
        float f10 = norm != 1.0f ? norm > 0.0f ? 2.0f / norm : 0.0f : 2.0f;
        float x10 = rotation.getX() * f10;
        float y10 = rotation.getY() * f10;
        float z10 = rotation.getZ() * f10;
        float x11 = rotation.getX() * x10;
        float x12 = rotation.getX() * y10;
        float x13 = rotation.getX() * z10;
        float w10 = rotation.getW() * x10;
        float y11 = rotation.getY() * y10;
        float y12 = rotation.getY() * z10;
        float w11 = rotation.getW() * y10;
        float z11 = rotation.getZ() * z10;
        float w12 = rotation.getW() * z10;
        float f11 = x12 - w12;
        this.f79883b = (1.0f - (y11 + z11)) * 1.0f;
        this.f79884c = f11 * 1.0f;
        this.f79885d = (x13 + w11) * 1.0f;
        this.f79886e = position.getX();
        this.f79887g = (x12 + w12) * 1.0f;
        this.f79888i = (1.0f - (z11 + x11)) * 1.0f;
        this.f79889j = (y12 - w10) * 1.0f;
        this.f79890k = position.getY();
        this.f79891l = (x13 - w11) * 1.0f;
        this.f79892m = (y12 + w10) * 1.0f;
        this.f79893n = (1.0f - (x11 + y11)) * 1.0f;
        this.f79894o = position.getZ();
        this.f79895p = 0.0f;
        this.f79896q = 0.0f;
        this.f79897r = 0.0f;
        this.f79898s = 1.0f;
    }

    public boolean equals(Object o10) {
        if (o10 == null || o10.getClass() != getClass()) {
            return false;
        }
        if (this == o10) {
            return true;
        }
        f fVar = (f) o10;
        return Float.compare(this.f79883b, fVar.f79883b) == 0 && Float.compare(this.f79884c, fVar.f79884c) == 0 && Float.compare(this.f79885d, fVar.f79885d) == 0 && Float.compare(this.f79886e, fVar.f79886e) == 0 && Float.compare(this.f79887g, fVar.f79887g) == 0 && Float.compare(this.f79888i, fVar.f79888i) == 0 && Float.compare(this.f79889j, fVar.f79889j) == 0 && Float.compare(this.f79890k, fVar.f79890k) == 0 && Float.compare(this.f79891l, fVar.f79891l) == 0 && Float.compare(this.f79892m, fVar.f79892m) == 0 && Float.compare(this.f79893n, fVar.f79893n) == 0 && Float.compare(this.f79894o, fVar.f79894o) == 0 && Float.compare(this.f79895p, fVar.f79895p) == 0 && Float.compare(this.f79896q, fVar.f79896q) == 0 && Float.compare(this.f79897r, fVar.f79897r) == 0 && Float.compare(this.f79898s, fVar.f79898s) == 0;
    }

    public f f() {
        return h(null);
    }

    public void f0(Quaternion rotation) {
        Vector3 vector3 = new Vector3();
        float L02 = rotation.L0(vector3);
        f fVar = new f();
        fVar.q(L02, vector3);
        d0(fVar);
    }

    public void f1(Vector3f position, com.jme3.math.Quaternion rotation, Vector3 scale) {
        float norm = rotation.norm();
        float f10 = norm != 1.0f ? norm > 0.0f ? 2.0f / norm : 0.0f : 2.0f;
        float x10 = rotation.getX() * f10;
        float y10 = rotation.getY() * f10;
        float z10 = rotation.getZ() * f10;
        float x11 = rotation.getX() * x10;
        float x12 = rotation.getX() * y10;
        float x13 = rotation.getX() * z10;
        float w10 = rotation.getW() * x10;
        float y11 = rotation.getY() * y10;
        float y12 = rotation.getY() * z10;
        float w11 = rotation.getW() * y10;
        float z11 = rotation.getZ() * z10;
        float w12 = rotation.getW() * z10;
        this.f79883b = scale.getX() * (1.0f - (y11 + z11));
        this.f79884c = scale.getY() * (x12 - w12);
        this.f79885d = scale.getZ() * (x13 + w11);
        this.f79886e = position.getX();
        this.f79887g = scale.getX() * (x12 + w12);
        this.f79888i = scale.getY() * (1.0f - (z11 + x11));
        this.f79889j = scale.getZ() * (y12 - w10);
        this.f79890k = position.getY();
        this.f79891l = scale.getX() * (x13 - w11);
        this.f79892m = scale.getY() * (y12 + w10);
        this.f79893n = scale.getZ() * (1.0f - (x11 + y11));
        this.f79894o = position.getZ();
        this.f79895p = 0.0f;
        this.f79896q = 0.0f;
        this.f79897r = 0.0f;
        this.f79898s = 1.0f;
    }

    public Vector3 g0(Vector3 vec, Vector3 store) {
        if (store == null) {
            store = new Vector3();
        }
        float x10 = vec.getX();
        float y10 = vec.getY();
        float z10 = vec.getZ();
        store.setX((this.f79883b * x10) + (this.f79884c * y10) + (this.f79885d * z10));
        store.setY((this.f79887g * x10) + (this.f79888i * y10) + (this.f79889j * z10));
        store.setZ((this.f79891l * x10) + (this.f79892m * y10) + (this.f79893n * z10));
        return store;
    }

    public void g1(Vector3f position, Vector3f scale) {
        J0(position.getX(), position.getY(), position.getZ(), scale.getX(), scale.getY(), scale.getZ());
    }

    public void get(float[] matrix) {
        v(matrix, true);
    }

    public f h(f store) {
        f fVar = store == null ? new f() : store;
        float f10 = this.f79883b;
        float f11 = this.f79888i;
        float f12 = this.f79884c;
        float f13 = this.f79887g;
        float f14 = (f10 * f11) - (f12 * f13);
        float f15 = this.f79889j;
        float f16 = this.f79885d;
        float f17 = (f10 * f15) - (f16 * f13);
        float f18 = this.f79890k;
        float f19 = this.f79886e;
        float f20 = (f10 * f18) - (f19 * f13);
        float f21 = (f12 * f15) - (f16 * f11);
        float f22 = (f12 * f18) - (f19 * f11);
        float f23 = (f16 * f18) - (f19 * f15);
        float f24 = this.f79891l;
        float f25 = this.f79896q;
        float f26 = this.f79892m;
        float f27 = this.f79895p;
        float f28 = (f24 * f25) - (f26 * f27);
        float f29 = this.f79897r;
        float f30 = this.f79893n;
        float f31 = (f24 * f29) - (f30 * f27);
        float f32 = this.f79898s;
        float f33 = this.f79894o;
        float f34 = (f24 * f32) - (f27 * f33);
        float f35 = (f26 * f29) - (f30 * f25);
        float f36 = (f26 * f32) - (f25 * f33);
        float f37 = (f30 * f32) - (f33 * f29);
        fVar.f79883b = ((f11 * f37) - (f15 * f36)) + (f18 * f35);
        fVar.f79887g = (((-f13) * f37) + (f15 * f34)) - (f18 * f31);
        float f38 = this.f79887g;
        fVar.f79891l = ((f38 * f36) - (f11 * f34)) + (f18 * f28);
        fVar.f79895p = (((-f38) * f35) + (f11 * f31)) - (f15 * f28);
        fVar.f79884c = (((-f12) * f37) + (f16 * f36)) - (f19 * f35);
        float f39 = this.f79883b;
        fVar.f79888i = ((f37 * f39) - (f16 * f34)) + (f19 * f31);
        float f40 = this.f79884c;
        fVar.f79892m = (((-f39) * f36) + (f34 * f40)) - (f19 * f28);
        fVar.f79896q = ((f39 * f35) - (f40 * f31)) + (f16 * f28);
        float f41 = this.f79896q;
        fVar.f79885d = ((f41 * f23) - (f29 * f22)) + (f32 * f21);
        float f42 = this.f79895p;
        fVar.f79889j = (((-f42) * f23) + (f29 * f20)) - (f32 * f17);
        fVar.f79893n = ((f42 * f22) - (f41 * f20)) + (f32 * f14);
        fVar.f79897r = (((-f42) * f21) + (f41 * f17)) - (f29 * f14);
        float f43 = this.f79892m;
        float f44 = this.f79893n;
        fVar.f79886e = (((-f43) * f23) + (f44 * f22)) - (f33 * f21);
        float f45 = this.f79891l;
        fVar.f79890k = ((f45 * f23) - (f44 * f20)) + (f33 * f17);
        fVar.f79894o = (((-f45) * f22) + (f43 * f20)) - (f33 * f14);
        fVar.f79898s = ((f45 * f21) - (f43 * f17)) + (f44 * f14);
        return fVar;
    }

    public Vector4f h0(Vector4f vec, Vector4f store) {
        if (store == null) {
            store = new Vector4f();
        }
        float f10 = vec.f81615x;
        float f11 = vec.f81616y;
        float f12 = vec.f81617z;
        store.f81615x = (this.f79883b * f10) + (this.f79884c * f11) + (this.f79885d * f12);
        store.f81616y = (this.f79887g * f10) + (this.f79888i * f11) + (this.f79889j * f12);
        store.f81617z = (this.f79891l * f10) + (this.f79892m * f11) + (this.f79893n * f12);
        return store;
    }

    public void h1(float scaleX, float scaleY, float scaleZ) {
        this.f79883b = scaleX * 1.0f;
        this.f79884c = scaleY * 0.0f;
        this.f79885d = scaleZ * 0.0f;
        this.f79886e = 0.0f;
        this.f79887g = scaleX * 0.0f;
        this.f79888i = scaleY * 1.0f;
        this.f79889j = scaleZ * 0.0f;
        this.f79890k = 0.0f;
        this.f79891l = scaleX * 0.0f;
        this.f79892m = scaleY * 0.0f;
        this.f79893n = scaleZ * 1.0f;
        this.f79894o = 0.0f;
        this.f79895p = 0.0f;
        this.f79896q = 0.0f;
        this.f79897r = 0.0f;
        this.f79898s = 1.0f;
    }

    public int hashCode() {
        return ((((((((((((((((((((((((((((((1369 + Float.floatToIntBits(this.f79883b)) * 37) + Float.floatToIntBits(this.f79884c)) * 37) + Float.floatToIntBits(this.f79885d)) * 37) + Float.floatToIntBits(this.f79886e)) * 37) + Float.floatToIntBits(this.f79887g)) * 37) + Float.floatToIntBits(this.f79888i)) * 37) + Float.floatToIntBits(this.f79889j)) * 37) + Float.floatToIntBits(this.f79890k)) * 37) + Float.floatToIntBits(this.f79891l)) * 37) + Float.floatToIntBits(this.f79892m)) * 37) + Float.floatToIntBits(this.f79893n)) * 37) + Float.floatToIntBits(this.f79894o)) * 37) + Float.floatToIntBits(this.f79895p)) * 37) + Float.floatToIntBits(this.f79896q)) * 37) + Float.floatToIntBits(this.f79897r)) * 37) + Float.floatToIntBits(this.f79898s);
    }

    public void i(Vector3 angles) {
        float z10 = angles.getZ() * 0.017453292f;
        float sin = FastMath.sin(z10);
        float cos = FastMath.cos(z10);
        float y10 = angles.getY() * 0.017453292f;
        float sin2 = FastMath.sin(y10);
        float cos2 = FastMath.cos(y10);
        float x10 = angles.getX() * 0.017453292f;
        float sin3 = FastMath.sin(x10);
        float cos3 = FastMath.cos(x10);
        this.f79883b = cos2 * cos;
        this.f79887g = cos2 * sin;
        this.f79891l = -sin2;
        float f10 = sin3 * sin2;
        float f11 = -sin;
        this.f79884c = (f10 * cos) + (cos3 * f11);
        this.f79888i = (f10 * sin) + (cos3 * cos);
        this.f79892m = sin3 * cos2;
        float f12 = sin2 * cos3;
        float f13 = -sin3;
        this.f79885d = (f12 * cos) + (f11 * f13);
        this.f79889j = (f12 * sin) + (f13 * cos);
        this.f79893n = cos3 * cos2;
        this.f79886e = 0.0f;
        this.f79890k = 0.0f;
        this.f79894o = 0.0f;
    }

    public Vector3 i0(Vector3 vec, Vector3 store) {
        if (store == null) {
            store = new Vector3();
        }
        float x10 = vec.getX();
        float y10 = vec.getY();
        float z10 = vec.getZ();
        store.setX((this.f79883b * x10) + (this.f79887g * y10) + (this.f79891l * z10));
        store.setY((this.f79884c * x10) + (this.f79888i * y10) + (this.f79892m * z10));
        store.setZ((this.f79885d * x10) + (this.f79889j * y10) + (this.f79893n * z10));
        return store;
    }

    public void i1(Vector3 scale) {
        float x10 = scale.getX();
        float y10 = scale.getY();
        float z10 = scale.getZ();
        this.f79883b = x10 * 1.0f;
        this.f79884c = y10 * 0.0f;
        this.f79885d = z10 * 0.0f;
        this.f79886e = 0.0f;
        this.f79887g = x10 * 0.0f;
        this.f79888i = y10 * 1.0f;
        this.f79889j = z10 * 0.0f;
        this.f79890k = 0.0f;
        this.f79891l = x10 * 0.0f;
        this.f79892m = y10 * 0.0f;
        this.f79893n = z10 * 1.0f;
        this.f79894o = 0.0f;
        this.f79895p = 0.0f;
        this.f79896q = 0.0f;
        this.f79897r = 0.0f;
        this.f79898s = 1.0f;
    }

    public f clone() {
        return new f(this);
    }

    public void j0(Vector3 vec, Vector3 store) {
        float x10 = vec.getX();
        float y10 = vec.getY();
        float z10 = vec.getZ();
        store.setX((this.f79883b * x10) + (this.f79884c * y10) + (this.f79885d * z10));
        store.setY((this.f79887g * x10) + (this.f79888i * y10) + (this.f79889j * z10));
        store.setZ((this.f79891l * x10) + (this.f79892m * y10) + (this.f79893n * z10));
    }

    public void j1(float x10, float y10, float z10) {
        this.f79886e = x10;
        this.f79890k = y10;
        this.f79894o = z10;
    }

    public boolean k(Vector3 compare) {
        return j.f(compare, this.f79886e, this.f79890k, this.f79894o);
    }

    public void k0(Vector4f vec, Vector4f store) {
        float f10 = vec.f81615x;
        float f11 = vec.f81616y;
        float f12 = vec.f81617z;
        store.f81615x = (this.f79883b * f10) + (this.f79884c * f11) + (this.f79885d * f12);
        store.f81616y = (this.f79887g * f10) + (this.f79888i * f11) + (this.f79889j * f12);
        store.f81617z = (this.f79891l * f10) + (this.f79892m * f11) + (this.f79893n * f12);
    }

    public void k1(Vector3 translation) {
        this.f79886e = translation.getX();
        this.f79890k = translation.getY();
        this.f79894o = translation.getZ();
    }

    public void l(f matrix) {
        if (matrix == null) {
            G();
            return;
        }
        this.f79883b = matrix.f79883b;
        this.f79884c = matrix.f79884c;
        this.f79885d = matrix.f79885d;
        this.f79886e = matrix.f79886e;
        this.f79887g = matrix.f79887g;
        this.f79888i = matrix.f79888i;
        this.f79889j = matrix.f79889j;
        this.f79890k = matrix.f79890k;
        this.f79891l = matrix.f79891l;
        this.f79892m = matrix.f79892m;
        this.f79893n = matrix.f79893n;
        this.f79894o = matrix.f79894o;
        this.f79895p = matrix.f79895p;
        this.f79896q = matrix.f79896q;
        this.f79897r = matrix.f79897r;
        this.f79898s = matrix.f79898s;
    }

    public float l0(Vector3 vec, Vector3 store) {
        float x10 = vec.getX();
        float y10 = vec.getY();
        float z10 = vec.getZ();
        store.setX((this.f79883b * x10) + (this.f79884c * y10) + (this.f79885d * z10) + this.f79886e);
        store.setY((this.f79887g * x10) + (this.f79888i * y10) + (this.f79889j * z10) + this.f79890k);
        store.setZ((this.f79891l * x10) + (this.f79892m * y10) + (this.f79893n * z10) + this.f79894o);
        return (this.f79895p * x10) + (this.f79896q * y10) + (this.f79897r * z10) + this.f79898s;
    }

    public void l1(float[] translation) {
        if (translation.length != 3) {
            throw new IllegalArgumentException("Translation size must be 3.");
        }
        this.f79886e = translation[0];
        this.f79890k = translation[1];
        this.f79894o = translation[2];
    }

    public float m() {
        float f10 = this.f79883b;
        float f11 = this.f79888i;
        float f12 = this.f79884c;
        float f13 = this.f79887g;
        float f14 = (f10 * f11) - (f12 * f13);
        float f15 = this.f79889j;
        float f16 = this.f79885d;
        float f17 = (f10 * f15) - (f16 * f13);
        float f18 = this.f79890k;
        float f19 = this.f79886e;
        float f20 = (f10 * f18) - (f13 * f19);
        float f21 = (f12 * f15) - (f16 * f11);
        float f22 = (f12 * f18) - (f11 * f19);
        float f23 = (f16 * f18) - (f19 * f15);
        float f24 = this.f79891l;
        float f25 = this.f79896q;
        float f26 = this.f79892m;
        float f27 = this.f79895p;
        float f28 = (f24 * f25) - (f26 * f27);
        float f29 = this.f79897r;
        float f30 = this.f79893n;
        float f31 = (f24 * f29) - (f30 * f27);
        float f32 = this.f79898s;
        float f33 = this.f79894o;
        float f34 = (f24 * f32) - (f27 * f33);
        float f35 = (f26 * f29) - (f30 * f25);
        return (((((f14 * ((f30 * f32) - (f33 * f29))) - (f17 * ((f26 * f32) - (f25 * f33)))) + (f20 * f35)) + (f21 * f34)) - (f22 * f31)) + (f23 * f28);
    }

    public f m0(f in2, f store) {
        float f10 = this.f79883b * in2.f79883b;
        float f11 = this.f79884c;
        float f12 = in2.f79887g;
        float f13 = this.f79885d;
        float f14 = in2.f79891l;
        float f15 = this.f79886e;
        float f16 = in2.f79895p;
        store.f79883b = f10 + (f11 * f12) + (f13 * f14) + (f15 * f16);
        float f17 = this.f79883b;
        float f18 = in2.f79884c * f17;
        float f19 = in2.f79888i;
        float f20 = f18 + (f11 * f19);
        float f21 = in2.f79892m;
        float f22 = in2.f79896q;
        store.f79884c = f20 + (f13 * f21) + (f15 * f22);
        float f23 = in2.f79885d * f17;
        float f24 = this.f79884c;
        float f25 = in2.f79889j;
        float f26 = in2.f79893n;
        float f27 = f23 + (f24 * f25) + (f13 * f26);
        float f28 = in2.f79897r;
        store.f79885d = f27 + (f15 * f28);
        float f29 = f17 * in2.f79886e;
        float f30 = in2.f79890k;
        float f31 = f29 + (f24 * f30);
        float f32 = this.f79885d;
        float f33 = in2.f79894o;
        float f34 = f31 + (f32 * f33);
        float f35 = in2.f79898s;
        store.f79886e = f34 + (f15 * f35);
        float f36 = this.f79887g;
        float f37 = in2.f79883b;
        float f38 = f36 * f37;
        float f39 = this.f79888i;
        float f40 = f38 + (f12 * f39);
        float f41 = this.f79889j;
        float f42 = f40 + (f41 * f14);
        float f43 = this.f79890k;
        store.f79887g = f42 + (f43 * f16);
        float f44 = this.f79887g;
        float f45 = in2.f79884c;
        store.f79888i = (f44 * f45) + (f39 * f19) + (f41 * f21) + (f43 * f22);
        float f46 = in2.f79885d;
        float f47 = f44 * f46;
        float f48 = this.f79888i;
        store.f79889j = f47 + (f25 * f48) + (f41 * f26) + (f43 * f28);
        float f49 = in2.f79886e;
        store.f79890k = (f44 * f49) + (f48 * f30) + (this.f79889j * f33) + (f43 * f35);
        float f50 = this.f79891l * f37;
        float f51 = this.f79892m;
        float f52 = in2.f79887g;
        float f53 = this.f79893n;
        float f54 = this.f79894o;
        store.f79891l = f50 + (f51 * f52) + (f53 * f14) + (f54 * f16);
        float f55 = this.f79891l;
        float f56 = f55 * f45;
        float f57 = in2.f79888i;
        store.f79892m = f56 + (f51 * f57) + (f21 * f53) + (f54 * f22);
        float f58 = this.f79892m;
        float f59 = in2.f79889j;
        store.f79893n = (f55 * f46) + (f58 * f59) + (f53 * f26) + (f54 * f28);
        float f60 = in2.f79890k;
        store.f79894o = (f55 * f49) + (f58 * f60) + (this.f79893n * f33) + (f54 * f35);
        float f61 = this.f79895p * f37;
        float f62 = this.f79896q;
        float f63 = f61 + (f52 * f62);
        float f64 = this.f79897r;
        float f65 = f63 + (in2.f79891l * f64);
        float f66 = this.f79898s;
        store.f79895p = f65 + (f66 * f16);
        float f67 = this.f79895p;
        store.f79896q = (f67 * f45) + (f62 * f57) + (in2.f79892m * f64) + (f66 * f22);
        float f68 = this.f79896q;
        store.f79897r = (f67 * f46) + (f59 * f68) + (f64 * in2.f79893n) + (f28 * f66);
        store.f79898s = (f67 * f49) + (f68 * f60) + (this.f79897r * in2.f79894o) + (f66 * f35);
        return store;
    }

    public Vector4f n0(Vector4f vec, Vector4f store) {
        float f10 = vec.f81615x;
        float f11 = vec.f81616y;
        float f12 = vec.f81617z;
        float f13 = vec.f81614w;
        store.f81615x = (this.f79883b * f10) + (this.f79884c * f11) + (this.f79885d * f12) + (this.f79886e * f13);
        store.f81616y = (this.f79887g * f10) + (this.f79888i * f11) + (this.f79889j * f12) + (this.f79890k * f13);
        store.f81617z = (this.f79891l * f10) + (this.f79892m * f11) + (this.f79893n * f12) + (this.f79894o * f13);
        store.f81614w = (this.f79895p * f10) + (this.f79896q * f11) + (this.f79897r * f12) + (this.f79898s * f13);
        return store;
    }

    public Matrix4 n1() {
        Matrix4 matrix4 = this.f79899t;
        if (matrix4 != null) {
            return matrix4;
        }
        Matrix4 matrix42 = new Matrix4(this);
        this.f79899t = matrix42;
        return matrix42;
    }

    public float[] o(float[] f10) {
        f10[0] = this.f79883b;
        f10[1] = this.f79887g;
        f10[2] = this.f79891l;
        f10[3] = this.f79895p;
        f10[4] = this.f79884c;
        f10[5] = this.f79888i;
        f10[6] = this.f79892m;
        f10[7] = this.f79896q;
        f10[8] = this.f79885d;
        f10[9] = this.f79889j;
        f10[10] = this.f79893n;
        f10[11] = this.f79897r;
        f10[12] = this.f79886e;
        f10[13] = this.f79890k;
        f10[14] = this.f79894o;
        f10[15] = this.f79898s;
        return f10;
    }

    public void o0(float x10, float y10, float z10, Vector3 store) {
        store.setX((this.f79883b * x10) + (this.f79884c * y10) + (this.f79885d * z10) + this.f79886e);
        store.setY((this.f79887g * x10) + (this.f79888i * y10) + (this.f79889j * z10) + this.f79890k);
        store.setZ((this.f79891l * x10) + (this.f79892m * y10) + (this.f79893n * z10) + this.f79894o);
    }

    public e o1() {
        return new e(this.f79883b, this.f79884c, this.f79885d, this.f79887g, this.f79888i, this.f79889j, this.f79891l, this.f79892m, this.f79893n);
    }

    public void p(float[] f10, boolean columnMajor) {
        if (columnMajor) {
            f10[0] = this.f79883b;
            f10[1] = this.f79887g;
            f10[2] = this.f79891l;
            f10[3] = this.f79895p;
            f10[4] = this.f79884c;
            f10[5] = this.f79888i;
            f10[6] = this.f79892m;
            f10[7] = this.f79896q;
            f10[8] = this.f79885d;
            f10[9] = this.f79889j;
            f10[10] = this.f79893n;
            f10[11] = this.f79897r;
            f10[12] = this.f79886e;
            f10[13] = this.f79890k;
            f10[14] = this.f79894o;
            f10[15] = this.f79898s;
            return;
        }
        f10[0] = this.f79883b;
        f10[1] = this.f79884c;
        f10[2] = this.f79885d;
        f10[3] = this.f79886e;
        f10[4] = this.f79887g;
        f10[5] = this.f79888i;
        f10[6] = this.f79889j;
        f10[7] = this.f79890k;
        f10[8] = this.f79891l;
        f10[9] = this.f79892m;
        f10[10] = this.f79893n;
        f10[11] = this.f79894o;
        f10[12] = this.f79895p;
        f10[13] = this.f79896q;
        f10[14] = this.f79897r;
        f10[15] = this.f79898s;
    }

    public void p0(Vector3 vec, Vector3 store) {
        float x10 = vec.getX();
        float y10 = vec.getY();
        float z10 = vec.getZ();
        store.setX((this.f79883b * x10) + (this.f79884c * y10) + (this.f79885d * z10) + this.f79886e);
        store.setY((this.f79887g * x10) + (this.f79888i * y10) + (this.f79889j * z10) + this.f79890k);
        store.setZ((this.f79891l * x10) + (this.f79892m * y10) + (this.f79893n * z10) + this.f79894o);
    }

    public void p1(e mat) {
        mat.f79871b = this.f79883b;
        mat.f79872c = this.f79884c;
        mat.f79873d = this.f79885d;
        mat.f79874e = this.f79887g;
        mat.f79875g = this.f79888i;
        mat.f79876i = this.f79889j;
        mat.f79877j = this.f79891l;
        mat.f79878k = this.f79892m;
        mat.f79879l = this.f79893n;
    }

    public void q(float angle, Vector3 axis) {
        r(angle, axis.normalize());
    }

    public void q0(Vector3 vec) {
        float x10 = vec.getX();
        float y10 = vec.getY();
        float z10 = vec.getZ();
        vec.setX((this.f79883b * x10) + (this.f79884c * y10) + (this.f79885d * z10));
        vec.setY((this.f79887g * x10) + (this.f79888i * y10) + (this.f79889j * z10));
        vec.setZ((x10 * this.f79891l) + (y10 * this.f79892m) + (z10 * this.f79893n));
    }

    public Quaternion q1() {
        Quaternion quaternion = new Quaternion();
        if (Float.isFinite(this.f79883b) && Float.isFinite(this.f79884c) && Float.isFinite(this.f79885d) && Float.isFinite(this.f79887g) && Float.isFinite(this.f79888i) && Float.isFinite(this.f79889j) && Float.isFinite(this.f79891l) && Float.isFinite(this.f79892m) && Float.isFinite(this.f79893n)) {
            quaternion.y(this.f79883b, this.f79884c, this.f79885d, this.f79887g, this.f79888i, this.f79889j, this.f79891l, this.f79892m, this.f79893n);
            return quaternion;
        }
        quaternion.C0();
        return quaternion;
    }

    public void r(float angle, Vector3 axis) {
        O1();
        this.f79898s = 1.0f;
        float cos = FastMath.cos(angle);
        float sin = FastMath.sin(angle);
        float f10 = 1.0f - cos;
        float x10 = axis.getX() * axis.getX();
        float y10 = axis.getY() * axis.getY();
        float z10 = axis.getZ() * axis.getZ();
        float x11 = axis.getX() * axis.getY() * f10;
        float x12 = axis.getX() * axis.getZ() * f10;
        float y11 = axis.getY() * axis.getZ() * f10;
        float x13 = axis.getX() * sin;
        float y12 = axis.getY() * sin;
        float z11 = axis.getZ() * sin;
        this.f79883b = (x10 * f10) + cos;
        this.f79884c = x11 - z11;
        this.f79885d = x12 + y12;
        this.f79887g = x11 + z11;
        this.f79888i = (y10 * f10) + cos;
        this.f79889j = y11 - x13;
        this.f79891l = x12 - y12;
        this.f79892m = y11 + x13;
        this.f79893n = (z10 * f10) + cos;
    }

    public void r0(Vector3 scale) {
        this.f79883b *= scale.getX();
        this.f79887g *= scale.getX();
        this.f79891l *= scale.getX();
        this.f79895p *= scale.getX();
        this.f79884c *= scale.getY();
        this.f79888i *= scale.getY();
        this.f79892m *= scale.getY();
        this.f79896q *= scale.getY();
        this.f79885d *= scale.getZ();
        this.f79889j *= scale.getZ();
        this.f79893n *= scale.getZ();
        this.f79897r *= scale.getZ();
    }

    public Quaternion r1(Quaternion q10) {
        if (Float.isFinite(this.f79883b) && Float.isFinite(this.f79884c) && Float.isFinite(this.f79885d) && Float.isFinite(this.f79887g) && Float.isFinite(this.f79888i) && Float.isFinite(this.f79889j) && Float.isFinite(this.f79891l) && Float.isFinite(this.f79892m) && Float.isFinite(this.f79893n)) {
            return q10.y(this.f79883b, this.f79884c, this.f79885d, this.f79887g, this.f79888i, this.f79889j, this.f79891l, this.f79892m, this.f79893n);
        }
        q10.C0();
        return q10;
    }

    public void s(float near, float far, float left, float right, float top, float bottom, boolean parallel) {
        G();
        if (parallel) {
            float f10 = right - left;
            this.f79883b = 2.0f / f10;
            float f11 = top - bottom;
            this.f79888i = 2.0f / f11;
            float f12 = far - near;
            this.f79893n = (-2.0f) / f12;
            this.f79898s = 1.0f;
            this.f79886e = (-(right + left)) / f10;
            this.f79890k = (-(top + bottom)) / f11;
            this.f79894o = (-(far + near)) / f12;
            return;
        }
        float f13 = near * 2.0f;
        float f14 = right - left;
        this.f79883b = f13 / f14;
        float f15 = top - bottom;
        this.f79888i = f13 / f15;
        this.f79897r = -1.0f;
        this.f79898s = -0.0f;
        this.f79885d = (right + left) / f14;
        this.f79889j = (top + bottom) / f15;
        float f16 = far - near;
        this.f79893n = (-(far + near)) / f16;
        this.f79894o = (-((far * 2.0f) * near)) / f16;
    }

    public f s0(f matrix) {
        this.f79883b = matrix.f79883b;
        this.f79884c = matrix.f79884c;
        this.f79885d = matrix.f79885d;
        this.f79886e = matrix.f79886e;
        this.f79887g = matrix.f79887g;
        this.f79888i = matrix.f79888i;
        this.f79889j = matrix.f79889j;
        this.f79890k = matrix.f79890k;
        this.f79891l = matrix.f79891l;
        this.f79892m = matrix.f79892m;
        this.f79893n = matrix.f79893n;
        this.f79894o = matrix.f79894o;
        this.f79895p = matrix.f79895p;
        this.f79896q = matrix.f79896q;
        this.f79897r = matrix.f79897r;
        this.f79898s = matrix.f79898s;
        return this;
    }

    public com.jme3.math.Quaternion s1(com.jme3.math.Quaternion q10) {
        return q10.fromRotationMatrix(this.f79883b, this.f79884c, this.f79885d, this.f79887g, this.f79888i, this.f79889j, this.f79891l, this.f79892m, this.f79893n);
    }

    public void set(float[] matrix) {
        v0(matrix, true);
    }

    public void setScale(float x10, float y10, float z10) {
        float f10 = this.f79883b;
        float f11 = this.f79887g;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f79891l;
        float f14 = f12 + (f13 * f13);
        if (f14 != 0.0f) {
            if (f14 != 1.0f) {
                x10 /= FastMath.sqrt(f14);
            }
            this.f79883b *= x10;
            this.f79887g *= x10;
            this.f79891l *= x10;
        }
        float f15 = this.f79884c;
        float f16 = this.f79888i;
        float f17 = (f15 * f15) + (f16 * f16);
        float f18 = this.f79892m;
        float f19 = f17 + (f18 * f18);
        if (f19 != 0.0f) {
            if (f19 != 1.0f) {
                y10 /= FastMath.sqrt(f19);
            }
            this.f79884c *= y10;
            this.f79888i *= y10;
            this.f79892m *= y10;
        }
        float f20 = this.f79885d;
        float f21 = this.f79889j;
        float f22 = (f20 * f20) + (f21 * f21);
        float f23 = this.f79893n;
        float f24 = f22 + (f23 * f23);
        if (f24 != 0.0f) {
            if (f24 != 1.0f) {
                z10 /= FastMath.sqrt(f24);
            }
            this.f79885d *= z10;
            this.f79889j *= z10;
            this.f79893n *= z10;
        }
    }

    public void t0(float m00, float m01, float m02, float m03, float m10, float m11, float m12, float m13, float m20, float m21, float m22, float m23, float m30, float m31, float m32, float m33) {
        this.f79883b = m00;
        this.f79884c = m01;
        this.f79885d = m02;
        this.f79886e = m03;
        this.f79887g = m10;
        this.f79888i = m11;
        this.f79889j = m12;
        this.f79890k = m13;
        this.f79891l = m20;
        this.f79892m = m21;
        this.f79893n = m22;
        this.f79894o = m23;
        this.f79895p = m30;
        this.f79896q = m31;
        this.f79897r = m32;
        this.f79898s = m33;
    }

    public Vector3 t1() {
        Vector3 vector3 = new Vector3();
        u1(vector3);
        return vector3;
    }

    public String toString() {
        return "Matrix4f\n[\n " + this.f79883b + GlideException.a.f59088e + this.f79884c + GlideException.a.f59088e + this.f79885d + GlideException.a.f59088e + this.f79886e + " \n " + this.f79887g + GlideException.a.f59088e + this.f79888i + GlideException.a.f59088e + this.f79889j + GlideException.a.f59088e + this.f79890k + " \n " + this.f79891l + GlideException.a.f59088e + this.f79892m + GlideException.a.f59088e + this.f79893n + GlideException.a.f59088e + this.f79894o + " \n " + this.f79895p + GlideException.a.f59088e + this.f79896q + GlideException.a.f59088e + this.f79897r + GlideException.a.f59088e + this.f79898s + " \n]";
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0009, code lost:
    
        if (r4 == 3) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public float u(int i10, int j10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                }
                if (j10 != 0) {
                    return this.f79891l;
                }
                if (j10 == 1) {
                    return this.f79892m;
                }
                if (j10 == 2) {
                    return this.f79893n;
                }
                if (j10 == 3) {
                    return this.f79894o;
                }
                if (j10 == 0) {
                    return this.f79895p;
                }
                if (j10 == 1) {
                    return this.f79896q;
                }
                if (j10 == 2) {
                    return this.f79897r;
                }
                if (j10 == 3) {
                    return this.f79898s;
                }
                throw new IllegalArgumentException("Invalid indices into matrix.");
            }
        } else {
            if (j10 == 0) {
                return this.f79883b;
            }
            if (j10 == 1) {
                return this.f79884c;
            }
            if (j10 == 2) {
                return this.f79885d;
            }
            if (j10 == 3) {
                return this.f79886e;
            }
        }
        if (j10 == 0) {
            return this.f79887g;
        }
        if (j10 == 1) {
            return this.f79888i;
        }
        if (j10 == 2) {
            return this.f79889j;
        }
        if (j10 == 3) {
            return this.f79890k;
        }
        if (j10 != 0) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0009, code lost:
    
        if (r4 == 3) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void u0(int i10, int j10, float value) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                }
                if (j10 != 0) {
                    this.f79891l = value;
                    return;
                }
                if (j10 == 1) {
                    this.f79892m = value;
                    return;
                }
                if (j10 == 2) {
                    this.f79893n = value;
                    return;
                }
                if (j10 == 3) {
                    this.f79894o = value;
                    return;
                }
                if (j10 == 0) {
                    this.f79895p = value;
                    return;
                }
                if (j10 == 1) {
                    this.f79896q = value;
                    return;
                } else {
                    if (j10 == 2) {
                        this.f79897r = value;
                        return;
                    }
                    if (j10 == 3) {
                        this.f79898s = value;
                        return;
                    }
                    throw new IllegalArgumentException("Invalid indices into matrix.");
                }
            }
        } else {
            if (j10 == 0) {
                this.f79883b = value;
                return;
            }
            if (j10 == 1) {
                this.f79884c = value;
                return;
            } else if (j10 == 2) {
                this.f79885d = value;
                return;
            } else if (j10 == 3) {
                this.f79886e = value;
                return;
            }
        }
        if (j10 == 0) {
            this.f79887g = value;
            return;
        }
        if (j10 == 1) {
            this.f79888i = value;
        } else {
            if (j10 == 2) {
                this.f79889j = value;
                return;
            }
            if (j10 == 3) {
                this.f79890k = value;
                return;
            }
            if (j10 != 0) {
            }
        }
    }

    public Vector3 u1(Vector3 store) {
        float f10 = this.f79883b;
        float f11 = this.f79887g;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f79891l;
        float sqrt = (float) Math.sqrt(f12 + (f13 * f13));
        float f14 = this.f79884c;
        float f15 = this.f79888i;
        float f16 = (f14 * f14) + (f15 * f15);
        float f17 = this.f79892m;
        float sqrt2 = (float) Math.sqrt(f16 + (f17 * f17));
        float f18 = this.f79885d;
        float f19 = this.f79889j;
        float f20 = (f18 * f18) + (f19 * f19);
        float f21 = this.f79893n;
        store.set(sqrt, sqrt2, (float) Math.sqrt(f20 + (f21 * f21)));
        return store;
    }

    public void v(float[] matrix, boolean rowMajor) {
        if (matrix.length != 16) {
            throw new IllegalArgumentException("Array must be of size 16.");
        }
        if (rowMajor) {
            matrix[0] = this.f79883b;
            matrix[1] = this.f79884c;
            matrix[2] = this.f79885d;
            matrix[3] = this.f79886e;
            matrix[4] = this.f79887g;
            matrix[5] = this.f79888i;
            matrix[6] = this.f79889j;
            matrix[7] = this.f79890k;
            matrix[8] = this.f79891l;
            matrix[9] = this.f79892m;
            matrix[10] = this.f79893n;
            matrix[11] = this.f79894o;
            matrix[12] = this.f79895p;
            matrix[13] = this.f79896q;
            matrix[14] = this.f79897r;
            matrix[15] = this.f79898s;
            return;
        }
        matrix[0] = this.f79883b;
        matrix[4] = this.f79884c;
        matrix[8] = this.f79885d;
        matrix[12] = this.f79886e;
        matrix[1] = this.f79887g;
        matrix[5] = this.f79888i;
        matrix[9] = this.f79889j;
        matrix[13] = this.f79890k;
        matrix[2] = this.f79891l;
        matrix[6] = this.f79892m;
        matrix[10] = this.f79893n;
        matrix[14] = this.f79894o;
        matrix[3] = this.f79895p;
        matrix[7] = this.f79896q;
        matrix[11] = this.f79897r;
        matrix[15] = this.f79898s;
    }

    public void v0(float[] matrix, boolean rowMajor) {
        if (matrix.length != 16) {
            throw new IllegalArgumentException("Array must be of size 16.");
        }
        if (rowMajor) {
            this.f79883b = matrix[0];
            this.f79884c = matrix[1];
            this.f79885d = matrix[2];
            this.f79886e = matrix[3];
            this.f79887g = matrix[4];
            this.f79888i = matrix[5];
            this.f79889j = matrix[6];
            this.f79890k = matrix[7];
            this.f79891l = matrix[8];
            this.f79892m = matrix[9];
            this.f79893n = matrix[10];
            this.f79894o = matrix[11];
            this.f79895p = matrix[12];
            this.f79896q = matrix[13];
            this.f79897r = matrix[14];
            this.f79898s = matrix[15];
            return;
        }
        this.f79883b = matrix[0];
        this.f79884c = matrix[4];
        this.f79885d = matrix[8];
        this.f79886e = matrix[12];
        this.f79887g = matrix[1];
        this.f79888i = matrix[5];
        this.f79889j = matrix[9];
        this.f79890k = matrix[13];
        this.f79891l = matrix[2];
        this.f79892m = matrix[6];
        this.f79893n = matrix[10];
        this.f79894o = matrix[14];
        this.f79895p = matrix[3];
        this.f79896q = matrix[7];
        this.f79897r = matrix[11];
        this.f79898s = matrix[15];
    }

    public Vector3f v1(Vector3f store) {
        float f10 = this.f79883b;
        float f11 = this.f79887g;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f79891l;
        float sqrt = (float) Math.sqrt(f12 + (f13 * f13));
        float f14 = this.f79884c;
        float f15 = this.f79888i;
        float f16 = (f14 * f14) + (f15 * f15);
        float f17 = this.f79892m;
        float sqrt2 = (float) Math.sqrt(f16 + (f17 * f17));
        float f18 = this.f79885d;
        float f19 = this.f79889j;
        float f20 = (f18 * f18) + (f19 * f19);
        float f21 = this.f79893n;
        store.set(sqrt, sqrt2, (float) Math.sqrt(f20 + (f21 * f21)));
        return store;
    }

    public float[] w(int i10) {
        return x(i10, null);
    }

    public void w0(float[][] matrix) {
        if (matrix.length == 4) {
            float[] fArr = matrix[0];
            if (fArr.length == 4) {
                this.f79883b = fArr[0];
                this.f79884c = fArr[1];
                this.f79885d = fArr[2];
                this.f79886e = fArr[3];
                float[] fArr2 = matrix[1];
                this.f79887g = fArr2[0];
                this.f79888i = fArr2[1];
                this.f79889j = fArr2[2];
                this.f79890k = fArr2[3];
                float[] fArr3 = matrix[2];
                this.f79891l = fArr3[0];
                this.f79892m = fArr3[1];
                this.f79893n = fArr3[2];
                this.f79894o = fArr3[3];
                float[] fArr4 = matrix[3];
                this.f79895p = fArr4[0];
                this.f79896q = fArr4[1];
                this.f79897r = fArr4[2];
                this.f79898s = fArr4[3];
                return;
            }
        }
        throw new IllegalArgumentException("Array must be of size 16.");
    }

    public float w1() {
        float f10 = this.f79883b;
        float f11 = this.f79887g;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f79891l;
        return (float) Math.sqrt(f12 + (f13 * f13));
    }

    public float[] x(int i10, float[] store) {
        if (store == null) {
            store = new float[4];
        }
        if (i10 == 0) {
            store[0] = this.f79883b;
            store[1] = this.f79887g;
            store[2] = this.f79891l;
            store[3] = this.f79895p;
        } else if (i10 == 1) {
            store[0] = this.f79884c;
            store[1] = this.f79888i;
            store[2] = this.f79892m;
            store[3] = this.f79896q;
        } else if (i10 == 2) {
            store[0] = this.f79885d;
            store[1] = this.f79889j;
            store[2] = this.f79893n;
            store[3] = this.f79897r;
        } else {
            if (i10 != 3) {
                throw new IllegalArgumentException("Invalid column index. " + i10);
            }
            store[0] = this.f79886e;
            store[1] = this.f79890k;
            store[2] = this.f79894o;
            store[3] = this.f79898s;
        }
        return store;
    }

    public void x0(float[] matrix) {
        if (matrix.length != 16) {
            throw new IllegalArgumentException("Array must be of size 16.");
        }
        this.f79883b = matrix[0];
        this.f79884c = matrix[4];
        this.f79885d = matrix[8];
        this.f79886e = matrix[12];
        this.f79887g = matrix[1];
        this.f79888i = matrix[5];
        this.f79889j = matrix[9];
        this.f79890k = matrix[13];
        this.f79891l = matrix[2];
        this.f79892m = matrix[6];
        this.f79893n = matrix[10];
        this.f79894o = matrix[14];
        this.f79895p = matrix[3];
        this.f79896q = matrix[7];
        this.f79897r = matrix[11];
        this.f79898s = matrix[15];
    }

    public void y0(float[] matrix) {
        this.f79883b = matrix[0];
        this.f79884c = matrix[4];
        this.f79885d = matrix[8];
        this.f79886e = matrix[12];
        this.f79887g = matrix[1];
        this.f79888i = matrix[5];
        this.f79889j = matrix[9];
        this.f79890k = matrix[13];
        this.f79891l = matrix[2];
        this.f79892m = matrix[6];
        this.f79893n = matrix[10];
        this.f79894o = matrix[14];
        this.f79895p = matrix[3];
        this.f79896q = matrix[7];
        this.f79897r = matrix[11];
        this.f79898s = matrix[15];
    }

    public float y1() {
        float f10 = this.f79884c;
        float f11 = this.f79888i;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f79892m;
        return (float) Math.sqrt(f12 + (f13 * f13));
    }

    public void z(Vector3 vec) {
        float x10 = vec.getX();
        float y10 = vec.getY();
        float z10 = vec.getZ();
        vec.setX((this.f79883b * x10) + (this.f79887g * y10) + (this.f79891l * z10));
        vec.setY((this.f79884c * x10) + (this.f79888i * y10) + (this.f79892m * z10));
        vec.setZ((x10 * this.f79885d) + (y10 * this.f79889j) + (z10 * this.f79893n));
    }

    public void z0(int i10, float[] column) {
        if (i10 == 0) {
            this.f79883b = column[0];
            this.f79887g = column[1];
            this.f79891l = column[2];
            this.f79895p = column[3];
            return;
        }
        if (i10 == 1) {
            this.f79884c = column[0];
            this.f79888i = column[1];
            this.f79892m = column[2];
            this.f79896q = column[3];
            return;
        }
        if (i10 == 2) {
            this.f79885d = column[0];
            this.f79889j = column[1];
            this.f79893n = column[2];
            this.f79897r = column[3];
            return;
        }
        if (i10 != 3) {
            throw new IllegalArgumentException("Invalid column index. " + i10);
        }
        this.f79886e = column[0];
        this.f79890k = column[1];
        this.f79894o = column[2];
        this.f79898s = column[3];
    }

    public f(float m00, float m01, float m02, float m03, float m10, float m11, float m12, float m13, float m20, float m21, float m22, float m23, float m30, float m31, float m32, float m33) {
        this.f79883b = m00;
        this.f79884c = m01;
        this.f79885d = m02;
        this.f79886e = m03;
        this.f79887g = m10;
        this.f79888i = m11;
        this.f79889j = m12;
        this.f79890k = m13;
        this.f79891l = m20;
        this.f79892m = m21;
        this.f79893n = m22;
        this.f79894o = m23;
        this.f79895p = m30;
        this.f79896q = m31;
        this.f79897r = m32;
        this.f79898s = m33;
    }

    public void setScale(Vector3 scale) {
        setScale(scale.getX(), scale.getY(), scale.getZ());
    }

    public f(Matrix matrix) {
        x0(matrix.getDump());
    }

    public f(float[] array) {
        x0(array);
    }

    public f(f mat) {
        l(mat);
    }
}
