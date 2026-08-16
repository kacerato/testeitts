package na;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.DayNightCycle;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.m;
import ga.o;
import ga.p;

public class i extends NoCodeNode implements F {

    public static final String f97916h = "SetDayNightLongitude";

    public static final int f97917i = 0;

    public final NoCodeSlot[] f97918g = {new NoCodeSlot("Longitude", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_LONGITUDE))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new i();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return i.class;
        }

        @Override
        public String c() {
            return i.f97916h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, i.class);
        }

        @Override
        public String e() {
            return "Actions/DayNight";
        }

        @Override
        public String f() {
            return "Set Day Night Longitude";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public i() {
        this.serializedNodeType = f97916h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f97918g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Set Day Night Longitude";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "0" : "";
    }

    @Override
    public void m0() {
        try {
            DayNightCycle a10 = C14368b.a();
            if (a10 != null) {
                a10.setLongitude(m.V(Q(this.f97918g[0])));
            }
        } finally {
            t();
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SET_DAY_NIGHT_LONGITUDE);
    }
}
