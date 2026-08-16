package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch;

import JAVARuntime.Component;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;

public class DigitalGlitchRandomDistortionFeed extends AbstractDigitalGlitchEffect implements Serializable {

    public static final String f75187L1 = "DigitalGlitchRandomDistortionFeed";

    public static final Class f75188M1 = DigitalGlitchRandomDistortionFeed.class;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return DigitalGlitchRandomDistortionFeed.f75188M1;
        }

        @Override
        public String c() {
            return DigitalGlitchRandomDistortionFeed.f75187L1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Glitch";
        }
    }

    static {
        C13201a.b(new a());
    }

    public DigitalGlitchRandomDistortionFeed() {
        super(f75187L1, "DG: Random Distortion Feed", 9.0f);
        setDefaults(1.0f, 0.85f, 1.4f, 26.0f, 0.45f, 0.35f, 0.55f, 8.0f, 0.2f, 0.0f);
    }

    public static void buildShaderCache() {
        new DigitalGlitchRandomDistortionFeed().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new DigitalGlitchRandomDistortionFeed().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75148V == null) {
            this.f75148V = new JAVARuntime.DigitalGlitchRandomDistortionFeed(this);
        }
        return this.f75148V;
    }

    @Override
    public DigitalGlitchRandomDistortionFeed newInstance() {
        return new DigitalGlitchRandomDistortionFeed();
    }
}
