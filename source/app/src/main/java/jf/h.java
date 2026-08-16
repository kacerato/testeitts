package jf;

import com.jme3.math.FastMath;
import com.jme3.math.Line;
import com.jme3.math.Matrix3f;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.scene.Spatial;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p000if.C13702E;
import p000if.C13723s;
import p000if.C13724t;
import w2.C15883c;

public final class h {

    public static final int f92913a = 0;

    public static final int f92914b = 3;

    public static final int f92915c = 0;

    public static final int f92916d = 1;

    public static final int f92917e = 2;

    public static final int f92918f = 2;

    public static final Logger f92919g = Logger.getLogger(h.class.getName());

    public static final Pattern f92920h = Pattern.compile("\\(\\s*([^,]+),\\s+([^,]+),\\s+(\\S+)\\s*\\)");

    public static final Vector3f f92921i = new Vector3f(1.0f, 0.0f, 0.0f);

    public static final Vector3f[] f92922j = {new Vector3f(1.0f, 0.0f, 0.0f), new Vector3f(0.0f, 1.0f, 0.0f), new Vector3f(0.0f, 0.0f, 1.0f), new Vector3f(-1.0f, 0.0f, 0.0f), new Vector3f(0.0f, -1.0f, 0.0f), new Vector3f(0.0f, 0.0f, -1.0f)};

    public static final boolean f92923k = false;

    public static boolean A(Vector3f vector3f) {
        return vector3f.f81611x > 0.0f && vector3f.f81612y > 0.0f && vector3f.f81613z > 0.0f;
    }

    public static boolean B(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        return f.u(vector3f.f81611x, vector3f2.f81611x, vector3f3.f81611x) && f.u(vector3f.f81612y, vector3f2.f81612y, vector3f3.f81612y) && f.u(vector3f.f81613z, vector3f2.f81613z, vector3f3.f81613z);
    }

    public static boolean C(Vector3f vector3f) {
        return vector3f.f81611x == 1.0f && vector3f.f81612y == 1.0f && vector3f.f81613z == 1.0f;
    }

    public static boolean D(Vector3f vector3f) {
        float f10 = vector3f.f81611x;
        float f11 = vector3f.f81612y;
        return f10 == f11 && f11 == vector3f.f81613z;
    }

    public static boolean E(Vector3f vector3f) {
        return vector3f.f81611x == 0.0f && vector3f.f81612y == 0.0f && vector3f.f81613z == 0.0f;
    }

    public static double F(Vector3f vector3f) {
        return f.P(vector3f.f81611x, vector3f.f81612y, vector3f.f81613z);
    }

    public static Vector3f G(float f10, Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        if (vector3f3 == null) {
            vector3f3 = new Vector3f();
        }
        vector3f3.f81611x = f.y(f10, vector3f.f81611x, vector3f2.f81611x);
        vector3f3.f81612y = f.y(f10, vector3f.f81612y, vector3f2.f81612y);
        vector3f3.f81613z = f.y(f10, vector3f.f81613z, vector3f2.f81613z);
        return vector3f3;
    }

    public static Vector3f H(Line line, Line line2) {
        Vector3f direction = line.getDirection();
        Vector3f direction2 = line2.getDirection();
        Vector3f origin = line.getOrigin();
        Vector3f origin2 = line2.getOrigin();
        Vector3f cross = direction2.cross(direction.cross(direction2));
        float dot = direction.dot(cross);
        if (dot == 0.0f) {
            return null;
        }
        Vector3f mult = direction.mult((origin2.dot(cross) - origin.dot(cross)) / dot);
        mult.addLocal(origin);
        return mult;
    }

    public static Vector3f I(Line line, Vector3f vector3f, float f10, boolean z10) {
        Vector3f normalize = line.getDirection().normalize();
        Vector3f origin = line.getOrigin();
        Vector3f subtract = origin.subtract(vector3f);
        float dot = normalize.dot(subtract);
        float lengthSquared = ((dot * dot) - subtract.lengthSquared()) + (f10 * f10);
        if (lengthSquared >= 0.0f) {
            float f11 = -dot;
            Vector3f mult = normalize.mult(z10 ? f11 + FastMath.sqrt(lengthSquared) : f11 - FastMath.sqrt(lengthSquared));
            mult.addLocal(origin);
            return mult;
        }
        Vector3f subtract2 = subtract.subtract(normalize.mult(dot));
        subtract2.multLocal(f10 / subtract2.length());
        subtract2.addLocal(vector3f);
        return subtract2;
    }

    public static Vector3f J(Vector3f vector3f, Spatial spatial, Vector3f vector3f2) {
        if (vector3f2 == null) {
            vector3f2 = new Vector3f();
        }
        if (C13723s.w(spatial)) {
            vector3f2.set(vector3f);
        } else {
            spatial.worldToLocal(vector3f, vector3f2);
        }
        vector3f2.multLocal((float) (1.0d / Math.sqrt(F(vector3f2))));
        return vector3f2;
    }

    public static Vector3f K(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        if (vector3f3 == null) {
            vector3f3 = new Vector3f();
        }
        vector3f3.f81611x = Math.max(Math.abs(vector3f.f81611x), Math.abs(vector3f2.f81611x));
        vector3f3.f81612y = Math.max(Math.abs(vector3f.f81612y), Math.abs(vector3f2.f81612y));
        vector3f3.f81613z = Math.max(Math.abs(vector3f.f81613z), Math.abs(vector3f2.f81613z));
        return vector3f3;
    }

    public static Vector3f L(Collection<Vector3f> collection, Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        vector3f.zero();
        Iterator<Vector3f> it = collection.iterator();
        while (it.hasNext()) {
            vector3f.addLocal(it.next());
        }
        vector3f.divideLocal(collection.size());
        return vector3f;
    }

    public static Vector3f M(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        float f10 = (vector3f.f81611x + vector3f2.f81611x) / 2.0f;
        float f11 = (vector3f.f81612y + vector3f2.f81612y) / 2.0f;
        float f12 = (vector3f.f81613z + vector3f2.f81613z) / 2.0f;
        return vector3f3 == null ? new Vector3f(f10, f11, f12) : vector3f3.set(f10, f11, f12);
    }

    public static Vector3f[] N(List<Vector3f> list) {
        double d10 = -1.0d;
        Vector3f[] vector3fArr = null;
        int i10 = 0;
        while (i10 < list.size()) {
            Vector3f vector3f = list.get(i10);
            i10++;
            for (int i11 = i10; i11 < list.size(); i11++) {
                Vector3f vector3f2 = list.get(i11);
                double o10 = o(vector3f, vector3f2);
                if (o10 > d10) {
                    if (vector3fArr == null) {
                        vector3fArr = new Vector3f[2];
                    }
                    vector3fArr[0] = vector3f;
                    vector3fArr[1] = vector3f2;
                    d10 = o10;
                }
            }
        }
        return vector3fArr;
    }

    public static boolean O(Vector3f vector3f, Vector3f vector3f2) {
        return (vector3f.f81611x == vector3f2.f81611x && vector3f.f81612y == vector3f2.f81612y && vector3f.f81613z == vector3f2.f81613z) ? false : true;
    }

    public static void P(Vector3f vector3f) {
        double F10 = F(vector3f);
        if (F10 < 0.9999998d || F10 > 1.0000002d) {
            float sqrt = (float) Math.sqrt(F10);
            if (sqrt != 0.0f) {
                vector3f.divideLocal(sqrt);
            }
        }
    }

    public static Vector3f Q(String str) {
        Matcher matcher = f92920h.matcher(str);
        if (matcher.matches()) {
            return new Vector3f(Float.parseFloat(matcher.group(1)), Float.parseFloat(matcher.group(2)), Float.parseFloat(matcher.group(3)));
        }
        return null;
    }

    public static Vector3f R(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        return vector3f2.mult((float) (r(vector3f, vector3f2) / F(vector3f2)), vector3f3);
    }

    public static Vector3f S(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        float f10 = vector3f.f81611x;
        float f11 = vector3f.f81612y;
        float f12 = vector3f.f81613z;
        Vector3f mult = vector3f2.mult((float) ((-r(vector3f, vector3f2)) / F(vector3f2)), vector3f3);
        mult.addLocal(f10, f11, f12);
        return mult;
    }

    public static float T(Vector3f vector3f, Vector3f vector3f2) {
        return (float) (r(vector3f, vector3f2) / Math.sqrt(F(vector3f2)));
    }

    public static Vector3f U(Vector3f vector3f, Vector3f vector3f2) {
        if (vector3f2 == null) {
            vector3f2 = new Vector3f();
        }
        vector3f2.f81611x = f.N(vector3f.f81611x);
        vector3f2.f81612y = f.N(vector3f.f81612y);
        vector3f2.f81613z = f.N(vector3f.f81613z);
        return vector3f2;
    }

    public static Vector3f V(float f10, Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        C13702E.E(f10, "time interval");
        Vector3f subtract = vector3f2.subtract(vector3f, vector3f3);
        subtract.divideLocal(f10);
        return subtract;
    }

    public static Vector3f W(Vector3f vector3f, float f10) {
        float cos = FastMath.cos(f10);
        float sin = FastMath.sin(f10);
        float f11 = vector3f.f81611x;
        float f12 = vector3f.f81613z;
        return new Vector3f((cos * f11) - (sin * f12), vector3f.f81612y, (cos * f12) + (sin * f11));
    }

    public static void a(Vector3f vector3f, Vector3f vector3f2) {
        float f10 = vector3f2.f81611x;
        if (f10 > vector3f.f81611x) {
            vector3f.f81611x = f10;
        }
        float f11 = vector3f2.f81612y;
        if (f11 > vector3f.f81612y) {
            vector3f.f81612y = f11;
        }
        float f12 = vector3f2.f81613z;
        if (f12 > vector3f.f81613z) {
            vector3f.f81613z = f12;
        }
    }

    public static void b(Vector3f vector3f, Vector3f vector3f2) {
        float f10 = vector3f2.f81611x;
        if (f10 < vector3f.f81611x) {
            vector3f.f81611x = f10;
        }
        float f11 = vector3f2.f81612y;
        if (f11 < vector3f.f81612y) {
            vector3f.f81612y = f11;
        }
        float f12 = vector3f2.f81613z;
        if (f12 < vector3f.f81613z) {
            vector3f.f81613z = f12;
        }
    }

    public static void c(Vector3f vector3f, Vector3f vector3f2, float f10) {
        vector3f.f81611x += vector3f2.f81611x * f10;
        vector3f.f81612y += vector3f2.f81612y * f10;
        vector3f.f81613z += vector3f2.f81613z * f10;
    }

    public static boolean d(Vector3f vector3f, Vector3f vector3f2, Iterable<Vector3f> iterable, float f10) {
        Vector3f subtract = vector3f2.subtract(vector3f);
        double F10 = F(subtract);
        double d10 = f10;
        if (F10 <= d10) {
            return true;
        }
        Iterator<Vector3f> it = iterable.iterator();
        while (it.hasNext()) {
            Vector3f subtract2 = it.next().subtract(vector3f);
            if (!q(subtract.mult((float) (r(subtract2, subtract) / F10)), subtract2, d10)) {
                return false;
            }
        }
        return true;
    }

    public static float e(Vector3f vector3f) {
        return (float) Math.atan2(vector3f.f81612y, f.r(vector3f.f81611x, vector3f.f81613z));
    }

    public static boolean f(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, float f10) {
        Vector3f subtract = vector3f3.subtract(vector3f);
        double F10 = F(subtract);
        double d10 = f10;
        if (F10 <= d10) {
            return true;
        }
        Vector3f subtract2 = vector3f2.subtract(vector3f);
        return q(subtract.mult((float) (r(subtract2, subtract) / F10)), subtract2, d10);
    }

    public static boolean g(Vector3f vector3f, Vector3f vector3f2, float f10) {
        return f.a(vector3f.f81611x, vector3f2.f81611x, f10) && f.a(vector3f.f81612y, vector3f2.f81612y, f10) && f.a(vector3f.f81613z, vector3f2.f81613z, f10);
    }

    public static Vector3f h(int i10, float f10, Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        vector3f.zero();
        vector3f.set(i10, f10);
        return vector3f;
    }

    public static float i(Vector3f vector3f) {
        return (float) Math.atan2(vector3f.f81613z, vector3f.f81611x);
    }

    public static void j(Vector3f vector3f) {
        P(vector3f);
        Vector3f vector3f2 = new Vector3f();
        double d10 = -2.0d;
        for (Vector3f vector3f3 : f92922j) {
            double r10 = r(vector3f3, vector3f);
            if (r10 > d10) {
                vector3f2.set(vector3f3);
                d10 = r10;
            }
        }
        vector3f.set(vector3f2);
    }

    public static int k(Vector3f vector3f, Vector3f vector3f2) {
        int compare = Float.compare(vector3f.f81611x, vector3f2.f81611x);
        if (compare != 0) {
            return compare;
        }
        int compare2 = Float.compare(vector3f.f81612y, vector3f2.f81612y);
        return compare2 == 0 ? Float.compare(vector3f.f81613z, vector3f2.f81613z) : compare2;
    }

    public static Matrix3f l(Collection<Vector3f> collection, Matrix3f matrix3f) {
        int size = collection.size();
        if (matrix3f == null) {
            matrix3f = new Matrix3f();
        }
        Vector3f L10 = L(collection, null);
        matrix3f.zero();
        for (Vector3f vector3f : collection) {
            float[] fArr = {vector3f.f81611x - L10.f81611x, vector3f.f81612y - L10.f81612y, vector3f.f81613z - L10.f81613z};
            for (int i10 = 0; i10 < 3; i10++) {
                for (int i11 = i10; i11 < 3; i11++) {
                    matrix3f.set(i10, i11, matrix3f.get(i10, i11) + (fArr[i10] * fArr[i11]));
                }
            }
        }
        float f10 = size - 1;
        for (int i12 = 0; i12 < 3; i12++) {
            for (int i13 = i12; i13 < 3; i13++) {
                float f11 = matrix3f.get(i12, i13) / f10;
                matrix3f.set(i12, i13, f11);
                matrix3f.set(i13, i12, f11);
            }
        }
        return matrix3f;
    }

    public static String m(Vector3f vector3f) {
        if (vector3f == null) {
            return "null";
        }
        if (D(vector3f)) {
            return "xyz=" + C13724t.e(vector3f.f81611x);
        }
        StringBuilder sb2 = new StringBuilder(40);
        if (vector3f.f81611x != 0.0f) {
            sb2.append("x=");
            sb2.append(C13724t.e(vector3f.f81611x));
        }
        if (vector3f.f81612y != 0.0f) {
            if (sb2.length() > 0) {
                sb2.append(C15883c.f126249O);
            }
            sb2.append("y=");
            sb2.append(C13724t.e(vector3f.f81612y));
        }
        if (vector3f.f81613z != 0.0f) {
            if (sb2.length() > 0) {
                sb2.append(C15883c.f126249O);
            }
            sb2.append("z=");
            sb2.append(C13724t.e(vector3f.f81613z));
        }
        return sb2.toString();
    }

    public static String n(Vector3f vector3f) {
        if (vector3f == null) {
            return "null";
        }
        StringBuilder sb2 = new StringBuilder(40);
        sb2.append("dx=");
        sb2.append(C13724t.g(vector3f.f81611x));
        sb2.append(" dy=");
        sb2.append(C13724t.g(vector3f.f81612y));
        sb2.append(" dz=");
        sb2.append(C13724t.g(vector3f.f81613z));
        return sb2.toString();
    }

    public static double o(Vector3f vector3f, Vector3f vector3f2) {
        double d10 = vector3f.f81611x - vector3f2.f81611x;
        double d11 = vector3f.f81612y - vector3f2.f81612y;
        double d12 = vector3f.f81613z - vector3f2.f81613z;
        return (d10 * d10) + (d11 * d11) + (d12 * d12);
    }

    public static double p(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4) {
        Vector3f subtract = vector3f3.subtract(vector3f2);
        double F10 = F(subtract);
        if (F10 == 0.0d) {
            if (vector3f4 != null) {
                vector3f4.set(vector3f2);
            }
            return o(vector3f2, vector3f);
        }
        Vector3f subtract2 = vector3f.subtract(vector3f2);
        Vector3f mult = subtract.mult(FastMath.saturate((float) (r(subtract2, subtract) / F10)));
        if (vector3f4 != null) {
            vector3f4.set(vector3f2);
            vector3f4.addLocal(mult);
        }
        return o(mult, subtract2);
    }

    public static boolean q(Vector3f vector3f, Vector3f vector3f2, double d10) {
        return o(vector3f, vector3f2) <= d10;
    }

    public static double r(Vector3f vector3f, Vector3f vector3f2) {
        return (vector3f.f81611x * vector3f2.f81611x) + (vector3f.f81612y * vector3f2.f81612y) + (vector3f.f81613z * vector3f2.f81613z);
    }

    public static boolean s(Vector3f vector3f, Vector3f vector3f2) {
        return vector3f.f81611x == vector3f2.f81611x && vector3f.f81612y == vector3f2.f81612y && vector3f.f81613z == vector3f2.f81613z;
    }

    public static Vector3f t(float f10, float f11) {
        return W(g.r(new Quaternion().fromAngles(0.0f, 0.0f, f10), f92921i, null), f11);
    }

    public static void u(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        P(vector3f);
        float abs = Math.abs(vector3f.f81611x);
        float abs2 = Math.abs(vector3f.f81612y);
        float abs3 = Math.abs(vector3f.f81613z);
        if (abs <= abs2 && abs <= abs3) {
            vector3f3.set(1.0f, 0.0f, 0.0f);
        } else if (abs2 <= abs3) {
            vector3f3.set(0.0f, 1.0f, 0.0f);
        } else {
            vector3f3.set(0.0f, 0.0f, 1.0f);
        }
        vector3f.cross(vector3f3, vector3f2);
        P(vector3f2);
        vector3f.cross(vector3f2, vector3f3);
        P(vector3f3);
    }

    public static k v(Vector3f vector3f) {
        return new r(vector3f).normalize();
    }

    public static Vector3f w(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4, Vector3f vector3f5) {
        Vector3f vector3f6;
        Vector3f vector3f7;
        if (vector3f == vector3f2 || vector3f == vector3f3) {
            vector3f6 = vector3f4;
            vector3f7 = vector3f5;
        } else {
            vector3f6 = vector3f2;
            vector3f7 = vector3f3;
        }
        if (vector3f == vector3f2) {
            vector3f2 = vector3f3;
        } else if (vector3f != vector3f3) {
            vector3f2 = vector3f == vector3f4 ? vector3f5 : vector3f4;
        }
        double o10 = o(vector3f, vector3f2);
        if (o10 >= o(vector3f, vector3f6)) {
            return vector3f6.m1292clone();
        }
        if (o10 >= o(vector3f, vector3f7)) {
            return vector3f7.m1292clone();
        }
        return null;
    }

    public static Vector3f x(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4, float f10) {
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(vector3f);
        arrayList.add(vector3f2);
        arrayList.add(vector3f3);
        arrayList.add(vector3f4);
        Vector3f[] N10 = N(arrayList);
        Vector3f vector3f5 = N10[0];
        Vector3f vector3f6 = N10[1];
        if (q(vector3f5, vector3f6, f10)) {
            return vector3f3.m1292clone();
        }
        arrayList.remove(vector3f5);
        arrayList.remove(vector3f6);
        if (d(vector3f5, vector3f6, arrayList, f10)) {
            return w(vector3f5, vector3f3, vector3f4, vector3f, vector3f2);
        }
        return null;
    }

    public static Vector3f y(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4, float f10) {
        Vector3f subtract = vector3f2.subtract(vector3f);
        double F10 = F(subtract);
        if (F10 == 0.0d) {
            Vector3f vector3f5 = new Vector3f();
            if (p(vector3f, vector3f3, vector3f4, vector3f5) > f10) {
                return null;
            }
            return vector3f5;
        }
        Vector3f subtract2 = vector3f4.subtract(vector3f3);
        double F11 = F(subtract);
        if (F11 == 0.0d) {
            Vector3f vector3f6 = new Vector3f();
            if (p(vector3f3, vector3f, vector3f2, vector3f6) > f10) {
                return null;
            }
            return vector3f6;
        }
        Vector3f cross = subtract2.cross(subtract);
        double d10 = f10;
        if (F(cross) <= d10) {
            return x(vector3f, vector3f2, vector3f3, vector3f4, f10);
        }
        Vector3f cross2 = subtract2.cross(cross);
        Vector3f cross3 = subtract.cross(cross);
        float dot = vector3f.subtract(vector3f3).dot(cross3) / subtract2.dot(cross3);
        float dot2 = vector3f3.subtract(vector3f).dot(cross2) / subtract.dot(cross2);
        Vector3f add = subtract2.mult(dot).add(vector3f3);
        if (!q(add, subtract.mult(dot2).add(vector3f), d10)) {
            return null;
        }
        double d11 = d10 / F11;
        if (dot < 0.0f && dot * dot > d11) {
            return null;
        }
        if (1.0f - dot < 0.0f && r4 * r4 > d11) {
            return null;
        }
        double d12 = d10 / F10;
        if (dot2 < 0.0f && dot2 * dot2 > d12) {
            return null;
        }
        if (1.0f - dot2 >= 0.0f || r5 * r5 <= d12) {
            return add;
        }
        return null;
    }

    public static boolean z(Vector3f vector3f) {
        return vector3f.f81611x >= 0.0f && vector3f.f81612y >= 0.0f && vector3f.f81613z >= 0.0f;
    }
}
