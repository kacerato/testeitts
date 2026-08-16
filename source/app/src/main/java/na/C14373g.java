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

public class C14373g extends AbstractC14367a {

    public static final String f97912i = "GetTwilightFactor";

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C14373g();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C14373g.class;
        }

        @Override
        public String c() {
            return C14373g.f97912i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C14373g.class);
        }

        @Override
        public String e() {
            return "Actions/DayNight";
        }

        @Override
        public String f() {
            return "Get Twilight Factor";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C14373g() {
        super(f97912i);
    }

    @Override
    public float G0(float hour) {
        return C14368b.f(hour);
    }

    @Override
    public String H0() {
        return "Get Twilight Factor";
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
        return Lang.l(Lang.T.NOCODE_GET_TWILIGHT_FACTOR);
    }
}
