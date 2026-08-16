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

public class f extends u {

    public static final String f4985h = "DeleteQuaternion";

    public static final int f4986i = 0;

    public final NoCodeSlot[] f4987g = {new NoCodeSlot(XMLExporter.ELEMENT_KEY, H.TEXT)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new f();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return f.class;
        }

        @Override
        public String c() {
            return f.f4985h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, f.class);
        }

        @Override
        public String e() {
            return "SaveGame";
        }

        @Override
        public String f() {
            return "Delete Quaternion";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public f() {
        this.serializedNodeType = f4985h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f4987g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Delete Quaternion";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        try {
            SaveGame.deleteQuaternion(ga.m.i0(Q(this.f4987g[0])));
        } finally {
            t();
        }
    }
}
