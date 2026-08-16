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

public class y extends u {

    public static final String f5053h = "SaveVector2";

    public static final int f5054i = 0;

    public static final int f5055j = 1;

    public final NoCodeSlot[] f5056g = {new NoCodeSlot(XMLExporter.ELEMENT_KEY, H.TEXT), new NoCodeSlot(XMLExporter.ELEMENT_VALUE, H.FLOAT2)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new y();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return y.class;
        }

        @Override
        public String c() {
            return y.f5053h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, y.class);
        }

        @Override
        public String e() {
            return "SaveGame";
        }

        @Override
        public String f() {
            return "Save Vector2";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public y() {
        this.serializedNodeType = f5053h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f5056g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Save Vector2";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        try {
            SaveGame.saveVector2(ga.m.i0(Q(this.f5056g[0])), ga.m.l0(Q(this.f5056g[1])).K0());
        } finally {
            t();
        }
    }
}
