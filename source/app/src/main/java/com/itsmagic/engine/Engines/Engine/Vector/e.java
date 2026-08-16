package com.itsmagic.engine.Engines.Engine.Vector;

import com.bumptech.glide.load.engine.GlideException;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.jme3.math.FastMath;

public class e extends K8.f {

    public static final e f79869m = new e(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);

    public static final e f79870n = new e();

    public float f79871b;

    public float f79872c;

    public float f79873d;

    public float f79874e;

    public float f79875g;

    public float f79876i;

    public float f79877j;

    public float f79878k;

    public float f79879l;

    public e() {
        A();
    }

    public static boolean j(e mat) {
        return ((double) Math.abs(mat.f79871b - 1.0f)) <= 1.0E-4d && ((double) Math.abs(mat.f79875g - 1.0f)) <= 1.0E-4d && ((double) Math.abs(mat.f79879l - 1.0f)) <= 1.0E-4d && ((double) Math.abs(mat.f79872c)) <= 1.0E-4d && ((double) Math.abs(mat.f79873d)) <= 1.0E-4d && ((double) Math.abs(mat.f79874e)) <= 1.0E-4d && ((double) Math.abs(mat.f79876i)) <= 1.0E-4d && ((double) Math.abs(mat.f79877j)) <= 1.0E-4d && ((double) Math.abs(mat.f79878k)) <= 1.0E-4d;
    }

    public void A() {
        this.f79878k = 0.0f;
        this.f79877j = 0.0f;
        this.f79876i = 0.0f;
        this.f79874e = 0.0f;
        this.f79873d = 0.0f;
        this.f79872c = 0.0f;
        this.f79879l = 1.0f;
        this.f79875g = 1.0f;
        this.f79871b = 1.0f;
    }

    public e B(e mat) {
        return C(mat, null);
    }

    public e C(e mat, e product) {
        e eVar = product == null ? new e() : product;
        float f10 = this.f79871b;
        float f11 = mat.f79871b;
        float f12 = this.f79872c;
        float f13 = mat.f79874e;
        float f14 = this.f79873d;
        float f15 = mat.f79877j;
        float f16 = (f10 * f11) + (f12 * f13) + (f14 * f15);
        float f17 = mat.f79872c;
        float f18 = mat.f79875g;
        float f19 = mat.f79878k;
        float f20 = (f10 * f17) + (f12 * f18) + (f14 * f19);
        float f21 = mat.f79873d;
        float f22 = mat.f79876i;
        float f23 = mat.f79879l;
        float f24 = (f10 * f21) + (f12 * f22) + (f14 * f23);
        float f25 = this.f79874e;
        float f26 = this.f79875g;
        float f27 = this.f79876i;
        float f28 = (f25 * f11) + (f26 * f13) + (f27 * f15);
        float f29 = (f25 * f17) + (f26 * f18) + (f27 * f19);
        float f30 = (f25 * f21) + (f26 * f22) + (f27 * f23);
        float f31 = this.f79877j;
        float f32 = this.f79878k;
        float f33 = (f11 * f31) + (f13 * f32);
        float f34 = this.f79879l;
        eVar.f79871b = f16;
        eVar.f79872c = f20;
        eVar.f79873d = f24;
        eVar.f79874e = f28;
        eVar.f79875g = f29;
        eVar.f79876i = f30;
        eVar.f79877j = f33 + (f15 * f34);
        eVar.f79878k = (f17 * f31) + (f18 * f32) + (f19 * f34);
        eVar.f79879l = (f31 * f21) + (f32 * f22) + (f34 * f23);
        return eVar;
    }

    public Vector3 D(Vector3 vec) {
        return E(vec, null);
    }

    public Vector3 E(Vector3 vec, Vector3 product) {
        if (product == null) {
            product = new Vector3();
        }
        float x10 = vec.getX();
        float y10 = vec.getY();
        float z10 = vec.getZ();
        product.setX((this.f79871b * x10) + (this.f79872c * y10) + (this.f79873d * z10));
        product.setY((this.f79874e * x10) + (this.f79875g * y10) + (this.f79876i * z10));
        product.setZ((this.f79877j * x10) + (this.f79878k * y10) + (this.f79879l * z10));
        return product;
    }

    public e F(float scale) {
        this.f79871b *= scale;
        this.f79872c *= scale;
        this.f79873d *= scale;
        this.f79874e *= scale;
        this.f79875g *= scale;
        this.f79876i *= scale;
        this.f79877j *= scale;
        this.f79878k *= scale;
        this.f79879l *= scale;
        return this;
    }

    public e G(e mat) {
        return C(mat, this);
    }

    public Vector3 H(Vector3 vec) {
        if (vec == null) {
            return null;
        }
        float x10 = vec.getX();
        float y10 = vec.getY();
        vec.setX((this.f79871b * x10) + (this.f79872c * y10) + (this.f79873d * vec.getZ()));
        vec.setY((this.f79874e * x10) + (this.f79875g * y10) + (this.f79876i * vec.getZ()));
        vec.setZ((this.f79877j * x10) + (this.f79878k * y10) + (this.f79879l * vec.getZ()));
        return vec;
    }

    public e I(e store) {
        if (store == null) {
            store = new e();
        }
        float f10 = this.f79871b;
        float f11 = this.f79874e;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f79877j;
        float sqrt = 1.0f / FastMath.sqrt(f12 + (f13 * f13));
        store.f79871b = this.f79871b * sqrt;
        store.f79874e = this.f79874e * sqrt;
        store.f79877j = this.f79877j * sqrt;
        float f14 = this.f79872c;
        float f15 = this.f79875g;
        float f16 = (f14 * f14) + (f15 * f15);
        float f17 = this.f79878k;
        float sqrt2 = 1.0f / FastMath.sqrt(f16 + (f17 * f17));
        float f18 = this.f79872c * sqrt2;
        store.f79872c = f18;
        float f19 = this.f79875g * sqrt2;
        store.f79875g = f19;
        float f20 = this.f79878k * sqrt2;
        store.f79878k = f20;
        float f21 = store.f79874e;
        float f22 = store.f79877j;
        store.f79873d = (f21 * f20) - (f19 * f22);
        float f23 = store.f79871b;
        store.f79876i = (f22 * f18) - (f20 * f23);
        store.f79879l = (f23 * f19) - (f18 * f21);
        return store;
    }

    public e J() {
        return I(this);
    }

    public void K(Vector3 scale) {
        this.f79871b *= scale.getX();
        this.f79874e *= scale.getX();
        this.f79877j *= scale.getX();
        this.f79872c *= scale.getY();
        this.f79875g *= scale.getY();
        this.f79878k *= scale.getY();
        this.f79873d *= scale.getZ();
        this.f79876i *= scale.getZ();
        this.f79879l *= scale.getZ();
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0006, code lost:
    
        if (r3 == 2) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public e L(int i10, int j10, float value) {
        if (i10 != 0) {
            if (i10 != 1) {
            }
        } else {
            if (j10 == 0) {
                this.f79871b = value;
                return this;
            }
            if (j10 == 1) {
                this.f79872c = value;
                return this;
            }
            if (j10 == 2) {
                this.f79873d = value;
                return this;
            }
        }
        if (j10 == 0) {
            this.f79874e = value;
            return this;
        }
        if (j10 == 1) {
            this.f79875g = value;
            return this;
        }
        if (j10 == 2) {
            this.f79876i = value;
            return this;
        }
        if (j10 == 0) {
            this.f79877j = value;
            return this;
        }
        if (j10 == 1) {
            this.f79878k = value;
            return this;
        }
        if (j10 == 2) {
            this.f79879l = value;
            return this;
        }
        throw new IllegalArgumentException("Invalid indices into matrix.");
    }

    public e M(Quaternion quaternion) {
        float j02 = quaternion.j0();
        float f10 = j02 != 1.0f ? j02 > 0.0f ? 2.0f / j02 : 0.0f : 2.0f;
        float x10 = quaternion.getX() * f10;
        float y10 = quaternion.getY() * f10;
        float z10 = quaternion.getZ() * f10;
        float x11 = quaternion.getX() * x10;
        float x12 = quaternion.getX() * y10;
        float x13 = quaternion.getX() * z10;
        float I10 = quaternion.I() * x10;
        float y11 = quaternion.getY() * y10;
        float y12 = quaternion.getY() * z10;
        float I11 = quaternion.I() * y10;
        float z11 = quaternion.getZ() * z10;
        float I12 = quaternion.I() * z10;
        this.f79871b = 1.0f - (y11 + z11);
        this.f79872c = x12 - I12;
        this.f79873d = x13 + I11;
        this.f79874e = x12 + I12;
        this.f79875g = 1.0f - (z11 + x11);
        this.f79876i = y12 - I10;
        this.f79877j = x13 - I11;
        this.f79878k = y12 + I10;
        this.f79879l = 1.0f - (x11 + y11);
        return this;
    }

    public e N(e matrix) {
        if (matrix == null) {
            A();
        } else {
            this.f79871b = matrix.f79871b;
            this.f79872c = matrix.f79872c;
            this.f79873d = matrix.f79873d;
            this.f79874e = matrix.f79874e;
            this.f79875g = matrix.f79875g;
            this.f79876i = matrix.f79876i;
            this.f79877j = matrix.f79877j;
            this.f79878k = matrix.f79878k;
            this.f79879l = matrix.f79879l;
        }
        return this;
    }

    public e O(float[] matrix) {
        return P(matrix, true);
    }

    public e P(float[] matrix, boolean rowMajor) {
        if (matrix.length != 9) {
            throw new IllegalArgumentException("Array must be of size 9.");
        }
        if (rowMajor) {
            this.f79871b = matrix[0];
            this.f79872c = matrix[1];
            this.f79873d = matrix[2];
            this.f79874e = matrix[3];
            this.f79875g = matrix[4];
            this.f79876i = matrix[5];
            this.f79877j = matrix[6];
            this.f79878k = matrix[7];
            this.f79879l = matrix[8];
        } else {
            this.f79871b = matrix[0];
            this.f79872c = matrix[3];
            this.f79873d = matrix[6];
            this.f79874e = matrix[1];
            this.f79875g = matrix[4];
            this.f79876i = matrix[7];
            this.f79877j = matrix[2];
            this.f79878k = matrix[5];
            this.f79879l = matrix[8];
        }
        return this;
    }

    public e Q(float[][] matrix) {
        if (matrix.length == 3) {
            float[] fArr = matrix[0];
            if (fArr.length == 3) {
                this.f79871b = fArr[0];
                this.f79872c = fArr[1];
                this.f79873d = fArr[2];
                float[] fArr2 = matrix[1];
                this.f79874e = fArr2[0];
                this.f79875g = fArr2[1];
                this.f79876i = fArr2[2];
                float[] fArr3 = matrix[2];
                this.f79877j = fArr3[0];
                this.f79878k = fArr3[1];
                this.f79879l = fArr3[2];
                return this;
            }
        }
        throw new IllegalArgumentException("Array must be of size 9.");
    }

    public e S(int i10, Vector3 column) {
        if (column == null) {
            return this;
        }
        if (i10 == 0) {
            this.f79871b = column.getX();
            this.f79874e = column.getY();
            this.f79877j = column.getZ();
        } else if (i10 == 1) {
            this.f79872c = column.getX();
            this.f79875g = column.getY();
            this.f79878k = column.getZ();
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException("Invalid column index. " + i10);
            }
            this.f79873d = column.getX();
            this.f79876i = column.getY();
            this.f79879l = column.getZ();
        }
        return this;
    }

    public e T(int i10, Vector3 row) {
        if (row == null) {
            return this;
        }
        if (i10 == 0) {
            this.f79871b = row.getX();
            this.f79872c = row.getY();
            this.f79873d = row.getZ();
        } else if (i10 == 1) {
            this.f79874e = row.getX();
            this.f79875g = row.getY();
            this.f79876i = row.getZ();
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException("Invalid row index. " + i10);
            }
            this.f79877j = row.getX();
            this.f79878k = row.getY();
            this.f79879l = row.getZ();
        }
        return this;
    }

    public e U() {
        return V();
    }

    public e V() {
        float f10 = this.f79872c;
        this.f79872c = this.f79874e;
        this.f79874e = f10;
        float f11 = this.f79873d;
        this.f79873d = this.f79877j;
        this.f79877j = f11;
        float f12 = this.f79876i;
        this.f79876i = this.f79878k;
        this.f79878k = f12;
        return this;
    }

    public e W() {
        return new e(this.f79871b, this.f79874e, this.f79877j, this.f79872c, this.f79875g, this.f79878k, this.f79873d, this.f79876i, this.f79879l);
    }

    public e X() {
        this.f79879l = 0.0f;
        this.f79878k = 0.0f;
        this.f79877j = 0.0f;
        this.f79876i = 0.0f;
        this.f79875g = 0.0f;
        this.f79874e = 0.0f;
        this.f79873d = 0.0f;
        this.f79872c = 0.0f;
        this.f79871b = 0.0f;
        return this;
    }

    public void d() {
        this.f79871b = FastMath.abs(this.f79871b);
        this.f79872c = FastMath.abs(this.f79872c);
        this.f79873d = FastMath.abs(this.f79873d);
        this.f79874e = FastMath.abs(this.f79874e);
        this.f79875g = FastMath.abs(this.f79875g);
        this.f79876i = FastMath.abs(this.f79876i);
        this.f79877j = FastMath.abs(this.f79877j);
        this.f79878k = FastMath.abs(this.f79878k);
        this.f79879l = FastMath.abs(this.f79879l);
    }

    public e e() {
        return f(null);
    }

    public boolean equals(Object o10) {
        if (o10 == null || o10.getClass() != getClass()) {
            return false;
        }
        if (this == o10) {
            return true;
        }
        e eVar = (e) o10;
        return Float.compare(this.f79871b, eVar.f79871b) == 0 && Float.compare(this.f79872c, eVar.f79872c) == 0 && Float.compare(this.f79873d, eVar.f79873d) == 0 && Float.compare(this.f79874e, eVar.f79874e) == 0 && Float.compare(this.f79875g, eVar.f79875g) == 0 && Float.compare(this.f79876i, eVar.f79876i) == 0 && Float.compare(this.f79877j, eVar.f79877j) == 0 && Float.compare(this.f79878k, eVar.f79878k) == 0 && Float.compare(this.f79879l, eVar.f79879l) == 0;
    }

    public e f(e store) {
        if (store == null) {
            store = new e();
        }
        float f10 = this.f79875g;
        float f11 = this.f79879l;
        float f12 = this.f79876i;
        float f13 = this.f79878k;
        store.f79871b = (f10 * f11) - (f12 * f13);
        float f14 = this.f79873d;
        store.f79872c = (f14 * f13) - (this.f79872c * f11);
        float f15 = this.f79872c;
        store.f79873d = (f15 * f12) - (f14 * f10);
        float f16 = this.f79877j;
        store.f79874e = (f12 * f16) - (this.f79874e * f11);
        float f17 = this.f79871b;
        float f18 = this.f79873d;
        store.f79875g = (f11 * f17) - (f18 * f16);
        float f19 = this.f79874e;
        store.f79876i = (f18 * f19) - (f12 * f17);
        float f20 = this.f79875g;
        store.f79877j = (f19 * f13) - (f16 * f20);
        store.f79878k = (this.f79877j * f15) - (f13 * f17);
        store.f79879l = (f17 * f20) - (f15 * f19);
        return store;
    }

    public e clone() {
        return new e(this);
    }

    public int hashCode() {
        return ((((((((((((((((1369 + Float.floatToIntBits(this.f79871b)) * 37) + Float.floatToIntBits(this.f79872c)) * 37) + Float.floatToIntBits(this.f79873d)) * 37) + Float.floatToIntBits(this.f79874e)) * 37) + Float.floatToIntBits(this.f79875g)) * 37) + Float.floatToIntBits(this.f79876i)) * 37) + Float.floatToIntBits(this.f79877j)) * 37) + Float.floatToIntBits(this.f79878k)) * 37) + Float.floatToIntBits(this.f79879l);
    }

    public float i() {
        float f10 = this.f79875g;
        float f11 = this.f79879l;
        float f12 = this.f79876i;
        float f13 = this.f79878k;
        float f14 = (f10 * f11) - (f12 * f13);
        float f15 = this.f79877j;
        float f16 = this.f79874e;
        return (this.f79871b * f14) + (this.f79872c * ((f12 * f15) - (f11 * f16))) + (this.f79873d * ((f16 * f13) - (f10 * f15)));
    }

    public void k(float[] f10, boolean columnMajor) {
        if (columnMajor) {
            f10[0] = this.f79871b;
            f10[1] = this.f79874e;
            f10[2] = this.f79877j;
            f10[3] = this.f79872c;
            f10[4] = this.f79875g;
            f10[5] = this.f79878k;
            f10[6] = this.f79873d;
            f10[7] = this.f79876i;
            f10[8] = this.f79879l;
            return;
        }
        f10[0] = this.f79871b;
        f10[1] = this.f79872c;
        f10[2] = this.f79873d;
        f10[3] = this.f79874e;
        f10[4] = this.f79875g;
        f10[5] = this.f79876i;
        f10[6] = this.f79877j;
        f10[7] = this.f79878k;
        f10[8] = this.f79879l;
    }

    public void l(float angle, Vector3 axis) {
        m(angle, axis.normalize());
    }

    public void m(float angle, Vector3 axis) {
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
        this.f79871b = (x10 * f10) + cos;
        this.f79872c = x11 - z11;
        this.f79873d = x12 + y12;
        this.f79874e = x11 + z11;
        this.f79875g = (y10 * f10) + cos;
        this.f79876i = y11 - x13;
        this.f79877j = x12 - y12;
        this.f79878k = y11 + x13;
        this.f79879l = (z10 * f10) + cos;
    }

    public void n(Vector3 uAxis, Vector3 vAxis, Vector3 wAxis) {
        this.f79871b = uAxis.getX();
        this.f79874e = uAxis.getY();
        this.f79877j = uAxis.getZ();
        this.f79872c = vAxis.getX();
        this.f79875g = vAxis.getY();
        this.f79878k = vAxis.getZ();
        this.f79873d = wAxis.getX();
        this.f79876i = wAxis.getY();
        this.f79879l = wAxis.getZ();
    }

    public void o(Vector3 start, Vector3 end) {
        Vector3 vector3 = new Vector3();
        start.cross(end, vector3);
        float dot = start.dot(end);
        if ((dot < 0.0f ? -dot : dot) <= 0.9999f) {
            float f10 = 1.0f / (dot + 1.0f);
            float x10 = vector3.getX() * f10;
            float z10 = vector3.getZ() * f10;
            float y10 = vector3.getY() * x10;
            float z11 = vector3.getZ() * x10;
            float y11 = vector3.getY() * z10;
            L(0, 0, (x10 * vector3.getX()) + dot);
            L(0, 1, y10 - vector3.getZ());
            L(0, 2, vector3.getY() + z11);
            L(1, 0, y10 + vector3.getZ());
            L(1, 1, (f10 * vector3.getY() * vector3.getY()) + dot);
            L(1, 2, y11 - vector3.getX());
            L(2, 0, z11 - vector3.getY());
            L(2, 1, y11 + vector3.getX());
            L(2, 2, dot + (z10 * vector3.getZ()));
            return;
        }
        Vector3 vector32 = new Vector3();
        Vector3 vector33 = new Vector3();
        vector33.setX(((double) start.getX()) > 0.0d ? start.getX() : -start.getX());
        vector33.setY(((double) start.getY()) > 0.0d ? start.getY() : -start.getY());
        vector33.setZ(((double) start.getZ()) > 0.0d ? start.getZ() : -start.getZ());
        if (vector33.getX() < vector33.getY()) {
            if (vector33.getX() < vector33.getZ()) {
                vector33.setX(1.0f);
                vector33.setY(vector33.setZ(0.0f));
            } else {
                vector33.setZ(1.0f);
                vector33.setX(vector33.setY(0.0f));
            }
        } else if (vector33.getY() < vector33.getZ()) {
            vector33.setY(1.0f);
            vector33.setX(vector33.setZ(0.0f));
        } else {
            vector33.setZ(1.0f);
            vector33.setX(vector33.setY(0.0f));
        }
        vector32.setX(vector33.getX() - start.getX());
        vector32.setY(vector33.getY() - start.getY());
        vector32.setZ(vector33.getZ() - start.getZ());
        vector3.setX(vector33.getX() - end.getX());
        vector3.setY(vector33.getY() - end.getY());
        vector3.setZ(vector33.getZ() - end.getZ());
        float dot2 = 2.0f / vector32.dot(vector32);
        float dot3 = 2.0f / vector3.dot(vector3);
        float dot4 = dot2 * dot3 * vector32.dot(vector3);
        for (int i10 = 0; i10 < 3; i10++) {
            for (int i11 = 0; i11 < 3; i11++) {
                L(i10, i11, ((((-dot2) * vector32.get(i10)) * vector32.get(i11)) - ((vector3.get(i10) * dot3) * vector3.get(i11))) + (vector3.get(i10) * dot4 * vector32.get(i11)));
            }
            L(i10, i10, p(i10, i10) + 1.0f);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0006, code lost:
    
        if (r3 == 2) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public float p(int i10, int j10) {
        if (i10 != 0) {
            if (i10 != 1) {
            }
        } else {
            if (j10 == 0) {
                return this.f79871b;
            }
            if (j10 == 1) {
                return this.f79872c;
            }
            if (j10 == 2) {
                return this.f79873d;
            }
        }
        if (j10 == 0) {
            return this.f79874e;
        }
        if (j10 == 1) {
            return this.f79875g;
        }
        if (j10 == 2) {
            return this.f79876i;
        }
        if (j10 == 0) {
            return this.f79877j;
        }
        if (j10 == 1) {
            return this.f79878k;
        }
        if (j10 == 2) {
            return this.f79879l;
        }
        throw new IllegalArgumentException("Invalid indices into matrix.");
    }

    public void q(float[] data, boolean rowMajor) {
        if (data.length == 9) {
            if (rowMajor) {
                data[0] = this.f79871b;
                data[1] = this.f79872c;
                data[2] = this.f79873d;
                data[3] = this.f79874e;
                data[4] = this.f79875g;
                data[5] = this.f79876i;
                data[6] = this.f79877j;
                data[7] = this.f79878k;
                data[8] = this.f79879l;
                return;
            }
            data[0] = this.f79871b;
            data[1] = this.f79874e;
            data[2] = this.f79877j;
            data[3] = this.f79872c;
            data[4] = this.f79875g;
            data[5] = this.f79878k;
            data[6] = this.f79873d;
            data[7] = this.f79876i;
            data[8] = this.f79879l;
            return;
        }
        if (data.length != 16) {
            throw new IndexOutOfBoundsException("Array size must be 9 or 16 in Matrix3f.get().");
        }
        if (rowMajor) {
            data[0] = this.f79871b;
            data[1] = this.f79872c;
            data[2] = this.f79873d;
            data[4] = this.f79874e;
            data[5] = this.f79875g;
            data[6] = this.f79876i;
            data[8] = this.f79877j;
            data[9] = this.f79878k;
            data[10] = this.f79879l;
            return;
        }
        data[0] = this.f79871b;
        data[1] = this.f79874e;
        data[2] = this.f79877j;
        data[4] = this.f79872c;
        data[5] = this.f79875g;
        data[6] = this.f79878k;
        data[8] = this.f79873d;
        data[9] = this.f79876i;
        data[10] = this.f79879l;
    }

    public Vector3 r(int i10) {
        return s(i10, null);
    }

    public Vector3 s(int i10, Vector3 store) {
        if (store == null) {
            store = new Vector3();
        }
        if (i10 == 0) {
            store.setX(this.f79871b);
            store.setY(this.f79874e);
            store.setZ(this.f79877j);
        } else if (i10 == 1) {
            store.setX(this.f79872c);
            store.setY(this.f79875g);
            store.setZ(this.f79878k);
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException("Invalid column index. " + i10);
            }
            store.setX(this.f79873d);
            store.setY(this.f79876i);
            store.setZ(this.f79879l);
        }
        return store;
    }

    public String toString() {
        return "Matrix3f\n[\n " + this.f79871b + GlideException.a.f59088e + this.f79872c + GlideException.a.f59088e + this.f79873d + " \n " + this.f79874e + GlideException.a.f59088e + this.f79875g + GlideException.a.f59088e + this.f79876i + " \n " + this.f79877j + GlideException.a.f59088e + this.f79878k + GlideException.a.f59088e + this.f79879l + " \n]";
    }

    public Vector3 u(int i10) {
        return v(i10, null);
    }

    public Vector3 v(int i10, Vector3 store) {
        if (store == null) {
            store = new Vector3();
        }
        if (i10 == 0) {
            store.setX(this.f79871b);
            store.setY(this.f79872c);
            store.setZ(this.f79873d);
        } else if (i10 == 1) {
            store.setX(this.f79874e);
            store.setY(this.f79875g);
            store.setZ(this.f79876i);
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException("Invalid row index. " + i10);
            }
            store.setX(this.f79877j);
            store.setY(this.f79878k);
            store.setZ(this.f79879l);
        }
        return store;
    }

    public e w() {
        return x(null);
    }

    public e x(e store) {
        if (store == null) {
            store = new e();
        }
        float i10 = i();
        if (FastMath.abs(i10) <= 1.1920929E-7f) {
            return store.X();
        }
        float f10 = this.f79875g;
        float f11 = this.f79879l;
        float f12 = this.f79876i;
        float f13 = this.f79878k;
        store.f79871b = (f10 * f11) - (f12 * f13);
        float f14 = this.f79873d;
        store.f79872c = (f14 * f13) - (this.f79872c * f11);
        float f15 = this.f79872c;
        store.f79873d = (f15 * f12) - (f14 * f10);
        float f16 = this.f79877j;
        store.f79874e = (f12 * f16) - (this.f79874e * f11);
        float f17 = this.f79871b;
        float f18 = this.f79873d;
        store.f79875g = (f11 * f17) - (f18 * f16);
        float f19 = this.f79874e;
        store.f79876i = (f18 * f19) - (f12 * f17);
        float f20 = this.f79875g;
        store.f79877j = (f19 * f13) - (f16 * f20);
        store.f79878k = (this.f79877j * f15) - (f13 * f17);
        store.f79879l = (f17 * f20) - (f15 * f19);
        store.F(1.0f / i10);
        return store;
    }

    public e y() {
        float i10 = i();
        if (FastMath.abs(i10) <= 0.0f) {
            return X();
        }
        float f10 = this.f79875g;
        float f11 = this.f79879l;
        float f12 = this.f79876i;
        float f13 = this.f79878k;
        float f14 = (f10 * f11) - (f12 * f13);
        float f15 = this.f79873d;
        float f16 = this.f79872c;
        float f17 = (f15 * f13) - (f16 * f11);
        float f18 = (f16 * f12) - (f15 * f10);
        float f19 = this.f79877j;
        float f20 = this.f79874e;
        float f21 = (f12 * f19) - (f20 * f11);
        float f22 = this.f79871b;
        float f23 = (f11 * f22) - (f15 * f19);
        float f24 = (f15 * f20) - (f12 * f22);
        float f25 = (f20 * f13) - (f10 * f19);
        this.f79871b = f14;
        this.f79872c = f17;
        this.f79873d = f18;
        this.f79874e = f21;
        this.f79875g = f23;
        this.f79876i = f24;
        this.f79877j = f25;
        this.f79878k = (f19 * f16) - (f13 * f22);
        this.f79879l = (f22 * f10) - (f16 * f20);
        F(1.0f / i10);
        return this;
    }

    public boolean z() {
        return this.f79871b == 1.0f && this.f79872c == 0.0f && this.f79873d == 0.0f && this.f79874e == 0.0f && this.f79875g == 1.0f && this.f79876i == 0.0f && this.f79877j == 0.0f && this.f79878k == 0.0f && this.f79879l == 1.0f;
    }

    public e(float m00, float m01, float m02, float m10, float m11, float m12, float m20, float m21, float m22) {
        this.f79871b = m00;
        this.f79872c = m01;
        this.f79873d = m02;
        this.f79874e = m10;
        this.f79875g = m11;
        this.f79876i = m12;
        this.f79877j = m20;
        this.f79878k = m21;
        this.f79879l = m22;
    }

    public e(e mat) {
        N(mat);
    }
}
