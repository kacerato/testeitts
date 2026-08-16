package jf;

import com.jme3.math.FastMath;
import com.jme3.math.Matrix3f;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Triangle;
import com.jme3.math.Vector3f;
import com.jme3.util.TempVars;
import java.util.logging.Logger;
import p000if.C13702E;

public final class f {

    public static final double f92904a = 1.5707963267948966d;

    public static final float f92905b = (FastMath.sqrt(5.0f) + 1.0f) / 2.0f;

    public static final float f92906c = FastMath.sqrt(2.0f);

    public static final float f92907d = FastMath.sqrt(0.5f);

    public static final Logger f92908e = Logger.getLogger(f.class.getName());

    public static final boolean f92909f = false;

    public static int A(int i10) {
        C13702E.F(i10, "input value");
        return 31 - Integer.numberOfLeadingZeros(i10);
    }

    public static float B(float... fArr) {
        float f10 = Float.NEGATIVE_INFINITY;
        for (float f11 : fArr) {
            if (f11 > f10) {
                f10 = f11;
            }
        }
        return f10;
    }

    public static double C(double... dArr) {
        double d10 = Double.NEGATIVE_INFINITY;
        for (double d11 : dArr) {
            if (d11 > d10) {
                d10 = d11;
            }
        }
        return d10;
    }

    public static int D(int... iArr) {
        int i10 = Integer.MIN_VALUE;
        for (int i11 : iArr) {
            if (i11 > i10) {
                i10 = i11;
            }
        }
        return i10;
    }

    public static double E(double d10, double d11, double d12) {
        return d10 >= d11 ? d11 >= d12 ? d11 : d10 >= d12 ? d12 : d10 : d10 >= d12 ? d10 : d11 >= d12 ? d12 : d11;
    }

    public static float F(float f10, float f11, float f12) {
        return f10 >= f11 ? f11 >= f12 ? f11 : f10 >= f12 ? f12 : f10 : f10 >= f12 ? f10 : f11 >= f12 ? f12 : f11;
    }

    public static float G(float... fArr) {
        float f10 = Float.POSITIVE_INFINITY;
        for (float f11 : fArr) {
            if (f11 < f10) {
                f10 = f11;
            }
        }
        return f10;
    }

    public static double H(double... dArr) {
        double d10 = Double.POSITIVE_INFINITY;
        for (double d11 : dArr) {
            if (d11 < d10) {
                d10 = d11;
            }
        }
        return d10;
    }

    public static double I(double d10, double d11) {
        double d12 = d10 % d11;
        return d10 >= 0.0d ? d12 : (d12 + d11) % d11;
    }

    public static float J(float f10, float f11) {
        float f12 = f10 % f11;
        return f10 >= 0.0f ? f12 : (f12 + f11) % f11;
    }

    public static int K(int i10, int i11) {
        int i12 = i10 % i11;
        return i10 >= 0 ? i12 : (i12 + i11) % i11;
    }

    public static Transform L(float f10, Transform transform, Transform transform2, Transform transform3) {
        if (transform3 == null) {
            transform3 = new Transform();
        }
        h.G(f10, transform.getTranslation(), transform2.getTranslation(), transform3.getTranslation());
        g.t(f10, transform.getRotation(), transform2.getRotation(), transform3.getRotation());
        h.G(f10, transform.getScale(), transform2.getScale(), transform3.getScale());
        return transform3;
    }

    public static double M(double d10) {
        double d11 = d10 * d10;
        if (Double.isInfinite(d11)) {
            f92908e.warning(String.format("Overflow from squaring %g.", Double.valueOf(d10)));
        }
        return d11;
    }

    public static float N(float f10) {
        if (Float.compare(f10, -0.0f) == 0) {
            return 0.0f;
        }
        return f10;
    }

    public static float O(float f10) {
        C13702E.c(f10, "angle");
        float J10 = J(f10, 6.2831855f);
        return J10 >= 3.1415927f ? J10 - 6.2831855f : J10;
    }

    public static double P(float... fArr) {
        double d10 = 0.0d;
        for (double d11 : fArr) {
            d10 += d11 * d11;
        }
        return d10;
    }

    public static float Q(float f10) {
        return f10 * 57.295776f;
    }

    public static float R(float f10) {
        return f10 * 0.017453292f;
    }

    public static Vector3f S(Transform transform, Vector3f vector3f, Vector3f vector3f2) {
        if (vector3f2 == null) {
            vector3f2 = new Vector3f();
        }
        Vector3f translation = transform.getTranslation();
        if (translation == vector3f2) {
            translation = translation.m1292clone();
        }
        vector3f.mult(transform.getScale(), vector3f2);
        g.r(transform.getRotation(), vector3f2, vector3f2);
        vector3f2.addLocal(translation);
        return vector3f2;
    }

    public static Triangle T(Transform transform, Triangle triangle, Triangle triangle2) {
        if (triangle2 == null) {
            triangle2 = new Triangle();
        }
        Vector3f vector3f = new Vector3f();
        for (int i10 = 0; i10 < 3; i10++) {
            U(transform, triangle.get(i10), vector3f);
            triangle2.set(i10, vector3f);
        }
        return triangle2;
    }

    public static Vector3f U(Transform transform, Vector3f vector3f, Vector3f vector3f2) {
        if (vector3f2 == null) {
            vector3f2 = new Vector3f();
        }
        Vector3f scale = transform.getScale();
        if (scale == vector3f2) {
            scale = scale.m1292clone();
        }
        vector3f.subtract(transform.getTranslation(), vector3f2);
        g.s(transform.getRotation(), vector3f2, vector3f2);
        vector3f2.divideLocal(scale);
        return vector3f2;
    }

    public static boolean a(float f10, float f11, float f12) {
        C13702E.p(f12, "relative tolerance");
        if (f10 == f11) {
            return true;
        }
        return FastMath.abs(f10 - f11) < f12 * Math.max(FastMath.abs(f10), FastMath.abs(f11));
    }

    public static double b(Triangle triangle) {
        Vector3f vector3f = triangle.get1();
        return Math.sqrt(h.F(triangle.get2().subtract(vector3f).cross(triangle.get3().subtract(vector3f))) / 4.0d);
    }

    public static double c(double d10) {
        return Math.sqrt(1.0d - (d10 * d10));
    }

    public static float d(float f10) {
        double d10 = f10;
        return (float) Math.sqrt(1.0d - (d10 * d10));
    }

    public static double e(double d10, double d11) {
        double d12 = -d11;
        return d10 < d12 ? d12 : d10 > d11 ? d11 : d10;
    }

    public static double f(double d10, double d11, double d12) {
        return d10 < d11 ? d11 : d10 > d12 ? d12 : d10;
    }

    public static float g(float f10, float f11) {
        return FastMath.clamp(f10, -f11, f11);
    }

    public static int h(int i10, int i11, int i12) {
        return i10 < i11 ? i11 : i10 > i12 ? i12 : i10;
    }

    public static Transform i(Transform transform, Transform transform2, Transform transform3) {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f = tempVars.vect1;
        Quaternion quaternion = tempVars.quat1;
        Vector3f vector3f2 = tempVars.vect2;
        Vector3f translation = transform2.getTranslation();
        Quaternion rotation = transform2.getRotation();
        Vector3f scale = transform2.getScale();
        transform.getScale().mult(scale, vector3f2);
        rotation.mult(transform.getRotation(), quaternion);
        g.p(quaternion);
        transform.getTranslation().mult(scale, vector3f);
        g.r(rotation, vector3f, vector3f);
        vector3f.addLocal(translation);
        if (transform3 == null) {
            transform3 = new Transform();
        }
        transform3.setTranslation(vector3f);
        transform3.setRotation(quaternion);
        transform3.setScale(vector3f2);
        tempVars.release();
        return transform3;
    }

    public static float j(float f10) {
        float f11 = f10 * f10 * f10;
        if (Float.isInfinite(f11)) {
            f92908e.warning(String.format("Overflow from cubing %g.", Float.valueOf(f10)));
        }
        return f11;
    }

    public static float k(float f10) {
        return (float) Math.cbrt(f10);
    }

    public static double l(double d10, double d11, double d12) {
        return (d11 * d11) - ((d10 * 4.0d) * d12);
    }

    public static float m(float f10, float f11, float f12, float f13) {
        float f14 = f10 / f13;
        float f15 = f14 * f14;
        return y(f15 * f15, f11, f12);
    }

    public static float n(float f10, float f11, float f12, float f13) {
        float f14 = (f10 / f13) - 1.0f;
        float f15 = f14 * f14;
        return y(1.0f - (f15 * f15), f11, f12);
    }

    public static float o(float f10) {
        double d10 = f10;
        return (float) (d10 * d10 * d10 * ((d10 * ((6.0d * d10) - 15.0d)) + 10.0d));
    }

    public static double p(double d10) {
        return Math.sqrt(Math.sqrt(d10));
    }

    public static Matrix3f q(float f10, float f11, float f12, Matrix3f matrix3f) {
        if (matrix3f == null) {
            matrix3f = new Matrix3f();
        }
        float cos = FastMath.cos(f11);
        float cos2 = FastMath.cos(f12);
        float cos3 = FastMath.cos(f10);
        float sin = FastMath.sin(f11);
        float sin2 = FastMath.sin(f12);
        float sin3 = FastMath.sin(f10);
        matrix3f.set(0, 0, cos * cos2);
        float f13 = cos * cos3;
        matrix3f.set(0, 1, (sin * sin3) - (f13 * sin2));
        float f14 = cos3 * sin;
        matrix3f.set(0, 2, (cos * sin2 * sin3) + f14);
        matrix3f.set(1, 0, sin2);
        matrix3f.set(1, 1, cos3 * cos2);
        float f15 = -cos2;
        matrix3f.set(1, 2, f15 * sin3);
        matrix3f.set(2, 0, f15 * sin);
        matrix3f.set(2, 1, (cos * sin3) + (f14 * sin2));
        matrix3f.set(2, 2, f13 - ((sin * sin2) * sin3));
        return matrix3f;
    }

    public static float r(float... fArr) {
        double d10 = 0.0d;
        for (double d11 : fArr) {
            d10 += d11 * d11;
        }
        return (float) Math.sqrt(d10);
    }

    public static double s(double... dArr) {
        double d10 = 0.0d;
        for (double d11 : dArr) {
            d10 += d11 * d11;
        }
        return Math.sqrt(d10);
    }

    public static boolean t(double d10, double d11, double d12) {
        if (d10 > d12) {
            return d10 >= d11 && d11 >= d12;
        }
        if (d10 < d12) {
            return d10 <= d11 && d11 <= d12;
        }
        if (d10 == d12) {
            return d10 == d11;
        }
        throw new IllegalArgumentException("a = " + d10 + " c = " + d12);
    }

    public static boolean u(float f10, float f11, float f12) {
        if (f10 > f12) {
            return f10 >= f11 && f11 >= f12;
        }
        if (f10 < f12) {
            return f10 <= f11 && f11 <= f12;
        }
        if (f10 == f12) {
            return f10 == f11;
        }
        throw new IllegalArgumentException("a = " + f10 + " c = " + f12);
    }

    public static boolean v(int i10, int i11, int i12) {
        return i10 > i12 ? i10 >= i11 && i11 >= i12 : i10 < i12 ? i10 <= i11 && i11 <= i12 : i10 == i11;
    }

    public static boolean w(Transform transform) {
        if (h.E(transform.getTranslation()) && g.j(transform.getRotation())) {
            return h.C(transform.getScale());
        }
        return false;
    }

    public static boolean x(int i10) {
        return i10 % 2 != 0;
    }

    public static float y(float f10, float f11, float f12) {
        return f11 == f12 ? f11 : ((1.0f - f10) * f11) + (f10 * f12);
    }

    public static float z(float f10, float f11, float f12, float f13, float f14) {
        return (((1.0f - f10) - f11) * f12) + (f10 * f13) + (f11 * f14);
    }
}
