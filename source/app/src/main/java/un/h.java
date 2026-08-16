package un;

import wn.B;
import wn.C16030h;
import wn.N;

public class h extends a {

    public final float[] f120825d;

    public final float[] f120826e;

    public final float f120827f;

    public h(float[] start, float[] end, float radius, int area, float flagMergeThreshold) {
        super(area, flagMergeThreshold, c(start, end, radius));
        this.f120825d = start;
        this.f120826e = end;
        this.f120827f = radius;
    }

    private static float[] c(float[] start, float[] end, float radius) {
        return new float[]{Math.min(start[0], end[0]) - radius, Math.min(start[1], end[1]) - radius, Math.min(start[2], end[2]) - radius, Math.max(start[0], end[0]) + radius, Math.max(start[1], end[1]) + radius, Math.max(start[2], end[2]) + radius};
    }

    @Override
    public void b(C16030h hf2, N telemetry) {
        B.B(hf2, this.f120825d, this.f120826e, this.f120827f, this.f120811a, (int) Math.floor(this.f120812b / hf2.f127714f), telemetry);
    }
}
