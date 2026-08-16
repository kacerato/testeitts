package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Input.Files;

import Ic.C2629h;
import Ic.C2632k;
import JAVARuntime.ObjectFile;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;
import ga.o;
import ga.p;
import ga.z;

public class RawObjectFileNode extends NoCodeNode implements z {

    public static final String f79099i = "RawObjectFile";

    public transient ObjectFile f79100g;

    @Expose
    public String objectFile = "";

    public final NoCodeSlot[] f79101h = {new NoCodeSlot("Object File", H.OBJECT_FILE).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT_FILE))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new RawObjectFileNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return RawObjectFileNode.class;
        }

        @Override
        public String c() {
            return RawObjectFileNode.f79099i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, RawObjectFileNode.class);
        }

        @Override
        public String e() {
            return "Input/Files";
        }

        @Override
        public String f() {
            return "Object File";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public RawObjectFileNode() {
        this.serializedNodeType = f79099i;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [JAVARuntime.ObjectFile, jb.a] */
    public ObjectFile G0() {
        String str = this.objectFile;
        if (str == null) {
            str = "";
        }
        ?? r22 = this.f79100g;
        if (r22 == 0) {
            ObjectFile objectFile = new ObjectFile(str);
            this.f79100g = objectFile;
            return objectFile;
        }
        String filePath = r22.getFilePath();
        if (!(filePath != null ? filePath : "").equals(str)) {
            this.f79100g.setFilePath(str);
        }
        return this.f79100g;
    }

    public String H0() {
        String str = this.objectFile;
        return str != null ? str : "";
    }

    public void I0(String file) {
        if (file == null) {
            file = "";
        }
        this.objectFile = file;
        ObjectFile objectFile = this.f79100g;
        if (objectFile != null) {
            objectFile.setFilePath(file);
        }
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f79101h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Object File";
    }

    @Override
    public boolean c0() {
        return true;
    }

    @Override
    public void m0() {
        y0(this.f79101h[0], G0());
    }

    @Override
    public void r0(BuildDictionary dictionary) {
        BuildDicFile f10;
        String str = this.objectFile;
        if (str == null || str.isEmpty() || (f10 = dictionary.f(this.objectFile)) == null) {
            return;
        }
        dictionary.h("RawObjectFileNode: REPLACING " + this.objectFile + " TO " + f10.b());
        String b10 = f10.b();
        this.objectFile = b10;
        ObjectFile objectFile = this.f79100g;
        if (objectFile != null) {
            objectFile.setFilePath(b10);
        }
    }

    @Override
    public C2632k w(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        String str = this.objectFile;
        if (str != null && !str.isEmpty()) {
            c2632k.f9114a.add(this.objectFile);
        }
        return c2632k;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_RAW_OBJECT_FILE);
    }
}
