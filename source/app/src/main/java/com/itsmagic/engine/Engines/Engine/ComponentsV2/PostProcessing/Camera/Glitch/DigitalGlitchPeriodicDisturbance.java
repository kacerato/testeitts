package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch;

import JAVARuntime.Component;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;

public class DigitalGlitchPeriodicDisturbance extends AbstractDigitalGlitchEffect implements Serializable {

    public static final String f75181L1 = "DigitalGlitchPeriodicDisturbance";

    public static final Class f75182M1 = DigitalGlitchPeriodicDisturbance.class;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return DigitalGlitchPeriodicDisturbance.f75182M1;
        }

        @Override
        public String c() {
            return DigitalGlitchPeriodicDisturbance.f75181L1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Glitch";
        }
    }

    static {
        C13201a.b(new a());
    }

    public DigitalGlitchPeriodicDisturbance() {
        super(f75181L1, "DG: Periodic Disturbance", 1.0f);
        setDefaults(1.0f, 0.55f, 0.8f, 24.0f, 0.25f, 0.15f, 0.15f, 8.0f, 0.1f, 0.0f);
    }

    public static void buildShaderCache() {
        new DigitalGlitchPeriodicDisturbance().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new DigitalGlitchPeriodicDisturbance().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75148V == null) {
            this.f75148V = new JAVARuntime.DigitalGlitchPeriodicDisturbance(this);
        }
        return this.f75148V;
    }

    @Override
    public DigitalGlitchPeriodicDisturbance newInstance() {
        return new DigitalGlitchPeriodicDisturbance();
    }
}
