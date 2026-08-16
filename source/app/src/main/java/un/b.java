package un;

import wn.B;
import wn.C16030h;
import wn.I;
import wn.N;

public class b extends a {

    public final float[] f120814d;

    public final float[][] f120815e;

    public b(float[] center, float[][] halfEdges, int area, float flagMergeThreshold) {
        super(area, flagMergeThreshold, c(center, halfEdges));
        this.f120814d = center;
        this.f120815e = halfEdges;
    }

    public static float[] c(float[] center, float[][] halfEdges) {
        float[] fArr = {Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY};
        for (int i10 = 0; i10 < 8; i10++) {
            float f10 = -1.0f;
            float f11 = (i10 & 1) != 0 ? 1.0f : -1.0f;
            float f12 = (i10 & 2) != 0 ? 1.0f : -1.0f;
            if ((i10 & 4) != 0) {
                f10 = 1.0f;
            }
            float f13 = center[0];
            float[] fArr2 = halfEdges[0];
            float f14 = f13 + (fArr2[0] * f11);
            float[] fArr3 = halfEdges[1];
            float f15 = f14 + (fArr3[0] * f12);
            float[] fArr4 = halfEdges[2];
            float f16 = f15 + (fArr4[0] * f10);
            float f17 = center[1] + (fArr2[1] * f11) + (fArr3[1] * f12) + (fArr4[1] * f10);
            float f18 = center[2] + (f11 * fArr2[2]) + (f12 * fArr3[2]) + (f10 * fArr4[2]);
            fArr[0] = Math.min(fArr[0], f16);
            fArr[1] = Math.min(fArr[1], f17);
            fArr[2] = Math.min(fArr[2], f18);
            fArr[3] = Math.max(fArr[3], f16);
            fArr[4] = Math.max(fArr[4], f17);
            fArr[5] = Math.max(fArr[5], f18);
        }
        return fArr;
    }

    public static float[][] d(float[] up, float[] forward, float[] extent) {
        float[][] fArr = {new float[3], new float[]{up[0], up[1], up[2]}, new float[3]};
        I.m(fArr[1]);
        I.g(fArr[0], up, forward);
        I.m(fArr[0]);
        I.g(fArr[2], fArr[0], up);
        I.m(fArr[2]);
        float[] fArr2 = fArr[0];
        fArr2[0] = fArr2[0] * extent[0];
        float f10 = fArr2[1];
        float f11 = extent[0];
        fArr2[1] = f10 * f11;
        fArr2[2] = fArr2[2] * f11;
        float[] fArr3 = fArr[1];
        float f12 = fArr3[0];
        float f13 = extent[1];
        fArr3[0] = f12 * f13;
        fArr3[1] = fArr3[1] * f13;
        fArr3[2] = fArr3[2] * extent[1];
        float[] fArr4 = fArr[2];
        float f14 = fArr4[0];
        float f15 = extent[2];
        fArr4[0] = f14 * f15;
        fArr4[1] = fArr4[1] * f15;
        fArr4[2] = fArr4[2] * f15;
        return fArr;
    }

    @Override
    public void b(C16030h hf2, N telemetry) {
        B.y(hf2, this.f120814d, this.f120815e, this.f120811a, (int) Math.floor(this.f120812b / hf2.f127714f), telemetry);
    }
}
