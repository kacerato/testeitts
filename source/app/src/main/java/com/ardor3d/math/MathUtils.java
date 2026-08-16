package com.ardor3d.math;

import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.util.Constants;
import java.util.Random;

public class MathUtils {
    public static final double DEG_TO_RAD = 0.017453292519943295d;
    public static final double EPSILON = 2.220446049250313E-16d;
    public static final double HALF_PI = 1.5707963267948966d;
    public static final double INV_PI = 0.3183098861837907d;
    public static final double INV_TWO_PI = 0.15915494309189535d;
    public static final double ONE_THIRD = 0.3333333333333333d;
    public static final double PI = 3.141592653589793d;
    public static final double QUARTER_PI = 0.7853981633974483d;
    public static final double RAD_TO_DEG = 57.29577951308232d;
    public static final double SQUARED_PI = 9.869604401089358d;
    public static final double THREE_PI_HALVES = 4.71238898038469d;
    public static final double TWO_PI = 6.283185307179586d;
    public static final double ZERO_TOLERANCE = 1.0E-4d;
    public static final Random rand = new Random(System.currentTimeMillis());

    public static double acos(double d10) {
        return Constants.useFastMath ? FastMath.acos(d10) : Math.acos(d10);
    }

    public static double asin(double d10) {
        return Constants.useFastMath ? FastMath.asin(d10) : Math.asin(d10);
    }

    public static double atan(double d10) {
        return Constants.useFastMath ? FastMath.atan(d10) : Math.atan(d10);
    }

    public static Vector3 cartesianToSpherical(ReadOnlyVector3 readOnlyVector3, Vector3 vector3) {
        double x10 = Math.abs(readOnlyVector3.getX()) > 2.220446049250313E-16d ? readOnlyVector3.getX() : 2.220446049250313E-16d;
        double y10 = readOnlyVector3.getY();
        double z10 = readOnlyVector3.getZ();
        double sqrt = sqrt((x10 * x10) + (y10 * y10) + (z10 * z10));
        return (vector3 == null ? new Vector3() : vector3).set(sqrt, atan(z10 / x10) + (x10 < 0.0d ? 3.141592653589793d : 0.0d), asin(y10 / sqrt));
    }

    public static Vector3 cartesianZToSpherical(ReadOnlyVector3 readOnlyVector3, Vector3 vector3) {
        double x10 = Math.abs(readOnlyVector3.getX()) > 2.220446049250313E-16d ? readOnlyVector3.getX() : 2.220446049250313E-16d;
        double y10 = readOnlyVector3.getY();
        double z10 = readOnlyVector3.getZ();
        double sqrt = sqrt((x10 * x10) + (y10 * y10) + (z10 * z10));
        return (vector3 == null ? new Vector3() : vector3).set(sqrt, asin(y10 / sqrt), atan(z10 / x10) + (x10 < 0.0d ? 3.141592653589793d : 0.0d));
    }

    public static double clamp(double d10, double d11, double d12) {
        return d10 < d11 ? d11 : d10 > d12 ? d12 : d10;
    }

    public static double cos(double d10) {
        return sin(d10 + 1.5707963267948966d);
    }

    public static int floor(float f10) {
        int i10 = (int) f10;
        return (f10 >= 0.0f || f10 == ((float) i10)) ? i10 : i10 - 1;
    }

    public static double inverseSqrt(double d10) {
        return Constants.useFastMath ? FastMath.inverseSqrt(d10) : 1.0d / Math.sqrt(d10);
    }

    public static boolean isPowerOfTwo(int i10) {
        return i10 > 0 && (i10 & (i10 + (-1))) == 0;
    }

    public static double lerp(double d10, double d11, double d12) {
        return d11 == d12 ? d11 : ((1.0d - d10) * d11) + (d10 * d12);
    }

    public static double log(double d10, double d11) {
        return Math.log(d10) / Math.log(d11);
    }

    public static void matrixFrustum(double d10, double d11, double d12, double d13, double d14, double d15, Matrix4 matrix4) {
        double d16 = d14 * 2.0d;
        double d17 = d11 - d10;
        double d18 = d13 - d12;
        double d19 = d15 - d14;
        matrix4.set(d16 / d17, 0.0d, 0.0d, 0.0d, 0.0d, d16 / d18, 0.0d, 0.0d, (d11 + d10) / d17, (d13 + d12) / d18, (-(d15 + d14)) / d19, -1.0d, 0.0d, 0.0d, (-((2.0d * d15) * d14)) / d19, 0.0d);
    }

    public static void matrixLookAt(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32, ReadOnlyVector3 readOnlyVector33, Matrix4 matrix4) {
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance2 = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance3 = Vector3.fetchTempInstance();
        fetchTempInstance.set(readOnlyVector32).subtractLocal(readOnlyVector3).normalizeLocal();
        fetchTempInstance.cross(readOnlyVector33, fetchTempInstance2).normalizeLocal();
        fetchTempInstance2.cross(fetchTempInstance, fetchTempInstance3);
        matrix4.set(fetchTempInstance2.getX(), fetchTempInstance3.getX(), -fetchTempInstance.getX(), 0.0d, fetchTempInstance2.getY(), fetchTempInstance3.getY(), -fetchTempInstance.getY(), 0.0d, fetchTempInstance2.getZ(), fetchTempInstance3.getZ(), -fetchTempInstance.getZ(), 0.0d, (fetchTempInstance2.getX() * (-readOnlyVector3.getX())) + (fetchTempInstance2.getY() * (-readOnlyVector3.getY())) + (fetchTempInstance2.getZ() * (-readOnlyVector3.getZ())), (fetchTempInstance3.getX() * (-readOnlyVector3.getX())) + (fetchTempInstance3.getY() * (-readOnlyVector3.getY())) + (fetchTempInstance3.getZ() * (-readOnlyVector3.getZ())), ((-fetchTempInstance.getX()) * (-readOnlyVector3.getX())) + ((-fetchTempInstance.getY()) * (-readOnlyVector3.getY())) + ((-fetchTempInstance.getZ()) * (-readOnlyVector3.getZ())), 1.0d);
        Vector3.releaseTempInstance(fetchTempInstance3);
        Vector3.releaseTempInstance(fetchTempInstance2);
        Vector3.releaseTempInstance(fetchTempInstance);
    }

    public static void matrixOrtho(double d10, double d11, double d12, double d13, double d14, double d15, Matrix4 matrix4) {
        double d16 = d11 - d10;
        double d17 = d13 - d12;
        double d18 = d15 - d14;
        matrix4.set(2.0d / d16, 0.0d, 0.0d, 0.0d, 0.0d, 2.0d / d17, 0.0d, 0.0d, 0.0d, 0.0d, (-2.0d) / d18, 0.0d, (-(d11 + d10)) / d16, (-(d13 + d12)) / d17, (-(d15 + d14)) / d18, 1.0d);
    }

    public static void matrixPerspective(double d10, double d11, double d12, double d13, Matrix4 matrix4) {
        double tan = d12 * tan(0.5d * d10 * 0.017453292519943295d);
        double d14 = tan * d11;
        matrixFrustum(-d14, d14, -tan, tan, d12, d13, matrix4);
    }

    public static double moduloPositive(double d10, double d11) {
        double d12 = d10 % d11;
        if (d12 >= 0.0d) {
            d11 = 0.0d;
        }
        return d12 + d11;
    }

    public static int nearestPowerOfTwo(int i10) {
        return (int) Math.pow(2.0d, Math.ceil(Math.log(i10) / Math.log(2.0d)));
    }

    public static double nextRandomDouble() {
        return rand.nextDouble();
    }

    public static float nextRandomFloat() {
        return rand.nextFloat();
    }

    public static int nextRandomInt() {
        return rand.nextInt();
    }

    public static int pow2(int i10) {
        if (i10 <= 0) {
            return 1;
        }
        return 2 << (i10 - 1);
    }

    private static double reduceSinAngle(double d10) {
        double d11 = d10 % 6.283185307179586d;
        if (Math.abs(d11) > 3.141592653589793d) {
            d11 -= 6.283185307179586d;
        }
        return Math.abs(d11) > 1.5707963267948966d ? 3.141592653589793d - d11 : d11;
    }

    public static int round(float f10) {
        return floor(f10 + 0.5f);
    }

    public static double scurve3(double d10) {
        double d11 = d10 * d10;
        return (d11 * 3.0d) - ((d10 * d11) * 2.0d);
    }

    public static double scurve5(double d10) {
        double d11 = d10 * d10 * d10;
        double d12 = d10 * d11;
        return (((d10 * d12) * 6.0d) - (d12 * 15.0d)) + (d11 * 10.0d);
    }

    public static void setRandomSeed(long j10) {
        rand.setSeed(j10);
    }

    public static double sin(double d10) {
        double reduceSinAngle = reduceSinAngle(d10);
        if (Math.abs(reduceSinAngle) <= 0.7853981633974483d) {
            return Constants.useFastMath ? FastMath.sin(reduceSinAngle) : Math.sin(reduceSinAngle);
        }
        double d11 = 1.5707963267948966d - reduceSinAngle;
        return Constants.useFastMath ? FastMath.cos(d11) : Math.cos(d11);
    }

    public static Vector3 sphericalToCartesian(ReadOnlyVector3 readOnlyVector3, Vector3 vector3) {
        double x10 = readOnlyVector3.getX() * cos(readOnlyVector3.getZ());
        double cos = x10 * cos(readOnlyVector3.getY());
        double sin = sin(readOnlyVector3.getZ()) * readOnlyVector3.getX();
        double sin2 = x10 * sin(readOnlyVector3.getY());
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        return vector3.set(cos, sin, sin2);
    }

    public static Vector3 sphericalToCartesianZ(ReadOnlyVector3 readOnlyVector3, Vector3 vector3) {
        double x10 = readOnlyVector3.getX() * cos(readOnlyVector3.getZ());
        double cos = x10 * cos(readOnlyVector3.getY());
        double sin = x10 * sin(readOnlyVector3.getY());
        double x11 = readOnlyVector3.getX() * sin(readOnlyVector3.getZ());
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        return vector3.set(cos, sin, x11);
    }

    public static double sqrt(double d10) {
        return Constants.useFastMath ? FastMath.sqrt(d10) : Math.sqrt(d10);
    }

    public static double tan(double d10) {
        return Constants.useFastMath ? FastMath.tan(d10) : Math.tan(d10);
    }

    public static float clamp(float f10, float f11, float f12) {
        return f10 < f11 ? f11 : f10 > f12 ? f12 : f10;
    }

    public static long floor(double d10) {
        long j10 = (long) d10;
        return (d10 >= 0.0d || d10 == ((double) j10)) ? j10 : j10 - 1;
    }

    public static float lerp(float f10, float f11, float f12) {
        return f11 == f12 ? f11 : ((1.0f - f10) * f11) + (f10 * f12);
    }

    public static float moduloPositive(float f10, float f11) {
        float f12 = f10 % f11;
        if (f12 >= 0.0f) {
            f11 = 0.0f;
        }
        return f12 + f11;
    }

    public static int nextRandomInt(int i10, int i11) {
        return ((int) (nextRandomFloat() * ((i11 - i10) + 1))) + i10;
    }

    public static long round(double d10) {
        return floor(d10 + 0.5d);
    }

    public static float scurve3(float f10) {
        float f11 = f10 * f10;
        return (f11 * 3.0f) - ((f10 * f11) * 2.0f);
    }

    public static float scurve5(float f10) {
        float f11 = f10 * f10 * f10;
        float f12 = f10 * f11;
        return (((f10 * f12) * 6.0f) - (f12 * 15.0f)) + (f11 * 10.0f);
    }

    public static int clamp(int i10, int i11, int i12) {
        return i10 < i11 ? i11 : i10 > i12 ? i12 : i10;
    }

    public static int moduloPositive(int i10, int i11) {
        int i12 = i10 % i11;
        if (i12 >= 0) {
            i11 = 0;
        }
        return i12 + i11;
    }

    public static void matrixLookAt(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32, ReadOnlyVector3 readOnlyVector33, Matrix3 matrix3) {
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance2 = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance3 = Vector3.fetchTempInstance();
        fetchTempInstance.set(readOnlyVector32).subtractLocal(readOnlyVector3).normalizeLocal();
        fetchTempInstance.cross(readOnlyVector33, fetchTempInstance2).normalizeLocal();
        fetchTempInstance2.cross(fetchTempInstance, fetchTempInstance3);
        matrix3.set(fetchTempInstance2.getX(), fetchTempInstance3.getX(), -fetchTempInstance.getX(), fetchTempInstance2.getY(), fetchTempInstance3.getY(), -fetchTempInstance.getY(), fetchTempInstance2.getZ(), fetchTempInstance3.getZ(), -fetchTempInstance.getZ());
        Vector3.releaseTempInstance(fetchTempInstance3);
        Vector3.releaseTempInstance(fetchTempInstance2);
        Vector3.releaseTempInstance(fetchTempInstance);
    }
}
