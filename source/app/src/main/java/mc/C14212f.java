package mc;

import K5.b;
import U9.C3118g;
import Ub.d;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.ChromaticAberration;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.FilmGrainScratch;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.GaussianBlur;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchBlockDistortionColorShift;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchBrokenPixelDistortion;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchChaoticSmoothBlend;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchCircleBlockDamage;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchDistortionBars;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchHorizontalSliceDistortion;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchImageBlockDamage;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchJitter;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchLineBlockDamage;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchLineDisplacement;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchOrganicNoiseDistortion;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchPeriodicDisturbance;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchPixelDifferenceCompare;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchPixelatedRgbInterlace;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchRandomDistortionFeed;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchRandomRgbShift;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchRetroCorruptedScreen;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchSineChannelDistortion;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchSmoothColorShiftMask;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchSwirlFragments;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchVoronoiDistortion;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.GodRaysLightShafts;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Halftone;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.LensDirt;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.LensDistortion;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.NightVision;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.OrderedDither;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Outline;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Pixelate;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.PostVignette;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Posterize;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.PrecomputedAtmosphereSkybox;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.PrecomputedAtmosphereSkybox2;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Sharpen;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.VHSFilter;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIBackgroundBlur;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIBloom;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIChromaticAberration;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIContrastBrightnessSaturation;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIFadeOut;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIGaussianBlur;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UILensDistortion;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIOutline;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIPostTransform;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIPostVignette;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UISharpen;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIVHSFilter;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SpriteRenderer.SpriteRenderer;
import com.itsmagic.engine.Engines.Engine.ImGUI.Backend.ImguiBackend;
import fc.C13207d;
import java.io.File;
import o9.C14491a;
import u9.C15584d;

public class C14212f {

    public static boolean f96929a = false;

    public static boolean f96930b = false;

    public static boolean f96931c = false;

    public static boolean f96932d = false;

    public static boolean f96933e = false;

    public static final int f96934f = 19;

    public static int f96935g;

    public class a implements d.c {

        public final c f96936a;

        public a(final c val$listener) {
            this.f96936a = val$listener;
        }

        @Override
        public void a() {
            this.f96936a.b();
        }
    }

    public class b implements b.InterfaceC0354b {

        public final c f96937a;

        public b(final c val$listener) {
            this.f96937a = val$listener;
        }

        @Override
        public void a(int t10) {
        }

        @Override
        public void b(int p10, int t10) {
            C14212f.a();
            this.f96937a.b();
        }

        @Override
        public void finished() {
            boolean unused = C14212f.f96929a = true;
        }
    }

    public interface c {
        void a(int total);

        void b();
    }

    public static int a() {
        int i10 = f96935g;
        f96935g = i10 + 1;
        return i10;
    }

    public static void c(File outputFolder, c listener) {
        boolean z10;
        if (outputFolder != null) {
            ec.b.n(outputFolder);
            z10 = true;
        } else {
            z10 = false;
        }
        try {
            listener.a(75);
            C15584d.l();
            listener.b();
            C15584d.n();
            listener.b();
            C15584d.p();
            listener.b();
            n9.c.e();
            listener.b();
            ChromaticAberration.buildShaderCacheForce();
            listener.b();
            GaussianBlur.buildShaderCacheForce();
            listener.b();
            LensDistortion.buildShaderCacheForce();
            listener.b();
            LensDirt.buildShaderCacheForce();
            listener.b();
            Outline.buildShaderCacheForce();
            listener.b();
            NightVision.buildShaderCacheForce();
            listener.b();
            PostVignette.buildShaderCacheForce();
            listener.b();
            Sharpen.buildShaderCacheForce();
            listener.b();
            VHSFilter.buildShaderCacheForce();
            listener.b();
            FilmGrainScratch.buildShaderCacheForce();
            listener.b();
            Posterize.buildShaderCacheForce();
            listener.b();
            Pixelate.buildShaderCacheForce();
            listener.b();
            OrderedDither.buildShaderCacheForce();
            listener.b();
            Halftone.buildShaderCacheForce();
            listener.b();
            GodRaysLightShafts.buildShaderCacheForce();
            listener.b();
            DigitalGlitchPeriodicDisturbance.buildShaderCacheForce();
            listener.b();
            DigitalGlitchImageBlockDamage.buildShaderCacheForce();
            listener.b();
            DigitalGlitchBlockDistortionColorShift.buildShaderCacheForce();
            listener.b();
            DigitalGlitchJitter.buildShaderCacheForce();
            listener.b();
            DigitalGlitchLineDisplacement.buildShaderCacheForce();
            listener.b();
            DigitalGlitchOrganicNoiseDistortion.buildShaderCacheForce();
            listener.b();
            DigitalGlitchCircleBlockDamage.buildShaderCacheForce();
            listener.b();
            DigitalGlitchLineBlockDamage.buildShaderCacheForce();
            listener.b();
            DigitalGlitchRandomDistortionFeed.buildShaderCacheForce();
            listener.b();
            DigitalGlitchPixelDifferenceCompare.buildShaderCacheForce();
            listener.b();
            DigitalGlitchRetroCorruptedScreen.buildShaderCacheForce();
            listener.b();
            DigitalGlitchBrokenPixelDistortion.buildShaderCacheForce();
            listener.b();
            DigitalGlitchHorizontalSliceDistortion.buildShaderCacheForce();
            listener.b();
            DigitalGlitchSwirlFragments.buildShaderCacheForce();
            listener.b();
            DigitalGlitchPixelatedRgbInterlace.buildShaderCacheForce();
            listener.b();
            DigitalGlitchChaoticSmoothBlend.buildShaderCacheForce();
            listener.b();
            DigitalGlitchVoronoiDistortion.buildShaderCacheForce();
            listener.b();
            DigitalGlitchSmoothColorShiftMask.buildShaderCacheForce();
            listener.b();
            DigitalGlitchRandomRgbShift.buildShaderCacheForce();
            listener.b();
            DigitalGlitchSineChannelDistortion.buildShaderCacheForce();
            listener.b();
            DigitalGlitchDistortionBars.buildShaderCacheForce();
            listener.b();
            PrecomputedAtmosphereSkybox.buildShaderCacheForce();
            listener.b();
            PrecomputedAtmosphereSkybox2.buildShaderCacheForce();
            listener.b();
            UIBackgroundBlur.buildShaderCacheForce();
            listener.b();
            UIBloom.buildShaderCacheForce();
            listener.b();
            UIChromaticAberration.buildShaderCacheForce();
            listener.b();
            UILensDistortion.buildShaderCacheForce();
            listener.b();
            UIContrastBrightnessSaturation.buildShaderCacheForce();
            listener.b();
            UIFadeOut.buildShaderCacheForce();
            listener.b();
            UIGaussianBlur.buildShaderCacheForce();
            listener.b();
            UIOutline.buildShaderCacheForce();
            listener.b();
            UIPostVignette.buildShaderCacheForce();
            listener.b();
            UIPostTransform.buildShaderCacheForce();
            listener.b();
            UISharpen.buildShaderCacheForce();
            listener.b();
            UIVHSFilter.buildShaderCacheForce();
            listener.b();
            C14491a.g();
            listener.b();
            C3118g.e();
            listener.b();
            C13207d.d();
            listener.b();
            SpriteRenderer.buildShaderCacheForce();
            listener.b();
            ImguiBackend.buildShaderCacheForce();
            listener.b();
            org.ITsMagic.Atlas.c.b();
            listener.b();
            Ub.d.c(new a(listener));
        } finally {
            if (z10) {
                ec.b.b();
            }
        }
    }

    public static boolean d(c listener) {
        listener.a(19);
        if (!f96929a) {
            Ub.d.b(new b(listener));
            f96935g++;
            return true;
        }
        if (!f96930b) {
            C15584d.b();
            f96930b = true;
            f96935g++;
            listener.b();
            return true;
        }
        if (!f96931c) {
            C15584d.c();
            f96931c = true;
            f96935g++;
            listener.b();
            return true;
        }
        if (!f96932d) {
            C15584d.a();
            f96932d = true;
            f96935g++;
            listener.b();
            return true;
        }
        if (f96933e) {
            return false;
        }
        n9.c.a();
        f96933e = true;
        f96935g++;
        listener.b();
        return true;
    }
}
