package Ba;

import JAVARuntime.Device;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;

public class x extends q {

    public static final String f1657h = "StopVibrate";

    public final NoCodeSlot[] f1658g = new NoCodeSlot[0];

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new x();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return x.class;
        }

        @Override
        public String c() {
            return x.f1657h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, x.class);
        }

        @Override
        public String e() {
            return "Input/Platform";
        }

        @Override
        public String f() {
            return "Stop Vibrate";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public x() {
        this.serializedNodeType = f1657h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f1658g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Stop Vibrate";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        try {
            Device.stopVibrate();
        } finally {
            t();
        }
    }
}
