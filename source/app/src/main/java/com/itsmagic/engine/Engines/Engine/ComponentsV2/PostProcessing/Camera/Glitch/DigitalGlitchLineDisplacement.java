package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch;

import JAVARuntime.Component;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;

public class DigitalGlitchLineDisplacement extends AbstractDigitalGlitchEffect implements Serializable {

    public static final String f75177L1 = "DigitalGlitchLineDisplacement";

    public static final Class f75178M1 = DigitalGlitchLineDisplacement.class;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return DigitalGlitchLineDisplacement.f75178M1;
        }

        @Override
        public String c() {
            return DigitalGlitchLineDisplacement.f75177L1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Glitch";
        }
    }

    static {
        C13201a.b(new a());
    }

    public DigitalGlitchLineDisplacement() {
        super(f75177L1, "DG: Line Displacement", 5.0f);
        setDefaults(1.0f, 0.7f, 1.0f, 20.0f, 1.25f, 0.1f, 0.15f, 8.0f, 0.0f, 0.0f);
    }

    public static void buildShaderCache() {
        new DigitalGlitchLineDisplacement().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new DigitalGlitchLineDisplacement().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75148V == null) {
            this.f75148V = new JAVARuntime.DigitalGlitchLineDisplacement(this);
        }
        return this.f75148V;
    }

    @Override
    public DigitalGlitchLineDisplacement newInstance() {
        return new DigitalGlitchLineDisplacement();
    }
}
