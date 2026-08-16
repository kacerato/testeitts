package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch;

import JAVARuntime.Component;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;

public class DigitalGlitchChaoticSmoothBlend extends AbstractDigitalGlitchEffect implements Serializable {

    public static final String f75163L1 = "DigitalGlitchChaoticSmoothBlend";

    public static final Class f75164M1 = DigitalGlitchChaoticSmoothBlend.class;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return DigitalGlitchChaoticSmoothBlend.f75164M1;
        }

        @Override
        public String c() {
            return DigitalGlitchChaoticSmoothBlend.f75163L1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Glitch";
        }
    }

    static {
        C13201a.b(new a());
    }

    public DigitalGlitchChaoticSmoothBlend() {
        super(f75163L1, "DG: Chaotic Smooth Blend", 16.0f);
        setDefaults(1.0f, 0.6f, 0.75f, 20.0f, 0.35f, 0.4f, 0.65f, 8.0f, 0.25f, 0.2f);
    }

    public static void buildShaderCache() {
        new DigitalGlitchChaoticSmoothBlend().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new DigitalGlitchChaoticSmoothBlend().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75148V == null) {
            this.f75148V = new JAVARuntime.DigitalGlitchChaoticSmoothBlend(this);
        }
        return this.f75148V;
    }

    @Override
    public DigitalGlitchChaoticSmoothBlend newInstance() {
        return new DigitalGlitchChaoticSmoothBlend();
    }
}
