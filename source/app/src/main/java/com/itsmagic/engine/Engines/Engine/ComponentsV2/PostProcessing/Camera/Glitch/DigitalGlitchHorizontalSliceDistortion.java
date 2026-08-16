package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch;

import JAVARuntime.Component;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;

public class DigitalGlitchHorizontalSliceDistortion extends AbstractDigitalGlitchEffect implements Serializable {

    public static final String f75169L1 = "DigitalGlitchHorizontalSliceDistortion";

    public static final Class f75170M1 = DigitalGlitchHorizontalSliceDistortion.class;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return DigitalGlitchHorizontalSliceDistortion.f75170M1;
        }

        @Override
        public String c() {
            return DigitalGlitchHorizontalSliceDistortion.f75169L1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Glitch";
        }
    }

    static {
        C13201a.b(new a());
    }

    public DigitalGlitchHorizontalSliceDistortion() {
        super(f75169L1, "DG: Horizontal Slice Distortion", 13.0f);
        setDefaults(1.0f, 0.8f, 1.0f, 20.0f, 1.1f, 0.1f, 0.2f, 8.0f, 0.0f, 0.0f);
    }

    public static void buildShaderCache() {
        new DigitalGlitchHorizontalSliceDistortion().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new DigitalGlitchHorizontalSliceDistortion().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75148V == null) {
            this.f75148V = new JAVARuntime.DigitalGlitchHorizontalSliceDistortion(this);
        }
        return this.f75148V;
    }

    @Override
    public DigitalGlitchHorizontalSliceDistortion newInstance() {
        return new DigitalGlitchHorizontalSliceDistortion();
    }
}
