package un;

import wn.B;
import wn.C16030h;
import wn.N;

public class c extends a {

    public final float[] f120816d;

    public final float[] f120817e;

    public final float f120818f;

    public c(float[] start, float[] end, float radius, int area, float flagMergeThreshold) {
        super(area, flagMergeThreshold, c(start, end, radius));
        this.f120816d = start;
        this.f120817e = end;
        this.f120818f = radius;
    }

    public static float[] c(float[] start, float[] end, float radius) {
        return new float[]{Math.min(start[0], end[0]) - radius, Math.min(start[1], end[1]) - radius, Math.min(start[2], end[2]) - radius, Math.max(start[0], end[0]) + radius, Math.max(start[1], end[1]) + radius, Math.max(start[2], end[2]) + radius};
    }

    @Override
    public void b(C16030h hf2, N telemetry) {
        B.z(hf2, this.f120816d, this.f120817e, this.f120818f, this.f120811a, (int) Math.floor(this.f120812b / hf2.f127714f), telemetry);
    }
}
