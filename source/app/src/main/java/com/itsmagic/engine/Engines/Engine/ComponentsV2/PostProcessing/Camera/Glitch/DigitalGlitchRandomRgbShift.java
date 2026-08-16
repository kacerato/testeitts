package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch;

import JAVARuntime.Component;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;

public class DigitalGlitchRandomRgbShift extends AbstractDigitalGlitchEffect implements Serializable {

    public static final String f75189L1 = "DigitalGlitchRandomRgbShift";

    public static final Class f75190M1 = DigitalGlitchRandomRgbShift.class;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return DigitalGlitchRandomRgbShift.f75190M1;
        }

        @Override
        public String c() {
            return DigitalGlitchRandomRgbShift.f75189L1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Glitch";
        }
    }

    static {
        C13201a.b(new a());
    }

    public DigitalGlitchRandomRgbShift() {
        super(f75189L1, "DG: Random RGB Shift", 19.0f);
        setDefaults(1.0f, 0.65f, 1.35f, 18.0f, 0.3f, 1.0f, 0.15f, 8.0f, 0.0f, 0.0f);
    }

    public static void buildShaderCache() {
        new DigitalGlitchRandomRgbShift().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new DigitalGlitchRandomRgbShift().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75148V == null) {
            this.f75148V = new JAVARuntime.DigitalGlitchRandomRgbShift(this);
        }
        return this.f75148V;
    }

    @Override
    public DigitalGlitchRandomRgbShift newInstance() {
        return new DigitalGlitchRandomRgbShift();
    }
}
