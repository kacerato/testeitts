package com.itsmagic.engine.Engines.Engine.Vector;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import java.io.Serializable;
import java.util.Locale;

public class AABB extends c implements Serializable {

    public static final ThreadLocal<Vector3> f79827c = new a();

    public static final ThreadLocal<Vector3> f79828d = new b();

    public JAVARuntime.AABB f79829b;

    @Expose
    public float cx;

    @Expose
    public float cy;

    @Expose
    public float cz;

    @Expose
    public float radius;

    @Expose
    public float f79830x;

    @Expose
    public float f79831xn;

    @Expose
    public float f79832y;

    @Expose
    public float yn;

    @Expose
    public float f79833z;

    @Expose
    public float zn;

    public class a extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class b extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public AABB() {
        this.f79833z = 0.0f;
        this.f79832y = 0.0f;
        this.f79830x = 0.0f;
        this.zn = 0.0f;
        this.yn = 0.0f;
        this.f79831xn = 0.0f;
        this.cy = 0.0f;
        this.cz = 0.0f;
    }

    public Vector3 A(Vector3 out) {
        out.setX(this.f79831xn);
        out.setY(this.yn);
        out.setZ(this.zn);
        return out;
    }

    public float B() {
        return this.f79831xn;
    }

    public float C() {
        return this.yn;
    }

    public float D() {
        return this.zn;
    }

    public boolean E() {
        return this.f79830x == 0.0f && this.f79832y == 0.0f && this.f79833z == 0.0f && this.f79831xn == 0.0f && this.yn == 0.0f && this.zn == 0.0f && this.cx == 0.0f && this.cy == 0.0f && this.cz == 0.0f;
    }

    public boolean F(Vector3 p10) {
        return p10.getX() <= w() && p10.getX() >= B() && p10.getY() <= x() && p10.getY() >= C() && p10.getZ() <= y() && p10.getZ() >= D();
    }

    public final boolean G(float max1, float min1, float max2, float min2) {
        return max1 >= min2 && max2 >= min1;
    }

    public float H() {
        float f10 = this.f79830x;
        float f11 = this.f79832y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f79833z;
        return (float) Math.sqrt(f12 + (f13 * f13));
    }

    public float I() {
        float f10 = this.f79831xn;
        float f11 = this.yn;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.zn;
        return (float) Math.sqrt(f12 + (f13 * f13));
    }

    public boolean J(AABB other) {
        return G(w(), B(), other.w(), other.B()) && G(x(), C(), other.x(), other.C()) && G(y(), D(), other.y(), other.D());
    }

    public void K() {
        this.f79830x = 0.0f;
        this.f79831xn = 0.0f;
        this.cx = 0.0f;
        this.f79832y = 0.0f;
        this.yn = 0.0f;
        this.cy = 0.0f;
        this.f79833z = 0.0f;
        this.zn = 0.0f;
        this.cz = 0.0f;
    }

    public void L(Vector3 f10) {
        M(f10.getX());
        N(f10.getY());
        O(f10.getZ());
    }

    public void M(float cx) {
        this.cx = cx;
    }

    public void N(float cy) {
        this.cy = cy;
    }

    public void O(float cz) {
        this.cz = cz;
    }

    public void P(Vector3 f10) {
        T(f10.getX());
        V(f10.getY());
        X(f10.getZ());
    }

    public void Q(Vector3 f10) {
        U(f10.getX());
        W(f10.getY());
        Y(f10.getZ());
    }

    public void S(JAVARuntime.AABB run) {
        this.f79829b = run;
    }

    public void T(float x10) {
        this.f79830x = x10;
    }

    public void U(float xn2) {
        this.f79831xn = xn2;
    }

    public void V(float y10) {
        this.f79832y = y10;
    }

    public void W(float yn) {
        this.yn = yn;
    }

    public void X(float z10) {
        this.f79833z = z10;
    }

    public void Y(float zn) {
        this.zn = zn;
    }

    public JAVARuntime.AABB Z() {
        JAVARuntime.AABB aabb = this.f79829b;
        if (aabb != null) {
            return aabb;
        }
        JAVARuntime.AABB aabb2 = new JAVARuntime.AABB(this);
        this.f79829b = aabb2;
        return aabb2;
    }

    public final void a0(Vector3 min, Vector3 max, float[] matrix, Vector3 newMin, Vector3 newMax) {
        Vector3[] vector3Arr = new Vector3[8];
        vector3Arr[0] = new Vector3(min.getX(), min.getY(), min.getZ());
        vector3Arr[1] = new Vector3(max.getX(), min.getY(), min.getZ());
        vector3Arr[2] = new Vector3(min.getX(), max.getY(), min.getZ());
        vector3Arr[3] = new Vector3(max.getX(), max.getY(), min.getZ());
        vector3Arr[4] = new Vector3(min.getX(), min.getY(), max.getZ());
        vector3Arr[5] = new Vector3(max.getX(), min.getY(), max.getZ());
        vector3Arr[6] = new Vector3(min.getX(), max.getY(), max.getZ());
        vector3Arr[7] = new Vector3(max.getX(), max.getY(), max.getZ());
        for (int i10 = 0; i10 < 8; i10++) {
            vector3Arr[i10] = multiplyMatrixVector(matrix, vector3Arr[i10]);
        }
        newMin.set(vector3Arr[0]);
        newMax.set(vector3Arr[0]);
        for (int i11 = 1; i11 < 8; i11++) {
            newMin.setX(Math.min(newMin.getX(), vector3Arr[i11].getX()));
            newMin.setY(Math.min(newMin.getY(), vector3Arr[i11].getY()));
            newMin.setZ(Math.min(newMin.getZ(), vector3Arr[i11].getZ()));
            newMax.setX(Math.max(newMax.getX(), vector3Arr[i11].getX()));
            newMax.setY(Math.max(newMax.getY(), vector3Arr[i11].getY()));
            newMax.setZ(Math.max(newMax.getZ(), vector3Arr[i11].getZ()));
        }
    }

    public AABB d(float[] matrix) {
        if (matrix == null) {
            throw new NullPointerException("matrix can't be null");
        }
        AABB aabb = new AABB();
        Vector3 vector3 = f79827c.get();
        Vector3 vector32 = f79828d.get();
        a0(z(), u(), matrix, vector3, vector32);
        aabb.Q(vector3);
        aabb.P(vector32);
        aabb.L(multiplyMatrixVector(matrix, m()));
        aabb.setRadius(getRadius() * extractMaxScale(matrix));
        return aabb;
    }

    public void e(float[] matrix, AABB output) {
        if (matrix == null) {
            throw new NullPointerException("matrix can't be null");
        }
        Vector3 vector3 = f79827c.get();
        Vector3 vector32 = f79828d.get();
        a0(z(), u(), matrix, vector3, vector32);
        output.Q(vector3);
        output.P(vector32);
        output.L(multiplyMatrixVector(matrix, m()));
        output.setRadius(getRadius() * extractMaxScale(matrix));
    }

    public final float extractMaxScale(float[] matrix) {
        float f10 = matrix[0];
        float f11 = matrix[1];
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = matrix[2];
        float sqrt = (float) Math.sqrt(f12 + (f13 * f13));
        float f14 = matrix[4];
        float f15 = matrix[5];
        float f16 = (f14 * f14) + (f15 * f15);
        float f17 = matrix[6];
        float sqrt2 = (float) Math.sqrt(f16 + (f17 * f17));
        float f18 = matrix[8];
        float f19 = matrix[9];
        float f20 = matrix[10];
        return Math.max(sqrt, Math.max(sqrt2, (float) Math.sqrt((f18 * f18) + (f19 * f19) + (f20 * f20))));
    }

    public AABB clone() {
        return new AABB(this.f79830x, this.f79832y, this.f79833z, this.f79831xn, this.yn, this.zn, this.cx, this.cy, this.cz);
    }

    public float getRadius() {
        return this.radius;
    }

    public Vector3 h() {
        return i(new Vector3());
    }

    public Vector3 i(Vector3 out) {
        out.set(j(), k(), l());
        return out;
    }

    public float j() {
        return (w() - B()) / 2.0f;
    }

    public float k() {
        return (x() - C()) / 2.0f;
    }

    public float l() {
        return (y() - D()) / 2.0f;
    }

    public Vector3 m() {
        return new Vector3(this.cx, this.cy, this.cz);
    }

    public final Vector3 multiplyMatrixVector(float[] matrix, Vector3 v10) {
        float x10 = v10.getX();
        float y10 = v10.getY();
        float z10 = v10.getZ();
        return new Vector3((matrix[0] * x10) + (matrix[4] * y10) + (matrix[8] * z10) + matrix[12], (matrix[1] * x10) + (matrix[5] * y10) + (matrix[9] * z10) + matrix[13], (matrix[2] * x10) + (matrix[6] * y10) + (matrix[10] * z10) + matrix[14]);
    }

    public Vector3 n(Vector3 out) {
        out.setX(this.cx);
        out.setY(this.cy);
        out.setZ(this.cz);
        return out;
    }

    public float o() {
        return this.cx;
    }

    public float p() {
        return this.cy;
    }

    public float q() {
        return this.cz;
    }

    public void r(d dimensions) {
        this.f79831xn = dimensions.o()[0];
        this.yn = dimensions.o()[1];
        this.zn = dimensions.o()[2];
        this.f79830x = dimensions.n()[0];
        this.f79832y = dimensions.n()[1];
        this.f79833z = dimensions.n()[2];
        float[] fArr = dimensions.f79862j;
        this.cx = fArr[0];
        this.cy = fArr[1];
        this.cz = fArr[2];
        this.radius = dimensions.f79867o;
    }

    public void s(NativeFloatBuffer dimensions) {
        this.f79831xn = dimensions.get(0);
        this.yn = dimensions.get(1);
        this.zn = dimensions.get(2);
        this.f79830x = dimensions.get(3);
        this.f79832y = dimensions.get(4);
        this.f79833z = dimensions.get(5);
        this.cx = dimensions.get(6);
        this.cy = dimensions.get(7);
        this.cz = dimensions.get(8);
        this.radius = dimensions.get(9);
    }

    public void setRadius(float radius) {
        this.radius = radius;
    }

    public String toString() {
        return "( " + this.f79830x + " , " + this.f79832y + " , " + this.f79833z + " )";
    }

    public Vector3 u() {
        return new Vector3(this.f79830x, this.f79832y, this.f79833z);
    }

    public Vector3 v(Vector3 out) {
        out.setX(this.f79830x);
        out.setY(this.f79832y);
        out.setZ(this.f79833z);
        return out;
    }

    public float w() {
        return this.f79830x;
    }

    public float x() {
        return this.f79832y;
    }

    public float y() {
        return this.f79833z;
    }

    public Vector3 z() {
        return new Vector3(this.f79831xn, this.yn, this.zn);
    }

    public String toString(int decimals) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("( ");
        Locale locale = Locale.US;
        sb2.append(String.format(locale, "%." + decimals + "f", Float.valueOf(this.f79830x)));
        sb2.append(" , ");
        sb2.append(String.format(locale, "%." + decimals + "f", Float.valueOf(this.f79832y)));
        sb2.append(" , ");
        sb2.append(String.format(locale, "%." + decimals + "f", Float.valueOf(this.f79833z)));
        sb2.append(" )");
        return sb2.toString();
    }

    public AABB(float x10, float y10, float z10, float xn2, float yn, float zn, float cx, float cy, float cz) {
        this.f79830x = x10;
        this.f79832y = y10;
        this.f79833z = z10;
        this.f79831xn = xn2;
        this.yn = yn;
        this.zn = zn;
        this.cx = cx;
        this.cy = cy;
        this.cz = cz;
    }

    public AABB(Vector3 min, Vector3 max) {
        this.f79831xn = min.getX();
        this.yn = min.getY();
        this.zn = min.getZ();
        this.f79830x = max.getX();
        this.f79832y = max.getY();
        float z10 = max.getZ();
        this.f79833z = z10;
        float f10 = this.f79830x;
        float f11 = (this.f79831xn + f10) * 0.5f;
        this.cx = f11;
        float f12 = this.f79832y;
        float f13 = (this.yn + f12) * 0.5f;
        this.cy = f13;
        float f14 = (this.zn + z10) * 0.5f;
        this.cz = f14;
        float f15 = f10 - f11;
        float f16 = f12 - f13;
        float f17 = z10 - f14;
        this.radius = (float) Math.sqrt((f15 * f15) + (f16 * f16) + (f17 * f17));
    }
}
