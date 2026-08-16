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

public class g extends q implements F {

    public static final String f1618h = "GetGameState";

    public final NoCodeSlot[] f1619g = {new NoCodeSlot("State", H.TEXT)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new g();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return g.class;
        }

        @Override
        public String c() {
            return g.f1618h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, g.class);
        }

        @Override
        public String e() {
            return "Input/Platform";
        }

        @Override
        public String f() {
            return "Get Game State";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public g() {
        this.serializedNodeType = f1618h;
        this.exposeInInspector = false;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f1619g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Game State";
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
        y0(this.f1619g[0], GameController.getState().name());
        u(this.f1619g[0]);
    }
}
