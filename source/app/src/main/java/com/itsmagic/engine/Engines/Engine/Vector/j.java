package com.itsmagic.engine.Engines.Engine.Vector;

import javax.vecmath.Vector3f;

public class j {
    public static boolean a(Vector2 v10, float a10) {
        return v10 != null && v10.f79838x == a10 && v10.f79839y == a10;
    }

    public static boolean b(Vector2 a10, float x10, float y10) {
        return a10 != null && a10.f79838x == x10 && a10.f79839y == y10;
    }

    public static boolean c(Vector2 a10, Vector2 b10) {
        return a10 != null && b10 != null && a10.f79838x == b10.f79838x && a10.f79839y == b10.f79839y;
    }

    public static boolean d(Vector2 a10, Vector3 b10) {
        return a10 != null && b10 != null && a10.f79838x == b10.getX() && a10.f79839y == b10.getY();
    }

    public static boolean e(Vector3 v10, float a10) {
        return v10 != null && v10.getX() == a10 && v10.getY() == a10 && v10.getZ() == a10;
    }

    public static boolean f(Vector3 a10, float x10, float y10, float z10) {
        return a10 != null && a10.getX() == x10 && a10.getY() == y10 && a10.getZ() == z10;
    }

    public static boolean g(Vector3 a10, Vector2 b10) {
        return a10 != null && b10 != null && a10.getX() == b10.f79838x && a10.getY() == b10.f79839y;
    }

    public static boolean h(Vector3 a10, Vector3 b10) {
        if (a10 == null || b10 == null) {
            return false;
        }
        if (a10 == b10) {
            return true;
        }
        return a10.getX() == b10.getX() && a10.getY() == b10.getY() && a10.getZ() == b10.getZ();
    }

    public static boolean i(Vector3 a10, Vector3 b10, float delta) {
        if (a10 == null || b10 == null) {
            return false;
        }
        if (a10 == b10) {
            return true;
        }
        if (a10.getX() == b10.getX() && a10.getY() == b10.getY() && a10.getZ() == b10.getZ()) {
            return true;
        }
        float sqrtDistance = a10.sqrtDistance(b10);
        float k10 = Nc.b.k(delta);
        return sqrtDistance <= k10 * k10;
    }

    public static boolean j(Vector3 a10, Vector3f b10) {
        return a10 != null && b10 != null && a10.getX() == b10.f92836x && a10.getY() == b10.f92837y && a10.getZ() == b10.f92838z;
    }

    public static boolean k(Vector4 a10, float x10, float y10, float z10, float w10) {
        return a10 != null && a10.f79845x == x10 && a10.f79846y == y10 && a10.f79847z == z10 && a10.f79844w == w10;
    }

    public static boolean l(Vector4 a10, Vector4 b10) {
        return a10 != null && b10 != null && a10.f79845x == b10.f79845x && a10.f79846y == b10.f79846y && a10.f79847z == b10.f79847z && a10.f79844w == b10.f79844w;
    }

    public static boolean m(Vector3 a10, Vector3 b10) {
        return a10.getX() == b10.getX() && a10.getY() == b10.getY() && a10.getZ() == b10.getZ();
    }

    public static Vector3 n(Vector3 start, Vector3 end, float progression) {
        if (start != null && end != null) {
            return new Vector3(start.getX() + ((end.getX() - start.getX()) * progression), start.getY() + ((end.getY() - start.getY()) * progression), start.getZ() + ((end.getZ() - start.getZ()) * progression));
        }
        if (start != null) {
            return start.m1249clone();
        }
        if (end != null) {
            return end.m1249clone();
        }
        return null;
    }

    public static Vector3 o(Vector3 start, Vector3 end, float progression, Vector3 defaultValue) {
        return (start == null || end == null) ? start != null ? start.m1249clone() : end != null ? end.m1249clone() : defaultValue : new Vector3(start.getX() + ((end.getX() - start.getX()) * progression), start.getY() + ((end.getY() - start.getY()) * progression), start.getZ() + ((end.getZ() - start.getZ()) * progression));
    }

    public static void p(Vector2 start, Vector2 end, float progression, Vector2 defaultValue, Vector2 toSet) {
        if (start != null && end != null) {
            toSet.w0(start.getX() + ((end.getX() - start.getX()) * progression), start.getY() + ((end.getY() - start.getY()) * progression));
            return;
        }
        if (start != null) {
            toSet.x0(start);
            return;
        }
        if (end != null) {
            toSet.x0(end);
        } else {
            if (defaultValue == null || defaultValue.equally(toSet)) {
                return;
            }
            toSet.x0(defaultValue);
        }
    }

    public static void q(Vector3 start, Vector3 end, float progression, Vector3 defaultValue, Vector3 toSet) {
        if (start != null && end != null) {
            toSet.set(start.getX() + ((end.getX() - start.getX()) * progression), start.getY() + ((end.getY() - start.getY()) * progression), start.getZ() + ((end.getZ() - start.getZ()) * progression));
            return;
        }
        if (start != null) {
            toSet.set(start);
            return;
        }
        if (end != null) {
            toSet.set(end);
        } else {
            if (defaultValue == null || defaultValue.equally(toSet)) {
                return;
            }
            toSet.set(defaultValue);
        }
    }

    public static void r(Vector3 a10, Vector3 b10) {
        a10.setX(b10.getX());
        a10.setY(b10.getY());
        a10.setZ(b10.getZ());
    }

    public static void s(Vector3 a10, Vector3 b10, Vector3 c10) {
        a10.setX(b10.getX() + c10.getX());
        a10.setY(b10.getY() + c10.getY());
        a10.setZ(b10.getZ() + c10.getZ());
    }
}
