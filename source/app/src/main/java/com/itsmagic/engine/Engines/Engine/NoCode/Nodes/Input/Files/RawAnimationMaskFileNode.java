package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Input.Files;

import Ic.C2629h;
import Ic.C2632k;
import JAVARuntime.AnimationMaskFile;
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

public class RawAnimationMaskFileNode extends NoCodeNode implements z {

    public static final String f79090i = "RawAnimationMaskFile";

    public transient AnimationMaskFile f79091g;

    @Expose
    public String animationMaskFile = "";

    public final NoCodeSlot[] f79092h = {new NoCodeSlot("Animation Mask File", H.ANIMATION_MASK_FILE).c(Lang.l(Lang.T.NOCODE_SLOT_ANIMATION_MASK_FILE))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new RawAnimationMaskFileNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return RawAnimationMaskFileNode.class;
        }

        @Override
        public String c() {
            return RawAnimationMaskFileNode.f79090i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, RawAnimationMaskFileNode.class);
        }

        @Override
        public String e() {
            return "Input/Files";
        }

        @Override
        public String f() {
            return "Animation Mask File";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public RawAnimationMaskFileNode() {
        this.serializedNodeType = f79090i;
    }

    public AnimationMaskFile G0() {
        AnimationMaskFile animationMaskFile = this.f79091g;
        if (animationMaskFile != null) {
            return animationMaskFile;
        }
        String str = this.animationMaskFile;
        if (str != null && !str.isEmpty()) {
            this.f79091g = new AnimationMaskFile(this.animationMaskFile);
        }
        return this.f79091g;
    }

    public void H0(String file) {
        if (file == null) {
            file = "";
        }
        this.animationMaskFile = file;
        this.f79091g = null;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f79092h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Animation Mask File";
    }

    @Override
    public boolean c0() {
        return true;
    }

    @Override
    public void m0() {
        y0(this.f79092h[0], G0());
    }

    @Override
    public void r0(BuildDictionary dictionary) {
        BuildDicFile f10;
        String str = this.animationMaskFile;
        if (str == null || str.isEmpty() || (f10 = dictionary.f(this.animationMaskFile)) == null) {
            return;
        }
        dictionary.h("RawAnimationMaskFileNode: REPLACING " + this.animationMaskFile + " TO " + f10.b());
        this.animationMaskFile = f10.b();
        this.f79091g = null;
    }

    @Override
    public C2632k w(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        String str = this.animationMaskFile;
        if (str != null && !str.isEmpty()) {
            c2632k.f9114a.add(this.animationMaskFile);
        }
        return c2632k;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_RAW_ANIMATION_MASK_FILE);
    }
}
