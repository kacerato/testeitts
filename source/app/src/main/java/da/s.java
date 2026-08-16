package Da;

import JAVARuntime.Color;
import JAVARuntime.SaveGame;
import com.ardor3d.util.export.xml.XMLExporter;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;

public class s extends u {

    public static final String f5033h = "SaveColor";

    public static final int f5034i = 0;

    public static final int f5035j = 1;

    public final NoCodeSlot[] f5036g = {new NoCodeSlot(XMLExporter.ELEMENT_KEY, H.TEXT), new NoCodeSlot(XMLExporter.ELEMENT_VALUE, H.COLOR)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new s();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return s.class;
        }

        @Override
        public String c() {
            return s.f5033h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, s.class);
        }

        @Override
        public String e() {
            return "SaveGame";
        }

        @Override
        public String f() {
            return "Save Color";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public s() {
        this.serializedNodeType = f5033h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f5036g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Save Color";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        try {
            SaveGame.saveColor(ga.m.i0(Q(this.f5036g[0])), new Color(ga.m.Q(Q(this.f5036g[1]))));
        } finally {
            t();
        }
    }
}
