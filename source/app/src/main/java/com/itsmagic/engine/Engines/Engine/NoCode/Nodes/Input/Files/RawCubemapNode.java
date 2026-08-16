package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Input.Files;

import Ic.C2629h;
import Ic.C2632k;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.Texture.Cubemap.FileCubemap;
import ga.EnumC13304B;
import ga.H;
import ga.o;
import ga.p;
import ga.z;
import wb.C15981c;

public class RawCubemapNode extends NoCodeNode implements z {

    public static final String f79093i = "RawCubemap";

    public transient FileCubemap f79094g;

    @Expose
    public String cubemapFile = "";

    public final NoCodeSlot[] f79095h = {new NoCodeSlot("Cubemap", H.CUBEMAP).c(Lang.l(Lang.T.NOCODE_SLOT_CUBEMAP))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new RawCubemapNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return RawCubemapNode.class;
        }

        @Override
        public String c() {
            return "RawCubemap";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, RawCubemapNode.class);
        }

        @Override
        public String e() {
            return "Input/Files";
        }

        @Override
        public String f() {
            return "Cubemap";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public RawCubemapNode() {
        this.serializedNodeType = "RawCubemap";
    }

    public FileCubemap G0() {
        FileCubemap fileCubemap = this.f79094g;
        if (fileCubemap != null) {
            return fileCubemap;
        }
        String str = this.cubemapFile;
        if (str != null && !str.isEmpty()) {
            this.f79094g = C15981c.m(this.cubemapFile);
        }
        return this.f79094g;
    }

    public void H0(String file) {
        if (file == null) {
            file = "";
        }
        this.cubemapFile = file;
        this.f79094g = null;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f79095h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Cubemap";
    }

    @Override
    public boolean c0() {
        return true;
    }

    @Override
    public void m0() {
        y0(this.f79095h[0], G0());
    }

    @Override
    public void r0(BuildDictionary dictionary) {
        BuildDicFile f10;
        String str = this.cubemapFile;
        if (str == null || str.isEmpty() || (f10 = dictionary.f(this.cubemapFile)) == null) {
            return;
        }
        dictionary.h("RawCubemapNode: REPLACING " + this.cubemapFile + " TO " + f10.b());
        this.cubemapFile = f10.b();
        this.f79094g = null;
    }

    @Override
    public C2632k w(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        String str = this.cubemapFile;
        if (str != null && !str.isEmpty()) {
            c2632k.f9114a.add(this.cubemapFile);
        }
        return c2632k;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_RAW_CUBEMAP);
    }
}
