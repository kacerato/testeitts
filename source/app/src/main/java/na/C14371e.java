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

public class C14371e extends AbstractC14367a {

    public static final String f97908i = "GetSunriseFactor";

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C14371e();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C14371e.class;
        }

        @Override
        public String c() {
            return C14371e.f97908i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C14371e.class);
        }

        @Override
        public String e() {
            return "Actions/DayNight";
        }

        @Override
        public String f() {
            return "Get Sunrise Factor";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C14371e() {
        super(f97908i);
    }

    @Override
    public float G0(float hour) {
        return C14368b.e(hour);
    }

    @Override
    public String H0() {
        return "Get Sunrise Factor";
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
        return Lang.l(Lang.T.NOCODE_GET_SUNRISE_FACTOR);
    }
}
