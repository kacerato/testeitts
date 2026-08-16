package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch;

import JAVARuntime.Component;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;

public class DigitalGlitchSmoothColorShiftMask extends AbstractDigitalGlitchEffect implements Serializable {

    public static final String f75195L1 = "DigitalGlitchSmoothColorShiftMask";

    public static final Class f75196M1 = DigitalGlitchSmoothColorShiftMask.class;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return DigitalGlitchSmoothColorShiftMask.f75196M1;
        }

        @Override
        public String c() {
            return DigitalGlitchSmoothColorShiftMask.f75195L1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Glitch";
        }
    }

    static {
        C13201a.b(new a());
    }

    public DigitalGlitchSmoothColorShiftMask() {
        super(f75195L1, "DG: Smooth Color Shift Mask", 18.0f);
        setDefaults(1.0f, 0.6f, 0.95f, 24.0f, 0.25f, 0.9f, 0.25f, 8.0f, 0.1f, 0.0f);
    }

    public static void buildShaderCache() {
        new DigitalGlitchSmoothColorShiftMask().buildShaderCacheFromDefaults();
    }

    public static void buildShaderCacheForce() {
        new DigitalGlitchSmoothColorShiftMask().buildShaderCacheFromDefaultsForce();
    }

    @Override
    public Component toJAVARuntime() {
        if (this.f75148V == null) {
            this.f75148V = new JAVARuntime.DigitalGlitchSmoothColorShiftMask(this);
        }
        return this.f75148V;
    }

    @Override
    public DigitalGlitchSmoothColorShiftMask newInstance() {
        return new DigitalGlitchSmoothColorShiftMask();
    }
}
