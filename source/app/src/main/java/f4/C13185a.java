package f4;

import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.BiomeProceduralPaint;
import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.CliffProceduralPaint;
import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.CurvatureProceduralPaint;
import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.DunesProceduralPaint;
import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.ErosionProceduralPaint;
import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.HeightBandProceduralPaint;
import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.NoiseBlendProceduralPaint;
import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.RidgeProceduralPaint;
import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.SlopeProceduralPaint;
import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.TerraceProceduralPaint;
import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.WaterFlowProceduralPaint;

public final class C13185a {

    public static class C1597a {

        public static final int[] f86012a;

        static {
            int[] iArr = new int[c.values().length];
            f86012a = iArr;
            try {
                iArr[c.Slope.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f86012a[c.HeightBand.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f86012a[c.Curvature.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f86012a[c.Erosion.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f86012a[c.WaterFlow.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f86012a[c.Terrace.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f86012a[c.NoiseBlend.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f86012a[c.Dunes.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f86012a[c.Ridge.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f86012a[c.Biome.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f86012a[c.Cliff.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public static com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a a(c type) {
        if (type == null) {
            type = c.Cliff;
        }
        switch (C1597a.f86012a[type.ordinal()]) {
            case 1:
                return new SlopeProceduralPaint();
            case 2:
                return new HeightBandProceduralPaint();
            case 3:
                return new CurvatureProceduralPaint();
            case 4:
                return new ErosionProceduralPaint();
            case 5:
                return new WaterFlowProceduralPaint();
            case 6:
                return new TerraceProceduralPaint();
            case 7:
                return new NoiseBlendProceduralPaint();
            case 8:
                return new DunesProceduralPaint();
            case 9:
                return new RidgeProceduralPaint();
            case 10:
                return new BiomeProceduralPaint();
            default:
                return new CliffProceduralPaint();
        }
    }
}
