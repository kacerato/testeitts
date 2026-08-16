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
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.q;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.s;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.w;
import ub.g;
import ub.p;
import yb.C16165b;

public class RawTextureNode extends ShaderGraphNode implements s {

    public static final String f81212e = "RawTexture";

    public transient p f81213c;

    @Expose
    public String textureFile = "";

    public final ShaderGraphSlot[] f81214d = {new ShaderGraphSlot(SerializableShaderEntry.f81152f, C.TEXTURE)};

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new RawTextureNode();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return RawTextureNode.class;
        }

        @Override
        public String c() {
            return "RawTexture";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, RawTextureNode.class);
        }

        @Override
        public String e() {
            return "Input";
        }

        @Override
        public String f() {
            return SerializableShaderEntry.f81152f;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public RawTextureNode() {
        this.serializedNodeType = "RawTexture";
    }

    @Override
    public void C(BuildDictionary dictionary) {
        BuildDicFile f10;
        String str = this.textureFile;
        if (str == null || str.isEmpty() || (f10 = dictionary.f(this.textureFile)) == null) {
            return;
        }
        dictionary.h("RawTextureNode: REPLACING " + this.textureFile + " TO " + f10.b());
        this.textureFile = f10.b();
        this.f81213c = null;
    }

    public p H() {
        p pVar = this.f81213c;
        if (pVar != null) {
            return pVar;
        }
        String str = this.textureFile;
        if (str != null && !str.isEmpty()) {
            this.f81213c = C16165b.u(this.textureFile);
        }
        return this.f81213c;
    }

    public String I() {
        String str = this.textureFile;
        if (str == null) {
            str = "";
        }
        if (str.isEmpty()) {
            return "sgp_tex_0";
        }
        return "sgp_tex_" + Math.abs(str.hashCode());
    }

    public void J(String file) {
        if (file == null) {
            file = "";
        }
        this.textureFile = file;
        this.f81213c = null;
    }

    public void K(p value) {
        this.f81213c = value;
        if (value instanceof g) {
            this.textureFile = ((g) value).getFile();
        } else if (value == null) {
            this.textureFile = "";
        } else if (this.textureFile == null) {
            this.textureFile = "";
        }
    }

    @Override
    public void a(FilamentMaterial material, Material engineMaterial) {
        if (material == null) {
            return;
        }
        p H10 = H();
        if (p.L(H10)) {
            H10.f(material, I());
            return;
        }
        p pVar = C16165b.f130163i;
        if (pVar != null) {
            pVar.f(material, I());
        }
    }

    @Override
    public String b() {
        return I();
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, w stage) {
        String I10 = I();
        context.e(new ec.g(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, I10));
        context.d(this, 0, stage, "materialParams_" + I10, C.TEXTURE);
    }

    @Override
    public C2632k i(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        String str = this.textureFile;
        if (str != null && !str.isEmpty()) {
            c2632k.f9114a.add(this.textureFile);
        }
        return c2632k;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f81214d;
    }

    @Override
    public w u() {
        return w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return SerializableShaderEntry.f81152f;
    }

    @Override
    public boolean z() {
        return true;
    }
}
