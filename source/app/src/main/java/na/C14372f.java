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
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import ga.EnumC13304B;
import ga.H;
import ga.o;
import ga.p;

public class C14372f extends NoCodeNode {

    public static final String f97909h = "GetTimeOfDay";

    public static final int f97910i = 0;

    public final NoCodeSlot[] f97911g = {new NoCodeSlot("Hour", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_HOUR))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C14372f();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C14372f.class;
        }

        @Override
        public String c() {
            return C14372f.f97909h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C14372f.class);
        }

        @Override
        public String e() {
            return "Actions/DayNight";
        }

        @Override
        public String f() {
            return "Get Time Of Day";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C14372f() {
        this.serializedNodeType = f97909h;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f97911g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Time Of Day";
    }

    @Override
    public void m0() {
        GameObject gameObject;
        SunLight b10 = C14368b.b();
        if (b10 == null || (gameObject = b10.f79250n) == null || gameObject.transform == null) {
            u(this.f97911g[0]);
            return;
        }
        DayNightCycle dayNightCycle = (DayNightCycle) gameObject.d0(DayNightCycle.class);
        float longitude = dayNightCycle != null ? dayNightCycle.getLongitude() : 0.0f;
        Vector3 vector3 = (Vector3) e(Vector3.class);
        b10.f79250n.transform.a0(vector3);
        float e10 = Z8.a.e(vector3, longitude, dayNightCycle != null ? dayNightCycle.getOrientationOffset() : null);
        q0(vector3);
        y0(this.f97911g[0], Float.valueOf(e10));
        u(this.f97911g[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_TIME_OF_DAY);
    }
}
