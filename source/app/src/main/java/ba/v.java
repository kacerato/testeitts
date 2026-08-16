package Ba;

import JAVARuntime.GameController;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;

public class v extends q {

    public static final String f1651h = "SetGraphicsMode";

    public static final int f1652i = 0;

    public final NoCodeSlot[] f1653g = {new NoCodeSlot("Graphics Mode", H.TEXT)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new v();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return v.class;
        }

        @Override
        public String c() {
            return v.f1651h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, v.class);
        }

        @Override
        public String e() {
            return "Input/Platform";
        }

        @Override
        public String f() {
            return "Set Graphics Mode";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public v() {
        this.serializedNodeType = f1651h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f1653g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Set Graphics Mode";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "Lite" : "";
    }

    @Override
    public void m0() {
        try {
            String i02 = ga.m.i0(Q(this.f1653g[0]));
            GameController.GraphicsMode graphicsMode = GameController.GraphicsMode.Lite;
            if (i02 != null && !i02.trim().isEmpty()) {
                try {
                    graphicsMode = GameController.GraphicsMode.valueOf(i02.trim());
                } catch (IllegalArgumentException unused) {
                }
            }
            GameController.setGraphicsMode(graphicsMode);
        } finally {
            t();
        }
    }
}
