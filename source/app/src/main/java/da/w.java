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

public class w extends u {

    public static final String f5045h = "SaveQuaternion";

    public static final int f5046i = 0;

    public static final int f5047j = 1;

    public final NoCodeSlot[] f5048g = {new NoCodeSlot(XMLExporter.ELEMENT_KEY, H.TEXT), new NoCodeSlot(XMLExporter.ELEMENT_VALUE, H.QUATERNION)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new w();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return w.class;
        }

        @Override
        public String c() {
            return w.f5045h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, w.class);
        }

        @Override
        public String e() {
            return "SaveGame";
        }

        @Override
        public String f() {
            return "Save Quaternion";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public w() {
        this.serializedNodeType = f5045h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f5048g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Save Quaternion";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        try {
            SaveGame.saveQuaternion(ga.m.i0(Q(this.f5048g[0])), ga.m.f0(Q(this.f5048g[1])).N0());
        } finally {
            t();
        }
    }
}
