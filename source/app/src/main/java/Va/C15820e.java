package va;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import ga.C13308d;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;
import gb.C13317e;

public class C15820e extends NoCodeNode implements F {

    public static final String f121399i = "GetParent";

    public static final int f121400j = 0;

    public static final int f121401k = 0;

    public final NoCodeSlot[] f121402g;

    public final NoCodeSlot[] f121403h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C15820e();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15820e.class;
        }

        @Override
        public String c() {
            return C15820e.f121399i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15820e.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Hierarchy";
        }

        @Override
        public String f() {
            return "Get Parent";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C15820e() {
        H h10 = H.GAME_OBJECT;
        this.f121402g = new NoCodeSlot[]{new NoCodeSlot("Object", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT))};
        this.f121403h = new NoCodeSlot[]{new NoCodeSlot("Parent", h10).c(Lang.l(Lang.T.NOCODE_SLOT_PARENT))};
        this.serializedNodeType = f121399i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f121402g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f121403h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Parent";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : "";
    }

    @Override
    public void m0() {
        GameObject b10 = Aa.b.b(this, this.f79021a, this.f121402g[0]);
        GameObject gameObject = C13317e.J(b10) ? b10.f79294k : null;
        y0(this.f121403h[0], C13317e.J(gameObject) ? gameObject : null);
        u(this.f121403h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_PARENT);
    }
}
