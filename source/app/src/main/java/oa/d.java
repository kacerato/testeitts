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
import java.io.InputStream;

public class d extends NoCodeNode {

    public static final String f98635i = "LoadTextFromFileInputStream";

    public static final int f98636j = 0;

    public static final int f98637k = 0;

    public final NoCodeSlot[] f98638g = {new NoCodeSlot("Input Stream", H.INPUT_STREAM).c("Input Stream")};

    public final NoCodeSlot[] f98639h = {new NoCodeSlot("Text", H.TEXT).c("Text")};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new d();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return d.class;
        }

        @Override
        public String c() {
            return d.f98635i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, d.class);
        }

        @Override
        public String e() {
            return "Files";
        }

        @Override
        public String f() {
            return "Load Text From File (InputStream)";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public d() {
        this.serializedNodeType = f98635i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f98638g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f98639h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Load Text From File (InputStream)";
    }

    @Override
    public void m0() {
        try {
            InputStream Z10 = m.Z(Q(this.f98638g[0]));
            y0(this.f98639h[0], Z10 != null ? FileLoader.loadTextFromFile(Z10) : null);
            u(this.f98639h[0]);
        } catch (Throwable unused) {
            y0(this.f98639h[0], null);
            u(this.f98639h[0]);
        }
    }
}
