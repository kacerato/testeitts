package com.jme3.bounding;

import com.jme3.math.FastMath;
import com.jme3.math.Plane;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.util.TempVars;

public final class Intersection {
    static final boolean $assertionsDisabled = false;

    private Intersection() {
    }

    private static final void findMinMax(float f10, float f11, float f12, Vector3f vector3f) {
        vector3f.set(f10, f10, 0.0f);
        if (f11 < vector3f.f81611x) {
            vector3f.setX(f11);
        }
        if (f11 > vector3f.f81612y) {
            vector3f.setY(f11);
        }
        if (f12 < vector3f.f81611x) {
            vector3f.setX(f12);
        }
        if (f12 > vector3f.f81612y) {
            vector3f.setY(f12);
        }
    }

    public static boolean intersect(BoundingSphere boundingSphere, Vector3f vector3f, float f10) {
        TempVars tempVars = TempVars.get();
        try {
            Vector3f subtract = vector3f.subtract(boundingSphere.center, tempVars.vect1);
            float radius = boundingSphere.getRadius() + f10;
            return subtract.dot(subtract) <= radius * radius;
        } finally {
            tempVars.release();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0062 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0064 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean intersect(BoundingBox boundingBox, Vector3f vector3f, float f10) {
        float sqr;
        float f11;
        float sqr2;
        float f12;
        float sqr3;
        float f13 = f10 * f10;
        Vector3f vector3f2 = boundingBox.center;
        float f14 = vector3f2.f81611x;
        float f15 = boundingBox.xExtent;
        float f16 = f14 - f15;
        float f17 = f14 + f15;
        float f18 = vector3f2.f81612y;
        float f19 = boundingBox.yExtent;
        float f20 = f18 - f19;
        float f21 = f18 + f19;
        float f22 = vector3f2.f81613z;
        float f23 = boundingBox.zExtent;
        float f24 = f22 - f23;
        float f25 = f22 + f23;
        float f26 = vector3f.f81611x;
        if (f26 < f16) {
            sqr = FastMath.sqr(f26 - f16);
        } else {
            if (f26 > f17) {
                sqr = FastMath.sqr(f26 - f17);
            }
            f11 = vector3f.f81612y;
            if (f11 >= f20) {
                sqr2 = FastMath.sqr(f11 - f20);
            } else {
                if (f11 > f21) {
                    sqr2 = FastMath.sqr(f11 - f21);
                }
                f12 = vector3f.f81613z;
                if (f12 >= f24) {
                    if (f12 > f25) {
                        sqr3 = FastMath.sqr(f12 - f25);
                    }
                    return f13 <= 0.0f;
                }
                sqr3 = FastMath.sqr(f12 - f24);
                f13 -= sqr3;
                if (f13 <= 0.0f) {
                }
            }
            f13 -= sqr2;
            f12 = vector3f.f81613z;
            if (f12 >= f24) {
            }
            f13 -= sqr3;
            if (f13 <= 0.0f) {
            }
        }
        f13 -= sqr;
        f11 = vector3f.f81612y;
        if (f11 >= f20) {
        }
        f13 -= sqr2;
        f12 = vector3f.f81613z;
        if (f12 >= f24) {
        }
        f13 -= sqr3;
        if (f13 <= 0.0f) {
        }
    }

    public static boolean intersect(Camera camera, Vector3f vector3f, float f10) {
        for (int i10 = 5; i10 >= 0; i10--) {
            if (camera.getWorldPlane(i10).pseudoDistance(vector3f) <= (-f10)) {
                return false;
            }
        }
        return true;
    }

    public static boolean intersect(BoundingBox boundingBox, Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f4 = tempVars.vect1;
        Vector3f vector3f5 = tempVars.vect2;
        Vector3f vector3f6 = tempVars.vect3;
        Vector3f vector3f7 = tempVars.vect4;
        Vector3f vector3f8 = tempVars.vect5;
        Vector3f vector3f9 = tempVars.vect6;
        Vector3f center = boundingBox.getCenter();
        Vector3f extent = boundingBox.getExtent(null);
        vector3f.subtract(center, vector3f4);
        vector3f2.subtract(center, vector3f5);
        vector3f3.subtract(center, vector3f6);
        vector3f5.subtract(vector3f4, vector3f7);
        vector3f6.subtract(vector3f5, vector3f8);
        vector3f4.subtract(vector3f6, vector3f9);
        float abs = FastMath.abs(vector3f7.f81611x);
        float abs2 = FastMath.abs(vector3f7.f81612y);
        float abs3 = FastMath.abs(vector3f7.f81613z);
        float f10 = vector3f7.f81613z;
        float f11 = vector3f4.f81612y * f10;
        float f12 = vector3f7.f81612y;
        float f13 = f11 - (vector3f4.f81613z * f12);
        float f14 = (f10 * vector3f6.f81612y) - (f12 * vector3f6.f81613z);
        float min = Math.min(f13, f14);
        float max = Math.max(f13, f14);
        float f15 = (extent.f81612y * abs3) + (extent.f81613z * abs2);
        if (min <= f15 && max >= (-f15)) {
            float f16 = vector3f7.f81613z;
            float f17 = (-f16) * vector3f4.f81611x;
            float f18 = vector3f7.f81611x;
            float f19 = f17 + (vector3f4.f81613z * f18);
            float f20 = ((-f16) * vector3f6.f81611x) + (f18 * vector3f6.f81613z);
            float min2 = Math.min(f19, f20);
            float max2 = Math.max(f19, f20);
            float f21 = (abs3 * extent.f81611x) + (extent.f81613z * abs);
            if (min2 <= f21 && max2 >= (-f21)) {
                float f22 = vector3f7.f81612y;
                float f23 = vector3f5.f81611x * f22;
                float f24 = vector3f7.f81611x;
                float f25 = f23 - (vector3f5.f81612y * f24);
                float f26 = (f22 * vector3f6.f81611x) - (f24 * vector3f6.f81612y);
                float min3 = Math.min(f25, f26);
                float max3 = Math.max(f25, f26);
                float f27 = (abs2 * extent.f81611x) + (abs * extent.f81612y);
                if (min3 <= f27 && max3 >= (-f27)) {
                    float abs4 = FastMath.abs(vector3f8.f81611x);
                    float abs5 = FastMath.abs(vector3f8.f81612y);
                    float abs6 = FastMath.abs(vector3f8.f81613z);
                    float f28 = vector3f8.f81613z;
                    float f29 = vector3f4.f81612y * f28;
                    float f30 = vector3f8.f81612y;
                    float f31 = f29 - (vector3f4.f81613z * f30);
                    float f32 = (f28 * vector3f6.f81612y) - (f30 * vector3f6.f81613z);
                    float min4 = Math.min(f31, f32);
                    float max4 = Math.max(f31, f32);
                    float f33 = (extent.f81612y * abs6) + (extent.f81613z * abs5);
                    if (min4 <= f33 && max4 >= (-f33)) {
                        float f34 = vector3f8.f81613z;
                        float f35 = (-f34) * vector3f4.f81611x;
                        float f36 = vector3f8.f81611x;
                        float f37 = f35 + (vector3f4.f81613z * f36);
                        float f38 = ((-f34) * vector3f6.f81611x) + (f36 * vector3f6.f81613z);
                        float min5 = Math.min(f37, f38);
                        float max5 = Math.max(f37, f38);
                        float f39 = (abs6 * extent.f81611x) + (extent.f81613z * abs4);
                        if (min5 <= f39 && max5 >= (-f39)) {
                            float f40 = vector3f8.f81612y;
                            float f41 = vector3f4.f81611x * f40;
                            float f42 = vector3f8.f81611x;
                            float f43 = f41 - (vector3f4.f81612y * f42);
                            float f44 = (f40 * vector3f5.f81611x) - (f42 * vector3f5.f81612y);
                            float min6 = Math.min(f43, f44);
                            float max6 = Math.max(f43, f44);
                            float f45 = (abs5 * extent.f81611x) + (abs4 * extent.f81612y);
                            if (min6 <= f45 && max6 >= (-f45)) {
                                float abs7 = FastMath.abs(vector3f9.f81611x);
                                float abs8 = FastMath.abs(vector3f9.f81612y);
                                float abs9 = FastMath.abs(vector3f9.f81613z);
                                float f46 = vector3f9.f81613z;
                                float f47 = vector3f4.f81612y * f46;
                                float f48 = vector3f9.f81612y;
                                float f49 = f47 - (vector3f4.f81613z * f48);
                                float f50 = (f46 * vector3f5.f81612y) - (f48 * vector3f5.f81613z);
                                float min7 = Math.min(f49, f50);
                                float max7 = Math.max(f49, f50);
                                float f51 = (extent.f81612y * abs9) + (extent.f81613z * abs8);
                                if (min7 <= f51 && max7 >= (-f51)) {
                                    float f52 = vector3f9.f81613z;
                                    float f53 = (-f52) * vector3f4.f81611x;
                                    float f54 = vector3f9.f81611x;
                                    float f55 = f53 + (vector3f4.f81613z * f54);
                                    float f56 = ((-f52) * vector3f5.f81611x) + (f54 * vector3f5.f81613z);
                                    float min8 = Math.min(f55, f56);
                                    float max8 = Math.max(f55, f56);
                                    float f57 = (abs9 * extent.f81611x) + (extent.f81612y * abs7);
                                    if (min8 <= f57 && max8 >= (-f57)) {
                                        float f58 = vector3f9.f81612y;
                                        float f59 = vector3f5.f81611x * f58;
                                        float f60 = vector3f9.f81611x;
                                        float f61 = f59 - (vector3f5.f81612y * f60);
                                        float f62 = (f58 * vector3f6.f81611x) - (f60 * vector3f6.f81612y);
                                        float min9 = Math.min(f61, f62);
                                        float max9 = Math.max(f61, f62);
                                        float f63 = (abs8 * extent.f81611x) + (abs7 * extent.f81612y);
                                        if (min9 <= f63 && max9 >= (-f63)) {
                                            Vector3f vector3f10 = tempVars.vect7;
                                            findMinMax(vector3f4.f81611x, vector3f5.f81611x, vector3f6.f81611x, vector3f10);
                                            float f64 = vector3f10.f81611x;
                                            float f65 = extent.f81611x;
                                            if (f64 <= f65 && vector3f10.f81612y >= (-f65)) {
                                                findMinMax(vector3f4.f81612y, vector3f5.f81612y, vector3f6.f81612y, vector3f10);
                                                float f66 = vector3f10.f81611x;
                                                float f67 = extent.f81612y;
                                                if (f66 <= f67 && vector3f10.f81612y >= (-f67)) {
                                                    findMinMax(vector3f4.f81613z, vector3f5.f81613z, vector3f6.f81613z, vector3f10);
                                                    float f68 = vector3f10.f81611x;
                                                    float f69 = extent.f81613z;
                                                    if (f68 <= f69 && vector3f10.f81612y >= (-f69)) {
                                                        Plane plane = tempVars.plane;
                                                        plane.setPlanePoints(vector3f, vector3f2, vector3f3);
                                                        if (boundingBox.whichSide(plane) == Plane.Side.Negative) {
                                                            tempVars.release();
                                                            return false;
                                                        }
                                                        tempVars.release();
                                                        return true;
                                                    }
                                                    tempVars.release();
                                                    return false;
                                                }
                                                tempVars.release();
                                                return false;
                                            }
                                            tempVars.release();
                                            return false;
                                        }
                                        tempVars.release();
                                        return false;
                                    }
                                    tempVars.release();
                                    return false;
                                }
                                tempVars.release();
                                return false;
                            }
                            tempVars.release();
                            return false;
                        }
                        tempVars.release();
                        return false;
                    }
                    tempVars.release();
                    return false;
                }
                tempVars.release();
                return false;
            }
            tempVars.release();
            return false;
        }
        tempVars.release();
        return false;
    }
}
