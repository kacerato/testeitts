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

public class m extends NoCodeNode implements F {

    public static final String f5009i = "LoadInt";

    public static final int f5010j = 0;

    public final NoCodeSlot[] f5011g = {new NoCodeSlot(XMLExporter.ELEMENT_KEY, H.TEXT)};

    public final NoCodeSlot[] f5012h = {new NoCodeSlot(SerializableShaderEntry.f81155i, H.NUMBER)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new m();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return m.class;
        }

        @Override
        public String c() {
            return m.f5009i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, m.class);
        }

        @Override
        public String e() {
            return "SaveGame";
        }

        @Override
        public String f() {
            return "Load Int";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public m() {
        this.serializedNodeType = f5009i;
        this.exposeInInspector = false;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f5011g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f5012h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Load Int";
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
        y0(this.f5012h[0], Integer.valueOf(SaveGame.loadInt(ga.m.i0(Q(this.f5011g[0])))));
        u(this.f5012h[0]);
    }
}
