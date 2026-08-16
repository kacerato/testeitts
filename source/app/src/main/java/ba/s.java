package Ba;

import JAVARuntime.Device;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;

public class s extends q {

    public static final String f1642h = "SetClipboard";

    public static final int f1643i = 0;

    public final NoCodeSlot[] f1644g = {new NoCodeSlot("Text", H.TEXT)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new s();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return s.class;
        }

        @Override
        public String c() {
            return s.f1642h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, s.class);
        }

        @Override
        public String e() {
            return "Input/Platform";
        }

        @Override
        public String f() {
            return "Set Clipboard";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public s() {
        this.serializedNodeType = f1642h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f1644g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Set Clipboard";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        try {
            Device.setClipboard(ga.m.i0(Q(this.f1644g[0])));
        } finally {
            t();
        }
    }
}
