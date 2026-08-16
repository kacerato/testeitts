package lf;

import com.jme3.math.FastMath;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
import p000if.C13702E;

public class C14130q extends Mesh {

    public static final int f96443b = 4;

    public static final int f96444c = 3;

    public static final int f96445d = 3;

    public static final Logger f96446e = Logger.getLogger(C14130q.class.getName());

    public static final boolean f96447f = false;

    public C14130q() {
        this(0.0f, 1.0f, 0.0f, 1.0f, 0.1f, 1.0f);
    }

    public C14130q(float f10, float f11, float f12, float f13, float f14, float f15) {
        C13702E.p(f14, "corner radius");
        if (f15 != -1.0f && f15 != 1.0f) {
            f96446e.log(Level.SEVERE, "zNorm={0}", Float.valueOf(f15));
            throw new IllegalArgumentException("zNorm must be +1 or -1.");
        }
        setMode(Mesh.Mode.TriangleFan);
        short[] sArr = new short[22];
        float[] fArr = new float[63];
        float[] fArr2 = new float[63];
        float[] fArr3 = new float[42];
        fArr2[0] = (f10 + f11) / 2.0f;
        fArr2[1] = (f12 + f13) / 2.0f;
        float f16 = f10 + f14;
        float f17 = f12 + f14;
        int i10 = 1;
        for (int i11 = 0; i11 <= 4; i11++) {
            float f18 = (i11 * 1.5707964f) / 4.0f;
            float sin = FastMath.sin(f18);
            float cos = FastMath.cos(f18);
            int i12 = i10 * 3;
            fArr2[i12] = f16 - (cos * f14);
            fArr2[i12 + 1] = f17 - (sin * f14);
            i10++;
        }
        float f19 = f11 - f14;
        for (int i13 = 0; i13 <= 4; i13++) {
            float f20 = (i13 * 1.5707964f) / 4.0f;
            float sin2 = FastMath.sin(f20);
            float cos2 = FastMath.cos(f20);
            int i14 = i10 * 3;
            fArr2[i14] = f19 + (sin2 * f14);
            fArr2[i14 + 1] = f17 - (cos2 * f14);
            i10++;
        }
        float f21 = f13 - f14;
        for (int i15 = 0; i15 <= 4; i15++) {
            float f22 = (i15 * 1.5707964f) / 4.0f;
            float sin3 = FastMath.sin(f22);
            int i16 = i10 * 3;
            fArr2[i16] = (FastMath.cos(f22) * f14) + f19;
            fArr2[i16 + 1] = (f14 * sin3) + f21;
            i10++;
        }
        for (int i17 = 0; i17 <= 4; i17++) {
            float f23 = (i17 * 1.5707964f) / 4.0f;
            float sin4 = FastMath.sin(f23);
            float cos3 = FastMath.cos(f23);
            int i18 = i10 * 3;
            fArr2[i18] = f16 - (sin4 * f14);
            fArr2[i18 + 1] = (cos3 * f14) + f21;
            i10++;
        }
        for (int i19 = 0; i19 < 21; i19++) {
            sArr[i19] = (short) i19;
            int i20 = i19 * 3;
            fArr[i20] = 0.0f;
            int i21 = i20 + 1;
            fArr[i21] = 0.0f;
            int i22 = i20 + 2;
            fArr[i22] = f15;
            fArr2[i22] = 0.0f;
            float f24 = fArr2[i20];
            float f25 = fArr2[i21];
            int i23 = i19 * 2;
            fArr3[i23] = (f24 - f10) / (f11 - f10);
            fArr3[i23 + 1] = (f25 - f12) / (f13 - f12);
        }
        sArr[21] = 1;
        setBuffer(VertexBuffer.Type.Normal, 3, fArr);
        setBuffer(VertexBuffer.Type.Index, 3, sArr);
        setBuffer(VertexBuffer.Type.Position, 3, fArr2);
        setBuffer(VertexBuffer.Type.TexCoord, 2, fArr3);
        updateBound();
        setStatic();
    }
}
