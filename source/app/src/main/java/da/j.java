package Da;

import JAVARuntime.SaveGame;
import com.ardor3d.util.export.xml.XMLExporter;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.F;
import ga.H;

public class j extends NoCodeNode implements F {

    public static final String f4997i = "LoadBoolean";

    public static final int f4998j = 0;

    public final NoCodeSlot[] f4999g = {new NoCodeSlot(XMLExporter.ELEMENT_KEY, H.TEXT)};

    public final NoCodeSlot[] f5000h = {new NoCodeSlot("Boolean", H.BOOLEAN)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new j();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return j.class;
        }

        @Override
        public String c() {
            return j.f4997i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, j.class);
        }

        @Override
        public String e() {
            return "SaveGame";
        }

        @Override
        public String f() {
            return "Load Boolean";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public j() {
        this.serializedNodeType = f4997i;
        this.exposeInInspector = false;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f4999g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f5000h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Load Boolean";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public boolean b0() {
        return true;
    }

    @Override
    public void m0() {
        y0(this.f5000h[0], Boolean.valueOf(SaveGame.loadBoolean(ga.m.i0(Q(this.f4999g[0])))));
        u(this.f5000h[0]);
    }
}
