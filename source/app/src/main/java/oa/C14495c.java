package oa;

import JAVARuntime.File;
import JAVARuntime.FileLoader;
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

public class C14495c extends NoCodeNode {

    public static final String f98630i = "LoadTextFromFileFile";

    public static final int f98631j = 0;

    public static final int f98632k = 0;

    public final NoCodeSlot[] f98633g = {new NoCodeSlot("File", H.FILE).c("File")};

    public final NoCodeSlot[] f98634h = {new NoCodeSlot("Text", H.TEXT).c("Text")};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C14495c();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C14495c.class;
        }

        @Override
        public String c() {
            return C14495c.f98630i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C14495c.class);
        }

        @Override
        public String e() {
            return "Files";
        }

        @Override
        public String f() {
            return "Load Text From File (File)";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C14495c() {
        this.serializedNodeType = f98630i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f98633g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f98634h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Load Text From File (File)";
    }

    @Override
    public void m0() {
        try {
            File U10 = m.U(Q(this.f98633g[0]));
            y0(this.f98634h[0], U10 != null ? FileLoader.loadTextFromFile(U10) : null);
            u(this.f98634h[0]);
        } catch (Throwable unused) {
            y0(this.f98634h[0], null);
            u(this.f98634h[0]);
        }
    }
}
