package Ba;

import JAVARuntime.Directories;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.F;
import ga.H;

public class j extends q implements F {

    public static final String f1624h = "GetProjectFolder";

    public final NoCodeSlot[] f1625g = {new NoCodeSlot("Directory", H.TEXT).c("Directory")};

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
            return j.f1624h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, j.class);
        }

        @Override
        public String e() {
            return "Input/Platform";
        }

        @Override
        public String f() {
            return "Get Project Folder";
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
        this.serializedNodeType = f1624h;
        this.exposeInInspector = false;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f1625g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Project Folder";
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
        y0(this.f1625g[0], Directories.getProjectFolder());
        u(this.f1625g[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return "Get Project Folder";
    }
}
