package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch;

import JAVARuntime.Component;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;

public class DigitalGlitchLineBlockDamage extends AbstractDigitalGlitchEffect implements Serializable {

    public static final String f75175L1 = "DigitalGlitchLineBlockDamage";

    public static final Class f75176M1 = DigitalGlitchLineBlockDamage.class;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return DigitalGlitchLineBlockDamage.f75176M1;
        }

        @Override
        public String c() {
            return DigitalGlitchLineBlockDamage.f75175L1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Glitch";
        }
    }

    static {
        C13201a.b(new a());
    }

    public DigitalGlitchLineBlockDamage() {
        super(f75175L1, "DG: Line Block Damage", 8.0f);
        setDefaults(1.0f, 0.8f, 1.15f, 42.0f, 0.95f, 0.2f, 0.25f, 8.0f, 0.1f, 0.0f);
    }

    public static void buildShaderCache() {
        new DigitalGlitchLineBlockDamage().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new DigitalGlitchLineBlockDamage().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75148V == null) {
            this.f75148V = new JAVARuntime.DigitalGlitchLineBlockDamage(this);
        }
        return this.f75148V;
    }

    @Override
    public DigitalGlitchLineBlockDamage newInstance() {
        return new DigitalGlitchLineBlockDamage();
    }
}
