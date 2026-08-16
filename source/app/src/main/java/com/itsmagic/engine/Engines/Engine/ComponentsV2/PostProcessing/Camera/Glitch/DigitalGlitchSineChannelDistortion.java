package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch;

import JAVARuntime.Component;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;

public class DigitalGlitchSineChannelDistortion extends AbstractDigitalGlitchEffect implements Serializable {

    public static final String f75193L1 = "DigitalGlitchSineChannelDistortion";

    public static final Class f75194M1 = DigitalGlitchSineChannelDistortion.class;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return DigitalGlitchSineChannelDistortion.f75194M1;
        }

        @Override
        public String c() {
            return DigitalGlitchSineChannelDistortion.f75193L1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Glitch";
        }
    }

    static {
        C13201a.b(new a());
    }

    public DigitalGlitchSineChannelDistortion() {
        super(f75193L1, "DG: Sine Channel Distortion", 20.0f);
        setDefaults(1.0f, 0.7f, 1.0f, 18.0f, 0.9f, 0.45f, 0.1f, 8.0f, 0.0f, 0.0f);
    }

    public static void buildShaderCache() {
        new DigitalGlitchSineChannelDistortion().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new DigitalGlitchSineChannelDistortion().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75148V == null) {
            this.f75148V = new JAVARuntime.DigitalGlitchSineChannelDistortion(this);
        }
        return this.f75148V;
    }

    @Override
    public DigitalGlitchSineChannelDistortion newInstance() {
        return new DigitalGlitchSineChannelDistortion();
    }
}
