package la;

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

public class d extends NoCodeNode implements F {

    public static final String f96214i = "GetComponentObject";

    public static final int f96215j = 0;

    public static final int f96216k = 0;

    public final NoCodeSlot[] f96217g = {new NoCodeSlot("Component", H.ANY_COMPONENT).c(Lang.l(Lang.T.NOCODE_SLOT_COMPONENT))};

    public final NoCodeSlot[] f96218h = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new d();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return d.class;
        }

        @Override
        public String c() {
            return d.f96214i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, d.class);
        }

        @Override
        public String e() {
            return "Actions/Component/Properties";
        }

        @Override
        public String f() {
            return "Get Object";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public d() {
        this.serializedNodeType = f96214i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f96217g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f96218h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Object";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : "";
    }

    @Override
    public void m0() {
        y0(this.f96218h[0], C14063a.c(C14063a.d(this, this.f79021a, this.f96217g[0])));
        u(this.f96218h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_COMPONENT_OBJECT);
    }
}
