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

public class b extends NoCodeNode {

    public static final String f31089h = "GetLoadPercent";

    public final NoCodeSlot[] f31090g = {new NoCodeSlot("Load Percent", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_LOAD_PERCENT))};

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
            return b.f31089h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, b.class);
        }

        @Override
        public String e() {
            return "Actions/World";
        }

        @Override
        public String f() {
            return "Load Percent";
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
        this.serializedNodeType = f31089h;
        this.exposeInInspector = false;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f31090g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Load Percent";
    }

    @Override
    public boolean b0() {
        return true;
    }

    @Override
    public void m0() {
        y0(this.f31090g[0], Float.valueOf(com.itsmagic.engine.Engines.Engine.World.a.u() * 100.0f));
        t();
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_LOAD_PERCENT);
    }
}
