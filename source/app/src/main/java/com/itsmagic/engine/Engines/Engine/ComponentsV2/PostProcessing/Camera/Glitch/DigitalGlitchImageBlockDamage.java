package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch;

import JAVARuntime.Component;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;

public class DigitalGlitchImageBlockDamage extends AbstractDigitalGlitchEffect implements Serializable {

    public static final String f75171L1 = "DigitalGlitchImageBlockDamage";

    public static final Class f75172M1 = DigitalGlitchImageBlockDamage.class;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return DigitalGlitchImageBlockDamage.f75172M1;
        }

        @Override
        public String c() {
            return DigitalGlitchImageBlockDamage.f75171L1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Glitch";
        }
    }

    static {
        C13201a.b(new a());
    }

    public DigitalGlitchImageBlockDamage() {
        super(f75171L1, "DG: Image Block Damage", 2.0f);
        setDefaults(1.0f, 0.85f, 1.0f, 48.0f, 0.2f, 0.2f, 0.2f, 8.0f, 0.1f, 0.0f);
    }

    public static void buildShaderCache() {
        new DigitalGlitchImageBlockDamage().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new DigitalGlitchImageBlockDamage().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75148V == null) {
            this.f75148V = new JAVARuntime.DigitalGlitchImageBlockDamage(this);
        }
        return this.f75148V;
    }

    @Override
    public DigitalGlitchImageBlockDamage newInstance() {
        return new DigitalGlitchImageBlockDamage();
    }
}
