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

public class x extends u {

    public static final String f5049h = "SaveString";

    public static final int f5050i = 0;

    public static final int f5051j = 1;

    public final NoCodeSlot[] f5052g;

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new x();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return x.class;
        }

        @Override
        public String c() {
            return x.f5049h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, x.class);
        }

        @Override
        public String e() {
            return "SaveGame";
        }

        @Override
        public String f() {
            return "Save String";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public x() {
        H h10 = H.TEXT;
        this.f5052g = new NoCodeSlot[]{new NoCodeSlot(XMLExporter.ELEMENT_KEY, h10), new NoCodeSlot(XMLExporter.ELEMENT_VALUE, h10)};
        this.serializedNodeType = f5049h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f5052g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Save String";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        try {
            SaveGame.saveString(ga.m.i0(Q(this.f5052g[0])), ga.m.i0(Q(this.f5052g[1])));
        } finally {
            t();
        }
    }
}
