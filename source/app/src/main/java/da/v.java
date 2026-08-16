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

public class v extends u {

    public static final String f5041h = "SaveInt";

    public static final int f5042i = 0;

    public static final int f5043j = 1;

    public final NoCodeSlot[] f5044g = {new NoCodeSlot(XMLExporter.ELEMENT_KEY, H.TEXT), new NoCodeSlot(XMLExporter.ELEMENT_VALUE, H.NUMBER)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new v();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return v.class;
        }

        @Override
        public String c() {
            return v.f5041h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, v.class);
        }

        @Override
        public String e() {
            return "SaveGame";
        }

        @Override
        public String f() {
            return "Save Int";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public v() {
        this.serializedNodeType = f5041h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f5044g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Save Int";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        try {
            SaveGame.saveInt(ga.m.i0(Q(this.f5044g[0])), Math.round(ga.m.V(Q(this.f5044g[1]))));
        } finally {
            t();
        }
    }
}
