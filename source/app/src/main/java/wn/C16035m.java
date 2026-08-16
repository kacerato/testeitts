package wn;

import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;

public class C16035m {
    public static int[] b(float[] bmin, float[] bmax, float cs) {
        return new int[]{(int) (((bmax[0] - bmin[0]) / cs) + 0.5f), (int) (((bmax[2] - bmin[2]) / cs) + 0.5f)};
    }

    public static int[] c(float[] bmin, float[] bmax, float cs, int tileSizeX, int tileSizeZ) {
        int[] b10 = b(bmin, bmax, cs);
        return new int[]{((b10[0] + tileSizeX) - 1) / tileSizeX, ((b10[1] + tileSizeZ) - 1) / tileSizeZ};
    }

    public static void d(NativeFloatBuffer verts, int v02, int v12, int v22, float[] norm) {
        float[] fArr = new float[3];
        float[] fArr2 = new float[3];
        int i10 = v02 * 3;
        I.n(fArr, verts, v12 * 3, i10);
        I.n(fArr2, verts, v22 * 3, i10);
        I.g(norm, fArr, fArr2);
        I.m(norm);
    }

    public static void e(N ctx, float walkableSlopeAngle, NativeFloatBuffer verts, int nv, int[] tris, int nt, int[] areas) {
        float cos = (float) Math.cos((walkableSlopeAngle / 180.0f) * 3.141592653589793d);
        float[] fArr = new float[3];
        for (int i10 = 0; i10 < nt; i10++) {
            int i11 = i10 * 3;
            d(verts, tris[i11], tris[i11 + 1], tris[i11 + 2], fArr);
            if (fArr[1] <= cos) {
                areas[i10] = 0;
            }
        }
    }

    public static int[] f(N ctx, float walkableSlopeAngle, NativeFloatBuffer verts, NativeIntBuffer tris, int nt, C16023a areaMod) {
        int[] iArr = new int[nt];
        float cos = (float) Math.cos((walkableSlopeAngle / 180.0f) * 3.141592653589793d);
        float[] fArr = new float[3];
        for (int i10 = 0; i10 < nt; i10++) {
            int i11 = i10 * 3;
            d(verts, tris.get(i11), tris.get(i11 + 1), tris.get(i11 + 2), fArr);
            if (fArr[1] > cos) {
                iArr[i10] = areaMod.a(iArr[i10]);
            }
        }
        return iArr;
    }

    public void a(float[] verts, int nv, float[] bmin, float[] bmax) {
        for (int i10 = 0; i10 < 3; i10++) {
            bmin[i10] = verts[i10];
            bmax[i10] = verts[i10];
        }
        for (int i11 = 1; i11 < nv; i11++) {
            for (int i12 = 0; i12 < 3; i12++) {
                int i13 = (i11 * 3) + i12;
                bmin[i12] = Math.min(bmin[i12], verts[i13]);
                bmax[i12] = Math.max(bmax[i12], verts[i13]);
            }
        }
    }
}
