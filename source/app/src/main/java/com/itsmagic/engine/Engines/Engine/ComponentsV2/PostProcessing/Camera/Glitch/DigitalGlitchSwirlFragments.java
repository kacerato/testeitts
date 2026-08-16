package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch;

import JAVARuntime.Component;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;

public class DigitalGlitchSwirlFragments extends AbstractDigitalGlitchEffect implements Serializable {

    public static final String f75197L1 = "DigitalGlitchSwirlFragments";

    public static final Class f75198M1 = DigitalGlitchSwirlFragments.class;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return DigitalGlitchSwirlFragments.f75198M1;
        }

        @Override
        public String c() {
            return DigitalGlitchSwirlFragments.f75197L1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Glitch";
        }
    }

    static {
        C13201a.b(new a());
    }

    public DigitalGlitchSwirlFragments() {
        super(f75197L1, "DG: Swirl Fragments", 14.0f);
        setDefaults(1.0f, 0.7f, 0.8f, 22.0f, 0.25f, 0.35f, 0.4f, 8.0f, 0.35f, 1.15f);
    }

    public static void buildShaderCache() {
        new DigitalGlitchSwirlFragments().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new DigitalGlitchSwirlFragments().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75148V == null) {
            this.f75148V = new JAVARuntime.DigitalGlitchSwirlFragments(this);
        }
        return this.f75148V;
    }

    @Override
    public DigitalGlitchSwirlFragments newInstance() {
        return new DigitalGlitchSwirlFragments();
    }
}
