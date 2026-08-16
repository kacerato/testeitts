package Ba;

import JAVARuntime.GameController;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;

public class u extends q {

    public static final String f1648h = "SetFrameLimit";

    public static final int f1649i = 0;

    public final NoCodeSlot[] f1650g = {new NoCodeSlot("Limit Frames", H.NUMBER)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new u();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return u.class;
        }

        @Override
        public String c() {
            return u.f1648h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, u.class);
        }

        @Override
        public String e() {
            return "Input/Platform";
        }

        @Override
        public String f() {
            return "Set Frame Limit";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public u() {
        this.serializedNodeType = f1648h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f1650g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Set Frame Limit";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "60" : "";
    }

    @Override
    public void m0() {
        try {
            GameController.setLimitFrames(Math.round(ga.m.V(Q(this.f1650g[0]))));
        } finally {
            t();
        }
    }
}
