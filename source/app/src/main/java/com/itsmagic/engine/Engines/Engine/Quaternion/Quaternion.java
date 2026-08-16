package com.itsmagic.engine.Engines.Engine.Quaternion;

import Ic.A;
import K8.f;
import androidx.annotation.NonNull;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import com.itsmagic.engine.Engines.Engine.Vector.e;
import com.jme3.math.FastMath;
import com.jme3.math.Vector3f;
import com.jme3.util.TempVars;
import java.io.Serializable;
import java.util.Locale;
import javax.vecmath.Quat4f;

public class Quaternion extends f implements Serializable {

    public static final Quaternion f79456i = new Quaternion();

    public float f79457b;

    public float f79458c;

    public float f79459d;

    public float f79460e;

    public JAVARuntime.Quaternion f79461g;

    @Expose
    float f79462w = 1.0f;

    @Expose
    float f79463x;

    @Expose
    float f79464y;

    @Expose
    float f79465z;

    public Quaternion() {
    }

    public static void B0(Vector3 direction, Vector3 up) {
        if (Math.abs(direction.getY()) < 0.999f) {
            up.set(0.0f, 1.0f, 0.0f);
        } else {
            up.set(1.0f, 0.0f, 0.0f);
        }
    }

    public static Quaternion H0(Quaternion q12, Quaternion q22, float t10) {
        return q12.e(q22, t10);
    }

    public static Quaternion J() {
        Quaternion quaternion = f79456i;
        quaternion.C0();
        return quaternion;
    }

    public static boolean K(Vector3 vector) {
        return vector != null && Float.isFinite(vector.getX()) && Float.isFinite(vector.getY()) && Float.isFinite(vector.getZ());
    }

    public static float K0(float v10) {
        return (float) Math.sqrt(Math.max(v10, 0.0f));
    }

    public static boolean L(Vector3f vector) {
        return vector != null && Float.isFinite(vector.f81611x) && Float.isFinite(vector.f81612y) && Float.isFinite(vector.f81613z);
    }

    public static Quaternion Q(Vector3 to) {
        Quaternion quaternion = new Quaternion();
        quaternion.U(to);
        return quaternion;
    }

    public static Quaternion S(Vector3 from, Vector3 to) {
        Quaternion quaternion = new Quaternion();
        quaternion.Z(from, to);
        return quaternion;
    }

    public static Quaternion T(Vector3 from, Vector3 to, Quaternion out) {
        out.Z(from, to);
        return out;
    }

    public static Quaternion X0() {
        Quaternion quaternion = f79456i;
        quaternion.C0();
        return quaternion;
    }

    public static float d(float y10, float x10) {
        return (float) Math.atan2(y10, x10);
    }

    public static float h(float x10, float y10, float z10) {
        return Nc.b.J1(FastMath.atan2(-y10, FastMath.sqrt((x10 * x10) + (z10 * z10))));
    }

    public static float i(float x10, float z10) {
        return Nc.b.J1(FastMath.atan2(x10, z10));
    }

    public static Quaternion k(Quaternion vector3) {
        if (vector3 != null) {
            return vector3.clone();
        }
        return null;
    }

    public static Quaternion l(float xx, float yy, float zz, float degress) {
        return m(xx, yy, zz, degress, new Quaternion());
    }

    public static Quaternion m(float xx, float yy, float zz, float degress, Quaternion out) {
        if (xx < 0.0f || xx > 1.0f) {
            throw new IllegalArgumentException("the x angle factor can't be < 0 or > 1, make sure the arguments are inside the 0 - 1 limits, otherwise the angle can be any degrees, could you be confusing this method with \"fromEuler\" or \"setFromEuler\"?");
        }
        if (yy < 0.0f || yy > 1.0f) {
            throw new IllegalArgumentException("the y angle factor can't be < 0 or > 1, make sure the arguments are inside the 0 - 1 limits, otherwise the angle can be any degrees, could you be confusing this method with \"fromEuler\" or \"setFromEuler\"?");
        }
        if (zz < 0.0f || zz > 1.0f) {
            throw new IllegalArgumentException("the z angle factor can't be < 0 or > 1, make sure the arguments are inside the 0 - 1 limits, otherwise the angle can be any degrees, could you be confusing this method with \"fromEuler\" or \"setFromEuler\"?");
        }
        double o10 = Nc.b.o(degress) / 2.0d;
        float sin = (float) Math.sin(o10);
        float f10 = xx * sin;
        float f11 = yy * sin;
        float f12 = zz * sin;
        float cos = (float) Math.cos(o10);
        out.setX(f10);
        out.setY(f11);
        out.setZ(f12);
        out.G0(cos);
        out.l0();
        return out;
    }

    public static Quaternion n(float x10, float y10, float z10) {
        Quaternion quaternion = new Quaternion();
        quaternion.v(x10, y10, z10);
        return quaternion;
    }

    public static void o(float yawRad, float pitchRad, Vector3 outDir) {
        double d10 = pitchRad;
        float cos = (float) Math.cos(d10);
        float sin = (float) Math.sin(d10);
        double d11 = yawRad;
        float sin2 = (float) Math.sin(d11);
        float cos2 = (float) Math.cos(d11);
        outDir.setX(sin2 * cos);
        outDir.setY(-sin);
        outDir.setZ(cos2 * cos);
        if (outDir.lengthSquared() > 1.0E-12f) {
            outDir.normalizeLocal();
        } else {
            outDir.set(0.0f, 0.0f, 1.0f);
        }
    }

    public static void p(Vector3 direction, Vector3 up) {
        if (direction == null || up == null) {
            return;
        }
        float lengthSquared = direction.lengthSquared();
        if (!Float.isFinite(lengthSquared) || lengthSquared < 1.0E-8f) {
            up.set(0.0f, 1.0f, 0.0f);
            return;
        }
        float dot = direction.dot(up);
        if (!Float.isFinite(dot) || Math.abs(dot) > 0.999f) {
            if (Math.abs(direction.getY()) < 0.999f) {
                up.set(0.0f, 1.0f, 0.0f);
            } else {
                up.set(1.0f, 0.0f, 0.0f);
            }
        }
    }

    public final void A(Vector3 outRight, Vector3 outUp, Vector3 outForward) {
        float f10;
        float x10 = getX();
        float y10 = getY();
        float z10 = getZ();
        float I10 = I();
        float f11 = y10 * y10;
        float f12 = z10 * z10;
        float f13 = x10 * y10;
        float f14 = z10 * I10;
        float f15 = x10 * z10;
        float f16 = y10 * I10;
        outRight.set(1.0f - ((f11 + f12) * 2.0f), (f13 + f14) * 2.0f, (f15 - f16) * 2.0f);
        if (outRight.lengthSquared() > 1.0E-12f) {
            outRight.normalizeLocal();
            f10 = 1.0f;
        } else {
            f10 = 1.0f;
            outRight.set(1.0f, 0.0f, 0.0f);
        }
        float f17 = x10 * x10;
        float f18 = y10 * z10;
        float f19 = x10 * I10;
        outUp.set((f13 - f14) * 2.0f, f10 - ((f12 + f17) * 2.0f), (f18 + f19) * 2.0f);
        if (outUp.lengthSquared() > 1.0E-12f) {
            outUp.normalizeLocal();
        } else {
            outUp.set(0.0f, f10, 0.0f);
        }
        outForward.set((f15 + f16) * 2.0f, (f18 - f19) * 2.0f, f10 - ((f17 + f11) * 2.0f));
        if (outForward.lengthSquared() > 1.0E-12f) {
            outForward.normalizeLocal();
        } else {
            outForward.set(0.0f, 0.0f, f10);
        }
    }

    public Vector3 B() {
        return C(new Vector3());
    }

    public Vector3 C(Vector3 out) {
        if (out == null) {
            throw new NullPointerException("out can't be null");
        }
        float I10 = I() * I();
        float x10 = getX() * getX();
        float y10 = getY() * getY();
        float z10 = getZ() * getZ();
        float f10 = x10 + y10 + z10 + I10;
        float x11 = (getX() * getY()) + (getZ() * I());
        double d10 = x11;
        double d11 = f10;
        if (d10 > 0.499d * d11) {
            out.setY(FastMath.atan2(getX(), I()) * 2.0f);
            out.setZ(1.5707964f);
            out.setX(0.0f);
        } else if (d10 < d11 * (-0.499d)) {
            out.setY(FastMath.atan2(getX(), I()) * (-2.0f));
            out.setZ(-1.5707964f);
            out.setX(0.0f);
        } else {
            out.setY(FastMath.atan2(((getY() * 2.0f) * I()) - ((getX() * 2.0f) * getZ()), ((x10 - y10) - z10) + I10));
            out.setZ(Nc.b.r((x11 * 2.0f) / f10));
            out.setX(FastMath.atan2(((getX() * 2.0f) * I()) - ((getY() * 2.0f) * getZ()), (((-x10) + y10) - z10) + I10));
        }
        if (out.getX() < 0.0f) {
            out.setX(out.getX() + 360.0f);
        }
        if (out.getY() < 0.0f) {
            out.setY(out.getY() + 360.0f);
        }
        if (out.getZ() < 0.0f) {
            out.setZ(out.getZ() + 360.0f);
        }
        return out;
    }

    public void C0() {
        G0(1.0f);
        setX(0.0f);
        setY(0.0f);
        setZ(0.0f);
    }

    public float D() {
        float I10 = I() * I();
        float x10 = getX() * getX();
        float y10 = getY() * getY();
        float z10 = getZ() * getZ();
        double x11 = (getX() * getY()) + (getZ() * I());
        double d10 = x10 + y10 + z10 + I10;
        if (x11 > 0.499d * d10) {
            float degrees = (float) Math.toDegrees(0.0d);
            return degrees < 0.0f ? degrees + 360.0f : degrees;
        }
        if (x11 < d10 * (-0.499d)) {
            float degrees2 = (float) Math.toDegrees(0.0d);
            return degrees2 < 0.0f ? degrees2 + 360.0f : degrees2;
        }
        float degrees3 = (float) Math.toDegrees(FastMath.atan2(((getX() * 2.0f) * I()) - ((getY() * 2.0f) * getZ()), (((-x10) + y10) - z10) + I10));
        return degrees3 < 0.0f ? degrees3 + 360.0f : degrees3;
    }

    public void D0(Quat4f q10) {
        G0(q10.f92850w);
        setX(-q10.f92851x);
        setY(-q10.f92852y);
        setZ(-q10.f92853z);
    }

    public float E() {
        float I10 = I() * I();
        float x10 = getX() * getX();
        float y10 = getY() * getY();
        float z10 = getZ() * getZ();
        double x11 = (getX() * getY()) + (getZ() * I());
        double d10 = x10 + y10 + z10 + I10;
        if (x11 > 0.499d * d10) {
            float degrees = (float) Math.toDegrees(FastMath.atan2(getX(), I()) * 2.0f);
            return degrees < 0.0f ? degrees + 360.0f : degrees;
        }
        if (x11 < d10 * (-0.499d)) {
            float degrees2 = (float) Math.toDegrees(FastMath.atan2(getX(), I()) * (-2.0f));
            return degrees2 < 0.0f ? degrees2 + 360.0f : degrees2;
        }
        float degrees3 = (float) Math.toDegrees(FastMath.atan2(((getY() * 2.0f) * I()) - ((getX() * 2.0f) * getZ()), ((x10 - y10) - z10) + I10));
        return degrees3 < 0.0f ? degrees3 + 360.0f : degrees3;
    }

    public final void E0(Vector3 direction, Vector3 preferredUp, boolean preserveRollOnPole) {
        if (K(direction)) {
            float lengthSquared = direction.lengthSquared();
            if (!Float.isFinite(lengthSquared) || lengthSquared < 1.0E-8f) {
                return;
            }
            Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
            Vector3 vector32 = (Vector3) JP.acquire(Vector3.class);
            Vector3 vector33 = (Vector3) JP.acquire(Vector3.class);
            Vector3 vector34 = (Vector3) JP.acquire(Vector3.class);
            Vector3 vector35 = preserveRollOnPole ? (Vector3) JP.acquire(Vector3.class) : null;
            Vector3 vector36 = preserveRollOnPole ? (Vector3) JP.acquire(Vector3.class) : null;
            Vector3 vector37 = preserveRollOnPole ? (Vector3) JP.acquire(Vector3.class) : null;
            try {
                vector3.set(direction);
                vector3.normalizeLocal();
                if (K(vector3)) {
                    if (K(preferredUp)) {
                        vector32.set(preferredUp);
                        float lengthSquared2 = vector32.lengthSquared();
                        if (Float.isFinite(lengthSquared2) && lengthSquared2 >= 1.0E-8f) {
                            vector32.normalizeLocal();
                        }
                        B0(vector3, vector32);
                    } else {
                        B0(vector3, vector32);
                    }
                    float dot = vector3.dot(vector32);
                    if (!Float.isFinite(dot)) {
                        dot = 0.0f;
                    }
                    if (Math.abs(dot) <= 0.999f || !preserveRollOnPole) {
                        vector33.set(vector32);
                        vector33.crossLocal(vector3);
                    } else {
                        A(vector35, vector36, vector37);
                        float dot2 = vector35.dot(vector3);
                        vector33.set(vector35.getX() - (vector3.getX() * dot2), vector35.getY() - (vector3.getY() * dot2), vector35.getZ() - (vector3.getZ() * dot2));
                        if (vector33.lengthSquared() < 1.0E-10f) {
                            vector33.set(vector36);
                            vector33.crossLocal(vector3);
                        }
                    }
                    if (vector33.lengthSquared() < 1.0E-10f) {
                        B0(vector3, vector32);
                        vector33.set(vector32);
                        vector33.crossLocal(vector3);
                    }
                    if (vector33.lengthSquared() < 1.0E-10f) {
                        vector33.set(1.0f, 0.0f, 0.0f);
                    } else {
                        vector33.normalizeLocal();
                    }
                    vector34.set(vector3);
                    vector34.crossLocal(vector33);
                    if (vector34.lengthSquared() < 1.0E-10f) {
                        B0(vector3, vector32);
                        vector33.set(vector32);
                        vector33.crossLocal(vector3);
                        if (vector33.lengthSquared() > 1.0E-10f) {
                            vector33.normalizeLocal();
                            vector34.set(vector3);
                            vector34.crossLocal(vector33);
                        }
                    }
                    if (vector34.lengthSquared() >= 1.0E-10f) {
                        vector34.normalizeLocal();
                        y(vector33.getX(), vector34.getX(), vector3.getX(), vector33.getY(), vector34.getY(), vector3.getY(), vector33.getZ(), vector34.getZ(), vector3.getZ());
                        JP.release(vector37);
                        JP.release(vector36);
                        JP.release(vector35);
                        JP.release(vector34);
                        JP.release(vector33);
                        JP.release(vector32);
                        JP.release(vector3);
                    }
                }
            } finally {
                JP.release(vector37);
                JP.release(vector36);
                JP.release(vector35);
                JP.release(vector34);
                JP.release(vector33);
                JP.release(vector32);
                JP.release(vector3);
            }
        }
    }

    public float F() {
        float x10 = (getX() * getX()) + (getY() * getY()) + (getZ() * getZ()) + (I() * I());
        double x11 = (getX() * getY()) + (getZ() * I());
        double d10 = x10;
        if (x11 > 0.499d * d10) {
            float degrees = (float) Math.toDegrees(1.5707963705062866d);
            return degrees < 0.0f ? degrees + 360.0f : degrees;
        }
        if (x11 < d10 * (-0.499d)) {
            float degrees2 = (float) Math.toDegrees(-1.5707963705062866d);
            return degrees2 < 0.0f ? degrees2 + 360.0f : degrees2;
        }
        float degrees3 = (float) Math.toDegrees(Nc.b.r((r0 * 2.0f) / x10));
        return degrees3 < 0.0f ? degrees3 + 360.0f : degrees3;
    }

    public void F0(JAVARuntime.Quaternion run) {
        this.f79461g = run;
    }

    public final void G(Vector3 outForward, Vector3 outUp) {
        float x10 = getX();
        float y10 = getY();
        float z10 = getZ();
        float I10 = I();
        float f10 = y10 * z10;
        float f11 = x10 * I10;
        float f12 = x10 * x10;
        outForward.set(((x10 * z10) + (y10 * I10)) * 2.0f, (f10 - f11) * 2.0f, 1.0f - (((y10 * y10) + f12) * 2.0f));
        if (outForward.lengthSquared() > 1.0E-12f) {
            outForward.normalizeLocal();
        } else {
            outForward.set(0.0f, 0.0f, 1.0f);
        }
        outUp.set(((x10 * y10) - (I10 * z10)) * 2.0f, 1.0f - ((f12 + (z10 * z10)) * 2.0f), (f10 + f11) * 2.0f);
        if (outUp.lengthSquared() > 1.0E-12f) {
            outUp.normalizeLocal();
        } else {
            outUp.set(0.0f, 1.0f, 0.0f);
        }
    }

    public float G0(float w10) {
        if (Float.isNaN(w10)) {
            throw new IllegalArgumentException("argument can't be NaN");
        }
        this.f79462w = w10;
        return w10;
    }

    public float H() {
        return Nc.b.q1((I() * I()) + (getX() * getX()) + (getY() * getY()) + (getZ() * getZ()));
    }

    public float I() {
        return this.f79462w;
    }

    public Quaternion I0(Quaternion q22, float t10) {
        f(q22, t10);
        return this;
    }

    public Quaternion J0(Quaternion q12, Quaternion q22, float t10) {
        u0(q12.e(q22, t10));
        return this;
    }

    public float L0(Vector3 axisStore) {
        float x10 = (getX() * getX()) + (getY() * getY()) + (getZ() * getZ());
        float f10 = 0.0f;
        if (x10 != 0.0f) {
            f10 = Nc.b.n(I()) * 2.0f;
            if (axisStore != null) {
                float sqrt = 1.0f / FastMath.sqrt(x10);
                axisStore.setX(getX() * sqrt);
                axisStore.setY(getY() * sqrt);
                axisStore.setZ(getZ() * sqrt);
            }
        } else if (axisStore != null) {
            axisStore.setX(1.0f);
            axisStore.setY(0.0f);
            axisStore.setZ(0.0f);
        }
        return f10;
    }

    public boolean M() {
        return (I() == 0.0f && getX() == 0.0f && getY() == 0.0f && getZ() == 0.0f) ? false : true;
    }

    public float M0(Vector3f axisStore) {
        float x10 = (getX() * getX()) + (getY() * getY()) + (getZ() * getZ());
        float f10 = 0.0f;
        if (x10 != 0.0f) {
            f10 = Nc.b.n(I()) * 2.0f;
            if (axisStore != null) {
                float sqrt = 1.0f / FastMath.sqrt(x10);
                axisStore.f81611x = getX() * sqrt;
                axisStore.f81612y = getY() * sqrt;
                axisStore.f81613z = getZ() * sqrt;
            }
        } else if (axisStore != null) {
            axisStore.f81611x = 1.0f;
            axisStore.f81612y = 0.0f;
            axisStore.f81613z = 0.0f;
        }
        return f10;
    }

    public Quaternion N() {
        float atan2 = (float) Math.atan2(getX(), I());
        return new Quaternion(Nc.b.m1(atan2), 0.0f, 0.0f, Nc.b.d0(atan2));
    }

    public JAVARuntime.Quaternion N0() {
        JAVARuntime.Quaternion quaternion = this.f79461g;
        if (quaternion != null) {
            return quaternion;
        }
        JAVARuntime.Quaternion quaternion2 = new JAVARuntime.Quaternion(this);
        this.f79461g = quaternion2;
        return quaternion2;
    }

    public Quaternion O() {
        float atan2 = (float) Math.atan2(getY(), I());
        return new Quaternion(0.0f, Nc.b.m1(atan2), 0.0f, Nc.b.d0(atan2));
    }

    public Quat4f O0() {
        return P0(new Quat4f());
    }

    public Quaternion P() {
        float atan2 = (float) Math.atan2(getZ(), I());
        return new Quaternion(0.0f, 0.0f, Nc.b.m1(atan2), Nc.b.d0(atan2));
    }

    public Quat4f P0(Quat4f out) {
        out.f92850w = I();
        out.f92851x = getX();
        out.f92852y = getY();
        out.f92853z = getZ();
        return out;
    }

    public com.jme3.math.Quaternion Q0() {
        com.jme3.math.Quaternion quaternion = new com.jme3.math.Quaternion();
        quaternion.set(getX(), getY(), getZ(), I());
        return quaternion;
    }

    public e R0(e result) {
        float j02 = j0();
        float f10 = j02 != 1.0f ? j02 > 0.0f ? 2.0f / j02 : 0.0f : 2.0f;
        float x10 = getX() * f10;
        float y10 = getY() * f10;
        float z10 = getZ() * f10;
        float x11 = getX() * x10;
        float x12 = getX() * y10;
        float x13 = getX() * z10;
        float I10 = I() * x10;
        float y11 = getY() * y10;
        float y12 = getY() * z10;
        float I11 = I() * y10;
        float z11 = getZ() * z10;
        float I12 = I() * z10;
        result.f79871b = 1.0f - (y11 + z11);
        result.f79872c = x12 - I12;
        result.f79873d = x13 + I11;
        result.f79874e = x12 + I12;
        result.f79875g = 1.0f - (z11 + x11);
        result.f79876i = y12 - I10;
        result.f79877j = x13 - I11;
        result.f79878k = y12 + I10;
        result.f79879l = 1.0f - (x11 + y11);
        return result;
    }

    public void U(Vector3 to) {
        if (K(to)) {
            Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
            Vector3 vector32 = (Vector3) JP.acquire(Vector3.class);
            try {
                vector3.set(0.0f, 1.0f, 0.0f);
                vector32.set(to.getX(), to.getY(), to.getZ());
                float lengthSquared = vector32.lengthSquared();
                if (Float.isFinite(lengthSquared) && lengthSquared >= 1.0E-8f) {
                    vector32.normalizeLocal();
                    if (K(vector32)) {
                    }
                }
            } finally {
                E0(vector32, vector3, true);
                JP.release(vector3);
                JP.release(vector32);
            }
        }
    }

    public com.itsmagic.engine.Engines.Engine.Vector.f U0(com.itsmagic.engine.Engines.Engine.Vector.f result) {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f = tempVars.vect1;
        result.v1(vector3f);
        result.setScale(1.0f, 1.0f, 1.0f);
        float j02 = j0();
        float f10 = j02 != 1.0f ? j02 > 0.0f ? 2.0f / j02 : 0.0f : 2.0f;
        float x10 = getX() * f10;
        float y10 = getY() * f10;
        float z10 = getZ() * f10;
        float x11 = getX() * x10;
        float x12 = getX() * y10;
        float x13 = getX() * z10;
        float I10 = I() * x10;
        float y11 = getY() * y10;
        float y12 = getY() * z10;
        float I11 = I() * y10;
        float z11 = getZ() * z10;
        float I12 = I() * z10;
        result.f79883b = 1.0f - (y11 + z11);
        result.f79884c = x12 - I12;
        result.f79885d = x13 + I11;
        result.f79887g = x12 + I12;
        result.f79888i = 1.0f - (z11 + x11);
        result.f79889j = y12 - I10;
        result.f79891l = x13 - I11;
        result.f79892m = y12 + I10;
        result.f79893n = 1.0f - (x11 + y11);
        result.H0(vector3f);
        tempVars.release();
        return result;
    }

    public void V(Vector3 from, float x10, float y10, float z10) {
        if (K(from) && Float.isFinite(x10) && Float.isFinite(y10) && Float.isFinite(z10)) {
            Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
            Vector3 vector32 = (Vector3) JP.acquire(Vector3.class);
            try {
                vector3.set(0.0f, 1.0f, 0.0f);
                vector32.set(x10 - from.getX(), y10 - from.getY(), z10 - from.getZ());
                float lengthSquared = vector32.lengthSquared();
                if (Float.isFinite(lengthSquared) && lengthSquared >= 1.0E-8f) {
                    vector32.normalizeLocal();
                    if (K(vector32)) {
                    }
                }
            } finally {
                E0(vector32, vector3, true);
                JP.release(vector3);
                JP.release(vector32);
            }
        }
    }

    public String V0() {
        return I() + ", " + getX() + ", " + getY() + ", " + getZ();
    }

    public void W(Vector3 from, float x10, float y10, float z10, Vector3 up) {
        if (K(from) && Float.isFinite(x10) && Float.isFinite(y10) && Float.isFinite(z10)) {
            Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
            Vector3 vector32 = (Vector3) JP.acquire(Vector3.class);
            try {
                if (K(up)) {
                    vector3.set(up.getX(), up.getY(), up.getZ());
                } else {
                    vector3.set(0.0f, 1.0f, 0.0f);
                }
                vector32.set(x10 - from.getX(), y10 - from.getY(), z10 - from.getZ());
                float lengthSquared = vector32.lengthSquared();
                if (Float.isFinite(lengthSquared) && lengthSquared >= 1.0E-8f) {
                    vector32.normalizeLocal();
                    if (K(vector32)) {
                        float lengthSquared2 = vector3.lengthSquared();
                        if (Float.isFinite(lengthSquared2) && lengthSquared2 >= 1.0E-8f) {
                            vector3.normalizeLocal();
                            E0(vector32, vector3, true);
                            JP.release(vector3);
                            JP.release(vector32);
                        }
                        vector3.set(0.0f, 1.0f, 0.0f);
                        E0(vector32, vector3, true);
                        JP.release(vector3);
                        JP.release(vector32);
                    }
                }
            } finally {
                E0(vector32, vector3, true);
                JP.release(vector3);
                JP.release(vector32);
            }
        }
    }

    public com.itsmagic.engine.Engines.Engine.Vector.f W0(com.itsmagic.engine.Engines.Engine.Vector.f store) {
        float j02 = j0();
        float f10 = j02 != 1.0f ? j02 > 0.0f ? 2.0f / j02 : 0.0f : 2.0f;
        float x10 = getX() * f10;
        float y10 = getY() * f10;
        float z10 = getZ() * f10;
        float x11 = getX() * x10;
        float x12 = getX() * y10;
        float x13 = getX() * z10;
        float I10 = I() * x10;
        float y11 = getY() * y10;
        float y12 = getY() * z10;
        float I11 = I() * y10;
        float z11 = getZ() * z10;
        float I12 = I() * z10;
        store.f79883b = 1.0f - (y11 + z11);
        store.f79884c = x12 - I12;
        store.f79885d = x13 + I11;
        store.f79887g = x12 + I12;
        store.f79888i = 1.0f - (z11 + x11);
        store.f79889j = y12 - I10;
        store.f79891l = x13 - I11;
        store.f79892m = y12 + I10;
        store.f79893n = 1.0f - (x11 + y11);
        return store;
    }

    public void X(Vector3 from, float x10, float y10, float z10, Vector3 up, boolean yaw, boolean pitch) {
        e0(x10 - from.getX(), y10 - from.getY(), z10 - from.getZ(), up, yaw, pitch);
    }

    public void Y(Vector3 from, float x10, float y10, float z10, boolean yaw, boolean pitch) {
        e0(x10 - from.getX(), y10 - from.getY(), z10 - from.getZ(), null, yaw, pitch);
    }

    public void Z(Vector3 from, Vector3 to) {
        if (K(from) && K(to)) {
            Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
            Vector3 vector32 = (Vector3) JP.acquire(Vector3.class);
            try {
                vector3.set(0.0f, 1.0f, 0.0f);
                vector32.set(to.getX() - from.getX(), to.getY() - from.getY(), to.getZ() - from.getZ());
                float lengthSquared = vector32.lengthSquared();
                if (Float.isFinite(lengthSquared) && lengthSquared >= 1.0E-8f) {
                    vector32.normalizeLocal();
                    if (K(vector32)) {
                    }
                }
            } finally {
                E0(vector32, vector3, true);
                JP.release(vector3);
                JP.release(vector32);
            }
        }
    }

    public void a0(Vector3 from, Vector3 to, Vector3 up) {
        if (K(from) && K(to)) {
            Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
            Vector3 vector32 = (Vector3) JP.acquire(Vector3.class);
            try {
                if (K(up)) {
                    vector3.set(up.getX(), up.getY(), up.getZ());
                } else {
                    vector3.set(0.0f, 1.0f, 0.0f);
                }
                vector32.set(to.getX() - from.getX(), to.getY() - from.getY(), to.getZ() - from.getZ());
                float lengthSquared = vector32.lengthSquared();
                if (Float.isFinite(lengthSquared) && lengthSquared >= 1.0E-8f) {
                    vector32.normalizeLocal();
                    if (K(vector32)) {
                        float lengthSquared2 = vector3.lengthSquared();
                        if (Float.isFinite(lengthSquared2) && lengthSquared2 >= 1.0E-8f) {
                            vector3.normalizeLocal();
                            E0(vector32, vector3, true);
                            JP.release(vector3);
                            JP.release(vector32);
                        }
                        vector3.set(0.0f, 1.0f, 0.0f);
                        E0(vector32, vector3, true);
                        JP.release(vector3);
                        JP.release(vector32);
                    }
                }
            } finally {
                E0(vector32, vector3, true);
                JP.release(vector3);
                JP.release(vector32);
            }
        }
    }

    public void b0(Vector3 from, Vector3 to, Vector3 up, boolean yaw, boolean pitch) {
        e0(to.getX() - from.getX(), to.getY() - from.getY(), to.getZ() - from.getZ(), up, yaw, pitch);
    }

    public void c0(Vector3 direction, Vector3 up, boolean yaw, boolean pitch) {
        e0(direction.getX(), direction.getY(), direction.getZ(), up, yaw, pitch);
    }

    public void d0(Vector3 direction, boolean yaw, boolean pitch) {
        c0(direction, null, yaw, pitch);
    }

    public Quaternion e(Quaternion to, float blend) {
        return c.h(this, to, blend);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0092  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void e0(float x10, float y10, float z10, Vector3 up, boolean yaw, boolean pitch) {
        Vector3 vector3;
        Vector3 vector32;
        Vector3 vector33;
        if ((!yaw && !pitch) || !Float.isFinite(x10) || !Float.isFinite(y10) || !Float.isFinite(z10)) {
            return;
        }
        Vector3 vector34 = (up == null || K(up)) ? up : null;
        float f10 = x10 * x10;
        float f11 = z10 * z10;
        if ((y10 * y10) + f10 + f11 < 1.0E-8f) {
            return;
        }
        if (yaw && pitch) {
            Vector3 vector35 = (Vector3) JP.acquire(Vector3.class);
            Vector3 vector36 = (Vector3) JP.acquire(Vector3.class);
            try {
                if (vector34 == null) {
                    vector35.set(0.0f, 1.0f, 0.0f);
                } else {
                    vector35.set(vector34.getX(), vector34.getY(), vector34.getZ());
                }
                float lengthSquared = vector35.lengthSquared();
                if (Float.isFinite(lengthSquared) && lengthSquared >= 1.0E-8f) {
                    vector35.normalizeLocal();
                    vector36.set(x10, y10, z10);
                    vector36.normalizeLocal();
                    if (K(vector36)) {
                        JP.release(vector35);
                        JP.release(vector36);
                        return;
                    } else {
                        E0(vector36, vector35, true);
                        JP.release(vector35);
                        JP.release(vector36);
                        return;
                    }
                }
                vector35.set(0.0f, 1.0f, 0.0f);
                vector36.set(x10, y10, z10);
                vector36.normalizeLocal();
                if (K(vector36)) {
                }
            } catch (Throwable th2) {
                JP.release(vector35);
                JP.release(vector36);
                throw th2;
            }
        } else {
            float K02 = K0(f10 + f11);
            float d10 = d(x10, z10);
            float d11 = d(-y10, K02);
            Vector3 vector37 = (Vector3) JP.acquire(Vector3.class);
            Vector3 vector38 = (Vector3) JP.acquire(Vector3.class);
            Vector3 vector39 = (Vector3) JP.acquire(Vector3.class);
            try {
                A(vector37, vector38, vector39);
                float K03 = K0((vector39.getX() * vector39.getX()) + (vector39.getZ() * vector39.getZ()));
                float d12 = d(vector39.getX(), vector39.getZ());
                float d13 = d(-vector39.getY(), K03);
                if (!yaw) {
                    d10 = d12;
                }
                if (!pitch) {
                    d11 = d13;
                }
                Vector3 vector310 = (Vector3) JP.acquire(Vector3.class);
                Vector3 vector311 = (Vector3) JP.acquire(Vector3.class);
                Vector3 vector312 = (Vector3) JP.acquire(Vector3.class);
                try {
                    o(d10, d11, vector310);
                    float dot = vector37.dot(vector310);
                    vector311.set(vector37.getX() - (vector310.getX() * dot), vector37.getY() - (vector310.getY() * dot), vector37.getZ() - (vector310.getZ() * dot));
                    if (vector311.lengthSquared() < 1.0E-10f) {
                        if (vector34 != null) {
                            vector33 = (Vector3) JP.acquire(Vector3.class);
                            vector33.set(vector34.getX(), vector34.getY(), vector34.getZ());
                            if (vector33.lengthSquared() > 1.0E-12f) {
                                vector33.normalizeLocal();
                            } else {
                                vector33.set(0.0f, 1.0f, 0.0f);
                            }
                        } else {
                            vector33 = vector38;
                        }
                        vector311.set(vector33);
                        vector311.crossLocal(vector310);
                        if (vector311.lengthSquared() > 1.0E-12f) {
                            vector311.normalizeLocal();
                        } else {
                            vector311.set(1.0f, 0.0f, 0.0f);
                        }
                        if (vector34 != null) {
                            JP.release(vector33);
                        }
                    } else {
                        vector311.normalizeLocal();
                    }
                    vector312.set(vector310);
                    vector312.crossLocal(vector311);
                    if (vector312.lengthSquared() > 1.0E-12f) {
                        vector312.normalizeLocal();
                    } else {
                        vector312.set(0.0f, 1.0f, 0.0f);
                    }
                    vector3 = vector312;
                    vector32 = vector311;
                    try {
                        y(vector311.getX(), vector312.getX(), vector310.getX(), vector311.getY(), vector312.getY(), vector310.getY(), vector311.getZ(), vector312.getZ(), vector310.getZ());
                        JP.release(vector310);
                        JP.release(vector32);
                        JP.release(vector3);
                    } catch (Throwable th3) {
                        th = th3;
                        JP.release(vector310);
                        JP.release(vector32);
                        JP.release(vector3);
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    vector3 = vector312;
                    vector32 = vector311;
                }
            } finally {
                JP.release(vector37);
                JP.release(vector38);
                JP.release(vector39);
            }
        }
    }

    public boolean equally(float a10) {
        return c.a(this, a10);
    }

    public void f(Quaternion to, float blend) {
        c.i(this, to, blend, this);
    }

    public void f0(Vector3 from, Vector3 to) {
        if (K(from) && K(to)) {
            Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
            Vector3 vector32 = (Vector3) JP.acquire(Vector3.class);
            try {
                vector3.set(0.0f, 1.0f, 0.0f);
                vector32.set(to.getX() - from.getX(), 0.0f, to.getZ() - from.getZ());
                float lengthSquared = vector32.lengthSquared();
                if (Float.isFinite(lengthSquared) && lengthSquared >= 1.0E-8f) {
                    vector32.normalizeLocal();
                    if (K(vector32)) {
                    }
                }
            } finally {
                E0(vector32, vector3, true);
                JP.release(vector3);
                JP.release(vector32);
            }
        }
    }

    public void fixNan() {
        setX(A.b(getX()));
        setY(A.b(getY()));
        setZ(A.b(getZ()));
        G0(A.c(I(), 1.0f));
    }

    public void g0(Vector3 to, Vector3 up) {
        if (K(to)) {
            Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
            Vector3 vector32 = (Vector3) JP.acquire(Vector3.class);
            try {
                if (K(up)) {
                    vector3.set(up.getX(), up.getY(), up.getZ());
                } else {
                    vector3.set(0.0f, 1.0f, 0.0f);
                }
                vector32.set(to.getX(), to.getY(), to.getZ());
                float lengthSquared = vector32.lengthSquared();
                if (Float.isFinite(lengthSquared) && lengthSquared >= 1.0E-8f) {
                    vector32.normalizeLocal();
                    if (K(vector32)) {
                        float lengthSquared2 = vector3.lengthSquared();
                        if (Float.isFinite(lengthSquared2) && lengthSquared2 >= 1.0E-8f) {
                            vector3.normalizeLocal();
                            E0(vector32, vector3, true);
                            JP.release(vector3);
                            JP.release(vector32);
                        }
                        vector3.set(0.0f, 1.0f, 0.0f);
                        E0(vector32, vector3, true);
                        JP.release(vector3);
                        JP.release(vector32);
                    }
                }
            } finally {
                E0(vector32, vector3, true);
                JP.release(vector3);
                JP.release(vector32);
            }
        }
    }

    public float getX() {
        return this.f79463x;
    }

    public float getY() {
        return this.f79464y;
    }

    public float getZ() {
        return this.f79465z;
    }

    public void h0(float w10, float x10, float y10, float z10) {
        float I10 = (((I() * w10) - (getX() * x10)) - (getY() * y10)) - (getZ() * z10);
        float I11 = (((I() * x10) + (getX() * w10)) + (getY() * z10)) - (getZ() * y10);
        float I12 = (((I() * y10) + (getY() * w10)) - (getX() * z10)) + (getZ() * x10);
        setZ((((I() * z10) + (w10 * getZ())) + (getX() * y10)) - (getY() * x10));
        G0(I10);
        setX(I11);
        setY(I12);
    }

    public void i0(Quaternion q12) {
        float I10 = (((I() * q12.I()) - (getX() * q12.getX())) - (getY() * q12.getY())) - (getZ() * q12.getZ());
        float I11 = (((I() * q12.getX()) + (q12.I() * getX())) + (getY() * q12.getZ())) - (getZ() * q12.getY());
        float I12 = (((I() * q12.getY()) + (q12.I() * getY())) - (getX() * q12.getZ())) + (getZ() * q12.getX());
        setZ((((I() * q12.getZ()) + (q12.I() * getZ())) + (getX() * q12.getY())) - (getY() * q12.getX()));
        G0(I10);
        setX(I11);
        setY(I12);
    }

    public Quaternion clone() {
        return new Quaternion(I(), getX(), getY(), getZ());
    }

    public float j0() {
        return (I() * I()) + (getX() * getX()) + (getY() * getY()) + (getZ() * getZ());
    }

    public Quaternion k0() {
        float H10 = H();
        return new Quaternion(I() / H10, getX() / H10, getY() / H10, getZ() / H10);
    }

    public boolean l0() {
        float H10 = H();
        if (H10 <= 0.0f) {
            return true;
        }
        G0(I() / H10);
        setX(getX() / H10);
        setY(getY() / H10);
        setZ(getZ() / H10);
        return true;
    }

    public void m0(float x10, float y10, float z10) {
        Quaternion quaternion = (Quaternion) JP.acquire(Quaternion.class);
        if (x10 != 0.0f) {
            try {
                i0(m(1.0f, 0.0f, 0.0f, x10, quaternion));
            } catch (Throwable th2) {
                JP.release(quaternion);
                throw th2;
            }
        }
        if (y10 != 0.0f) {
            i0(m(0.0f, 1.0f, 0.0f, y10, quaternion));
        }
        if (z10 != 0.0f) {
            i0(m(0.0f, 0.0f, 1.0f, z10, quaternion));
        }
        l0();
        JP.release(quaternion);
    }

    public Vector3 n0(float x10, float y10, float z10, Vector3 out) {
        return o0(x10, y10, z10, out, true);
    }

    public Vector3 o0(float x10, float y10, float z10, Vector3 out, boolean convertToLeftHanded) {
        double x11 = getX();
        double y11 = getY();
        double z11 = getZ();
        double I10 = I();
        double d10 = x10;
        double d11 = y10;
        double d12 = z10;
        double d13 = ((y11 * d12) - (z11 * d11)) * 2.0d;
        double d14 = ((z11 * d10) - (x11 * d12)) * 2.0d;
        double d15 = ((x11 * d11) - (y11 * d10)) * 2.0d;
        double d16 = d10 + (I10 * d13) + ((y11 * d15) - (z11 * d14));
        double d17 = d11 + (I10 * d14) + ((z11 * d13) - (x11 * d15));
        double d18 = d12 + (I10 * d15) + ((x11 * d14) - (y11 * d13));
        if (!convertToLeftHanded) {
            d18 = -d18;
        }
        Vector3 vector3 = out == null ? new Vector3() : out;
        vector3.set((float) d16, (float) d17, (float) d18);
        return vector3;
    }

    public Vector3 p0(Vector3 v10) {
        return s0(v10, true);
    }

    public boolean q(float w10, float x10, float y10, float z10) {
        return c.b(this, w10, x10, y10, z10);
    }

    public Vector3 q0(Vector3 v10, Vector3 out) {
        r0(v10, out, true);
        return out;
    }

    public boolean r(Quaternion q10) {
        return c.c(this, q10);
    }

    public Vector3 r0(Vector3 v10, Vector3 out, boolean convertToLeftHanded) {
        return o0(v10.getX(), v10.getY(), v10.getZ(), out, convertToLeftHanded);
    }

    public boolean s(Quat4f q10) {
        return c.d(this, q10);
    }

    public Vector3 s0(Vector3 v10, boolean convertToLeftHanded) {
        Vector3 vector3 = new Vector3();
        r0(v10, vector3, convertToLeftHanded);
        return vector3;
    }

    public void set(Float[] array) {
        setX(array[0].floatValue());
        setY(array[1].floatValue());
        setZ(array[2].floatValue());
        G0(array[3].floatValue());
    }

    public void setFromIndex(float value, int idx) {
        if (idx == 0) {
            G0(value);
        } else if (idx != 1) {
            if (idx != 2) {
                if (idx != 3) {
                    return;
                }
                setZ(value);
            }
            setY(value);
            setZ(value);
        }
        setX(value);
        setY(value);
        setZ(value);
    }

    public float setX(float x10) {
        if (Float.isNaN(x10)) {
            throw new IllegalArgumentException("argument can't be NaN");
        }
        this.f79463x = x10;
        return x10;
    }

    public float setY(float y10) {
        if (Float.isNaN(y10)) {
            throw new IllegalArgumentException("argument can't be NaN");
        }
        this.f79464y = y10;
        return y10;
    }

    public float setZ(float z10) {
        if (Float.isNaN(z10)) {
            throw new IllegalArgumentException("argument can't be NaN");
        }
        this.f79465z = z10;
        return z10;
    }

    public void t0(float nw, float nx, float ny, float nz) {
        G0(nw);
        setX(nx);
        setY(ny);
        setZ(nz);
    }

    @NonNull
    public String toString() {
        return "( " + getX() + " , " + getY() + " , " + getZ() + ", " + I() + " )";
    }

    public void u() {
        fixNan();
        if (I() == 0.0f && getX() == 0.0f && getY() == 0.0f && getZ() == 0.0f) {
            G0(1.0f);
            l0();
        }
    }

    public void u0(Quaternion quaternion) {
        if (quaternion == null) {
            throw new NullPointerException("Quaternion can't be null");
        }
        G0(quaternion.I());
        setX(quaternion.getX());
        setY(quaternion.getY());
        setZ(quaternion.getZ());
    }

    public void v(float xe2, float ye2, float ze2) {
        float o10 = Nc.b.o(xe2);
        float o11 = Nc.b.o(ye2);
        float o12 = Nc.b.o(ze2) * 0.5f;
        float sin = FastMath.sin(o12);
        float cos = FastMath.cos(o12);
        float f10 = o11 * 0.5f;
        float sin2 = FastMath.sin(f10);
        float cos2 = FastMath.cos(f10);
        float f11 = o10 * 0.5f;
        float sin3 = FastMath.sin(f11);
        float cos3 = FastMath.cos(f11);
        float f12 = cos2 * cos;
        float f13 = sin2 * sin;
        float f14 = cos2 * sin;
        float f15 = sin2 * cos;
        G0((f12 * cos3) - (f13 * sin3));
        setX((f12 * sin3) + (f13 * cos3));
        setY((f15 * cos3) + (f14 * sin3));
        setZ((f14 * cos3) - (f15 * sin3));
        l0();
    }

    public void v0(com.jme3.math.Quaternion quaternion) {
        G0(quaternion.getW());
        setX(quaternion.getX());
        setY(quaternion.getY());
        setZ(quaternion.getZ());
    }

    public void w(Vector3 euler) {
        v(euler.getX(), euler.getY(), euler.getZ());
    }

    public void w0(Quat4f q10) {
        G0(q10.f92850w);
        setX(q10.f92851x);
        setY(q10.f92852y);
        setZ(q10.f92853z);
        l0();
    }

    public void x() {
        G0(1.0f);
        setX(0.0f);
        setY(0.0f);
        setZ(0.0f);
    }

    public void x0(float x10) {
        v(x10, E(), F());
    }

    public Quaternion y(float m00, float m01, float m02, float m10, float m11, float m12, float m20, float m21, float m22) {
        if (!Float.isFinite(m00) || !Float.isFinite(m01) || !Float.isFinite(m02) || !Float.isFinite(m10) || !Float.isFinite(m11) || !Float.isFinite(m12) || !Float.isFinite(m20) || !Float.isFinite(m21) || !Float.isFinite(m22)) {
            C0();
            return this;
        }
        float f10 = (m00 * m00) + (m10 * m10) + (m20 * m20);
        if (f10 != 1.0f && f10 != 0.0f) {
            float sqrt = 1.0f / FastMath.sqrt(f10);
            m00 *= sqrt;
            m10 *= sqrt;
            m20 *= sqrt;
        }
        float f11 = (m01 * m01) + (m11 * m11) + (m21 * m21);
        if (f11 != 1.0f && f11 != 0.0f) {
            float sqrt2 = 1.0f / FastMath.sqrt(f11);
            m01 *= sqrt2;
            m11 *= sqrt2;
            m21 *= sqrt2;
        }
        float f12 = (m02 * m02) + (m12 * m12) + (m22 * m22);
        if (f12 != 1.0f && f12 != 0.0f) {
            float sqrt3 = 1.0f / FastMath.sqrt(f12);
            m02 *= sqrt3;
            m12 *= sqrt3;
            m22 *= sqrt3;
        }
        float f13 = m00 + m11 + m22;
        if (f13 >= 0.0f) {
            float sqrt4 = FastMath.sqrt(f13 + 1.0f);
            if (sqrt4 <= 0.0f || !Float.isFinite(sqrt4)) {
                C0();
                return this;
            }
            G0(sqrt4 * 0.5f);
            float f14 = 0.5f / sqrt4;
            setX((m21 - m12) * f14);
            setY((m02 - m20) * f14);
            setZ((m10 - m01) * f14);
        } else if (m00 > m11 && m00 > m22) {
            float sqrt5 = FastMath.sqrt(((m00 + 1.0f) - m11) - m22);
            if (sqrt5 <= 0.0f || !Float.isFinite(sqrt5)) {
                C0();
                return this;
            }
            setX(sqrt5 * 0.5f);
            float f15 = 0.5f / sqrt5;
            setY((m10 + m01) * f15);
            setZ((m02 + m20) * f15);
            G0((m21 - m12) * f15);
        } else if (m11 > m22) {
            float sqrt6 = FastMath.sqrt(((m11 + 1.0f) - m00) - m22);
            if (sqrt6 <= 0.0f || !Float.isFinite(sqrt6)) {
                C0();
                return this;
            }
            setY(sqrt6 * 0.5f);
            float f16 = 0.5f / sqrt6;
            setX((m10 + m01) * f16);
            setZ((m21 + m12) * f16);
            G0((m02 - m20) * f16);
        } else {
            float sqrt7 = FastMath.sqrt(((m22 + 1.0f) - m00) - m11);
            if (sqrt7 <= 0.0f || !Float.isFinite(sqrt7)) {
                C0();
                return this;
            }
            setZ(sqrt7 * 0.5f);
            float f17 = 0.5f / sqrt7;
            setX((m02 + m20) * f17);
            setY((m21 + m12) * f17);
            G0((m10 - m01) * f17);
        }
        return this;
    }

    public void y0(float y10) {
        v(D(), y10, F());
    }

    public Quaternion z(e matrix) {
        return y(matrix.f79871b, matrix.f79872c, matrix.f79873d, matrix.f79874e, matrix.f79875g, matrix.f79876i, matrix.f79877j, matrix.f79878k, matrix.f79879l);
    }

    public void z0(float z10) {
        v(D(), E(), z10);
    }

    public String toString(int decimals) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("( ");
        Locale locale = Locale.US;
        sb2.append(String.format(locale, "%." + decimals + "f", Float.valueOf(I())));
        sb2.append(" , ");
        sb2.append(String.format(locale, "%." + decimals + "f", Float.valueOf(getX())));
        sb2.append(" , ");
        sb2.append(String.format(locale, "%." + decimals + "f", Float.valueOf(getY())));
        sb2.append(" , ");
        sb2.append(String.format(locale, "%." + decimals + "f", Float.valueOf(getZ())));
        sb2.append(" )");
        return sb2.toString();
    }

    public Quaternion(Quat4f q10) {
        G0(q10.f92850w);
        setX(q10.f92851x);
        setY(q10.f92852y);
        setZ(q10.f92853z);
    }

    public void set(float[] array) {
        setX(array[0]);
        setY(array[1]);
        setZ(array[2]);
        G0(array[3]);
    }

    public Quaternion(com.itsmagic.engine.Engines.Engine.Vector.f rotationMatrix) {
        rotationMatrix.r1(this);
    }

    public Quaternion(com.jme3.math.Quaternion q10) {
        G0(q10.getW());
        setX(q10.getX());
        setY(q10.getY());
        setZ(q10.getZ());
    }

    public Quaternion(Quaternion q10) {
        G0(q10.I());
        setX(q10.getX());
        setY(q10.getY());
        setZ(q10.getZ());
    }

    public Quaternion(Vector4 q10) {
        G0(q10.f());
        setX(q10.getX());
        setY(q10.getY());
        setZ(q10.getZ());
    }

    public Quaternion(float w10, float x10, float y10, float z10) {
        G0(w10);
        setX(x10);
        setY(y10);
        setZ(z10);
    }

    public Quaternion(double w10, double x10, double y10, double z10) {
        G0((float) w10);
        setX((float) x10);
        setY((float) y10);
        setZ((float) z10);
    }

    public Quaternion(float x10, float y10, float z10) {
        v(x10, y10, z10);
    }

    public Quaternion(Float[] array) {
        setX(array[0].floatValue());
        setY(array[1].floatValue());
        setZ(array[2].floatValue());
        G0(array[3].floatValue());
    }

    public Quaternion(float[] array) {
        setX(array[0]);
        setY(array[1]);
        setZ(array[2]);
        G0(array[3]);
    }
}
