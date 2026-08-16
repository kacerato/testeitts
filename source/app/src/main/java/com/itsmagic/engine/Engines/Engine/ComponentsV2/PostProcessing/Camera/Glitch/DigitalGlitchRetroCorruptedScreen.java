package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch;

import JAVARuntime.Component;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;

public class DigitalGlitchRetroCorruptedScreen extends AbstractDigitalGlitchEffect implements Serializable {

    public static final String f75191L1 = "DigitalGlitchRetroCorruptedScreen";

    public static final Class f75192M1 = DigitalGlitchRetroCorruptedScreen.class;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return DigitalGlitchRetroCorruptedScreen.f75192M1;
        }

        @Override
        public String c() {
            return DigitalGlitchRetroCorruptedScreen.f75191L1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Glitch";
        }
    }

    static {
        C13201a.b(new a());
    }

    public DigitalGlitchRetroCorruptedScreen() {
        super(f75191L1, "DG: Retro Corrupted Screen", 11.0f);
        setDefaults(1.0f, 0.75f, 0.9f, 18.0f, 0.75f, 0.45f, 0.35f, 5.0f, 0.0f, 0.0f);
    }

    public static void buildShaderCache() {
        new DigitalGlitchRetroCorruptedScreen().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new DigitalGlitchRetroCorruptedScreen().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75148V == null) {
            this.f75148V = new JAVARuntime.DigitalGlitchRetroCorruptedScreen(this);
        }
        return this.f75148V;
    }

    @Override
    public DigitalGlitchRetroCorruptedScreen newInstance() {
        return new DigitalGlitchRetroCorruptedScreen();
    }
}
