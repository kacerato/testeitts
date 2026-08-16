package na;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.DayNightCycle;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SunLight;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;

public final class C14368b {

    public static final float f97903a = 24.0f;

    public static final float f97904b = 6.2831855f;

    public static final float f97905c = 0.2617994f;

    public static DayNightCycle a() {
        DayNightCycle dayNightCycle = (DayNightCycle) com.itsmagic.engine.Engines.Engine.World.a.k(DayNightCycle.class);
        return dayNightCycle == null ? (DayNightCycle) com.itsmagic.engine.Engines.Engine.World.a.n(DayNightCycle.class) : dayNightCycle;
    }

    public static SunLight b() {
        SunLight sunLight = (SunLight) com.itsmagic.engine.Engines.Engine.World.a.k(SunLight.class);
        return sunLight == null ? (SunLight) com.itsmagic.engine.Engines.Engine.World.a.n(SunLight.class) : sunLight;
    }

    public static float c(float hour) {
        return Nc.b.I((float) (-Math.cos(h(hour))));
    }

    public static float d(float hour) {
        return Nc.b.I((float) Math.cos(h(hour)));
    }

    public static float e(float hour) {
        return Nc.b.I((float) (-Math.sin(h(hour))));
    }

    public static float f(float hour) {
        return Nc.b.I((float) Math.sin(h(hour)));
    }

    public static Float g() {
        GameObject gameObject;
        DayNightCycle a10 = a();
        if (a10 != null && a10.findSunLight() != null) {
            return Float.valueOf(a10.getCurrentTimeOfDay());
        }
        SunLight b10 = b();
        if (b10 == null || (gameObject = b10.f79250n) == null || gameObject.transform == null) {
            return null;
        }
        DayNightCycle dayNightCycle = (DayNightCycle) gameObject.d0(DayNightCycle.class);
        return Float.valueOf(Z8.a.e(b10.f79250n.transform.a0(new Vector3()), dayNightCycle != null ? dayNightCycle.getLongitude() : 0.0f, dayNightCycle != null ? dayNightCycle.getOrientationOffset() : null));
    }

    public static float h(float hour) {
        return (Z8.a.h(hour) - 12.0f) * 0.2617994f;
    }
}
