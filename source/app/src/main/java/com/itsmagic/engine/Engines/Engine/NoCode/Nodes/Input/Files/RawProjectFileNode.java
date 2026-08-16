package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Input.Files;

import Ic.C2629h;
import Ic.C2632k;
import JAVARuntime.ProjectFile;
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

public class RawProjectFileNode extends NoCodeNode implements z {

    public static final String f79102i = "RawProjectFile";

    public transient ProjectFile f79103g;

    @Expose
    public String file = "";

    public final NoCodeSlot[] f79104h = {new NoCodeSlot("Project File", H.PROJECT_FILE).c("Project File")};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new RawProjectFileNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return RawProjectFileNode.class;
        }

        @Override
        public String c() {
            return RawProjectFileNode.f79102i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, RawProjectFileNode.class);
        }

        @Override
        public String e() {
            return "Input/Files";
        }

        @Override
        public String f() {
            return "Project File";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public RawProjectFileNode() {
        this.serializedNodeType = f79102i;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [jb.a, JAVARuntime.ProjectFile] */
    /* JADX WARN: Type inference failed for: r2v1, types: [jb.a, JAVARuntime.ProjectFile] */
    public ProjectFile G0() {
        String str = this.file;
        if (str == null) {
            str = "";
        }
        if (str.isEmpty()) {
            return null;
        }
        ?? e02 = m.e0(str);
        ?? r22 = this.f79103g;
        if (r22 != 0) {
            String filePath = r22.getFilePath();
            if (filePath == null) {
                filePath = "";
            }
            if (filePath.equals(e02 != 0 ? e02.getFilePath() : "")) {
                return this.f79103g;
            }
        }
        this.f79103g = e02;
        return e02;
    }

    public void H0(String path) {
        if (path == null) {
            path = "";
        }
        this.file = path;
        this.f79103g = null;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f79104h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Project File";
    }

    @Override
    public boolean c0() {
        return true;
    }

    @Override
    public void m0() {
        y0(this.f79104h[0], G0());
    }

    @Override
    public void r0(BuildDictionary dictionary) {
        BuildDicFile f10;
        String str = this.file;
        if (str == null || str.isEmpty() || (f10 = dictionary.f(this.file)) == null) {
            return;
        }
        dictionary.h("RawProjectFileNode: REPLACING " + this.file + " TO " + f10.b());
        this.file = f10.b();
        this.f79103g = null;
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
        return "Project File";
    }
}
