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

public class C16063b extends NoCodeNode implements F {

    public static final String f128030i = "GetDontDestroyOnLoad";

    public static final int f128031j = 0;

    public static final int f128032k = 0;

    public final NoCodeSlot[] f128033g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT))};

    public final NoCodeSlot[] f128034h = {new NoCodeSlot("Dont Destroy On Load", H.BOOLEAN).c(Lang.l(Lang.T.NOCODE_SLOT_DONT_DESTROY_ON_LOAD))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C16063b();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C16063b.class;
        }

        @Override
        public String c() {
            return C16063b.f128030i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C16063b.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Properties";
        }

        @Override
        public String f() {
            return "Get Dont Destroy On Load";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C16063b() {
        this.serializedNodeType = f128030i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f128033g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f128034h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Dont Destroy On Load";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : "";
    }

    @Override
    public void m0() {
        GameObject b10 = Aa.b.b(this, this.f79021a, this.f128033g[0]);
        y0(this.f128034h[0], Boolean.valueOf(C13317e.J(b10) && b10.dontDestroyOnLoad));
        u(this.f128034h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_DONT_DESTROY_ON_LOAD);
    }
}
