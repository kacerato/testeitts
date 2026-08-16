package e4;

import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralHeightmap.DunesProceduralBrush;
import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralHeightmap.ErosionProceduralBrush;
import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralHeightmap.MountainProceduralBrush;
import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralHeightmap.NaturalSmoothProceduralBrush;
import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralHeightmap.NoiseProceduralBrush;
import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralHeightmap.PlainProceduralBrush;
import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralHeightmap.RavineProceduralBrush;
import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralHeightmap.RockyProceduralBrush;
import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralHeightmap.TerraceProceduralBrush;
import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralHeightmap.ValleyProceduralBrush;
import com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralHeightmap.WaterErosionProceduralBrush;

public final class C13005b {

    public static class a {

        public static final int[] f85047a;

        static {
            int[] iArr = new int[EnumC13007d.values().length];
            f85047a = iArr;
            try {
                iArr[EnumC13007d.Erosion.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f85047a[EnumC13007d.Ravine.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f85047a[EnumC13007d.WaterErosion.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f85047a[EnumC13007d.Plain.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f85047a[EnumC13007d.Dunes.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f85047a[EnumC13007d.Rocky.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f85047a[EnumC13007d.NaturalSmooth.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f85047a[EnumC13007d.Valley.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f85047a[EnumC13007d.Terrace.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f85047a[EnumC13007d.Noise.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f85047a[EnumC13007d.Mountain.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public static AbstractC13004a a(EnumC13007d type) {
        if (type == null) {
            type = EnumC13007d.Mountain;
        }
        switch (a.f85047a[type.ordinal()]) {
            case 1:
                return new ErosionProceduralBrush();
            case 2:
                return new RavineProceduralBrush();
            case 3:
                return new WaterErosionProceduralBrush();
            case 4:
                return new PlainProceduralBrush();
            case 5:
                return new DunesProceduralBrush();
            case 6:
                return new RockyProceduralBrush();
            case 7:
                return new NaturalSmoothProceduralBrush();
            case 8:
                return new ValleyProceduralBrush();
            case 9:
                return new TerraceProceduralBrush();
            case 10:
                return new NoiseProceduralBrush();
            default:
                return new MountainProceduralBrush();
        }
    }
}
