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
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import ga.EnumC13304B;
import ga.H;
import ga.o;
import ga.z;
import ub.g;
import ub.p;
import yb.C16165b;

public class RawTextureNode extends NoCodeNode implements z {

    public static final String f79105i = "RawTexture";

    public transient p f79106g;

    @Expose
    public String textureFile = "";

    public final NoCodeSlot[] f79107h = {new NoCodeSlot(SerializableShaderEntry.f81152f, H.TEXTURE).c(Lang.l(Lang.T.NOCODE_SLOT_TEXTURE))};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new RawTextureNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return RawTextureNode.class;
        }

        @Override
        public String c() {
            return "RawTexture";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, RawTextureNode.class);
        }

        @Override
        public String e() {
            return "Input/Files";
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
        o.a(new a());
    }

    public RawTextureNode() {
        this.serializedNodeType = "RawTexture";
    }

    public p G0() {
        p pVar = this.f79106g;
        if (pVar != null) {
            return pVar;
        }
        String str = this.textureFile;
        if (str != null && !str.isEmpty()) {
            this.f79106g = C16165b.u(this.textureFile);
        }
        return this.f79106g;
    }

    public final boolean H0() {
        String str = this.textureFile;
        return (str == null || str.isEmpty()) ? false : true;
    }

    public void I0(String file) {
        if (file == null) {
            file = "";
        }
        this.textureFile = file;
        this.f79106g = null;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f79107h;
    }

    public void J0(p value) {
        this.f79106g = value;
        if (value instanceof g) {
            this.textureFile = ((g) value).getFile();
        } else if (value == null) {
            this.textureFile = "";
        } else if (this.textureFile == null) {
            this.textureFile = "";
        }
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return SerializableShaderEntry.f81152f;
    }

    @Override
    public boolean c0() {
        return true;
    }

    @Override
    public void f0(Lb.a listener) {
        super.f0(listener);
        if (H0()) {
            if (listener != null) {
                listener.b("(NoCode),(Texture),(Loading),(" + this.textureFile + ")");
            }
            this.f79106g = C16165b.x(this.textureFile);
            if (listener != null) {
                listener.e();
            }
        }
    }

    @Override
    public void m0() {
        y0(this.f79107h[0], G0());
    }

    @Override
    public int q() {
        return super.q() + (H0() ? 1 : 0);
    }

    @Override
    public void r0(BuildDictionary dictionary) {
        BuildDicFile f10;
        String str = this.textureFile;
        if (str == null || str.isEmpty() || (f10 = dictionary.f(this.textureFile)) == null) {
            return;
        }
        dictionary.h("RawTextureNode: REPLACING " + this.textureFile + " TO " + f10.b());
        this.textureFile = f10.b();
        this.f79106g = null;
    }

    @Override
    public C2632k w(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        String str = this.textureFile;
        if (str != null && !str.isEmpty()) {
            c2632k.f9114a.add(this.textureFile);
        }
        return c2632k;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_RAW_TEXTURE);
    }
}
