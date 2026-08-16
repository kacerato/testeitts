package la;

import JAVARuntime.Component;
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

public class c extends NoCodeNode implements F {

    public static final String f96209i = "GetComponentEnabled";

    public static final int f96210j = 0;

    public static final int f96211k = 0;

    public final NoCodeSlot[] f96212g = {new NoCodeSlot("Component", H.ANY_COMPONENT).c(Lang.l(Lang.T.NOCODE_SLOT_COMPONENT))};

    public final NoCodeSlot[] f96213h = {new NoCodeSlot("Enabled", H.BOOLEAN).c(Lang.l(Lang.T.NOCODE_SLOT_ENABLED))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new c();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return c.class;
        }

        @Override
        public String c() {
            return c.f96209i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, c.class);
        }

        @Override
        public String e() {
            return "Actions/Component/Properties";
        }

        @Override
        public String f() {
            return "Get Enabled";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public c() {
        this.serializedNodeType = f96209i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f96212g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f96213h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Enabled";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : "";
    }

    @Override
    public void m0() {
        Component d10 = C14063a.d(this, this.f79021a, this.f96212g[0]);
        y0(this.f96213h[0], Boolean.valueOf(d10 != null && d10.isEnabled()));
        u(this.f96213h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_COMPONENT_ENABLED);
    }
}
