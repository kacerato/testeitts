package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch;

import JAVARuntime.Component;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;

public class DigitalGlitchPixelatedRgbInterlace extends AbstractDigitalGlitchEffect implements Serializable {

    public static final String f75185L1 = "DigitalGlitchPixelatedRgbInterlace";

    public static final Class f75186M1 = DigitalGlitchPixelatedRgbInterlace.class;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return DigitalGlitchPixelatedRgbInterlace.f75186M1;
        }

        @Override
        public String c() {
            return DigitalGlitchPixelatedRgbInterlace.f75185L1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Glitch";
        }
    }

    static {
        C13201a.b(new a());
    }

    public DigitalGlitchPixelatedRgbInterlace() {
        super(f75185L1, "DG: Pixelated RGB Interlace", 15.0f);
        setDefaults(1.0f, 0.8f, 1.2f, 16.0f, 0.7f, 0.55f, 0.2f, 6.0f, 0.0f, 0.0f);
    }

    public static void buildShaderCache() {
        new DigitalGlitchPixelatedRgbInterlace().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new DigitalGlitchPixelatedRgbInterlace().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75148V == null) {
            this.f75148V = new JAVARuntime.DigitalGlitchPixelatedRgbInterlace(this);
        }
        return this.f75148V;
    }

    @Override
    public DigitalGlitchPixelatedRgbInterlace newInstance() {
        return new DigitalGlitchPixelatedRgbInterlace();
    }
}
