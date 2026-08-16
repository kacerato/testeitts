package jf;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import com.jme3.math.Vector3f;
import java.util.logging.Logger;
import p000if.C13702E;

public final class i {

    public static final float f92924a = 1.3333333f;

    public static final float f92925b = 4.1887903f;

    public static final float f92926c = 1.0471976f;

    public static final Logger f92927d = Logger.getLogger(i.class.getName());

    public static final boolean f92928e = false;

    public static float a(Vector3f vector3f) {
        C13702E.s(vector3f, "half extents");
        return vector3f.f81611x * 8.0f * vector3f.f81612y * vector3f.f81613z;
    }

    public static float b(float f10, float f11) {
        C13702E.p(f10, TestVFXEffect.f77524P);
        C13702E.p(f11, "height");
        return 3.1415927f * f10 * f10 * (f11 + (f10 * 1.3333333f));
    }

    public static float c(float f10, float f11) {
        C13702E.p(f10, TestVFXEffect.f77524P);
        C13702E.p(f11, "height");
        return 1.0471976f * f10 * f10 * f11;
    }

    public static float d(Vector3f vector3f) {
        C13702E.s(vector3f, "half extents");
        return vector3f.f81611x * 6.2831855f * vector3f.f81612y * vector3f.f81613z;
    }

    public static float e(float f10) {
        C13702E.p(f10, TestVFXEffect.f77524P);
        return f.j(f10) * 4.1887903f;
    }

    public static double f(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4) {
        C13702E.d(vector3f, "first vertex");
        C13702E.d(vector3f2, "2nd vertex");
        C13702E.d(vector3f3, "3rd vertex");
        C13702E.d(vector3f4, "4th vertex");
        float f10 = vector3f.f81611x;
        float f11 = vector3f4.f81611x;
        double d10 = f10 - f11;
        float f12 = vector3f.f81612y;
        float f13 = vector3f4.f81612y;
        double d11 = f12 - f13;
        float f14 = vector3f.f81613z;
        float f15 = vector3f4.f81613z;
        double d12 = f14 - f15;
        double d13 = vector3f2.f81611x - f11;
        double d14 = vector3f2.f81612y - f13;
        double d15 = vector3f2.f81613z - f15;
        double d16 = vector3f3.f81611x - f11;
        double d17 = vector3f3.f81612y - f13;
        double d18 = vector3f3.f81613z - f15;
        return Math.abs(((d10 * ((d14 * d18) - (d15 * d17))) + (d11 * ((d15 * d16) - (d18 * d13)))) + (d12 * ((d13 * d17) - (d14 * d16)))) / 6.0d;
    }
}
