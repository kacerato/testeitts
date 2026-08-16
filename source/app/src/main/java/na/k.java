package na;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.DayNightCycle;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SunLight;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.m;
import ga.o;
import ga.p;

public class k extends NoCodeNode implements F {

    public static final String f97922h = "SetTimeOfDay";

    public static final int f97923i = 0;

    public final NoCodeSlot[] f97924g = {new NoCodeSlot("Hour", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_HOUR))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new k();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return k.class;
        }

        @Override
        public String c() {
            return k.f97922h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, k.class);
        }

        @Override
        public String e() {
            return "Actions/DayNight";
        }

        @Override
        public String f() {
            return "Set Time Of Day";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public k() {
        this.serializedNodeType = f97922h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f97924g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Set Time Of Day";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "12" : "";
    }

    @Override
    public void m0() {
        Vector3 vector3;
        GameObject gameObject;
        Quaternion quaternion;
        Object obj = null;
        try {
            SunLight b10 = C14368b.b();
            if (b10 != null && (gameObject = b10.f79250n) != null && gameObject.transform != null) {
                float V10 = m.V(Q(this.f97924g[0]));
                DayNightCycle dayNightCycle = (DayNightCycle) b10.f79250n.d0(DayNightCycle.class);
                if (dayNightCycle != null) {
                    dayNightCycle.setCurrentTimeOfDay(V10);
                    t();
                    return;
                }
                vector3 = (Vector3) e(Vector3.class);
                try {
                    b10.f79250n.transform.a0(vector3);
                    quaternion = (Quaternion) e(Quaternion.class);
                } catch (Throwable th2) {
                    th = th2;
                }
                try {
                    Z8.a.c(vector3, 0.0f, quaternion);
                    Z8.a.a(b10, V10, 0.0f, quaternion);
                    if (quaternion != null) {
                        q0(quaternion);
                    }
                    if (vector3 != null) {
                        q0(vector3);
                    }
                    t();
                    return;
                } catch (Throwable th3) {
                    th = th3;
                    obj = quaternion;
                    if (obj != null) {
                        q0(obj);
                    }
                    if (vector3 != null) {
                        q0(vector3);
                    }
                    t();
                    throw th;
                }
            }
            t();
        } catch (Throwable th4) {
            th = th4;
            vector3 = null;
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SET_TIME_OF_DAY);
    }
}
