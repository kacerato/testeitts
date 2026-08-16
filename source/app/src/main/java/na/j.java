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

public class j extends NoCodeNode implements F {

    public static final String f97919h = "SetDayNightSpeed";

    public static final int f97920i = 0;

    public final NoCodeSlot[] f97921g = {new NoCodeSlot("Speed", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_SPEED))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new j();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return j.class;
        }

        @Override
        public String c() {
            return j.f97919h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, j.class);
        }

        @Override
        public String e() {
            return "Actions/DayNight";
        }

        @Override
        public String f() {
            return "Set Day Night Speed";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public j() {
        this.serializedNodeType = f97919h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f97921g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Set Day Night Speed";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "1" : "";
    }

    @Override
    public void m0() {
        try {
            DayNightCycle a10 = C14368b.a();
            if (a10 != null) {
                a10.setSpeed(m.V(Q(this.f97921g[0])));
            }
        } finally {
            t();
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SET_DAY_NIGHT_SPEED);
    }
}
