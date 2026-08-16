package com.jme3.math;

import com.jme3.renderer.Camera;
import com.jme3.util.TempVars;

public class MathUtils {
    private MathUtils() {
    }

    public static Quaternion exp(Quaternion quaternion, Quaternion quaternion2) {
        float f10 = quaternion.f81601x;
        float f11 = quaternion.f81602y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = quaternion.f81603z;
        float sqrt = FastMath.sqrt(f12 + (f13 * f13));
        float sin = FastMath.sin(sqrt);
        quaternion2.f81600w = FastMath.cos(sqrt);
        if (sqrt > 0.0f) {
            quaternion2.f81601x = (quaternion.f81601x * sin) / sqrt;
            quaternion2.f81602y = (quaternion.f81602y * sin) / sqrt;
            quaternion2.f81603z = (sin * quaternion.f81603z) / sqrt;
        } else {
            quaternion2.f81601x = 0.0f;
            quaternion2.f81602y = 0.0f;
            quaternion2.f81603z = 0.0f;
        }
        return quaternion2;
    }

    public static Quaternion log(Quaternion quaternion, Quaternion quaternion2) {
        float acos = FastMath.acos(quaternion.f81600w);
        float sin = FastMath.sin(acos);
        quaternion2.f81600w = 0.0f;
        if (sin > 0.0f) {
            quaternion2.f81601x = (quaternion.f81601x * acos) / sin;
            quaternion2.f81602y = (quaternion.f81602y * acos) / sin;
            quaternion2.f81603z = (acos * quaternion.f81603z) / sin;
        } else {
            quaternion2.f81601x = 0.0f;
            quaternion2.f81602y = 0.0f;
            quaternion2.f81603z = 0.0f;
        }
        return quaternion2;
    }

    public static float raySegmentShortestDistance(Ray ray, Vector3f vector3f, Vector3f vector3f2, Camera camera) {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f3 = tempVars.vect1;
        Vector3f vector3f4 = tempVars.vect2;
        Vector3f vector3f5 = ray.origin;
        Vector3f addLocal = tempVars.vect3.set(ray.getDirection()).multLocal(Math.min(ray.getLimit(), 1000.0f)).addLocal(ray.getOrigin());
        Vector3f subtractLocal = tempVars.vect4.set(vector3f).subtractLocal(vector3f5);
        Vector3f subtractLocal2 = tempVars.vect5.set(addLocal).subtractLocal(vector3f5);
        if (subtractLocal2.lengthSquared() < 1.0E-4d) {
            tempVars.release();
            return -1.0f;
        }
        Vector3f subtractLocal3 = tempVars.vect6.set(vector3f2).subtractLocal(vector3f);
        if (subtractLocal3.lengthSquared() < 1.0E-4d) {
            tempVars.release();
            return -1.0f;
        }
        float f10 = subtractLocal.f81611x;
        float f11 = subtractLocal2.f81611x;
        float f12 = subtractLocal.f81612y;
        float f13 = subtractLocal2.f81612y;
        float f14 = subtractLocal.f81613z;
        float f15 = subtractLocal2.f81613z;
        double d10 = (f10 * f11) + (f12 * f13) + (f14 * f15);
        float f16 = subtractLocal3.f81611x;
        float f17 = subtractLocal3.f81612y;
        float f18 = subtractLocal3.f81613z;
        double d11 = (f11 * f16) + (f13 * f17) + (f15 * f18);
        double d12 = (f10 * f16) + (f12 * f17) + (f14 * f18);
        double d13 = (f11 * f11) + (f13 * f13) + (f15 * f15);
        double d14 = ((((f16 * f16) + (f17 * f17)) + (f18 * f18)) * d13) - (d11 * d11);
        if (Math.abs(d14) < 1.0E-4d) {
            tempVars.release();
            return -1.0f;
        }
        double d15 = ((d10 * d11) - (d12 * d13)) / d14;
        double d16 = (d10 + (d11 * d15)) / d13;
        vector3f3.f81611x = (float) (vector3f.f81611x + (subtractLocal3.f81611x * d15));
        vector3f3.f81612y = (float) (vector3f.f81612y + (subtractLocal3.f81612y * d15));
        vector3f3.f81613z = (float) (vector3f.f81613z + (d15 * subtractLocal3.f81613z));
        vector3f4.f81611x = (float) (vector3f5.f81611x + (subtractLocal2.f81611x * d16));
        vector3f4.f81612y = (float) (vector3f5.f81612y + (subtractLocal2.f81612y * d16));
        vector3f4.f81613z = (float) (vector3f5.f81613z + (d16 * subtractLocal2.f81613z));
        float lengthSquared = tempVars.vect3.set(vector3f3).subtractLocal(vector3f).lengthSquared();
        float lengthSquared2 = tempVars.vect3.set(vector3f3).subtractLocal(vector3f2).lengthSquared();
        float lengthSquared3 = tempVars.vect3.set(vector3f2).subtractLocal(vector3f).lengthSquared();
        if (lengthSquared > lengthSquared3 || lengthSquared2 > lengthSquared3) {
            tempVars.release();
            return -1.0f;
        }
        if (camera != null) {
            camera.getScreenCoordinates(vector3f3, vector3f3);
            camera.getScreenCoordinates(vector3f4, vector3f4);
        }
        float length = vector3f3.subtractLocal(vector3f4).length();
        tempVars.release();
        return length;
    }

    public static Quaternion slerp(Quaternion quaternion, Quaternion quaternion2, float f10, Quaternion quaternion3) {
        float f11 = quaternion.f81601x;
        float f12 = quaternion2.f81601x;
        float f13 = quaternion.f81602y;
        float f14 = quaternion2.f81602y;
        float f15 = (f11 * f12) + (f13 * f14);
        float f16 = quaternion.f81603z;
        float f17 = quaternion2.f81603z;
        float f18 = f15 + (f16 * f17);
        float f19 = quaternion.f81600w;
        float f20 = quaternion2.f81600w;
        float f21 = f18 + (f19 * f20);
        if (f21 < 0.0f) {
            quaternion2.f81601x = -f12;
            quaternion2.f81602y = -f14;
            quaternion2.f81603z = -f17;
            quaternion2.f81600w = -f20;
            f21 = -f21;
        }
        float f22 = 1.0f - f10;
        if (f21 < 0.9f) {
            float acos = FastMath.acos(f21);
            float sin = 1.0f / FastMath.sin(acos);
            float sin2 = FastMath.sin(f22 * acos) * sin;
            float sin3 = FastMath.sin(f10 * acos) * sin;
            quaternion3.f81601x = (quaternion.f81601x * sin2) + (quaternion2.f81601x * sin3);
            quaternion3.f81602y = (quaternion.f81602y * sin2) + (quaternion2.f81602y * sin3);
            quaternion3.f81603z = (quaternion.f81603z * sin2) + (quaternion2.f81603z * sin3);
            quaternion3.f81600w = (sin2 * quaternion.f81600w) + (sin3 * quaternion2.f81600w);
        } else {
            quaternion3.f81601x = (quaternion.f81601x * f22) + (quaternion2.f81601x * f10);
            quaternion3.f81602y = (quaternion.f81602y * f22) + (quaternion2.f81602y * f10);
            quaternion3.f81603z = (quaternion.f81603z * f22) + (quaternion2.f81603z * f10);
            quaternion3.f81600w = (f22 * quaternion.f81600w) + (f10 * quaternion2.f81600w);
            quaternion3.normalizeLocal();
        }
        return quaternion3;
    }

    public static Quaternion slerpNoInvert(Quaternion quaternion, Quaternion quaternion2, float f10, Quaternion quaternion3) {
        float dot = quaternion.dot(quaternion2);
        if (dot <= -0.95f || dot >= 0.95f) {
            quaternion3.set(quaternion).nlerp(quaternion2, f10);
            System.err.println("nlerp");
        } else {
            float acos = FastMath.acos(dot);
            float sin = FastMath.sin((1.0f - f10) * acos);
            float sin2 = FastMath.sin(f10 * acos);
            float sin3 = FastMath.sin(acos);
            quaternion3.f81601x = ((quaternion.f81601x * sin) + (quaternion2.f81601x * sin2)) / sin3;
            quaternion3.f81602y = ((quaternion.f81602y * sin) + (quaternion2.f81602y * sin2)) / sin3;
            quaternion3.f81603z = ((quaternion.f81603z * sin) + (quaternion2.f81603z * sin2)) / sin3;
            quaternion3.f81600w = ((quaternion.f81600w * sin) + (quaternion2.f81600w * sin2)) / sin3;
            System.err.println("real slerp");
        }
        return quaternion3;
    }

    private static Quaternion spline(Quaternion quaternion, Quaternion quaternion2, Quaternion quaternion3, Quaternion quaternion4, Quaternion quaternion5) {
        Quaternion quaternion6 = new Quaternion(-quaternion2.f81601x, -quaternion2.f81602y, -quaternion2.f81603z, quaternion2.f81600w);
        log(quaternion6.mult(quaternion3), quaternion5);
        log(quaternion6.mult(quaternion), quaternion4);
        quaternion4.addLocal(quaternion5).multLocal(-0.25f);
        exp(quaternion4, quaternion5);
        quaternion4.set(quaternion2).multLocal(quaternion5);
        return quaternion4.normalizeLocal();
    }

    public static Quaternion squad(Quaternion quaternion, Quaternion quaternion2, Quaternion quaternion3, Quaternion quaternion4, Quaternion quaternion5, Quaternion quaternion6, float f10, Quaternion quaternion7) {
        spline(quaternion, quaternion2, quaternion3, quaternion5, quaternion7);
        spline(quaternion2, quaternion3, quaternion4, quaternion6, quaternion7);
        slerp(quaternion5, quaternion6, f10, quaternion7);
        slerp(quaternion2, quaternion3, f10, quaternion5);
        return slerp(quaternion5, quaternion7, 2.0f * f10 * (1.0f - f10), quaternion6);
    }
}
