package oa;

import JAVARuntime.FileLoader;
import JAVARuntime.ProjectFile;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;
import ga.m;
import ga.o;
import ga.p;

public class e extends NoCodeNode {

    public static final String f98640i = "LoadTextFromFileProjectFile";

    public static final int f98641j = 0;

    public static final int f98642k = 0;

    public final NoCodeSlot[] f98643g = {new NoCodeSlot("Project File", H.PROJECT_FILE).c("Project File")};

    public final NoCodeSlot[] f98644h = {new NoCodeSlot("Text", H.TEXT).c("Text")};

    public class a implements p {
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
            return e.f98640i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, e.class);
        }

        @Override
        public String e() {
            return "Files";
        }

        @Override
        public String f() {
            return "Load Text From File (Project File)";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public e() {
        this.serializedNodeType = f98640i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f98643g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f98644h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Load Text From File (Project File)";
    }

    @Override
    public void m0() {
        try {
            ProjectFile e02 = m.e0(Q(this.f98643g[0]));
            y0(this.f98644h[0], e02 != null ? FileLoader.loadTextFromFile(e02) : null);
            u(this.f98644h[0]);
        } catch (Throwable unused) {
            y0(this.f98644h[0], null);
            u(this.f98644h[0]);
        }
    }
}
