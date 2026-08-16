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

public class q extends NoCodeNode implements F {

    public static final String f5025i = "LoadVector3";

    public static final int f5026j = 0;

    public final NoCodeSlot[] f5027g = {new NoCodeSlot(XMLExporter.ELEMENT_KEY, H.TEXT)};

    public final NoCodeSlot[] f5028h = {new NoCodeSlot(SerializableShaderEntry.f81151e, H.FLOAT3)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new q();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return q.class;
        }

        @Override
        public String c() {
            return q.f5025i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, q.class);
        }

        @Override
        public String e() {
            return "SaveGame";
        }

        @Override
        public String f() {
            return "Load Vector3";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public q() {
        this.serializedNodeType = f5025i;
        this.exposeInInspector = false;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f5027g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f5028h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Load Vector3";
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
        y0(this.f5028h[0], SaveGame.loadVector3(ga.m.i0(Q(this.f5027g[0]))));
        u(this.f5028h[0]);
    }
}
