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

public class c extends q implements F {

    public static final String f1610h = "GetAvailableProcessors";

    public final NoCodeSlot[] f1611g = {new NoCodeSlot("Available Processors", H.NUMBER)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new c();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return c.class;
        }

        @Override
        public String c() {
            return c.f1610h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, c.class);
        }

        @Override
        public String e() {
            return "Input/Platform";
        }

        @Override
        public String f() {
            return "Get Available Processors";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public c() {
        this.serializedNodeType = f1610h;
        this.exposeInInspector = false;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f1611g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Available Processors";
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
        y0(this.f1611g[0], Float.valueOf(Device.availableProcessors()));
        u(this.f1611g[0]);
    }
}
