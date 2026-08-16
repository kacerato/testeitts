package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch;

import JAVARuntime.Component;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;

public class DigitalGlitchCircleBlockDamage extends AbstractDigitalGlitchEffect implements Serializable {

    public static final String f75165L1 = "DigitalGlitchCircleBlockDamage";

    public static final Class f75166M1 = DigitalGlitchCircleBlockDamage.class;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return DigitalGlitchCircleBlockDamage.f75166M1;
        }

        @Override
        public String c() {
            return DigitalGlitchCircleBlockDamage.f75165L1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Glitch";
        }
    }

    static {
        C13201a.b(new a());
    }

    public DigitalGlitchCircleBlockDamage() {
        super(f75165L1, "DG: Circle Block Damage", 7.0f);
        setDefaults(1.0f, 0.75f, 0.95f, 30.0f, 0.15f, 0.25f, 0.4f, 10.0f, 0.55f, 0.0f);
    }

    public static void buildShaderCache() {
        new DigitalGlitchCircleBlockDamage().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new DigitalGlitchCircleBlockDamage().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75148V == null) {
            this.f75148V = new JAVARuntime.DigitalGlitchCircleBlockDamage(this);
        }
        return this.f75148V;
    }

    @Override
    public DigitalGlitchCircleBlockDamage newInstance() {
        return new DigitalGlitchCircleBlockDamage();
    }
}
