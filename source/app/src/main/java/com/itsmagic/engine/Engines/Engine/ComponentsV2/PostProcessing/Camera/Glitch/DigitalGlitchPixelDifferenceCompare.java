package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch;

import JAVARuntime.Component;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;

public class DigitalGlitchPixelDifferenceCompare extends AbstractDigitalGlitchEffect implements Serializable {

    public static final String f75183L1 = "DigitalGlitchPixelDifferenceCompare";

    public static final Class f75184M1 = DigitalGlitchPixelDifferenceCompare.class;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return DigitalGlitchPixelDifferenceCompare.f75184M1;
        }

        @Override
        public String c() {
            return DigitalGlitchPixelDifferenceCompare.f75183L1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Glitch";
        }
    }

    static {
        C13201a.b(new a());
    }

    public DigitalGlitchPixelDifferenceCompare() {
        super(f75183L1, "DG: Pixel Difference Compare", 10.0f);
        setDefaults(1.0f, 0.75f, 1.1f, 12.0f, 0.2f, 0.25f, 0.35f, 6.0f, 0.1f, 0.0f);
    }

    public static void buildShaderCache() {
        new DigitalGlitchPixelDifferenceCompare().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new DigitalGlitchPixelDifferenceCompare().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75148V == null) {
            this.f75148V = new JAVARuntime.DigitalGlitchPixelDifferenceCompare(this);
        }
        return this.f75148V;
    }

    @Override
    public DigitalGlitchPixelDifferenceCompare newInstance() {
        return new DigitalGlitchPixelDifferenceCompare();
    }
}
