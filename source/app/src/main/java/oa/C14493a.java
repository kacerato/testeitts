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

public class C14493a extends NoCodeNode {

    public static final String f98622h = "ExportTextToFileFile";

    public static final int f98623i = 0;

    public static final int f98624j = 1;

    public final NoCodeSlot[] f98625g = {new NoCodeSlot("Text", H.TEXT).c("Text"), new NoCodeSlot("File", H.FILE).c("File")};

    public class C1889a implements p {
        @Override
        public NoCodeNode a() {
            return new C14493a();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C14493a.class;
        }

        @Override
        public String c() {
            return C14493a.f98622h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C14493a.class);
        }

        @Override
        public String e() {
            return "Files";
        }

        @Override
        public String f() {
            return "Export Text To File (File)";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new C1889a());
    }

    public C14493a() {
        this.serializedNodeType = f98622h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f98625g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Export Text To File (File)";
    }

    @Override
    public void m0() {
        String i02;
        File U10;
        try {
            i02 = m.i0(Q(this.f98625g[0]));
            U10 = m.U(Q(this.f98625g[1]));
        } catch (Throwable unused) {
        }
        if (U10 == null) {
            t();
        } else {
            FileLoader.exportTextToFile(i02, U10);
            t();
        }
    }
}
