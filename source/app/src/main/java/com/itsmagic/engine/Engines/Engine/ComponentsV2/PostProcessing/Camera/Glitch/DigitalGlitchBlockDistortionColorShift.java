package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch;

import JAVARuntime.Component;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;

public class DigitalGlitchBlockDistortionColorShift extends AbstractDigitalGlitchEffect implements Serializable {

    public static final String f75159L1 = "DigitalGlitchBlockDistortionColorShift";

    public static final Class f75160M1 = DigitalGlitchBlockDistortionColorShift.class;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return DigitalGlitchBlockDistortionColorShift.f75160M1;
        }

        @Override
        public String c() {
            return DigitalGlitchBlockDistortionColorShift.f75159L1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Glitch";
        }
    }

    static {
        C13201a.b(new a());
    }

    public DigitalGlitchBlockDistortionColorShift() {
        super(f75159L1, "DG: Block Distortion + Color Shift", 3.0f);
        setDefaults(1.0f, 0.75f, 1.1f, 28.0f, 0.3f, 0.8f, 0.2f, 8.0f, 0.15f, 0.0f);
    }

    public static void buildShaderCache() {
        new DigitalGlitchBlockDistortionColorShift().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new DigitalGlitchBlockDistortionColorShift().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75148V == null) {
            this.f75148V = new JAVARuntime.DigitalGlitchBlockDistortionColorShift(this);
        }
        return this.f75148V;
    }

    @Override
    public DigitalGlitchBlockDistortionColorShift newInstance() {
        return new DigitalGlitchBlockDistortionColorShift();
    }
}
