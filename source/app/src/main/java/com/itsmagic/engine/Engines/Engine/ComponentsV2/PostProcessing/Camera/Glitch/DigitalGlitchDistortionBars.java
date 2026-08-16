package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch;

import JAVARuntime.Component;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;

public class DigitalGlitchDistortionBars extends AbstractDigitalGlitchEffect implements Serializable {

    public static final String f75167L1 = "DigitalGlitchDistortionBars";

    public static final Class f75168M1 = DigitalGlitchDistortionBars.class;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return DigitalGlitchDistortionBars.f75168M1;
        }

        @Override
        public String c() {
            return DigitalGlitchDistortionBars.f75167L1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Glitch";
        }
    }

    static {
        C13201a.b(new a());
    }

    public DigitalGlitchDistortionBars() {
        super(f75167L1, "DG: Distortion Bars", 21.0f);
        setDefaults(1.0f, 0.85f, 1.05f, 36.0f, 1.2f, 0.35f, 0.25f, 8.0f, 0.15f, 0.0f);
    }

    public static void buildShaderCache() {
        new DigitalGlitchDistortionBars().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new DigitalGlitchDistortionBars().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75148V == null) {
            this.f75148V = new JAVARuntime.DigitalGlitchDistortionBars(this);
        }
        return this.f75148V;
    }

    @Override
    public DigitalGlitchDistortionBars newInstance() {
        return new DigitalGlitchDistortionBars();
    }
}
