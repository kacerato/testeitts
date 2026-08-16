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

public class h extends u {

    public static final String f4991h = "DeleteVector2";

    public static final int f4992i = 0;

    public final NoCodeSlot[] f4993g = {new NoCodeSlot(XMLExporter.ELEMENT_KEY, H.TEXT)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new h();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return h.class;
        }

        @Override
        public String c() {
            return h.f4991h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, h.class);
        }

        @Override
        public String e() {
            return "SaveGame";
        }

        @Override
        public String f() {
            return "Delete Vector2";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public h() {
        this.serializedNodeType = f4991h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f4993g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Delete Vector2";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        try {
            SaveGame.deleteVector2(ga.m.i0(Q(this.f4993g[0])));
        } finally {
            t();
        }
    }
}
