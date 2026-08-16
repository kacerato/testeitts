package oa;

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

public class C14494b extends NoCodeNode {

    public static final String f98626h = "ExportTextToFile";

    public static final int f98627i = 0;

    public static final int f98628j = 1;

    public final NoCodeSlot[] f98629g;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C14494b();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C14494b.class;
        }

        @Override
        public String c() {
            return C14494b.f98626h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C14494b.class);
        }

        @Override
        public String e() {
            return "Files";
        }

        @Override
        public String f() {
            return "Export Text To File";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C14494b() {
        H h10 = H.TEXT;
        this.f98629g = new NoCodeSlot[]{new NoCodeSlot("Text", h10).c("Text"), new NoCodeSlot("File Path", h10).c("File Path")};
        this.serializedNodeType = f98626h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f98629g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Export Text To File";
    }

    @Override
    public void m0() {
        String i02;
        String i03;
        try {
            i02 = m.i0(Q(this.f98629g[0]));
            i03 = m.i0(Q(this.f98629g[1]));
        } catch (Throwable unused) {
        }
        if (i03 != null && !i03.trim().isEmpty()) {
            FileLoader.exportTextToFile(i02, i03);
            t();
            return;
        }
        t();
    }
}
