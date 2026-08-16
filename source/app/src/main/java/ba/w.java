package Ba;

import JAVARuntime.Device;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;

public class w extends q {

    public static final String f1654h = "SetMouseVisible";

    public static final int f1655i = 0;

    public final NoCodeSlot[] f1656g = {new NoCodeSlot("Visible", H.BOOLEAN)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new w();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return w.class;
        }

        @Override
        public String c() {
            return w.f1654h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, w.class);
        }

        @Override
        public String e() {
            return "Input/Platform";
        }

        @Override
        public String f() {
            return "Set Mouse Visible";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public w() {
        this.serializedNodeType = f1654h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f1656g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Set Mouse Visible";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "true" : "";
    }

    @Override
    public void m0() {
        try {
            Device.setMouseVisible(ga.m.O(Q(this.f1656g[0])));
        } finally {
            t();
        }
    }
}
