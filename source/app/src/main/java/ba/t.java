package Ba;

import JAVARuntime.GameController;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;

public class t extends q {

    public static final String f1645h = "SetFrameLimitEnabled";

    public static final int f1646i = 0;

    public final NoCodeSlot[] f1647g = {new NoCodeSlot("Enabled", H.BOOLEAN)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new t();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return t.class;
        }

        @Override
        public String c() {
            return t.f1645h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, t.class);
        }

        @Override
        public String e() {
            return "Input/Platform";
        }

        @Override
        public String f() {
            return "Set Frame Limit Enabled";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public t() {
        this.serializedNodeType = f1645h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f1647g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Set Frame Limit Enabled";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "true" : "";
    }

    @Override
    public void m0() {
        try {
            GameController.setEnableFrameLimit(ga.m.O(Q(this.f1647g[0])));
        } finally {
            t();
        }
    }
}
