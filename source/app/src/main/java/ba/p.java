package Ba;

import JAVARuntime.Device;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;

public class p extends q {

    public static final String f1637h = "OpenURL";

    public static final int f1638i = 0;

    public final NoCodeSlot[] f1639g = {new NoCodeSlot("URL", H.TEXT)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new p();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return p.class;
        }

        @Override
        public String c() {
            return p.f1637h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, p.class);
        }

        @Override
        public String e() {
            return "Input/Platform";
        }

        @Override
        public String f() {
            return "Open URL";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public p() {
        this.serializedNodeType = f1637h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f1639g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Open URL";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        try {
            Device.openURL(ga.m.i0(Q(this.f1639g[0])));
        } finally {
            t();
        }
    }
}
