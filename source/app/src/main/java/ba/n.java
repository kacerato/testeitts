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

public class n extends q implements F {

    public static final String f1632h = "IsFrameLimitEnabled";

    public final NoCodeSlot[] f1633g = {new NoCodeSlot("Enabled", H.BOOLEAN)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new n();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return n.class;
        }

        @Override
        public String c() {
            return n.f1632h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, n.class);
        }

        @Override
        public String e() {
            return "Input/Platform";
        }

        @Override
        public String f() {
            return "Is Frame Limit Enabled";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public n() {
        this.serializedNodeType = f1632h;
        this.exposeInInspector = false;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f1633g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Is Frame Limit Enabled";
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
        y0(this.f1633g[0], Boolean.valueOf(GameController.isEnableFrameLimit()));
        u(this.f1633g[0]);
    }
}
