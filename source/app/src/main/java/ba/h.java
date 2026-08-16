package Ba;

import JAVARuntime.GameController;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.F;
import ga.H;

public class h extends q implements F {

    public static final String f1620h = "GetGraphicsMode";

    public final NoCodeSlot[] f1621g = {new NoCodeSlot("Graphics Mode", H.TEXT)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new h();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return h.class;
        }

        @Override
        public String c() {
            return h.f1620h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, h.class);
        }

        @Override
        public String e() {
            return "Input/Platform";
        }

        @Override
        public String f() {
            return "Get Graphics Mode";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public h() {
        this.serializedNodeType = f1620h;
        this.exposeInInspector = false;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f1621g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Graphics Mode";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public boolean b0() {
        return true;
    }

    @Override
    public void m0() {
        y0(this.f1621g[0], GameController.getGraphicsMode().name());
        u(this.f1621g[0]);
    }
}
