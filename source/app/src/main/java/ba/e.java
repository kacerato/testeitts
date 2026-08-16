package Ba;

import JAVARuntime.Device;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.F;
import ga.H;

public class e extends q implements F {

    public static final String f1614h = "GetClipboard";

    public final NoCodeSlot[] f1615g = {new NoCodeSlot("Clipboard", H.TEXT)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new e();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return e.class;
        }

        @Override
        public String c() {
            return e.f1614h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, e.class);
        }

        @Override
        public String e() {
            return "Input/Platform";
        }

        @Override
        public String f() {
            return "Get Clipboard";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public e() {
        this.serializedNodeType = f1614h;
        this.exposeInInspector = false;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f1615g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Clipboard";
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
        y0(this.f1615g[0], Device.getClipboard());
        u(this.f1615g[0]);
    }
}
