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

public class e extends NoCodeNode implements F {

    public static final String f96219i = "GetComponentTitle";

    public static final int f96220j = 0;

    public static final int f96221k = 0;

    public final NoCodeSlot[] f96222g = {new NoCodeSlot("Component", H.ANY_COMPONENT).c(Lang.l(Lang.T.NOCODE_SLOT_COMPONENT))};

    public final NoCodeSlot[] f96223h = {new NoCodeSlot("Title", H.TEXT).c(Lang.l(Lang.T.NOCODE_SLOT_TITLE))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new e();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return e.class;
        }

        @Override
        public String c() {
            return e.f96219i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, e.class);
        }

        @Override
        public String e() {
            return "Actions/Component/Properties";
        }

        @Override
        public String f() {
            return "Get Title";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public e() {
        this.serializedNodeType = f96219i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f96222g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f96223h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Title";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : "";
    }

    @Override
    public void m0() {
        Component d10 = C14063a.d(this, this.f79021a, this.f96222g[0]);
        y0(this.f96223h[0], d10 != null ? d10.getTitle() : "");
        u(this.f96223h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_COMPONENT_TITLE);
    }
}
