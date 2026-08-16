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

public class i extends u {

    public static final String f4994h = "DeleteVector3";

    public static final int f4995i = 0;

    public final NoCodeSlot[] f4996g = {new NoCodeSlot(XMLExporter.ELEMENT_KEY, H.TEXT)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new i();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return i.class;
        }

        @Override
        public String c() {
            return i.f4994h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, i.class);
        }

        @Override
        public String e() {
            return "SaveGame";
        }

        @Override
        public String f() {
            return "Delete Vector3";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public i() {
        this.serializedNodeType = f4994h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f4996g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Delete Vector3";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        try {
            SaveGame.deleteVector3(ga.m.i0(Q(this.f4996g[0])));
        } finally {
            t();
        }
    }
}
