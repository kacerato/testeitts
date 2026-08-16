package xn;

import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

public class a {

    public List<c> f129861a;

    public int f129862b;

    public int f129863c;

    public static class b {

        public final float[] f129864a;

        public final float[] f129865b;

        public int f129866c;

        public b() {
            this.f129864a = new float[2];
            this.f129865b = new float[2];
        }
    }

    public static class c {

        public final float[] f129867a = new float[2];

        public final float[] f129868b = new float[2];

        public int f129869c;

        public NativeIntBuffer f129870d;
    }

    public class d implements Comparator<b> {
        public d() {
        }

        @Override
        public int compare(b a10, b b10) {
            if (a10.f129864a[0] < b10.f129864a[0]) {
                return -1;
            }
            return a10.f129864a[0] > b10.f129864a[0] ? 1 : 0;
        }
    }

    public class e implements Comparator<b> {
        public e() {
        }

        @Override
        public int compare(b a10, b b10) {
            if (a10.f129864a[1] < b10.f129864a[1]) {
                return -1;
            }
            return a10.f129864a[1] > b10.f129864a[1] ? 1 : 0;
        }
    }

    public a(NativeFloatBuffer verts, NativeIntBuffer tris, int ntris, int trisPerChunk) {
        this.f129861a = new ArrayList(((ntris + trisPerChunk) - 1) / trisPerChunk);
        this.f129862b = ntris;
        b[] bVarArr = new b[ntris];
        for (int i10 = 0; i10 < ntris; i10++) {
            int i11 = i10 * 3;
            try {
                b bVar = new b();
                bVarArr[i10] = bVar;
                bVar.f129866c = i10;
                float[] fArr = bVar.f129864a;
                float[] fArr2 = bVar.f129865b;
                float f10 = verts.get(tris.get(i11) * 3);
                fArr2[0] = f10;
                fArr[0] = f10;
                float[] fArr3 = bVar.f129864a;
                float[] fArr4 = bVar.f129865b;
                float f11 = verts.get((tris.get(i11) * 3) + 2);
                fArr4[1] = f11;
                fArr3[1] = f11;
                for (int i12 = 1; i12 < 3; i12++) {
                    int i13 = tris.get(i11 + i12) * 3;
                    if (verts.get(i13) < bVar.f129864a[0]) {
                        bVar.f129864a[0] = verts.get(i13);
                    }
                    int i14 = i13 + 2;
                    if (verts.get(i14) < bVar.f129864a[1]) {
                        bVar.f129864a[1] = verts.get(i14);
                    }
                    if (verts.get(i13) > bVar.f129865b[0]) {
                        bVar.f129865b[0] = verts.get(i13);
                    }
                    if (verts.get(i14) > bVar.f129865b[1]) {
                        bVar.f129865b[1] = verts.get(i14);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        e(bVarArr, 0, ntris, trisPerChunk, this.f129861a, tris);
        this.f129863c = 0;
        for (c cVar : this.f129861a) {
            if (cVar.f129869c >= 0 && cVar.f129870d.capacity() / 3 > this.f129863c) {
                this.f129863c = cVar.f129870d.capacity() / 3;
            }
        }
    }

    public final void a(b[] items, int imin, int imax, float[] bmin, float[] bmax) {
        bmin[0] = items[imin].f129864a[0];
        bmin[1] = items[imin].f129864a[1];
        bmax[0] = items[imin].f129865b[0];
        bmax[1] = items[imin].f129865b[1];
        for (int i10 = imin + 1; i10 < imax; i10++) {
            b bVar = items[i10];
            if (bVar.f129864a[0] < bmin[0]) {
                bmin[0] = bVar.f129864a[0];
            }
            if (bVar.f129864a[1] < bmin[1]) {
                bmin[1] = bVar.f129864a[1];
            }
            if (bVar.f129865b[0] > bmax[0]) {
                bmax[0] = bVar.f129865b[0];
            }
            if (bVar.f129865b[1] > bmax[1]) {
                bmax[1] = bVar.f129865b[1];
            }
        }
    }

    public final boolean b(float[] amin, float[] amax, float[] bmin, float[] bmax) {
        boolean z10 = amin[0] <= bmax[0] && amax[0] >= bmin[0];
        if (amin[1] > bmax[1] || amax[1] < bmin[1]) {
            return false;
        }
        return z10;
    }

    public List<c> c(float[] bmin, float[] bmax) {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (i10 < this.f129861a.size()) {
            c cVar = this.f129861a.get(i10);
            boolean b10 = b(bmin, bmax, cVar.f129867a, cVar.f129868b);
            boolean z10 = cVar.f129869c >= 0;
            if (z10 && b10) {
                arrayList.add(cVar);
            }
            i10 = (b10 || z10) ? i10 + 1 : -cVar.f129869c;
        }
        return arrayList;
    }

    public final int d(float x10, float y10) {
        return y10 > x10 ? 1 : 0;
    }

    public final void e(b[] items, int imin, int imax, int trisPerChunk, List<c> nodes, NativeIntBuffer inTris) {
        int i10 = imax - imin;
        c cVar = new c();
        nodes.add(cVar);
        int i11 = 0;
        if (i10 > trisPerChunk) {
            a(items, imin, imax, cVar.f129867a, cVar.f129868b);
            int d10 = d(cVar.f129868b[0] - cVar.f129867a[0], cVar.f129868b[1] - cVar.f129867a[1]);
            if (d10 == 0) {
                Arrays.sort(items, imin, imax, new d());
            } else if (d10 == 1) {
                Arrays.sort(items, imin, imax, new e());
            }
            int i12 = (i10 / 2) + imin;
            e(items, imin, i12, trisPerChunk, nodes, inTris);
            e(items, i12, imax, trisPerChunk, nodes, inTris);
            cVar.f129869c = -nodes.size();
            return;
        }
        a(items, imin, imax, cVar.f129867a, cVar.f129868b);
        cVar.f129869c = nodes.size();
        cVar.f129870d = new NativeIntBuffer(i10 * 3);
        while (imin < imax) {
            int i13 = items[imin].f129866c * 3;
            cVar.f129870d.set(i11, inTris.get(i13));
            int i14 = i11 + 2;
            cVar.f129870d.set(i11 + 1, inTris.get(i13 + 1));
            i11 += 3;
            cVar.f129870d.set(i14, inTris.get(i13 + 2));
            imin++;
        }
    }
}
