package Za;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;
import ga.o;
import ga.p;

public class a extends NoCodeNode {

    public static final String f31087h = "GetLoadMessage";

    public final NoCodeSlot[] f31088g = {new NoCodeSlot("Load Message", H.TEXT).c(Lang.l(Lang.T.NOCODE_SLOT_LOAD_MESSAGE))};

    public class C0818a implements p {
        @Override
        public NoCodeNode a() {
            return new a();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return a.class;
        }

        @Override
        public String c() {
            return a.f31087h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, a.class);
        }

        @Override
        public String e() {
            return "Actions/World";
        }

        @Override
        public String f() {
            return "Load Message";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new C0818a());
    }

    public a() {
        this.serializedNodeType = f31087h;
        this.exposeInInspector = false;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f31088g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Load Message";
    }

    @Override
    public boolean b0() {
        return true;
    }

    @Override
    public void m0() {
        String t10 = com.itsmagic.engine.Engines.Engine.World.a.t();
        NoCodeSlot noCodeSlot = this.f31088g[0];
        if (t10 == null) {
            t10 = "";
        }
        y0(noCodeSlot, t10);
        t();
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_LOAD_MESSAGE);
    }
}
