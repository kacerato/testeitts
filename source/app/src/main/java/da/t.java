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

public class t extends u {

    public static final String f5037h = "SaveFloat";

    public static final int f5038i = 0;

    public static final int f5039j = 1;

    public final NoCodeSlot[] f5040g = {new NoCodeSlot(XMLExporter.ELEMENT_KEY, H.TEXT), new NoCodeSlot(XMLExporter.ELEMENT_VALUE, H.NUMBER)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new t();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return t.class;
        }

        @Override
        public String c() {
            return t.f5037h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, t.class);
        }

        @Override
        public String e() {
            return "SaveGame";
        }

        @Override
        public String f() {
            return "Save Float";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public t() {
        this.serializedNodeType = f5037h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f5040g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Save Float";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        try {
            SaveGame.saveFloat(ga.m.i0(Q(this.f5040g[0])), ga.m.V(Q(this.f5040g[1])));
        } finally {
            t();
        }
    }
}
