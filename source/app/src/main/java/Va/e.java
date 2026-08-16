package Va;

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

public class e extends NoCodeNode {

    public static final String f26743i = "Time";

    public final NoCodeSlot[] f26744g = {new NoCodeSlot("Time", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_TIME))};

    public transient float f26745h;

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
            return "Time";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, e.class);
        }

        @Override
        public String e() {
            return "Input/Time";
        }

        @Override
        public String f() {
            return "Time";
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
        this.serializedNodeType = "Time";
        this.exposeInInspector = false;
    }

    @Override
    public void E0() {
        this.f26745h += K8.d.b();
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f26744g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Time";
    }

    @Override
    public boolean b0() {
        return true;
    }

    @Override
    public void i0() {
        this.f26745h = 0.0f;
    }

    @Override
    public void m0() {
        y0(this.f26744g[0], Float.valueOf(this.f26745h));
        t();
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_TIME);
    }
}
