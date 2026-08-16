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

public class d extends q implements F {

    public static final String f1612h = "GetBatteryPercentage";

    public final NoCodeSlot[] f1613g = {new NoCodeSlot("Battery Percentage", H.NUMBER)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new d();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return d.class;
        }

        @Override
        public String c() {
            return d.f1612h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, d.class);
        }

        @Override
        public String e() {
            return "Input/Platform";
        }

        @Override
        public String f() {
            return "Get Battery Percentage";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public d() {
        this.serializedNodeType = f1612h;
        this.exposeInInspector = false;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f1613g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Battery Percentage";
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
        y0(this.f1613g[0], Float.valueOf(Device.getBatteryPercentage()));
        u(this.f1613g[0]);
    }
}
