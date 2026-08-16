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

public class e extends u {

    public static final String f4982h = "DeleteInt";

    public static final int f4983i = 0;

    public final NoCodeSlot[] f4984g = {new NoCodeSlot(XMLExporter.ELEMENT_KEY, H.TEXT)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new e();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return e.class;
        }

        @Override
        public String c() {
            return e.f4982h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, e.class);
        }

        @Override
        public String e() {
            return "SaveGame";
        }

        @Override
        public String f() {
            return "Delete Int";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public e() {
        this.serializedNodeType = f4982h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f4984g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Delete Int";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        try {
            SaveGame.deleteInt(ga.m.i0(Q(this.f4984g[0])));
        } finally {
            t();
        }
    }
}
