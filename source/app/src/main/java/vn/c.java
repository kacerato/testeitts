package vn;

import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
import tn.r;
import tn.s;
import wn.C16023a;
import wn.p;
import wn.t;
import wn.u;

public class c {

    public static final int f121707A = 61440;

    public static final int f121708B = 3840;

    public static final int f121709C = 4096;

    public static final int f121710D = 256;

    public static final ByteOrder f121711y = ByteOrder.BIG_ENDIAN;

    public static final int f121712z = 1448040524;

    public int f121713a;

    public float f121718f;

    public float f121719g;

    public float f121720h;

    public float f121721i;

    public float f121722j;

    public float f121723k;

    public float f121724l;

    public float f121725m;

    public float f121726n;

    public int f121727o;

    public boolean f121728p;

    public float f121729q;

    public float f121730r;

    public boolean f121731s;

    public int f121732t;

    public int f121733u;

    public u.a f121714b = u.a.WATERSHED;

    public boolean f121715c = true;

    public boolean f121716d = true;

    public boolean f121717e = true;

    public float[] f121734v = new float[3];

    public float[] f121735w = new float[6];

    public final List<f> f121736x = new ArrayList();

    public static c b(r mesh) {
        c cVar = new c();
        cVar.f121713a = 1;
        s sVar = mesh.f117768a;
        cVar.f121714b = sVar.f117781e;
        cVar.f121715c = sVar.f117795s;
        cVar.f121716d = sVar.f117796t;
        cVar.f121717e = sVar.f117797u;
        cVar.f121718f = sVar.f117785i;
        cVar.f121719g = sVar.f117783g;
        cVar.f121720h = sVar.f117786j;
        cVar.f121721i = sVar.f117784h;
        cVar.f121722j = sVar.f117780d;
        cVar.f121723k = sVar.f117790n;
        cVar.f121724l = sVar.f117789m;
        cVar.f121725m = sVar.f117787k;
        cVar.f121726n = sVar.f117788l;
        cVar.f121727o = sVar.f117791o;
        cVar.f121728p = sVar.f117792p;
        cVar.f121729q = sVar.f117793q;
        cVar.f121730r = sVar.f117794r;
        cVar.f121731s = sVar.f117777a;
        cVar.f121732t = sVar.f117778b;
        cVar.f121733u = sVar.f117779c;
        cVar.f121735w = new float[]{Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY};
        for (f fVar : mesh.W()) {
            cVar.f121736x.add(new f(fVar.f121741a, fVar.f121742b, fVar.a()));
            float[] fArr = cVar.f121735w;
            fArr[0] = Math.min(fArr[0], fVar.f121746f[0]);
            float[] fArr2 = cVar.f121735w;
            fArr2[1] = Math.min(fArr2[1], fVar.f121746f[1]);
            float[] fArr3 = cVar.f121735w;
            fArr3[2] = Math.min(fArr3[2], fVar.f121746f[2]);
            float[] fArr4 = cVar.f121735w;
            fArr4[3] = Math.max(fArr4[3], fVar.f121747g[0]);
            float[] fArr5 = cVar.f121735w;
            fArr5[4] = Math.max(fArr5[4], fVar.f121747g[1]);
            float[] fArr6 = cVar.f121735w;
            fArr6[5] = Math.max(fArr6[5], fVar.f121747g[2]);
        }
        return cVar;
    }

    public static c c(t config, List<p.b> results) {
        c cVar = new c();
        cVar.f121713a = 1;
        cVar.f121714b = config.f127787a;
        cVar.f121715c = config.f127805s;
        cVar.f121716d = config.f127806t;
        cVar.f121717e = config.f127807u;
        cVar.f121718f = config.f127785B;
        cVar.f121719g = config.f127812z;
        cVar.f121720h = config.f127784A;
        cVar.f121721i = config.f127793g;
        cVar.f121722j = config.f127791e;
        cVar.f121723k = config.f127798l;
        cVar.f121724l = config.f127786C;
        cVar.f121725m = config.f127810x;
        cVar.f121726n = config.f127811y;
        cVar.f121727o = config.f127801o;
        cVar.f121728p = config.f127808v;
        cVar.f121729q = config.f127802p;
        cVar.f121730r = config.f127803q;
        cVar.f121731s = config.f127788b;
        cVar.f121732t = config.f127789c;
        cVar.f121733u = config.f127790d;
        cVar.f121735w = new float[]{Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY};
        for (p.b bVar : results) {
            cVar.f121736x.add(new f(bVar.f127767a, bVar.f127768b, bVar.e()));
            float[] fArr = cVar.f121735w;
            fArr[0] = Math.min(fArr[0], bVar.e().f127711c[0]);
            float[] fArr2 = cVar.f121735w;
            fArr2[1] = Math.min(fArr2[1], bVar.e().f127711c[1]);
            float[] fArr3 = cVar.f121735w;
            fArr3[2] = Math.min(fArr3[2], bVar.e().f127711c[2]);
            float[] fArr4 = cVar.f121735w;
            fArr4[3] = Math.max(fArr4[3], bVar.e().f127712d[0]);
            float[] fArr5 = cVar.f121735w;
            fArr5[4] = Math.max(fArr5[4], bVar.e().f127712d[1]);
            float[] fArr6 = cVar.f121735w;
            fArr6[5] = Math.max(fArr6[5], bVar.e().f127712d[2]);
        }
        return cVar;
    }

    public void a(f tile) {
        this.f121736x.add(tile);
    }

    public t d(f tile, u.a partitionType, int maxPolyVerts, int regionMergeSize, boolean filterLowHangingObstacles, boolean filterLedgeSpans, boolean filterWalkableLowHeightSpans, C16023a walkbableAreaMod, boolean buildMeshDetail, float detailSampleDist, float detailSampleMaxError) {
        return new t(this.f121731s, this.f121732t, this.f121733u, tile.f121743c, partitionType, this.f121722j, tile.f121749i, this.f121721i, filterLowHangingObstacles, filterLedgeSpans, filterWalkableLowHeightSpans, this.f121719g, this.f121718f, this.f121720h, this.f121725m, this.f121726n, this.f121724l, this.f121723k, maxPolyVerts, buildMeshDetail, detailSampleDist, detailSampleMaxError, walkbableAreaMod);
    }
}
