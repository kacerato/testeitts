package xa;

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

public class C16068g extends NoCodeNode implements F {

    public static final String f128055i = "GetTag";

    public static final int f128056j = 0;

    public static final int f128057k = 0;

    public final NoCodeSlot[] f128058g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT))};

    public final NoCodeSlot[] f128059h = {new NoCodeSlot("Tag", H.TEXT).c(Lang.l(Lang.T.NOCODE_SLOT_TAG))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C16068g();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C16068g.class;
        }

        @Override
        public String c() {
            return C16068g.f128055i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C16068g.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Properties";
        }

        @Override
        public String f() {
            return "Get Tag";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C16068g() {
        this.serializedNodeType = f128055i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f128058g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f128059h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Tag";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : "";
    }

    @Override
    public void m0() {
        GameObject b10 = Aa.b.b(this, this.f79021a, this.f128058g[0]);
        y0(this.f128059h[0], (!C13317e.J(b10) || b10.getTag() == null) ? "" : b10.getTag());
        u(this.f128059h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_TAG);
    }
}
