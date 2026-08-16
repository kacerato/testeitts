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

public class C16062a extends NoCodeNode implements F {

    public static final String f128025i = "GetAllowAnimations";

    public static final int f128026j = 0;

    public static final int f128027k = 0;

    public final NoCodeSlot[] f128028g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT))};

    public final NoCodeSlot[] f128029h = {new NoCodeSlot("Allow Animations", H.BOOLEAN).c(Lang.l(Lang.T.NOCODE_SLOT_ALLOW_ANIMATIONS))};

    public class C2203a implements p {
        @Override
        public NoCodeNode a() {
            return new C16062a();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C16062a.class;
        }

        @Override
        public String c() {
            return C16062a.f128025i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C16062a.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Properties";
        }

        @Override
        public String f() {
            return "Get Allow Animations";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new C2203a());
    }

    public C16062a() {
        this.serializedNodeType = f128025i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f128028g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f128029h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Allow Animations";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : "";
    }

    @Override
    public void m0() {
        GameObject b10 = Aa.b.b(this, this.f79021a, this.f128028g[0]);
        y0(this.f128029h[0], Boolean.valueOf(C13317e.J(b10) && b10.X0()));
        u(this.f128029h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_ALLOW_ANIMATIONS);
    }
}
