package lf;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import com.jme3.math.FastMath;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import java.util.logging.Logger;
import p000if.C13702E;

public class C14117d extends Mesh {

    public static final int f96383b = 3;

    public static final Logger f96384c = Logger.getLogger(C14117d.class.getName());

    public C14117d() {
        this(1.0f, 25);
    }

    public C14117d(float f10, int i10) {
        C13702E.p(f10, TestVFXEffect.f77524P);
        C13702E.i(i10, "number of vertices", 3, Integer.MAX_VALUE);
        setMode(Mesh.Mode.TriangleFan);
        int i11 = i10 * 3;
        float[] fArr = new float[i11];
        float[] fArr2 = new float[i11];
        float[] fArr3 = new float[i10 * 2];
        for (int i12 = 0; i12 < i10; i12++) {
            int i13 = i12 * 3;
            fArr[i13] = 0.0f;
            int i14 = i13 + 1;
            fArr[i14] = 0.0f;
            int i15 = i13 + 2;
            fArr[i15] = 1.0f;
            float f11 = (i12 * 6.2831855f) / i10;
            float sin = FastMath.sin(f11);
            float cos = FastMath.cos(f11);
            fArr2[i13] = f10 * cos;
            fArr2[i14] = f10 * sin;
            fArr2[i15] = 0.0f;
            int i16 = i12 * 2;
            fArr3[i16] = (cos + 1.0f) / 2.0f;
            fArr3[i16 + 1] = (sin + 1.0f) / 2.0f;
        }
        setBuffer(VertexBuffer.Type.Normal, 3, fArr);
        setBuffer(VertexBuffer.Type.Position, 3, fArr2);
        setBuffer(VertexBuffer.Type.TexCoord, 2, fArr3);
        updateBound();
        setStatic();
    }
}
