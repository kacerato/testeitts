package ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.m;
import ga.o;
import ga.p;

public class C16157c extends NoCodeNode implements F {

    public static final String f130106i = "Is3DAimedBranch";

    public static final int f130107j = 0;

    public static final int f130108k = 0;

    public static final int f130109l = 1;

    public final NoCodeSlot[] f130110g = {new NoCodeSlot("Max Distance", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_MAX_DISTANCE))};

    public final NoCodeSlot[] f130111h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C16157c();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C16157c.class;
        }

        @Override
        public String c() {
            return C16157c.f130106i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C16157c.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Queries";
        }

        @Override
        public String f() {
            return "Is 3D Aimed";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C16157c() {
        H h10 = H.BRANCH;
        this.f130111h = new NoCodeSlot[]{new NoCodeSlot("On True", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ON_TRUE)), new NoCodeSlot("On False", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ON_FALSE))};
        this.serializedNodeType = f130106i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f130110g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f130111h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Is 3D Aimed";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "1000" : "";
    }

    @Override
    public void m0() {
        u(Ja.a.f(this.f79021a, m.V(Q(this.f130110g[0]))) ? this.f130111h[0] : this.f130111h[1]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_IS_3D_AIMED_BRANCH);
    }
}
