package un;

import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import wn.B;
import wn.C16030h;
import wn.N;

public class g extends a {

    public final NativeFloatBuffer f120823d;

    public final NativeIntBuffer f120824e;

    public g(NativeFloatBuffer vertices, NativeIntBuffer triangles, int area, float flagMergeThreshold) {
        super(area, flagMergeThreshold, j.c(vertices));
        this.f120823d = vertices;
        this.f120824e = triangles;
    }

    @Override
    public void b(C16030h hf2, N telemetry) {
        B.A(hf2, this.f120823d, this.f120824e, this.f120811a, (int) Math.floor(this.f120812b / hf2.f127714f), telemetry);
    }

    public g(NativeFloatBuffer vertices, NativeIntBuffer triangles, float[] bounds, int area, float flagMergeThreshold) {
        super(area, flagMergeThreshold, bounds);
        this.f120823d = vertices;
        this.f120824e = triangles;
    }
}
