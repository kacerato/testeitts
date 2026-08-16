package jf;

import androidx.constraintlayout.motion.widget.Key;
import com.jme3.math.FastMath;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import java.util.HashSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import p000if.C13702E;
import p000if.C13724t;

public final class g {

    public static final Logger f92910a = Logger.getLogger(g.class.getName());

    public static final Vector3f[] f92911b = {new Vector3f(1.0f, 0.0f, 0.0f), new Vector3f(0.0f, 1.0f, 0.0f), new Vector3f(0.0f, 0.0f, 1.0f), new Vector3f(-1.0f, 0.0f, 0.0f), new Vector3f(0.0f, -1.0f, 0.0f), new Vector3f(0.0f, 0.0f, -1.0f)};

    public static final boolean f92912c = false;

    public static void a(Quaternion quaternion, Quaternion quaternion2, float f10) {
        quaternion.set(quaternion.getX() + (quaternion2.getX() * f10), quaternion.getY() + (quaternion2.getY() * f10), quaternion.getZ() + (quaternion2.getZ() * f10), quaternion.getW() + (quaternion2.getW() * f10));
    }

    public static float b(Quaternion quaternion, Quaternion quaternion2) {
        double abs = Math.abs(g(quaternion, quaternion2));
        if (abs > 1.0d) {
            return 0.0f;
        }
        return ((float) Math.acos(abs)) * 2.0f;
    }

    public static void c(Quaternion quaternion) {
        p(quaternion);
        Quaternion quaternion2 = new Quaternion();
        Quaternion quaternion3 = new Quaternion();
        Vector3f vector3f = new Vector3f();
        float f10 = -1.0f;
        for (Vector3f vector3f2 : f92911b) {
            for (Vector3f vector3f3 : f92911b) {
                vector3f2.cross(vector3f3, vector3f);
                if (vector3f.isUnitVector()) {
                    quaternion2.fromAxes(vector3f2, vector3f3, vector3f);
                    float abs = FastMath.abs(quaternion2.dot(quaternion));
                    if (abs > f10) {
                        quaternion3.set(quaternion2);
                        f10 = abs;
                    }
                }
            }
        }
        quaternion.set(quaternion3);
    }

    public static Quaternion d(Quaternion quaternion, Quaternion quaternion2) {
        if (quaternion2 == null) {
            quaternion2 = new Quaternion();
        }
        float x10 = quaternion.getX();
        float y10 = quaternion.getY();
        quaternion2.set(-x10, -y10, -quaternion.getZ(), quaternion.getW());
        return quaternion2;
    }

    public static int e(Quaternion[] quaternionArr) {
        if (quaternionArr == null) {
            return 0;
        }
        HashSet hashSet = new HashSet(quaternionArr.length);
        for (Quaternion quaternion : quaternionArr) {
            hashSet.add(x(quaternion, null));
        }
        return hashSet.size();
    }

    public static String f(Quaternion quaternion) {
        if (quaternion == null) {
            return "null";
        }
        StringBuilder sb2 = new StringBuilder(40);
        sb2.append("x=");
        sb2.append(C13724t.g(quaternion.getX()));
        sb2.append(" y=");
        sb2.append(C13724t.g(quaternion.getY()));
        sb2.append(" z=");
        sb2.append(C13724t.g(quaternion.getZ()));
        sb2.append(" w=");
        sb2.append(C13724t.g(quaternion.getW()));
        return sb2.toString();
    }

    public static double g(Quaternion quaternion, Quaternion quaternion2) {
        return (quaternion.getW() * quaternion2.getW()) + (quaternion.getX() * quaternion2.getX()) + (quaternion.getY() * quaternion2.getY()) + (quaternion.getZ() * quaternion2.getZ());
    }

    public static Quaternion h(Quaternion quaternion, Quaternion quaternion2) {
        if (quaternion2 == null) {
            quaternion2 = new Quaternion();
        }
        double x10 = quaternion.getX();
        double y10 = quaternion.getY();
        double z10 = quaternion.getZ();
        double s10 = f.s(x10, y10, z10);
        if (s10 == 0.0d) {
            quaternion2.loadIdentity();
        } else {
            float cos = (float) Math.cos(s10);
            double sin = Math.sin(s10) / s10;
            quaternion2.set((float) (x10 * sin), (float) (y10 * sin), (float) (sin * z10), cos);
        }
        return quaternion2;
    }

    public static boolean i(Quaternion quaternion) {
        return quaternion.getW() == 0.0f;
    }

    public static boolean j(Quaternion quaternion) {
        float w10 = quaternion.getW();
        return w10 != 0.0f && !Float.isNaN(w10) && quaternion.getX() == 0.0f && quaternion.getY() == 0.0f && quaternion.getZ() == 0.0f;
    }

    public static boolean k(Quaternion quaternion) {
        return quaternion.getW() == 0.0f && quaternion.getX() == 0.0f && quaternion.getY() == 0.0f && quaternion.getZ() == 0.0f;
    }

    public static double l(Quaternion quaternion) {
        double x10 = quaternion.getX();
        double y10 = quaternion.getY();
        double z10 = quaternion.getZ();
        double w10 = quaternion.getW();
        return (x10 * x10) + (y10 * y10) + (z10 * z10) + (w10 * w10);
    }

    public static Quaternion m(Quaternion quaternion, Quaternion quaternion2) {
        if (quaternion2 == null) {
            quaternion2 = new Quaternion();
        }
        float w10 = quaternion.getW();
        if (w10 >= 1.0f || w10 <= -1.0f) {
            quaternion2.set(0.0f, 0.0f, 0.0f, 0.0f);
        } else {
            double x10 = quaternion.getX();
            double y10 = quaternion.getY();
            double z10 = quaternion.getZ();
            double f10 = f.f(f.s(x10, y10, z10), 0.0d, 1.0d);
            if (f10 == 0.0d) {
                quaternion2.set(0.0f, 0.0f, 0.0f, 0.0f);
            } else {
                double asin = Math.asin(f10) / f10;
                quaternion2.set((float) (x10 * asin), (float) (y10 * asin), (float) (asin * z10), 0.0f);
            }
        }
        return quaternion2;
    }

    public static Quaternion n(Quaternion quaternion, int i10, Quaternion quaternion2) {
        if (quaternion2 == null) {
            quaternion2 = new Quaternion();
        }
        float x10 = quaternion.getX();
        float y10 = quaternion.getY();
        float z10 = quaternion.getZ();
        float w10 = quaternion.getW();
        if (i10 == 0) {
            y10 = -y10;
        } else {
            if (i10 != 1) {
                if (i10 == 2) {
                    x10 = -x10;
                    y10 = -y10;
                    quaternion2.set(x10, y10, z10, w10);
                    return quaternion2;
                }
                throw new IllegalArgumentException("axisIndex = " + i10);
            }
            x10 = -x10;
        }
        z10 = -z10;
        quaternion2.set(x10, y10, z10, w10);
        return quaternion2;
    }

    public static boolean o(Quaternion quaternion, Quaternion quaternion2) {
        return (quaternion.getW() == quaternion2.getW() && quaternion.getX() == quaternion2.getX() && quaternion.getY() == quaternion2.getY() && quaternion.getZ() == quaternion2.getZ()) ? false : true;
    }

    public static void p(Quaternion quaternion) {
        double l10 = l(quaternion);
        if (l10 < 0.9999998d || l10 > 1.0000002d) {
            float sqrt = (float) Math.sqrt(l10);
            if (sqrt != 0.0f) {
                quaternion.multLocal(1.0f / sqrt);
            }
        }
    }

    public static Quaternion q(Quaternion quaternion, float f10, Quaternion quaternion2) {
        if (quaternion2 == null) {
            quaternion2 = new Quaternion();
        }
        float w10 = quaternion.getW();
        if (w10 >= 1.0f || w10 <= -1.0f || f10 == 0.0f) {
            quaternion2.loadIdentity();
        } else {
            double x10 = quaternion.getX();
            double y10 = quaternion.getY();
            double z10 = quaternion.getZ();
            double f11 = f.f(f.s(x10, y10, z10), 0.0d, 1.0d);
            if (f11 == 0.0d) {
                quaternion2.loadIdentity();
            } else {
                double asin = f10 * Math.asin(f11);
                float cos = (float) Math.cos(asin);
                double sin = Math.sin(asin) / f11;
                quaternion2.set((float) (x10 * sin), (float) (y10 * sin), (float) (sin * z10), cos);
            }
        }
        return quaternion2;
    }

    public static Vector3f r(Quaternion quaternion, Vector3f vector3f, Vector3f vector3f2) {
        C13702E.y(quaternion, Key.ROTATION);
        C13702E.d(vector3f, "input vector");
        Vector3f vector3f3 = vector3f2 == null ? new Vector3f() : vector3f2;
        float x10 = quaternion.getX();
        float y10 = quaternion.getY();
        float z10 = quaternion.getZ();
        float w10 = quaternion.getW();
        double l10 = l(quaternion);
        if (l10 < 0.9999998d || l10 > 1.0000002d) {
            double sqrt = Math.sqrt(l10);
            x10 = (float) (x10 / sqrt);
            y10 = (float) (y10 / sqrt);
            z10 = (float) (z10 / sqrt);
            w10 = (float) (w10 / sqrt);
        }
        float f10 = x10 * x10;
        float f11 = y10 * y10;
        float f12 = z10 * z10;
        float f13 = w10 * w10;
        float f14 = vector3f.f81611x;
        float f15 = vector3f.f81612y;
        float f16 = vector3f.f81613z;
        float f17 = y10 * 2.0f;
        float f18 = w10 * f16;
        float f19 = z10 * 2.0f;
        float f20 = w10 * f15;
        vector3f3.f81611x = ((((f10 - f11) - f12) + f13) * f14) + (((x10 * f15) + f18) * f17) + (((x10 * f16) - f20) * f19);
        float f21 = w10 * f14;
        float f22 = x10 * 2.0f;
        vector3f3.f81612y = ((((f11 - f12) - f10) + f13) * f15) + (f19 * ((y10 * f16) + f21)) + (((y10 * f14) - f18) * f22);
        vector3f3.f81613z = (f16 * (((f12 - f10) - f11) + f13)) + (f22 * ((f14 * z10) + f20)) + (f17 * ((z10 * f15) - f21));
        return vector3f3;
    }

    public static Vector3f s(Quaternion quaternion, Vector3f vector3f, Vector3f vector3f2) {
        C13702E.y(quaternion, Key.ROTATION);
        C13702E.d(vector3f, "input vector");
        Vector3f vector3f3 = vector3f2 == null ? new Vector3f() : vector3f2;
        float x10 = quaternion.getX();
        float y10 = quaternion.getY();
        float z10 = quaternion.getZ();
        float w10 = quaternion.getW();
        double l10 = l(quaternion);
        if (l10 < 0.9999998d || l10 > 1.0000002d) {
            double sqrt = Math.sqrt(l10);
            x10 = (float) (x10 / sqrt);
            y10 = (float) (y10 / sqrt);
            z10 = (float) (z10 / sqrt);
            w10 = (float) (w10 / sqrt);
        }
        float f10 = x10 * x10;
        float f11 = y10 * y10;
        float f12 = z10 * z10;
        float f13 = w10 * w10;
        float f14 = vector3f.f81611x;
        float f15 = vector3f.f81612y;
        float f16 = vector3f.f81613z;
        float f17 = y10 * 2.0f;
        float f18 = w10 * f16;
        float f19 = z10 * 2.0f;
        float f20 = w10 * f15;
        vector3f3.f81611x = ((((f10 - f11) - f12) + f13) * f14) + (((x10 * f15) - f18) * f17) + (((x10 * f16) + f20) * f19);
        float f21 = w10 * f14;
        float f22 = x10 * 2.0f;
        vector3f3.f81612y = ((((f11 - f12) - f10) + f13) * f15) + (f19 * ((y10 * f16) - f21)) + (((y10 * f14) + f18) * f22);
        vector3f3.f81613z = (f16 * (((f12 - f10) - f11) + f13)) + (f22 * ((f14 * z10) - f20)) + (f17 * ((z10 * f15) + f21));
        return vector3f3;
    }

    public static Quaternion t(float f10, Quaternion quaternion, Quaternion quaternion2, Quaternion quaternion3) {
        if (quaternion3 == null) {
            quaternion3 = new Quaternion();
        }
        Quaternion multLocal = d(quaternion, null).multLocal(quaternion2);
        Quaternion q10 = q(multLocal, f10, multLocal);
        quaternion3.set(quaternion);
        quaternion3.multLocal(q10);
        return quaternion3;
    }

    public static void u(Quaternion quaternion, int i10) {
        float[] fArr = new float[3];
        quaternion.toAngles(fArr);
        fArr[i10] = (float) (Math.round(fArr[i10] / 1.5707963267948966d) * 1.5707963267948966d);
        quaternion.fromAngles(fArr);
    }

    public static Quaternion v(float f10, Quaternion quaternion, Quaternion quaternion2, Quaternion quaternion3, Quaternion quaternion4, Quaternion quaternion5) {
        if (quaternion5 == null) {
            quaternion5 = new Quaternion();
        }
        t(2.0f * f10 * (1.0f - f10), t(f10, quaternion, quaternion4, null), t(f10, quaternion2, quaternion3, null), quaternion5);
        return quaternion5;
    }

    public static Quaternion w(Quaternion quaternion, Quaternion quaternion2, Quaternion quaternion3, Quaternion quaternion4) {
        if (quaternion4 == null) {
            quaternion4 = new Quaternion();
        }
        Quaternion d10 = d(quaternion2, null);
        Quaternion mult = d10.mult(quaternion);
        Quaternion m10 = m(mult, mult);
        Quaternion mult2 = d10.mult(quaternion3);
        Quaternion addLocal = m(mult2, mult2).addLocal(m10);
        addLocal.multLocal(-0.25f);
        Quaternion h10 = h(addLocal, addLocal);
        quaternion4.set(quaternion2);
        quaternion4.multLocal(h10);
        return quaternion4;
    }

    public static Quaternion x(Quaternion quaternion, Quaternion quaternion2) {
        if (quaternion2 == null) {
            quaternion2 = new Quaternion();
        }
        float w10 = quaternion.getW();
        float x10 = quaternion.getX();
        float y10 = quaternion.getY();
        float z10 = quaternion.getZ();
        quaternion2.set(f.N(x10), f.N(y10), f.N(z10), f.N(w10));
        return quaternion2;
    }

    public static boolean y(Quaternion quaternion, String str, float f10) {
        double l10 = l(quaternion);
        if (Math.abs(1.0d - l10) <= f10) {
            return true;
        }
        if (str == null) {
            str = "quaternion argument";
        }
        f92910a.log(Level.SEVERE, "norm({0})={1}", new Object[]{str, Double.valueOf(l10)});
        throw new IllegalArgumentException(String.format("norm(%s) must be within %f of 1.", str, Float.valueOf(f10)));
    }
}
