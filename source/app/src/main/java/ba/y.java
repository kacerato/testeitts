package Ba;

import JAVARuntime.Device;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;

public class y extends q {

    public static final String f1659h = "VibrateOneShot";

    public static final int f1660i = 0;

    public final NoCodeSlot[] f1661g = {new NoCodeSlot("Pattern", H.NUMBER)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new y();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return y.class;
        }

        @Override
        public String c() {
            return y.f1659h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, y.class);
        }

        @Override
        public String e() {
            return "Input/Platform";
        }

        @Override
        public String f() {
            return "Vibrate One Shot";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public y() {
        this.serializedNodeType = f1659h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f1661g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Vibrate One Shot";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "0" : "";
    }

    @Override
    public void m0() {
        try {
            Device.vibrateOneShot(ga.m.V(Q(this.f1661g[0])));
        } finally {
            t();
        }
    }
}
