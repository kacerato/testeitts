package com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes;

import Ic.C2629h;
import Ic.C2632k;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.Texture.Cubemap.FileCubemap;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.g;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.p;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.q;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.s;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.w;
import wb.C15981c;

public class RawCubemapNode extends ShaderGraphNode implements s {

    public static final String f81183e = "RawCubemap";

    public transient FileCubemap f81184c;

    @Expose
    public String cubemapFile = "";

    public final ShaderGraphSlot[] f81185d = {new ShaderGraphSlot("Cubemap", C.CUBEMAP)};

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new RawCubemapNode();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return RawCubemapNode.class;
        }

        @Override
        public String c() {
            return "RawCubemap";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, RawCubemapNode.class);
        }

        @Override
        public String e() {
            return "Input";
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
        p.a(new a());
    }

    public RawCubemapNode() {
        this.serializedNodeType = "RawCubemap";
    }

    @Override
    public void C(BuildDictionary dictionary) {
        BuildDicFile f10;
        String str = this.cubemapFile;
        if (str == null || str.isEmpty() || (f10 = dictionary.f(this.cubemapFile)) == null) {
            return;
        }
        dictionary.h("RawCubemapNode: REPLACING " + this.cubemapFile + " TO " + f10.b());
        this.cubemapFile = f10.b();
        this.f81184c = null;
    }

    public FileCubemap H() {
        FileCubemap fileCubemap = this.f81184c;
        if (fileCubemap != null) {
            return fileCubemap;
        }
        String str = this.cubemapFile;
        if (str != null && !str.isEmpty()) {
            this.f81184c = C15981c.m(this.cubemapFile);
        }
        return this.f81184c;
    }

    public String I() {
        String str = this.cubemapFile;
        if (str == null) {
            str = "";
        }
        if (str.isEmpty()) {
            return "sgp_cube_0";
        }
        return "sgp_cube_" + Math.abs(str.hashCode());
    }

    public void J(String file) {
        if (file == null) {
            file = "";
        }
        this.cubemapFile = file;
        this.f81184c = null;
    }

    @Override
    public void a(FilamentMaterial material, Material engineMaterial) {
        FileCubemap H10;
        if (material == null || (H10 = H()) == null || H10.a() == null) {
            return;
        }
        material.p(I(), H10.a());
    }

    @Override
    public String b() {
        return I();
    }

    @Override
    public void h(g context, w stage) {
        String I10 = I();
        context.e(new ec.g(MaterialBuilder.m.SAMPLER_CUBEMAP, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, I10));
        context.d(this, 0, stage, "materialParams_" + I10, C.CUBEMAP);
    }

    @Override
    public C2632k i(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        String str = this.cubemapFile;
        if (str != null && !str.isEmpty()) {
            c2632k.f9114a.add(this.cubemapFile);
        }
        return c2632k;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f81185d;
    }

    @Override
    public w u() {
        return w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Cubemap";
    }

    @Override
    public boolean z() {
        return true;
    }
}
