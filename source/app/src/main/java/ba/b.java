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

public class b extends q implements F {

    public static final String f1608h = "GetAudioSampleRate";

    public final NoCodeSlot[] f1609g = {new NoCodeSlot("Audio Sample Rate", H.NUMBER)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new b();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return b.class;
        }

        @Override
        public String c() {
            return b.f1608h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, b.class);
        }

        @Override
        public String e() {
            return "Input/Platform";
        }

        @Override
        public String f() {
            return "Get Audio Sample Rate";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public b() {
        this.serializedNodeType = f1608h;
        this.exposeInInspector = false;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f1609g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Audio Sample Rate";
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
        y0(this.f1609g[0], Float.valueOf(Device.getAudioSampleRate()));
        u(this.f1609g[0]);
    }
}
