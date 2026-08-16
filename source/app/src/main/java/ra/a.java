package Ra;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;

public class a extends NoCodeNode implements F {

    public static final String f22630i = "Branch";

    public static final int f22631j = 0;

    public static final int f22632k = 0;

    public static final int f22633l = 1;

    public final NoCodeSlot[] f22634g = {new NoCodeSlot("Condition", H.BOOLEAN).c(Lang.l(Lang.T.NOCODE_SLOT_CONDITION))};

    public final NoCodeSlot[] f22635h;

    public class C0547a implements p {
        @Override
        public NoCodeNode a() {
            return new a();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return a.class;
        }

        @Override
        public String c() {
            return a.f22630i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, a.class);
        }

        @Override
        public String e() {
            return "Flow";
        }

        @Override
        public String f() {
            return a.f22630i;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new C0547a());
    }

    public a() {
        H h10 = H.BRANCH;
        this.f22635h = new NoCodeSlot[]{new NoCodeSlot("On True", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ON_TRUE)), new NoCodeSlot("On False", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ON_FALSE))};
        this.serializedNodeType = f22630i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f22634g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f22635h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return f22630i;
    }

    @Override
    public Ac.b O() {
        return Theme.T.NODEGRAPH_SEMAPHORE_TOPBAR;
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "false" : "";
    }

    @Override
    public void m0() {
        u(ga.m.O(Q(this.f22634g[0])) ? this.f22635h[0] : this.f22635h[1]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_BRANCH);
    }
}
