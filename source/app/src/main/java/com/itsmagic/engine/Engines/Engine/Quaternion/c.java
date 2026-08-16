package com.itsmagic.engine.Engines.Engine.Quaternion;

import javax.vecmath.Matrix4f;
import javax.vecmath.Quat4f;

public class c {
    public static boolean a(Quaternion a10, float v10) {
        return a10 != null && a10.I() == v10 && a10.getX() == v10 && a10.getY() == v10 && a10.getZ() == v10;
    }

    public static boolean b(Quaternion a10, float w10, float x10, float y10, float z10) {
        return a10 != null && a10.I() == w10 && a10.getX() == x10 && a10.getY() == y10 && a10.getZ() == z10;
    }

    public static boolean c(Quaternion a10, Quaternion b10) {
        return a10 != null && b10 != null && a10.I() == b10.I() && a10.getX() == b10.getX() && a10.getY() == b10.getY() && a10.getZ() == b10.getZ();
    }

    public static boolean d(Quaternion a10, Quat4f b10) {
        if (a10 == null || b10 == null) {
            return false;
        }
        if (a10.I() != b10.f92850w && Nc.b.k(a10.I()) != Math.abs(b10.f92850w)) {
            return false;
        }
        if (a10.getX() != b10.f92851x && Nc.b.k(a10.getX()) != Math.abs(b10.f92851x)) {
            return false;
        }
        if (a10.getY() == b10.f92852y || Nc.b.k(a10.getY()) == Math.abs(b10.f92852y)) {
            return a10.getZ() == b10.f92853z || Nc.b.k(a10.getZ()) == Math.abs(b10.f92853z);
        }
        return false;
    }

    public static boolean e(Quaternion a10, Quaternion b10) {
        return a10.I() == b10.I() && a10.getX() == b10.getX() && a10.getY() == b10.getY() && a10.getZ() == b10.getZ();
    }

    public static Quaternion f(Matrix4f matrix) {
        float f10;
        float f11;
        float f12;
        float f13;
        float sqrt;
        float f14;
        float f15;
        float f16;
        float f17 = matrix.m00;
        float f18 = matrix.m11;
        float f19 = matrix.m22;
        if (f17 + f18 + f19 > 0.0f) {
            sqrt = (float) (Math.sqrt(r2 + 1.0f) * 2.0d);
            f10 = sqrt / 4.0f;
            f11 = (matrix.m21 - matrix.m12) / sqrt;
            f12 = (matrix.m02 - matrix.m20) / sqrt;
            f16 = matrix.m10 - matrix.m01;
        } else {
            if (f17 > f18 && f17 > f19) {
                sqrt = (float) (Math.sqrt(((f17 + 1.0f) - f18) - f19) * 2.0d);
                f10 = (matrix.m21 - matrix.m12) / sqrt;
                f11 = sqrt / 4.0f;
                f12 = (matrix.m01 + matrix.m10) / sqrt;
                f14 = matrix.m02;
                f15 = matrix.m20;
            } else {
                if (f18 <= f19) {
                    float sqrt2 = (float) (Math.sqrt(((f19 + 1.0f) - f17) - f18) * 2.0d);
                    f10 = (matrix.m10 - matrix.m01) / sqrt2;
                    f11 = (matrix.m02 + matrix.m20) / sqrt2;
                    f12 = (matrix.m12 + matrix.m21) / sqrt2;
                    f13 = sqrt2 / 4.0f;
                    return new Quaternion(f11, f12, f13, f10);
                }
                sqrt = (float) (Math.sqrt(((f18 + 1.0f) - f17) - f19) * 2.0d);
                f10 = (matrix.m02 - matrix.m20) / sqrt;
                f11 = (matrix.m01 + matrix.m10) / sqrt;
                f12 = sqrt / 4.0f;
                f14 = matrix.m12;
                f15 = matrix.m21;
            }
            f16 = f14 + f15;
        }
        f13 = f16 / sqrt;
        return new Quaternion(f11, f12, f13, f10);
    }

    public static void g(Matrix4f matrix, Quaternion out) {
        float f10;
        float f11;
        float f12;
        float f13;
        float sqrt;
        float f14;
        float f15;
        float f16;
        if (out != null) {
            float f17 = matrix.m00;
            float f18 = matrix.m11;
            float f19 = matrix.m22;
            if (f17 + f18 + f19 > 0.0f) {
                sqrt = (float) (Math.sqrt(r2 + 1.0f) * 2.0d);
                f10 = sqrt / 4.0f;
                f11 = (matrix.m21 - matrix.m12) / sqrt;
                f12 = (matrix.m02 - matrix.m20) / sqrt;
                f16 = matrix.m10 - matrix.m01;
            } else {
                if (f17 > f18 && f17 > f19) {
                    sqrt = (float) (Math.sqrt(((f17 + 1.0f) - f18) - f19) * 2.0d);
                    f10 = (matrix.m21 - matrix.m12) / sqrt;
                    f11 = sqrt / 4.0f;
                    f12 = (matrix.m01 + matrix.m10) / sqrt;
                    f14 = matrix.m02;
                    f15 = matrix.m20;
                } else {
                    if (f18 <= f19) {
                        float sqrt2 = (float) (Math.sqrt(((f19 + 1.0f) - f17) - f18) * 2.0d);
                        f10 = (matrix.m10 - matrix.m01) / sqrt2;
                        f11 = (matrix.m02 + matrix.m20) / sqrt2;
                        f12 = (matrix.m12 + matrix.m21) / sqrt2;
                        f13 = sqrt2 / 4.0f;
                        out.G0(f10);
                        out.setX(f11);
                        out.setY(f12);
                        out.setZ(f13);
                    }
                    sqrt = (float) (Math.sqrt(((f18 + 1.0f) - f17) - f19) * 2.0d);
                    f10 = (matrix.m02 - matrix.m20) / sqrt;
                    f11 = (matrix.m01 + matrix.m10) / sqrt;
                    f12 = sqrt / 4.0f;
                    f14 = matrix.m12;
                    f15 = matrix.m21;
                }
                f16 = f14 + f15;
            }
            f13 = f16 / sqrt;
            out.G0(f10);
            out.setX(f11);
            out.setY(f12);
            out.setZ(f13);
        }
    }

    public static Quaternion h(Quaternion a10, Quaternion b10, float blend) {
        return i(a10, b10, blend, new Quaternion());
    }

    public static Quaternion i(Quaternion a10, Quaternion b10, float blend, Quaternion out) {
        float E10 = Nc.b.E(0.0f, blend, 1.0f);
        if (a10 == null || b10 == null) {
            if (a10 != null) {
                out.u0(a10);
                return out;
            }
            if (b10 == null) {
                return null;
            }
            out.u0(b10);
            return out;
        }
        float f10 = 1.0f - E10;
        if ((a10.I() * b10.I()) + (a10.getX() * b10.getX()) + (a10.getY() * b10.getY()) + (a10.getZ() * b10.getZ()) < 0.0f) {
            out.G0((a10.I() * f10) + ((-b10.I()) * E10));
            out.setX((a10.getX() * f10) + ((-b10.getX()) * E10));
            out.setY((a10.getY() * f10) + ((-b10.getY()) * E10));
            out.setZ((f10 * a10.getZ()) + (E10 * (-b10.getZ())));
        } else {
            out.G0((a10.I() * f10) + (b10.I() * E10));
            out.setX((a10.getX() * f10) + (b10.getX() * E10));
            out.setY((a10.getY() * f10) + (b10.getY() * E10));
            out.setZ((f10 * a10.getZ()) + (E10 * b10.getZ()));
        }
        out.k0();
        return out;
    }

    public static void j(Quaternion a10, Quaternion b10, float blend, Quaternion defaultValue, Quaternion toSet) {
        float I10;
        float x10;
        float y10;
        float z10;
        float z11;
        if (a10 == null || b10 == null) {
            if (a10 != null) {
                toSet.u0(a10);
                return;
            } else if (b10 != null) {
                toSet.u0(b10);
                return;
            } else {
                toSet.u0(defaultValue);
                return;
            }
        }
        float E10 = Nc.b.E(0.0f, blend, 1.0f);
        float f10 = 1.0f - E10;
        if ((a10.I() * b10.I()) + (a10.getX() * b10.getX()) + (a10.getY() * b10.getY()) + (a10.getZ() * b10.getZ()) < 0.0f) {
            I10 = (a10.I() * f10) + ((-b10.I()) * E10);
            x10 = (a10.getX() * f10) + ((-b10.getX()) * E10);
            y10 = (a10.getY() * f10) + ((-b10.getY()) * E10);
            z10 = f10 * a10.getZ();
            z11 = -b10.getZ();
        } else {
            I10 = (a10.I() * f10) + (b10.I() * E10);
            x10 = (a10.getX() * f10) + (b10.getX() * E10);
            y10 = (a10.getY() * f10) + (b10.getY() * E10);
            z10 = f10 * a10.getZ();
            z11 = b10.getZ();
        }
        toSet.t0(I10, x10, y10, z10 + (E10 * z11));
        toSet.l0();
    }
}
