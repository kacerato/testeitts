package Da;

import JAVARuntime.SaveGame;
import com.ardor3d.util.export.xml.XMLExporter;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;

public class z extends u {

    public static final String f5057h = "SaveVector3";

    public static final int f5058i = 0;

    public static final int f5059j = 1;

    public final NoCodeSlot[] f5060g = {new NoCodeSlot(XMLExporter.ELEMENT_KEY, H.TEXT), new NoCodeSlot(XMLExporter.ELEMENT_VALUE, H.FLOAT3)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new z();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return z.class;
        }

        @Override
        public String c() {
            return z.f5057h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, z.class);
        }

        @Override
        public String e() {
            return "SaveGame";
        }

        @Override
        public String f() {
            return "Save Vector3";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public z() {
        this.serializedNodeType = f5057h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f5060g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Save Vector3";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        try {
            SaveGame.saveVector3(ga.m.i0(Q(this.f5060g[0])), ga.m.n0(Q(this.f5060g[1])).toJAVARuntime());
        } finally {
            t();
        }
    }
}
