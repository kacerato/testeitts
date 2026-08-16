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

public class C15818c extends NoCodeNode implements F {

    public static final String f121389i = "GetChildCount";

    public static final int f121390j = 0;

    public static final int f121391k = 0;

    public final NoCodeSlot[] f121392g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT))};

    public final NoCodeSlot[] f121393h = {new NoCodeSlot("Child Count", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_CHILD_COUNT))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C15818c();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15818c.class;
        }

        @Override
        public String c() {
            return C15818c.f121389i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15818c.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Hierarchy";
        }

        @Override
        public String f() {
            return "Get Child Count";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C15818c() {
        this.serializedNodeType = f121389i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f121392g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f121393h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Child Count";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : "";
    }

    @Override
    public void m0() {
        GameObject b10 = Aa.b.b(this, this.f79021a, this.f121392g[0]);
        y0(this.f121393h[0], Integer.valueOf(C13317e.J(b10) ? b10.D() : 0));
        u(this.f121393h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_CHILD_COUNT);
    }
}
