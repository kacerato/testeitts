package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Input.Files;

import Ic.C2629h;
import Ic.C2632k;
import JAVARuntime.AnimationFile;
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

public class RawAnimationFileNode extends NoCodeNode implements z {

    public static final String f79087i = "RawAnimationFile";

    public transient AnimationFile f79088g;

    @Expose
    public String animationFile = "";

    public final NoCodeSlot[] f79089h = {new NoCodeSlot("Animation File", H.ANIMATION_FILE).c(Lang.l(Lang.T.NOCODE_SLOT_ANIMATION_FILE))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new RawAnimationFileNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return RawAnimationFileNode.class;
        }

        @Override
        public String c() {
            return RawAnimationFileNode.f79087i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, RawAnimationFileNode.class);
        }

        @Override
        public String e() {
            return "Input/Files";
        }

        @Override
        public String f() {
            return "Animation File";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public RawAnimationFileNode() {
        this.serializedNodeType = f79087i;
    }

    public AnimationFile G0() {
        AnimationFile animationFile = this.f79088g;
        if (animationFile != null) {
            return animationFile;
        }
        String str = this.animationFile;
        if (str != null && !str.isEmpty()) {
            this.f79088g = new AnimationFile(this.animationFile);
        }
        return this.f79088g;
    }

    public void H0(String file) {
        if (file == null) {
            file = "";
        }
        this.animationFile = file;
        this.f79088g = null;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f79089h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Animation File";
    }

    @Override
    public boolean c0() {
        return true;
    }

    @Override
    public void m0() {
        y0(this.f79089h[0], G0());
    }

    @Override
    public void r0(BuildDictionary dictionary) {
        BuildDicFile f10;
        String str = this.animationFile;
        if (str == null || str.isEmpty() || (f10 = dictionary.f(this.animationFile)) == null) {
            return;
        }
        dictionary.h("RawAnimationFileNode: REPLACING " + this.animationFile + " TO " + f10.b());
        this.animationFile = f10.b();
        this.f79088g = null;
    }

    @Override
    public C2632k w(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        String str = this.animationFile;
        if (str != null && !str.isEmpty()) {
            c2632k.f9114a.add(this.animationFile);
        }
        return c2632k;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_RAW_ANIMATION_FILE);
    }
}
