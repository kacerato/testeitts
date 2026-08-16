package xa;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import ga.C13308d;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;
import gb.C13317e;

public class C16067f extends NoCodeNode implements F {

    public static final String f128050i = "GetStatic";

    public static final int f128051j = 0;

    public static final int f128052k = 0;

    public final NoCodeSlot[] f128053g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT))};

    public final NoCodeSlot[] f128054h = {new NoCodeSlot("Static", H.BOOLEAN).c(Lang.l(Lang.T.NOCODE_SLOT_STATIC))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C16067f();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C16067f.class;
        }

        @Override
        public String c() {
            return C16067f.f128050i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C16067f.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Properties";
        }

        @Override
        public String f() {
            return "Get Static";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C16067f() {
        this.serializedNodeType = f128050i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f128053g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f128054h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Static";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : "";
    }

    @Override
    public void m0() {
        GameObject b10 = Aa.b.b(this, this.f79021a, this.f128053g[0]);
        y0(this.f128054h[0], Boolean.valueOf(C13317e.J(b10) && b10.J0().w1() == Transform.G.STATIC));
        u(this.f128054h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_STATIC);
    }
}
