package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch;

import JAVARuntime.Component;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;

public class DigitalGlitchOrganicNoiseDistortion extends AbstractDigitalGlitchEffect implements Serializable {

    public static final String f75179L1 = "DigitalGlitchOrganicNoiseDistortion";

    public static final Class f75180M1 = DigitalGlitchOrganicNoiseDistortion.class;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return DigitalGlitchOrganicNoiseDistortion.f75180M1;
        }

        @Override
        public String c() {
            return DigitalGlitchOrganicNoiseDistortion.f75179L1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Glitch";
        }
    }

    static {
        C13201a.b(new a());
    }

    public DigitalGlitchOrganicNoiseDistortion() {
        super(f75179L1, "DG: Organic Noise Distortion", 6.0f);
        setDefaults(1.0f, 0.65f, 0.85f, 22.0f, 0.2f, 0.2f, 0.9f, 8.0f, 0.3f, 0.0f);
    }

    public static void buildShaderCache() {
        new DigitalGlitchOrganicNoiseDistortion().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new DigitalGlitchOrganicNoiseDistortion().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75148V == null) {
            this.f75148V = new JAVARuntime.DigitalGlitchOrganicNoiseDistortion(this);
        }
        return this.f75148V;
    }

    @Override
    public DigitalGlitchOrganicNoiseDistortion newInstance() {
        return new DigitalGlitchOrganicNoiseDistortion();
    }
}
