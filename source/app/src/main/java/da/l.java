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

public class l extends NoCodeNode implements F {

    public static final String f5005i = "LoadFloat";

    public static final int f5006j = 0;

    public final NoCodeSlot[] f5007g = {new NoCodeSlot(XMLExporter.ELEMENT_KEY, H.TEXT)};

    public final NoCodeSlot[] f5008h = {new NoCodeSlot(SerializableShaderEntry.f81148b, H.NUMBER)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new l();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return l.class;
        }

        @Override
        public String c() {
            return l.f5005i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, l.class);
        }

        @Override
        public String e() {
            return "SaveGame";
        }

        @Override
        public String f() {
            return "Load Float";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public l() {
        this.serializedNodeType = f5005i;
        this.exposeInInspector = false;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f5007g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f5008h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Load Float";
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
        y0(this.f5008h[0], Float.valueOf(SaveGame.loadFloat(ga.m.i0(Q(this.f5007g[0])))));
        u(this.f5008h[0]);
    }
}
