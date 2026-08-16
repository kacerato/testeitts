package Da;

import JAVARuntime.SaveGame;
import com.ardor3d.util.export.xml.XMLExporter;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import ga.EnumC13304B;
import ga.F;
import ga.H;

public class k extends NoCodeNode implements F {

    public static final String f5001i = "LoadColor";

    public static final int f5002j = 0;

    public final NoCodeSlot[] f5003g = {new NoCodeSlot(XMLExporter.ELEMENT_KEY, H.TEXT)};

    public final NoCodeSlot[] f5004h = {new NoCodeSlot(SerializableShaderEntry.f81153g, H.COLOR)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new k();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return k.class;
        }

        @Override
        public String c() {
            return k.f5001i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, k.class);
        }

        @Override
        public String e() {
            return "SaveGame";
        }

        @Override
        public String f() {
            return "Load Color";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public k() {
        this.serializedNodeType = f5001i;
        this.exposeInInspector = false;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f5003g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f5004h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Load Color";
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
        y0(this.f5004h[0], SaveGame.loadColor(ga.m.i0(Q(this.f5003g[0]))));
        u(this.f5004h[0]);
    }
}
