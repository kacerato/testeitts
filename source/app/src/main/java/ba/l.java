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

public class l extends q implements F {

    public static final String f1628h = "GetScreenRatio";

    public final NoCodeSlot[] f1629g = {new NoCodeSlot("Ratio", H.NUMBER)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new l();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return l.class;
        }

        @Override
        public String c() {
            return l.f1628h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, l.class);
        }

        @Override
        public String e() {
            return "Input/Platform";
        }

        @Override
        public String f() {
            return "Get Screen Ratio";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public l() {
        this.serializedNodeType = f1628h;
        this.exposeInInspector = false;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f1629g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Screen Ratio";
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
        y0(this.f1629g[0], Float.valueOf(Screen.ratio()));
        u(this.f1629g[0]);
    }
}
