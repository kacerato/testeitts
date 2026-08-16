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

public class m extends q implements F {

    public static final String f1630h = "GetScreenWidth";

    public final NoCodeSlot[] f1631g = {new NoCodeSlot(F2.d.f6276t1, H.NUMBER)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new m();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return m.class;
        }

        @Override
        public String c() {
            return m.f1630h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, m.class);
        }

        @Override
        public String e() {
            return "Input/Platform";
        }

        @Override
        public String f() {
            return "Get Screen Width";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public m() {
        this.serializedNodeType = f1630h;
        this.exposeInInspector = false;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f1631g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Screen Width";
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
        y0(this.f1631g[0], Float.valueOf(Screen.getWidth()));
        u(this.f1631g[0]);
    }
}
