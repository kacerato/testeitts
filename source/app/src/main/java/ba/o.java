package Ba;

import JAVARuntime.Device;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;

public class o extends q {

    public static final String f1634h = "OpenLink";

    public static final int f1635i = 0;

    public final NoCodeSlot[] f1636g = {new NoCodeSlot("URL", H.TEXT)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new o();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return o.class;
        }

        @Override
        public String c() {
            return o.f1634h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, o.class);
        }

        @Override
        public String e() {
            return "Input/Platform";
        }

        @Override
        public String f() {
            return "Open Link";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public o() {
        this.serializedNodeType = f1634h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f1636g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Open Link";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        try {
            Device.openLink(ga.m.i0(Q(this.f1636g[0])));
        } finally {
            t();
        }
    }
}
