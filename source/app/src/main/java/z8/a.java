package Z8;

import Nc.b;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SunLight;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;

public final class a {

    public static final float f31077a = 1.0f;

    public static final float f31078b = 0.0f;

    public static final float f31079c = 24.0f;

    public static final float f31080d = 0.016666668f;

    public static final float f31081e = 6.2831855f;

    public static final float f31082f = 0.2617994f;

    public static final float f31083g = 3.8197186f;

    public static boolean a(SunLight sunLight, float hourOfDay, float longitude, Quaternion orientationOffset) {
        GameObject gameObject;
        if (sunLight == null || (gameObject = sunLight.f79250n) == null || gameObject.transform == null) {
            return false;
        }
        Vector3 b10 = b(hourOfDay, longitude, new Vector3());
        if (orientationOffset != null) {
            orientationOffset.q0(b10, b10);
            if (b10.lengthSquared() > 1.0E-6f) {
                b10.normalizeLocal();
            }
        }
        sunLight.f79250n.transform.x3(Quaternion.Q(b10));
        return true;
    }

    public static Vector3 b(float hourOfDay, float longitude, Vector3 out) {
        if (out == null) {
            out = new Vector3();
        }
        float d10 = d(i(longitude));
        double radians = (float) Math.toRadians(Math.abs(d10));
        float cos = (float) Math.cos(radians);
        float sin = (float) Math.sin(radians);
        float f10 = d10 < 0.0f ? -1.0f : 1.0f;
        double h10 = (h(hourOfDay) - 12.0f) * 0.2617994f;
        float sin2 = (float) Math.sin(h10);
        float f11 = -((float) Math.cos(h10));
        out.set(sin2, cos * f11, f11 * sin * f10);
        if (out.lengthSquared() > 1.0E-6f) {
            out.normalizeLocal();
        } else {
            out.set(0.0f, -1.0f, 0.0f);
        }
        return out;
    }

    public static Quaternion c(Vector3 worldDirection, float longitude, Quaternion out) {
        if (worldDirection == null) {
            worldDirection = new Vector3(0.0f, -1.0f, 0.0f);
        }
        if (worldDirection.lengthSquared() <= 1.0E-6f) {
            worldDirection = new Vector3(0.0f, -1.0f, 0.0f);
        }
        Vector3 vector3 = new Vector3(worldDirection);
        vector3.normalizeLocal();
        Vector3 b10 = b(e(vector3, longitude, null), longitude, new Vector3());
        Quaternion Q10 = Quaternion.Q(vector3);
        Quaternion g10 = g(Quaternion.Q(b10), new Quaternion());
        if (out == null) {
            out = new Quaternion(Q10);
        } else {
            out.u0(Q10);
        }
        out.i0(g10);
        out.l0();
        return out;
    }

    public static float d(float longitude) {
        return b.E(-90.0f, longitude, 90.0f);
    }

    public static float e(Vector3 worldDirection, float longitude, Quaternion orientationOffset) {
        if (worldDirection == null || worldDirection.lengthSquared() <= 1.0E-6f) {
            return 12.0f;
        }
        Vector3 vector3 = new Vector3(worldDirection);
        vector3.normalizeLocal();
        if (orientationOffset != null) {
            g(orientationOffset, new Quaternion()).q0(vector3, vector3);
            if (vector3.lengthSquared() > 1.0E-6f) {
                vector3.normalizeLocal();
            }
        }
        float d10 = d(i(longitude));
        double radians = (float) Math.toRadians(Math.abs(d10));
        return h((((float) Math.atan2(vector3.getX(), (vector3.getY() * (-((float) Math.cos(radians)))) + (vector3.getZ() * (-(((float) Math.sin(radians)) * (d10 < 0.0f ? -1.0f : 1.0f)))))) * 3.8197186f) + 12.0f);
    }

    public static float f(float speed) {
        return speed * 0.016666668f;
    }

    public static Quaternion g(Quaternion quaternion, Quaternion out) {
        if (out == null) {
            out = new Quaternion();
        }
        if (quaternion == null) {
            out.C0();
            return out;
        }
        float I10 = (quaternion.I() * quaternion.I()) + (quaternion.getX() * quaternion.getX()) + (quaternion.getY() * quaternion.getY()) + (quaternion.getZ() * quaternion.getZ());
        if (I10 <= 1.0E-6f) {
            out.C0();
            return out;
        }
        float f10 = 1.0f / I10;
        out.t0(quaternion.I() * f10, (-quaternion.getX()) * f10, (-quaternion.getY()) * f10, (-quaternion.getZ()) * f10);
        return out;
    }

    public static float h(float hour) {
        float f10 = hour % 24.0f;
        return f10 < 0.0f ? f10 + 24.0f : f10;
    }

    public static float i(float longitude) {
        return longitude * 90.0f;
    }
}
