package Ba;

import JAVARuntime.GameController;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;

public class r extends q {

    public static final String f1640h = "QuitGame";

    public final NoCodeSlot[] f1641g = new NoCodeSlot[0];

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new r();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return r.class;
        }

        @Override
        public String c() {
            return r.f1640h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, r.class);
        }

        @Override
        public String e() {
            return "Input/Platform";
        }

        @Override
        public String f() {
            return "Quit Game";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public r() {
        this.serializedNodeType = f1640h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f1641g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Quit Game";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        try {
            GameController.quit();
        } finally {
            t();
        }
    }
}
