package na;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.DayNightCycle;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SunLight;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.m;
import ga.o;
import ga.p;

public class C14374h extends NoCodeNode implements F {

    public static final String f97913h = "SetDayNightEnabled";

    public static final int f97914i = 0;

    public final NoCodeSlot[] f97915g = {new NoCodeSlot("Enabled", H.BOOLEAN).c(Lang.l(Lang.T.NOCODE_SLOT_ENABLED))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C14374h();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C14374h.class;
        }

        @Override
        public String c() {
            return C14374h.f97913h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C14374h.class);
        }

        @Override
        public String e() {
            return "Actions/DayNight";
        }

        @Override
        public String f() {
            return "Set Day Night Enabled";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C14374h() {
        this.serializedNodeType = f97913h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f97915g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Set Day Night Enabled";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "true" : "";
    }

    @Override
    public void m0() {
        try {
            SunLight b10 = C14368b.b();
            if (b10 != null && b10.f79250n != null) {
                boolean O10 = m.O(Q(this.f97915g[0]));
                DayNightCycle dayNightCycle = (DayNightCycle) b10.f79250n.d0(DayNightCycle.class);
                if (dayNightCycle == null && O10) {
                    dayNightCycle = new DayNightCycle();
                    b10.f79250n.r(dayNightCycle);
                }
                if (dayNightCycle != null) {
                    dayNightCycle.setEnabled(O10);
                }
                t();
            }
        } finally {
            t();
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SET_DAY_NIGHT_ENABLED);
    }
}
