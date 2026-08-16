package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch;

import JAVARuntime.Component;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;

public class DigitalGlitchBrokenPixelDistortion extends AbstractDigitalGlitchEffect implements Serializable {

    public static final String f75161L1 = "DigitalGlitchBrokenPixelDistortion";

    public static final Class f75162M1 = DigitalGlitchBrokenPixelDistortion.class;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return DigitalGlitchBrokenPixelDistortion.f75162M1;
        }

        @Override
        public String c() {
            return DigitalGlitchBrokenPixelDistortion.f75161L1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Glitch";
        }
    }

    static {
        C13201a.b(new a());
    }

    public DigitalGlitchBrokenPixelDistortion() {
        super(f75161L1, "DG: Broken Pixel Distortion", 12.0f);
        setDefaults(1.0f, 0.7f, 1.0f, 14.0f, 0.25f, 0.25f, 0.45f, 4.0f, 0.15f, 0.0f);
    }

    public static void buildShaderCache() {
        new DigitalGlitchBrokenPixelDistortion().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new DigitalGlitchBrokenPixelDistortion().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75148V == null) {
            this.f75148V = new JAVARuntime.DigitalGlitchBrokenPixelDistortion(this);
        }
        return this.f75148V;
    }

    @Override
    public DigitalGlitchBrokenPixelDistortion newInstance() {
        return new DigitalGlitchBrokenPixelDistortion();
    }
}
