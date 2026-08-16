package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch;

import JAVARuntime.Component;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;

public class DigitalGlitchJitter extends AbstractDigitalGlitchEffect implements Serializable {

    public static final String f75173L1 = "DigitalGlitchJitter";

    public static final Class f75174M1 = DigitalGlitchJitter.class;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return DigitalGlitchJitter.f75174M1;
        }

        @Override
        public String c() {
            return DigitalGlitchJitter.f75173L1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Glitch";
        }
    }

    static {
        C13201a.b(new a());
    }

    public DigitalGlitchJitter() {
        super(f75173L1, "DG: Jitter", 4.0f);
        setDefaults(1.0f, 0.45f, 1.7f, 16.0f, 1.0f, 0.15f, 0.1f, 8.0f, 0.0f, 0.0f);
    }

    public static void buildShaderCache() {
        new DigitalGlitchJitter().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new DigitalGlitchJitter().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75148V == null) {
            this.f75148V = new JAVARuntime.DigitalGlitchJitter(this);
        }
        return this.f75148V;
    }

    @Override
    public DigitalGlitchJitter newInstance() {
        return new DigitalGlitchJitter();
    }
}
