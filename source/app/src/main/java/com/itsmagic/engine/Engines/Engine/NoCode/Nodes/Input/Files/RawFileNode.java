package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Input.Files;

import Ic.C2629h;
import Ic.C2632k;
import JAVARuntime.File;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;
import ga.m;
import ga.o;
import ga.p;
import ga.z;

public class RawFileNode extends NoCodeNode implements z {

    public static final String f79096i = "RawFile";

    public transient File f79097g;

    @Expose
    public String file = "";

    public final NoCodeSlot[] f79098h = {new NoCodeSlot("File", H.FILE).c("File")};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new RawFileNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return RawFileNode.class;
        }

        @Override
        public String c() {
            return RawFileNode.f79096i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, RawFileNode.class);
        }

        @Override
        public String e() {
            return "Input/Files";
        }

        @Override
        public String f() {
            return "File";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public RawFileNode() {
        this.serializedNodeType = f79096i;
    }

    public File G0() {
        String str = this.file;
        if (str == null) {
            str = "";
        }
        if (str.isEmpty()) {
            return null;
        }
        File U10 = m.U(str);
        File file = this.f79097g;
        if (file != null) {
            String absolutePath = file.getAbsolutePath();
            if (absolutePath == null) {
                absolutePath = "";
            }
            if (absolutePath.equals(U10 != null ? U10.getAbsolutePath() : "")) {
                return this.f79097g;
            }
        }
        this.f79097g = U10;
        return U10;
    }

    public void H0(String path) {
        if (path == null) {
            path = "";
        }
        this.file = path;
        this.f79097g = null;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f79098h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "File";
    }

    @Override
    public boolean c0() {
        return true;
    }

    @Override
    public void m0() {
        y0(this.f79098h[0], G0());
    }

    @Override
    public void r0(BuildDictionary dictionary) {
        BuildDicFile f10;
        String str = this.file;
        if (str == null || str.isEmpty() || (f10 = dictionary.f(this.file)) == null) {
            return;
        }
        dictionary.h("RawFileNode: REPLACING " + this.file + " TO " + f10.b());
        this.file = f10.b();
        this.f79097g = null;
    }

    @Override
    public C2632k w(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        String str = this.file;
        if (str != null && !str.isEmpty()) {
            c2632k.f9114a.add(this.file);
        }
        return c2632k;
    }

    @Override
    public String x(NoCodeData graphData) {
        return "File";
    }
}
