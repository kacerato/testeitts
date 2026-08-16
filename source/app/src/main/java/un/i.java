package un;

import wn.B;
import wn.C16030h;
import wn.N;

public class i extends a {

    public final float[] f120828d;

    public final float f120829e;

    public i(float[] center, float radius, int area, float flagMergeThreshold) {
        super(area, flagMergeThreshold, c(center, radius));
        this.f120828d = center;
        this.f120829e = radius;
    }

    public static float[] c(float[] center, float radius) {
        float f10 = center[0];
        float f11 = center[1];
        float f12 = center[2];
        return new float[]{f10 - radius, f11 - radius, f12 - radius, f10 + radius, f11 + radius, f12 + radius};
    }

    @Override
    public void b(C16030h hf2, N telemetry) {
        B.C(hf2, this.f120828d, this.f120829e, this.f120811a, (int) Math.floor(this.f120812b / hf2.f127714f), telemetry);
    }
}
