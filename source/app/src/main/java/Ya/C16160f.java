package ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.C13308d;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;

public class C16160f extends NoCodeNode implements F {

    public static final String f130125i = "IsGroundedBranch";

    public static final int f130126j = 0;

    public static final int f130127k = 0;

    public static final int f130128l = 1;

    public final NoCodeSlot[] f130129g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT))};

    public final NoCodeSlot[] f130130h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C16160f();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C16160f.class;
        }

        @Override
        public String c() {
            return C16160f.f130125i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C16160f.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Queries";
        }

        @Override
        public String f() {
            return "Is Grounded";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C16160f() {
        H h10 = H.BRANCH;
        this.f130130h = new NoCodeSlot[]{new NoCodeSlot("On True", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ON_TRUE)), new NoCodeSlot("On False", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ON_FALSE))};
        this.serializedNodeType = f130125i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f130129g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f130130h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Is Grounded";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : "";
    }

    @Override
    public void m0() {
        u(Aa.a.a(this, this.f79021a, this.f130129g[0]) ? this.f130130h[0] : this.f130130h[1]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_IS_GROUNDED_BRANCH);
    }
}
