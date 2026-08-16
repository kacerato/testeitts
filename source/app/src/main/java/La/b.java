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

public class b extends NoCodeNode implements F {

    public static final String f96206h = "DestroyComponent";

    public static final int f96207i = 0;

    public final NoCodeSlot[] f96208g = {new NoCodeSlot("Component", H.ANY_COMPONENT).c(Lang.l(Lang.T.NOCODE_SLOT_COMPONENT))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new b();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return b.class;
        }

        @Override
        public String c() {
            return b.f96206h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, b.class);
        }

        @Override
        public String e() {
            return "Actions/Component/Lifecycle";
        }

        @Override
        public String f() {
            return "Destroy Component";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public b() {
        this.serializedNodeType = f96206h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f96208g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Destroy Component";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : "";
    }

    @Override
    public void m0() {
        try {
            Component d10 = C14063a.d(this, this.f79021a, this.f96208g[0]);
            if (d10 != null) {
                d10.destroy();
            }
        } finally {
            t();
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_DESTROY_COMPONENT);
    }
}
