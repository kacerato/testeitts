package un;

import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import wn.C16030h;
import wn.G;
import wn.N;

public class j extends a {

    public final NativeFloatBuffer f120830d;

    public final NativeIntBuffer f120831e;

    public j(NativeFloatBuffer vertices, NativeIntBuffer triangles, int area, float flagMergeThreshold) {
        super(area, flagMergeThreshold, c(vertices));
        this.f120830d = vertices;
        this.f120831e = triangles;
    }

    public static float[] c(NativeFloatBuffer vertices) {
        float[] fArr = {vertices.get(0), vertices.get(1), vertices.get(2), vertices.get(0), vertices.get(1), vertices.get(2)};
        for (int i10 = 3; i10 < vertices.capacity(); i10 += 3) {
            fArr[0] = Math.min(fArr[0], vertices.get(i10));
            int i11 = i10 + 1;
            fArr[1] = Math.min(fArr[1], vertices.get(i11));
            int i12 = i10 + 2;
            fArr[2] = Math.min(fArr[2], vertices.get(i12));
            fArr[3] = Math.max(fArr[3], vertices.get(i10));
            fArr[4] = Math.max(fArr[4], vertices.get(i11));
            fArr[5] = Math.max(fArr[5], vertices.get(i12));
        }
        return fArr;
    }

    @Override
    public void b(C16030h hf2, N telemetry) {
        for (int i10 = 0; i10 < this.f120831e.capacity(); i10 += 3) {
            G.e(hf2, this.f120830d, this.f120831e.get(i10), this.f120831e.get(i10 + 1), this.f120831e.get(i10 + 2), this.f120811a, (int) Math.floor(this.f120812b / hf2.f127714f), telemetry);
        }
    }

    public j(NativeFloatBuffer vertices, NativeIntBuffer triangles, float[] bounds, int area, float flagMergeThreshold) {
        super(area, flagMergeThreshold, bounds);
        this.f120830d = vertices;
        this.f120831e = triangles;
    }
}
