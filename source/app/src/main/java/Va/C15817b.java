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
import ga.m;
import ga.o;
import ga.p;
import gb.C13317e;

public class C15817b extends NoCodeNode implements F {

    public static final String f121383i = "GetChildByIndex";

    public static final int f121384j = 0;

    public static final int f121385k = 1;

    public static final int f121386l = 0;

    public final NoCodeSlot[] f121387g;

    public final NoCodeSlot[] f121388h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C15817b();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15817b.class;
        }

        @Override
        public String c() {
            return C15817b.f121383i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15817b.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Hierarchy";
        }

        @Override
        public String f() {
            return "Get Child By Index";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C15817b() {
        H h10 = H.GAME_OBJECT;
        this.f121387g = new NoCodeSlot[]{new NoCodeSlot("Object", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Index", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_INDEX))};
        this.f121388h = new NoCodeSlot[]{new NoCodeSlot("Child", h10).c(Lang.l(Lang.T.NOCODE_SLOT_CHILD))};
        this.serializedNodeType = f121383i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f121387g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f121388h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Child By Index";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : inputIndex == 1 ? "0" : "";
    }

    @Override
    public void m0() {
        int round;
        GameObject b10 = Aa.b.b(this, this.f79021a, this.f121387g[0]);
        GameObject C10 = (!C13317e.J(b10) || (round = Math.round(m.V(Q(this.f121387g[1])))) < 0 || round >= b10.D()) ? null : b10.C(round);
        y0(this.f121388h[0], C13317e.J(C10) ? C10 : null);
        u(this.f121388h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_CHILD_BY_INDEX);
    }
}
