package Ba;

import JAVARuntime.Screen;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.F;
import ga.H;

public class k extends q implements F {

    public static final String f1626h = "GetScreenHeight";

    public final NoCodeSlot[] f1627g = {new NoCodeSlot("Height", H.NUMBER)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new k();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return k.class;
        }

        @Override
        public String c() {
            return k.f1626h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, k.class);
        }

        @Override
        public String e() {
            return "Input/Platform";
        }

        @Override
        public String f() {
            return "Get Screen Height";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public k() {
        this.serializedNodeType = f1626h;
        this.exposeInInspector = false;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f1627g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Screen Height";
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
        y0(this.f1627g[0], Float.valueOf(Screen.getHeight()));
        u(this.f1627g[0]);
    }
}
