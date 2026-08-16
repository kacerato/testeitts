package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch;

import JAVARuntime.Component;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;

public class DigitalGlitchVoronoiDistortion extends AbstractDigitalGlitchEffect implements Serializable {

    public static final String f75199L1 = "DigitalGlitchVoronoiDistortion";

    public static final Class f75200M1 = DigitalGlitchVoronoiDistortion.class;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return DigitalGlitchVoronoiDistortion.f75200M1;
        }

        @Override
        public String c() {
            return DigitalGlitchVoronoiDistortion.f75199L1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Glitch";
        }
    }

    static {
        C13201a.b(new a());
    }

    public DigitalGlitchVoronoiDistortion() {
        super(f75199L1, "DG: Voronoi Distortion", 17.0f);
        setDefaults(1.0f, 0.8f, 0.85f, 34.0f, 0.2f, 0.25f, 0.5f, 8.0f, 0.4f, 0.0f);
    }

    public static void buildShaderCache() {
        new DigitalGlitchVoronoiDistortion().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new DigitalGlitchVoronoiDistortion().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75148V == null) {
            this.f75148V = new JAVARuntime.DigitalGlitchVoronoiDistortion(this);
        }
        return this.f75148V;
    }

    @Override
    public DigitalGlitchVoronoiDistortion newInstance() {
        return new DigitalGlitchVoronoiDistortion();
    }
}
