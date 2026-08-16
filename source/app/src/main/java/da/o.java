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

public class o extends NoCodeNode implements F {

    public static final String f5017i = "LoadString";

    public static final int f5018j = 0;

    public final NoCodeSlot[] f5019g;

    public final NoCodeSlot[] f5020h;

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
            return o.f5017i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, o.class);
        }

        @Override
        public String e() {
            return "SaveGame";
        }

        @Override
        public String f() {
            return "Load String";
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
        H h10 = H.TEXT;
        this.f5019g = new NoCodeSlot[]{new NoCodeSlot(XMLExporter.ELEMENT_KEY, h10)};
        this.f5020h = new NoCodeSlot[]{new NoCodeSlot(SerializableShaderEntry.f81157k, h10)};
        this.serializedNodeType = f5017i;
        this.exposeInInspector = false;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f5019g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f5020h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Load String";
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
        y0(this.f5020h[0], SaveGame.loadString(ga.m.i0(Q(this.f5019g[0]))));
        u(this.f5020h[0]);
    }
}
