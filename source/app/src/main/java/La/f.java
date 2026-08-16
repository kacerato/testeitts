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
import ga.m;
import ga.o;
import ga.p;

public class f extends NoCodeNode implements F {

    public static final String f96224h = "SetComponentEnabled";

    public static final int f96225i = 0;

    public static final int f96226j = 1;

    public final NoCodeSlot[] f96227g = {new NoCodeSlot("Component", H.ANY_COMPONENT).c(Lang.l(Lang.T.NOCODE_SLOT_COMPONENT)), new NoCodeSlot("Enabled", H.BOOLEAN).c(Lang.l(Lang.T.NOCODE_SLOT_ENABLED))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new f();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return f.class;
        }

        @Override
        public String c() {
            return f.f96224h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, f.class);
        }

        @Override
        public String e() {
            return "Actions/Component/Properties";
        }

        @Override
        public String f() {
            return "Set Enabled";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public f() {
        this.serializedNodeType = f96224h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f96227g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Set Enabled";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : inputIndex == 1 ? "true" : "";
    }

    @Override
    public void m0() {
        try {
            Component d10 = C14063a.d(this, this.f79021a, this.f96227g[0]);
            if (d10 != null) {
                d10.setEnabled(m.O(Q(this.f96227g[1])));
            }
        } finally {
            t();
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SET_COMPONENT_ENABLED);
    }
}
