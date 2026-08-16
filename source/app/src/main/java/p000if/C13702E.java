package p000if;

import com.jme3.math.Quaternion;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import java.util.Collection;
import java.util.logging.Level;
import java.util.logging.Logger;
import jf.g;
import jf.h;

public final class C13702E {

    public static final Logger f92072a = Logger.getLogger(C13702E.class.getName());

    public static boolean f92073b = true;

    public static boolean A(Vector3f vector3f, String str) {
        t(vector3f, str);
        if (!h.E(vector3f)) {
            return true;
        }
        if (str == null) {
            str = "Vector3f argument";
        }
        throw new IllegalArgumentException(str + " must not be zero.");
    }

    public static boolean B(double d10, String str) {
        if (!Double.isNaN(d10)) {
            return true;
        }
        if (str == null) {
            str = "double argument";
        }
        f92072a.log(Level.SEVERE, "{0}={1}", new Object[]{str, Double.valueOf(d10)});
        throw new IllegalArgumentException(str + " must be a number.");
    }

    public static boolean C(float f10, String str) {
        if (!Float.isNaN(f10)) {
            return true;
        }
        if (str == null) {
            str = "float argument";
        }
        f92072a.log(Level.SEVERE, "{0}={1}", new Object[]{str, Float.valueOf(f10)});
        throw new IllegalArgumentException(str + " must be a number.");
    }

    public static boolean D(double d10, String str) {
        if (d10 > 0.0d) {
            return true;
        }
        if (str == null) {
            str = "double argument";
        }
        f92072a.log(Level.SEVERE, "{0}={1}", new Object[]{str, Double.valueOf(d10)});
        throw new IllegalArgumentException(str + " must be positive.");
    }

    public static boolean E(float f10, String str) {
        if (f10 > 0.0f) {
            return true;
        }
        if (str == null) {
            str = "float argument";
        }
        f92072a.log(Level.SEVERE, "{0}={1}", new Object[]{str, Float.valueOf(f10)});
        throw new IllegalArgumentException(str + " must be positive.");
    }

    public static boolean F(int i10, String str) {
        if (i10 > 0) {
            return true;
        }
        if (str == null) {
            str = "int argument";
        }
        f92072a.log(Level.SEVERE, "{0}={1}", new Object[]{str, Integer.valueOf(i10)});
        throw new IllegalArgumentException(str + " must be positive.");
    }

    public static boolean G(Vector3f vector3f, String str) {
        t(vector3f, str);
        if (h.A(vector3f)) {
            return true;
        }
        if (str == null) {
            str = "Vector3f argument";
        }
        f92072a.log(Level.SEVERE, "{0}={1}", new Object[]{str, vector3f});
        throw new IllegalArgumentException(str + " must have all components positive.");
    }

    public static boolean H(boolean z10, String str) {
        String str2;
        if (z10) {
            return true;
        }
        if (str == null) {
            str2 = "";
        } else {
            str2 = "Must have " + str + ".";
        }
        throw new IllegalArgumentException(str2);
    }

    public static boolean I(float f10, String str) {
        h(f10, str, -3.1415927f, 3.1415927f);
        return true;
    }

    public static boolean a(int i10, String str) {
        i(i10, str, 0, 2);
        return true;
    }

    public static boolean b(double d10, String str) {
        if (Double.isFinite(d10)) {
            return true;
        }
        if (str == null) {
            str = "double argument";
        }
        f92072a.log(Level.SEVERE, "{0}={1}", new Object[]{str, Double.valueOf(d10)});
        throw new IllegalArgumentException(str + " must be a finite number.");
    }

    public static boolean c(float f10, String str) {
        if (Float.isFinite(f10)) {
            return true;
        }
        if (str == null) {
            str = "float argument";
        }
        f92072a.log(Level.SEVERE, "{0}={1}", new Object[]{str, Float.valueOf(f10)});
        throw new IllegalArgumentException(str + " must be a finite number.");
    }

    public static boolean d(Vector3f vector3f, String str) {
        t(vector3f, str);
        if (Vector3f.isValidVector(vector3f)) {
            return true;
        }
        if (str == null) {
            str = "Vector3f argument";
        }
        f92072a.log(Level.SEVERE, "{0}={1}", new Object[]{str, vector3f});
        throw new IllegalArgumentException(str + " must have all components finite.");
    }

    public static boolean e(double d10, String str) {
        g(d10, str, 0.0d, 1.0d);
        return true;
    }

    public static boolean f(float f10, String str) {
        h(f10, str, 0.0f, 1.0f);
        return true;
    }

    public static boolean g(double d10, String str, double d11, double d12) {
        if (d10 < d11) {
            if (str == null) {
                str = "double argument";
            }
            f92072a.log(Level.SEVERE, "{0}={1}", new Object[]{str, Double.valueOf(d10)});
            throw new IllegalArgumentException(String.format("%s must be greater than or equal to %f.", str, Double.valueOf(d11)));
        }
        if (d10 <= d12) {
            return true;
        }
        if (str == null) {
            str = "double argument";
        }
        f92072a.log(Level.SEVERE, "{0}={1}", new Object[]{str, Double.valueOf(d10)});
        throw new IllegalArgumentException(String.format("%s must be less than or equal to %f.", str, Double.valueOf(d12)));
    }

    public static boolean h(float f10, String str, float f11, float f12) {
        if (f10 < f11) {
            if (str == null) {
                str = "float argument";
            }
            f92072a.log(Level.SEVERE, "{0}={1}", new Object[]{str, Float.valueOf(f10)});
            throw new IllegalArgumentException(String.format("%s must be greater than or equal to %f.", str, Float.valueOf(f11)));
        }
        if (f10 <= f12) {
            return true;
        }
        if (str == null) {
            str = "float argument";
        }
        f92072a.log(Level.SEVERE, "{0}={1}", new Object[]{str, Float.valueOf(f10)});
        throw new IllegalArgumentException(String.format("%s must be less than or equal to %f.", str, Float.valueOf(f12)));
    }

    public static boolean i(int i10, String str, int i11, int i12) {
        if (i10 < i11) {
            if (str == null) {
                str = "int argument";
            }
            f92072a.log(Level.SEVERE, "{0}={1}", new Object[]{str, Integer.valueOf(i10)});
            throw new IllegalArgumentException(String.format("%s must be greater than or equal to %d.", str, Integer.valueOf(i11)));
        }
        if (i10 <= i12) {
            return true;
        }
        if (str == null) {
            str = "int argument";
        }
        f92072a.log(Level.SEVERE, "{0}={1}", new Object[]{str, Integer.valueOf(i10)});
        throw new IllegalArgumentException(String.format("%s must be less than or equal to %d.", str, Integer.valueOf(i12)));
    }

    public static boolean j(String str, String str2) {
        t(str, str2);
        if (!str.isEmpty()) {
            return true;
        }
        if (str2 == null) {
            str2 = "String argument";
        }
        throw new IllegalArgumentException(str2 + " must not be empty.");
    }

    public static boolean k(Collection collection, String str) {
        t(collection, str);
        if (!collection.isEmpty()) {
            return true;
        }
        if (str == null) {
            str = "Collection argument";
        }
        throw new IllegalArgumentException(str + " must not be empty.");
    }

    public static boolean l(float[] fArr, String str) {
        t(fArr, str);
        if (fArr.length != 0) {
            return true;
        }
        if (str == null) {
            str = "float[] argument";
        }
        throw new IllegalArgumentException(str + " must not be empty.");
    }

    public static boolean m(int[] iArr, String str) {
        t(iArr, str);
        if (iArr.length != 0) {
            return true;
        }
        if (str == null) {
            str = "int[] argument";
        }
        throw new IllegalArgumentException(str + " must not be empty.");
    }

    public static boolean n(Object[] objArr, String str) {
        t(objArr, str);
        if (objArr.length != 0) {
            return true;
        }
        if (str == null) {
            str = "Object[] argument";
        }
        throw new IllegalArgumentException(str + " must not be empty.");
    }

    public static boolean o(double d10, String str) {
        if (d10 >= 0.0d) {
            return true;
        }
        if (str == null) {
            str = "double argument";
        }
        f92072a.log(Level.SEVERE, "{0}={1}", new Object[]{str, Double.valueOf(d10)});
        throw new IllegalArgumentException(str + " must not be negative.");
    }

    public static boolean p(float f10, String str) {
        if (f10 >= 0.0f) {
            return true;
        }
        if (str == null) {
            str = "float argument";
        }
        f92072a.log(Level.SEVERE, "{0}={1}", new Object[]{str, Float.valueOf(f10)});
        throw new IllegalArgumentException(str + " must not be negative or NaN.");
    }

    public static boolean q(int i10, String str) {
        if (i10 >= 0) {
            return true;
        }
        if (str == null) {
            str = "int argument";
        }
        f92072a.log(Level.SEVERE, "{0}={1}", new Object[]{str, Integer.valueOf(i10)});
        throw new IllegalArgumentException(str + " must not be negative.");
    }

    public static boolean r(Vector2f vector2f, String str) {
        t(vector2f, str);
        if (vector2f.f81609x >= 0.0f && vector2f.f81610y >= 0.0f) {
            return true;
        }
        if (str == null) {
            str = "Vector2f argument";
        }
        f92072a.log(Level.SEVERE, "{0}={1}", new Object[]{str, vector2f});
        throw new IllegalArgumentException(str + " must not have a negative component.");
    }

    public static boolean s(Vector3f vector3f, String str) {
        t(vector3f, str);
        if (h.z(vector3f)) {
            return true;
        }
        if (str == null) {
            str = "Vector3f argument";
        }
        f92072a.log(Level.SEVERE, "{0}={1}", new Object[]{str, vector3f});
        throw new IllegalArgumentException(str + " must not have a negative component.");
    }

    public static boolean t(Object obj, String str) {
        if (obj != null) {
            return true;
        }
        if (str == null) {
            str = "Object argument";
        }
        String str2 = str + " must not be null.";
        if (f92073b) {
            throw new NullPointerException(str2);
        }
        throw new IllegalArgumentException(str2);
    }

    public static boolean u(Object[] objArr, String str) {
        t(objArr, str);
        for (int i10 = 0; i10 < objArr.length; i10++) {
            if (objArr[i10] == null) {
                if (str == null) {
                    str = "Array argument";
                }
                String format = String.format("element[%d] of %s must not be null.", Integer.valueOf(i10), str);
                if (f92073b) {
                    throw new NullPointerException(format);
                }
                throw new IllegalArgumentException(format);
            }
        }
        return true;
    }

    public static boolean v(float f10, String str) {
        if (f10 != 0.0f) {
            return true;
        }
        if (str == null) {
            str = "float argument";
        }
        throw new IllegalArgumentException(str + " must not be zero.");
    }

    public static boolean w(int i10, String str) {
        if (i10 != 0) {
            return true;
        }
        if (str == null) {
            str = "int argument";
        }
        throw new IllegalArgumentException(str + " must not be zero.");
    }

    public static boolean x(long j10, String str) {
        if (j10 != 0) {
            return true;
        }
        if (str == null) {
            str = "long argument";
        }
        throw new IllegalArgumentException(str + " must not be zero.");
    }

    public static boolean y(Quaternion quaternion, String str) {
        t(quaternion, str);
        if (!g.k(quaternion)) {
            return true;
        }
        if (str == null) {
            str = "Quaternion argument";
        }
        throw new IllegalArgumentException(str + " must not be zero.");
    }

    public static boolean z(Vector2f vector2f, String str) {
        t(vector2f, str);
        if (vector2f.f81609x != 0.0f || vector2f.f81610y != 0.0f) {
            return true;
        }
        if (str == null) {
            str = "Vector2f argument";
        }
        throw new IllegalArgumentException(str + " must not be zero.");
    }
}
