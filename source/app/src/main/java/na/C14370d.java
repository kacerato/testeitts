package na;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.o;
import ga.p;

public class C14370d extends AbstractC14367a {

    public static final String f97907i = "GetNoonFactor";

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C14370d();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C14370d.class;
        }

        @Override
        public String c() {
            return C14370d.f97907i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C14370d.class);
        }

        @Override
        public String e() {
            return "Actions/DayNight";
        }

        @Override
        public String f() {
            return "Get Noon Factor";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C14370d() {
        super(f97907i);
    }

    @Override
    public float G0(float hour) {
        return C14368b.d(hour);
    }

    @Override
    public String H0() {
        return "Get Noon Factor";
    }

    @Override
    public NoCodeSlot[] J() {
        return super.J();
    }

    @Override
    public EnumC13304B M() {
        return super.M();
    }

    @Override
    public String N(NoCodeData graphData) {
        return super.N(graphData);
    }

    @Override
    public void m0() {
        super.m0();
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_NOON_FACTOR);
    }
}
