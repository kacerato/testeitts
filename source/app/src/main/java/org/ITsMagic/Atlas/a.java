package org.ITsMagic.Atlas;

import JAVARuntime.Vertex;
import Ug.h;
import aa.C3593a;
import aa.C3595c;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.BVHMesh;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import org.ITsMagic.Atlas.d;
import vc.n;
import vc.p;
import vc.q;

public abstract class a<T> {

    public static final float f99908m = 1.0E-5f;

    public static final float f99909n = 1.0E-8f;

    public static final float f99910o = 0.003921569f;

    public static final float f99911p = 0.01f;

    public final List<BVHMesh> f99912a;

    public final Bb.b f99913b;

    public final C3595c f99914c = new C3595c(new Vector3(), new Vector3(0.0f, 0.0f, 1.0f), 1.0f);

    public final float[] f99915d = new float[3];

    public final Vector3 f99916e = new Vector3();

    public final Vector3 f99917f = new Vector3();

    public final Vector3 f99918g = new Vector3();

    public d f99919h = d.NONE;

    public c f99920i;

    public int f99921j;

    public int f99922k;

    public int f99923l;

    public class C1895a implements c {

        public final c f99924a;

        public final int f99925b;

        public final AtomicInteger f99926c;

        public final AtomicInteger f99927d;

        public C1895a(final c val$listener, final int val$totalPlanned, final AtomicInteger val$localExecuted, final AtomicInteger val$executedRaycasts) {
            this.f99924a = val$listener;
            this.f99925b = val$totalPlanned;
            this.f99926c = val$localExecuted;
            this.f99927d = val$executedRaycasts;
        }

        @Override
        public void a(int executed, int total, float progress, String tda) {
            int max;
            if (this.f99924a == null || this.f99925b <= 0 || (max = Math.max(0, executed - this.f99926c.getAndSet(executed))) <= 0) {
                return;
            }
            int addAndGet = this.f99927d.addAndGet(max);
            synchronized (this.f99924a) {
                c cVar = this.f99924a;
                int i10 = this.f99925b;
                cVar.a(addAndGet, i10, addAndGet / i10, tda);
            }
        }
    }

    public static class b {

        public final int f99929a;

        public final int f99930b;

        public b(int start, int end) {
            this.f99929a = start;
            this.f99930b = end;
        }
    }

    public interface c {
        void a(int executed, int total, float progress, String tda);
    }

    public enum d {
        NONE,
        COUNT_ONLY,
        EXECUTE
    }

    public a(List<BVHMesh> raycastVertices, Bb.b normalAtlasTexture) {
        this.f99912a = raycastVertices;
        this.f99913b = normalAtlasTexture;
    }

    public static float t(float ax, float ay, float bx, float by, float px, float py) {
        return ((px - ax) * (by - ay)) - ((py - ay) * (bx - ax));
    }

    public final Object A(Bb.b bVar, List list, List list2, b bVar2, int i10, AtomicInteger atomicInteger, int i11, c cVar) throws Exception {
        G(bVar, list, list2, bVar2, i10, atomicInteger, i11, cVar);
        return null;
    }

    public final void B() {
        int i10;
        if (this.f99920i == null || (i10 = this.f99923l) <= 0) {
            return;
        }
        int F10 = Nc.b.F(0, this.f99922k, i10);
        int i11 = this.f99923l;
        this.f99920i.a(F10, i11, F10 / i11, "");
    }

    public void C(Bb.b output, List<h> bakeDataList, List<T> lights, int plannedRaycasts, c listener) {
        if (output == null || bakeDataList == null) {
            return;
        }
        if (m(lights)) {
            try {
                org.ITsMagic.Atlas.d.j(output, bakeDataList, lights, plannedRaycasts, this.f99912a, new Ug.c(this), v(), listener);
                return;
            } catch (UnsatisfiedLinkError unused) {
            }
        }
        if (I(bakeDataList)) {
            F(output, bakeDataList, lights, listener);
            return;
        }
        h(Math.max(plannedRaycasts, 0), listener);
        E(output, bakeDataList, lights, 0, bakeDataList.size(), true);
        u();
    }

    public void D(Bb.b output, List<h> bakeDataList, List<T> lights, c listener) {
        C(output, bakeDataList, lights, l(output, bakeDataList, lights), listener);
    }

    public final void E(Bb.b output, List<h> bakeDataList, List<T> lights, int startBakeIndex, int endBakeIndex, boolean applyOutput) {
        int i10;
        q qVar;
        Vector3 vector3;
        int i11;
        int i12;
        p pVar;
        n nVar;
        p pVar2;
        Vector3 vector32;
        q qVar2;
        Bb.b bVar;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        float f19;
        float f20;
        float f21;
        float f22;
        float f23;
        boolean z10;
        float f24;
        float f25;
        float f26;
        float f27;
        float f28;
        float f29;
        float f30;
        float f31;
        int i13;
        p pVar3;
        float f32;
        float f33;
        float f34;
        n nVar2;
        Vector3 vector33;
        Vector3 vector34;
        p pVar4;
        float f35;
        float f36;
        q qVar3;
        q qVar4;
        int i14;
        float f37;
        float f38;
        int i15;
        int i16;
        char c10;
        Bb.b bVar2 = output;
        int p10 = output.p();
        int l10 = output.l();
        Vector3 vector35 = new Vector3();
        Vector3 vector36 = new Vector3();
        int i17 = startBakeIndex;
        int i18 = endBakeIndex;
        while (i17 < i18) {
            h hVar = bakeDataList.get(i17);
            if (hVar != null && hVar.a() != null) {
                Ug.g a10 = hVar.a();
                q i19 = a10.i();
                q c11 = a10.c();
                p a11 = a10.a();
                p e10 = a10.e();
                n g10 = a10.g();
                if (i19 != null && a11 != null && g10 != null) {
                    int i20 = 0;
                    while (i20 < g10.b()) {
                        int h10 = g10.h(i20);
                        int i21 = g10.i(i20);
                        int j10 = g10.j(i20);
                        if (h10 < 0 || i21 < 0 || j10 < 0) {
                            i10 = i20;
                        } else {
                            i10 = i20;
                            if (h10 < a11.b() && i21 < a11.b() && j10 < a11.b() && h10 < i19.d() && i21 < i19.d() && j10 < i19.d()) {
                                n nVar3 = g10;
                                int i22 = p10 - 1;
                                float f39 = i22;
                                float i23 = a11.i(h10) * f39;
                                int i24 = l10 - 1;
                                i12 = i17;
                                float f40 = i24;
                                i11 = p10;
                                float j11 = (1.0f - a11.j(h10)) * f40;
                                Vector3 vector37 = vector36;
                                float i25 = a11.i(i21) * f39;
                                Vector3 vector38 = vector35;
                                float j12 = (1.0f - a11.j(i21)) * f40;
                                float i26 = f39 * a11.i(j10);
                                float j13 = f40 * (1.0f - a11.j(j10));
                                float t10 = t(i23, j11, i25, j12, i26, j13);
                                if (Math.abs(t10) <= 1.0E-5f) {
                                    pVar2 = e10;
                                    pVar = a11;
                                    qVar = i19;
                                    nVar = nVar3;
                                    vector3 = vector37;
                                    vector32 = vector38;
                                    bVar = output;
                                    qVar2 = c11;
                                } else {
                                    p pVar5 = a11;
                                    p pVar6 = e10;
                                    int F10 = Nc.b.F(0, (int) Math.floor(Math.min(i23, Math.min(i25, i26))), i22);
                                    q qVar5 = c11;
                                    int F11 = Nc.b.F(0, (int) Math.ceil(Math.max(i23, Math.max(i25, i26))), i22);
                                    int F12 = Nc.b.F(0, (int) Math.floor(Math.min(j11, Math.min(j12, j13))), i24);
                                    int i27 = F11;
                                    int F13 = Nc.b.F(0, (int) Math.ceil(Math.max(j11, Math.max(j12, j13))), i24);
                                    float m10 = i19.m(h10);
                                    float n10 = i19.n(h10);
                                    float o10 = i19.o(h10);
                                    float m11 = i19.m(i21);
                                    float n11 = i19.n(i21);
                                    float o11 = i19.o(i21);
                                    float m12 = i19.m(j10);
                                    float n12 = i19.n(j10);
                                    float o12 = i19.o(j10);
                                    float f41 = n11 - n10;
                                    float f42 = o12 - o10;
                                    float f43 = o11 - o10;
                                    float f44 = n12 - n10;
                                    float f45 = (f41 * f42) - (f43 * f44);
                                    float f46 = m12 - m10;
                                    float f47 = m11 - m10;
                                    float f48 = (f43 * f46) - (f47 * f42);
                                    float f49 = (f47 * f44) - (f41 * f46);
                                    float f50 = (f45 * f45) + (f48 * f48) + (f49 * f49);
                                    if (f50 > 1.0E-8f) {
                                        f10 = i26;
                                        f11 = j13;
                                        float sqrt = 1.0f / ((float) Math.sqrt(f50));
                                        f14 = f48 * sqrt;
                                        f13 = f45 * sqrt;
                                        f12 = f49 * sqrt;
                                    } else {
                                        f10 = i26;
                                        f11 = j13;
                                        f12 = 0.0f;
                                        f13 = 0.0f;
                                        f14 = 1.0f;
                                    }
                                    if (qVar5 == null || h10 >= qVar5.d() || i21 >= qVar5.d() || j10 >= qVar5.d()) {
                                        qVar5 = qVar5;
                                        f15 = f12;
                                        f16 = f15;
                                        f17 = f16;
                                        f18 = f14;
                                        f19 = f18;
                                        f20 = f19;
                                        f21 = f13;
                                        f22 = f21;
                                        f23 = f22;
                                    } else {
                                        float m13 = qVar5.m(h10);
                                        float n13 = qVar5.n(h10);
                                        float o13 = qVar5.o(h10);
                                        float m14 = qVar5.m(i21);
                                        float n14 = qVar5.n(i21);
                                        f22 = m14;
                                        f19 = n14;
                                        f16 = qVar5.o(i21);
                                        f23 = qVar5.m(j10);
                                        f20 = qVar5.n(j10);
                                        f17 = qVar5.o(j10);
                                        f21 = m13;
                                        f18 = n13;
                                        f15 = o13;
                                    }
                                    boolean z11 = this.f99913b != null && pVar6 != null && h10 < pVar6.b() && i21 < pVar6.b() && j10 < pVar6.b();
                                    q qVar6 = i19;
                                    p pVar7 = pVar6;
                                    if (z11) {
                                        float i28 = pVar7.i(h10);
                                        float j14 = pVar7.j(h10);
                                        float i29 = pVar7.i(i21) - i28;
                                        float j15 = pVar7.j(i21) - j14;
                                        float i30 = pVar7.i(j10) - i28;
                                        float j16 = pVar7.j(j10) - j14;
                                        float f51 = (i29 * j16) - (j15 * i30);
                                        if (Math.abs(f51) > 1.0E-5f) {
                                            float f52 = 1.0f / f51;
                                            z10 = z11;
                                            f24 = ((f42 * i29) - (f43 * i30)) * f52;
                                            f25 = ((j16 * f43) - (j15 * f42)) * f52;
                                            f26 = ((f47 * j16) - (f46 * j15)) * f52;
                                            f27 = ((f44 * i29) - (f41 * i30)) * f52;
                                            f28 = ((f46 * i29) - (f47 * i30)) * f52;
                                            f29 = ((f41 * j16) - (f44 * j15)) * f52;
                                        } else {
                                            f24 = 0.0f;
                                            f25 = 0.0f;
                                            f26 = 0.0f;
                                            f27 = 0.0f;
                                            f28 = 0.0f;
                                            f29 = 0.0f;
                                            z10 = false;
                                        }
                                    } else {
                                        z10 = z11;
                                        f24 = 0.0f;
                                        f25 = 0.0f;
                                        f26 = 0.0f;
                                        f27 = 0.0f;
                                        f28 = 0.0f;
                                        f29 = 0.0f;
                                    }
                                    int i31 = F12;
                                    while (i31 <= F13) {
                                        float f53 = i31 + 0.5f;
                                        int i32 = F10;
                                        int i33 = i27;
                                        while (i32 <= i33) {
                                            float f54 = i32 + 0.5f;
                                            float t11 = t(i25, j12, f10, f11, f54, f53) / t10;
                                            float t12 = t(f10, f11, i23, j11, f54, f53) / t10;
                                            float f55 = (1.0f - t11) - t12;
                                            if (t11 < -1.0E-5f || t12 < -1.0E-5f || f55 < -1.0E-5f) {
                                                f30 = i23;
                                                f31 = f12;
                                                i13 = i33;
                                                pVar3 = pVar7;
                                                f32 = i25;
                                                f33 = j12;
                                                f34 = j11;
                                                nVar2 = nVar3;
                                                vector33 = vector37;
                                                vector34 = vector38;
                                                pVar4 = pVar5;
                                                f35 = f10;
                                                f36 = f11;
                                                qVar3 = qVar6;
                                                qVar4 = qVar5;
                                                i14 = i31;
                                                f37 = f14;
                                                f38 = f13;
                                                i15 = F13;
                                                i16 = i32;
                                            } else {
                                                float f56 = i23;
                                                int i34 = i33;
                                                pVar3 = pVar7;
                                                float f57 = j12;
                                                Vector3 vector39 = vector38;
                                                vector39.set((m10 * t11) + (m11 * t12) + (m12 * f55), (n10 * t11) + (n11 * t12) + (n12 * f55), (o10 * t11) + (o11 * t12) + (o12 * f55));
                                                Vector3 vector310 = vector37;
                                                vector310.set((f21 * t11) + (f22 * t12) + (f23 * f55), (f18 * t11) + (f19 * t12) + (f20 * f55), (t11 * f15) + (t12 * f16) + (f55 * f17));
                                                if (vector310.lengthSquared() <= 1.0E-8f) {
                                                    vector310.set(f13, f14, f12);
                                                } else {
                                                    vector310.normalizeLocal();
                                                }
                                                this.f99916e.set(vector310);
                                                if (z10) {
                                                    f30 = f56;
                                                    c10 = 0;
                                                    nVar2 = nVar3;
                                                    qVar4 = qVar5;
                                                    i15 = F13;
                                                    i16 = i32;
                                                    f31 = f12;
                                                    pVar4 = pVar5;
                                                    i13 = i34;
                                                    vector33 = vector310;
                                                    qVar3 = qVar6;
                                                    f34 = j11;
                                                    i14 = i31;
                                                    f37 = f14;
                                                    f35 = f10;
                                                    f38 = f13;
                                                    f36 = f11;
                                                    f32 = i25;
                                                    f33 = f57;
                                                    vector34 = vector39;
                                                    g(i32, i31, i11, l10, vector310, this.f99916e, f26, f29, f25, f28, f27, f24);
                                                } else {
                                                    f31 = f12;
                                                    vector33 = vector310;
                                                    f37 = f14;
                                                    f34 = j11;
                                                    nVar2 = nVar3;
                                                    f33 = f57;
                                                    f30 = f56;
                                                    pVar4 = pVar5;
                                                    i13 = i34;
                                                    f35 = f10;
                                                    f36 = f11;
                                                    qVar3 = qVar6;
                                                    c10 = 0;
                                                    qVar4 = qVar5;
                                                    i14 = i31;
                                                    f38 = f13;
                                                    f32 = i25;
                                                    vector34 = vector39;
                                                    i15 = F13;
                                                    i16 = i32;
                                                }
                                                float[] fArr = this.f99915d;
                                                fArr[c10] = 0.0f;
                                                fArr[1] = 0.0f;
                                                fArr[2] = 0.0f;
                                                e(lights, vector34, vector33, this.f99916e, fArr);
                                                if (applyOutput) {
                                                    float i35 = output.i(i16, i14);
                                                    output.s(i16, i14, Nc.b.I((i35 > 0.0f ? output.n(i16, i14) : 0.003921569f) + this.f99915d[c10]), Nc.b.I((i35 > 0.0f ? output.k(i16, i14) : 0.003921569f) + this.f99915d[1]), Nc.b.I((i35 > 0.0f ? output.j(i16, i14) : 0.003921569f) + this.f99915d[2]), Nc.b.I(Math.max(i35, 1.0f)));
                                                }
                                            }
                                            i32 = i16 + 1;
                                            F13 = i15;
                                            i31 = i14;
                                            qVar5 = qVar4;
                                            i23 = f30;
                                            pVar7 = pVar3;
                                            nVar3 = nVar2;
                                            i33 = i13;
                                            f12 = f31;
                                            qVar6 = qVar3;
                                            j11 = f34;
                                            f10 = f35;
                                            f14 = f37;
                                            f11 = f36;
                                            f13 = f38;
                                            i25 = f32;
                                            j12 = f33;
                                            vector38 = vector34;
                                            pVar5 = pVar4;
                                            vector37 = vector33;
                                        }
                                        i31++;
                                        qVar5 = qVar5;
                                        pVar7 = pVar7;
                                        nVar3 = nVar3;
                                        j11 = j11;
                                        vector38 = vector38;
                                        pVar5 = pVar5;
                                        i27 = i33;
                                        vector37 = vector37;
                                    }
                                    pVar2 = pVar7;
                                    nVar = nVar3;
                                    vector3 = vector37;
                                    vector32 = vector38;
                                    pVar = pVar5;
                                    qVar = qVar6;
                                    bVar = output;
                                    qVar2 = qVar5;
                                }
                                i20 = i10 + 1;
                                bVar2 = bVar;
                                c11 = qVar2;
                                vector35 = vector32;
                                e10 = pVar2;
                                g10 = nVar;
                                a11 = pVar;
                                i17 = i12;
                                p10 = i11;
                                vector36 = vector3;
                                i19 = qVar;
                            }
                        }
                        nVar = g10;
                        pVar2 = e10;
                        pVar = a11;
                        qVar2 = c11;
                        qVar = i19;
                        i12 = i17;
                        vector3 = vector36;
                        vector32 = vector35;
                        bVar = bVar2;
                        i11 = p10;
                        i20 = i10 + 1;
                        bVar2 = bVar;
                        c11 = qVar2;
                        vector35 = vector32;
                        e10 = pVar2;
                        g10 = nVar;
                        a11 = pVar;
                        i17 = i12;
                        p10 = i11;
                        vector36 = vector3;
                        i19 = qVar;
                    }
                }
            }
            i17++;
            i18 = endBakeIndex;
            bVar2 = bVar2;
            vector35 = vector35;
            p10 = p10;
            vector36 = vector36;
        }
    }

    public final void F(final Bb.b output, final List<h> bakeDataList, final List<T> lights, final c listener) {
        List<b> k10 = k(bakeDataList.size(), Math.max(1, O9.b.a() - 2));
        if (k10.size() <= 1) {
            h(Math.max(p(output, bakeDataList, lights), 0), listener);
            E(output, bakeDataList, lights, 0, bakeDataList.size(), true);
            u();
            return;
        }
        int[] o10 = o(output, bakeDataList, lights, k10);
        int i10 = 0;
        for (int i11 : o10) {
            i10 += i11;
        }
        String str = "";
        if (listener != null) {
            if (i10 <= 0) {
                listener.a(0, 0, 0.0f, "");
            } else {
                listener.a(0, i10, 0.0f, "");
            }
        }
        final AtomicInteger atomicInteger = new AtomicInteger();
        ArrayList arrayList = new ArrayList(k10.size());
        int i12 = 0;
        while (i12 < k10.size()) {
            final b bVar = k10.get(i12);
            final int i13 = o10[i12];
            ArrayList arrayList2 = arrayList;
            final int i14 = i10;
            arrayList2.add(O9.b.c(new Callable() {
                @Override
                public final Object call() {
                    Object A10;
                    A10 = org.ITsMagic.Atlas.a.this.A(output, bakeDataList, lights, bVar, i13, atomicInteger, i14, listener);
                    return A10;
                }
            }));
            i12++;
            str = str;
            arrayList = arrayList2;
            i10 = i14;
            o10 = o10;
        }
        ArrayList arrayList3 = arrayList;
        String str2 = str;
        int i15 = i10;
        for (int i16 = 0; i16 < arrayList3.size(); i16++) {
            try {
                ((Future) arrayList3.get(i16)).get();
            } catch (Exception e10) {
                throw new RuntimeException("Failed to rasterize lightmap in parallel", e10);
            }
        }
        if (listener != null) {
            if (i15 <= 0) {
                listener.a(0, 0, 1.0f, str2);
            } else {
                listener.a(i15, i15, 1.0f, str2);
            }
        }
    }

    public final void G(Bb.b output, List<h> bakeDataList, List<T> lights, b range, int plannedRaycasts, AtomicInteger executedRaycasts, int totalPlanned, c listener) {
        a<T> s10 = s();
        s10.h(plannedRaycasts, new C1895a(listener, totalPlanned, new AtomicInteger(), executedRaycasts));
        s10.E(output, bakeDataList, lights, range.f99929a, range.f99930b, true);
        s10.u();
    }

    public float H(float value) {
        return Nc.b.I(value);
    }

    public final boolean I(List<h> bakeDataList) {
        return bakeDataList != null && bakeDataList.size() > 1 && Math.max(1, O9.b.a() + (-2)) > 1;
    }

    public abstract void d(T light, Vector3 worldPosition, Vector3 surfaceNormal, Vector3 shadingNormal, float[] outRgb);

    public final void e(List<T> lights, Vector3 worldPosition, Vector3 surfaceNormal, Vector3 shadingNormal, float[] outRgb) {
        if (lights == null) {
            return;
        }
        for (int i10 = 0; i10 < lights.size(); i10++) {
            T t10 = lights.get(i10);
            if (t10 != null) {
                d(t10, worldPosition, surfaceNormal, shadingNormal, outRgb);
            }
        }
    }

    public void f(ColorINT color, float intensity, float[] outRgb) {
        if (color == null || intensity <= 0.0f) {
            return;
        }
        outRgb[0] = outRgb[0] + (color.w() * intensity);
        outRgb[1] = outRgb[1] + (color.u() * intensity);
        outRgb[2] = outRgb[2] + (color.s() * intensity);
    }

    public final void g(int px, int py, int outputWidth, int outputHeight, Vector3 surfaceNormal, Vector3 outShadingNormal, float triTangentX, float triTangentY, float triTangentZ, float triBitangentX, float triBitangentY, float triBitangentZ) {
        Bb.b bVar = this.f99913b;
        if (bVar == null) {
            return;
        }
        if (outputWidth > 1 && bVar.p() != outputWidth) {
            px = Math.round((px / (outputWidth - 1)) * (this.f99913b.p() - 1));
        }
        if (outputHeight > 1 && this.f99913b.l() != outputHeight) {
            py = Math.round((py / (outputHeight - 1)) * (this.f99913b.l() - 1));
        }
        int F10 = Nc.b.F(0, px, this.f99913b.p() - 1);
        int F11 = Nc.b.F(0, py, this.f99913b.l() - 1);
        if (this.f99913b.i(F10, F11) <= 0.0f) {
            return;
        }
        float dot = surfaceNormal.dot(triTangentX, triTangentY, triTangentZ);
        this.f99917f.set(triTangentX - (surfaceNormal.getX() * dot), triTangentY - (surfaceNormal.getY() * dot), triTangentZ - (surfaceNormal.getZ() * dot));
        if (this.f99917f.lengthSquared() <= 1.0E-8f) {
            j(surfaceNormal, this.f99917f, this.f99918g);
        } else {
            this.f99917f.normalizeLocal();
            this.f99918g.set((surfaceNormal.getY() * this.f99917f.getZ()) - (surfaceNormal.getZ() * this.f99917f.getY()), (surfaceNormal.getZ() * this.f99917f.getX()) - (surfaceNormal.getX() * this.f99917f.getZ()), (surfaceNormal.getX() * this.f99917f.getY()) - (surfaceNormal.getY() * this.f99917f.getX()));
            if (this.f99918g.dot(triBitangentX, triBitangentY, triBitangentZ) < 0.0f) {
                this.f99918g.mulLocal(-1.0f);
            }
            if (this.f99918g.lengthSquared() <= 1.0E-8f) {
                j(surfaceNormal, this.f99917f, this.f99918g);
            } else {
                this.f99918g.normalizeLocal();
            }
        }
        float n10 = (this.f99913b.n(F10, F11) * 2.0f) - 1.0f;
        float k10 = (this.f99913b.k(F10, F11) * 2.0f) - 1.0f;
        float j10 = (this.f99913b.j(F10, F11) * 2.0f) - 1.0f;
        float f10 = (n10 * n10) + (k10 * k10) + (j10 * j10);
        if (f10 <= 1.0E-8f) {
            return;
        }
        float sqrt = 1.0f / ((float) Math.sqrt(f10));
        float f11 = n10 * sqrt;
        float f12 = k10 * sqrt;
        float f13 = j10 * sqrt;
        outShadingNormal.set((this.f99917f.getX() * f11) + (this.f99918g.getX() * f12) + (surfaceNormal.getX() * f13), (this.f99917f.getY() * f11) + (this.f99918g.getY() * f12) + (surfaceNormal.getY() * f13), (this.f99917f.getZ() * f11) + (this.f99918g.getZ() * f12) + (surfaceNormal.getZ() * f13));
        if (outShadingNormal.lengthSquared() <= 1.0E-8f) {
            outShadingNormal.set(surfaceNormal);
        } else {
            outShadingNormal.normalizeLocal();
        }
    }

    public final void h(int totalRaycasts, c listener) {
        int max = Math.max(totalRaycasts, 0);
        this.f99923l = max;
        this.f99922k = 0;
        this.f99920i = listener;
        this.f99919h = d.EXECUTE;
        if (listener == null) {
            return;
        }
        if (max <= 0) {
            listener.a(0, 0, 0.0f, "");
        } else {
            listener.a(0, max, 0.0f, "");
        }
    }

    public final d.a i(Bb.b output, List<h> bakeDataList) {
        int i10;
        n nVar;
        p pVar;
        p pVar2;
        q qVar;
        q qVar2;
        int i11;
        Vector3 vector3;
        Vector3 vector32;
        d.a aVar;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        float f19;
        float f20;
        float f21;
        float f22;
        float f23;
        boolean z10;
        float f24;
        float f25;
        float f26;
        float f27;
        float f28;
        float f29;
        float f30;
        int i12;
        float f31;
        p pVar3;
        int i13;
        float f32;
        float f33;
        boolean z11;
        int i14;
        d.a aVar2;
        Vector3 vector33;
        Vector3 vector34;
        p pVar4;
        float f34;
        float f35;
        q qVar3;
        q qVar4;
        int i15;
        float f36;
        float f37;
        float f38;
        int i16;
        int n10 = n(output, bakeDataList);
        d.a aVar3 = new d.a(Math.max(1, n10));
        if (n10 <= 0) {
            return aVar3;
        }
        int p10 = output.p();
        int l10 = output.l();
        Vector3 vector35 = new Vector3();
        Vector3 vector36 = new Vector3();
        int i17 = 0;
        while (i17 < bakeDataList.size()) {
            h hVar = bakeDataList.get(i17);
            if (hVar != null && hVar.a() != null) {
                Ug.g a10 = hVar.a();
                q i18 = a10.i();
                q c10 = a10.c();
                p a11 = a10.a();
                p e10 = a10.e();
                n g10 = a10.g();
                if (i18 != null && a11 != null && g10 != null) {
                    int i19 = 0;
                    while (i19 < g10.b()) {
                        int h10 = g10.h(i19);
                        int i20 = g10.i(i19);
                        int j10 = g10.j(i19);
                        if (h10 < 0 || i20 < 0 || j10 < 0 || h10 >= a11.b() || i20 >= a11.b() || j10 >= a11.b() || h10 >= i18.d() || i20 >= i18.d() || j10 >= i18.d()) {
                            i10 = i19;
                            nVar = g10;
                            pVar = e10;
                            pVar2 = a11;
                            qVar = c10;
                            qVar2 = i18;
                            i11 = i17;
                            vector3 = vector36;
                            vector32 = vector35;
                            aVar = aVar3;
                        } else {
                            int i21 = i19;
                            int i22 = p10 - 1;
                            nVar = g10;
                            float f39 = i22;
                            float i23 = a11.i(h10) * f39;
                            int i24 = l10 - 1;
                            i11 = i17;
                            float f40 = i24;
                            d.a aVar4 = aVar3;
                            float j11 = (1.0f - a11.j(h10)) * f40;
                            Vector3 vector37 = vector36;
                            float i25 = a11.i(i20) * f39;
                            Vector3 vector38 = vector35;
                            float j12 = (1.0f - a11.j(i20)) * f40;
                            float i26 = f39 * a11.i(j10);
                            float j13 = f40 * (1.0f - a11.j(j10));
                            float t10 = t(i23, j11, i25, j12, i26, j13);
                            if (Math.abs(t10) <= 1.0E-5f) {
                                pVar = e10;
                                pVar2 = a11;
                                qVar2 = i18;
                                i10 = i21;
                                aVar = aVar4;
                                vector3 = vector37;
                                vector32 = vector38;
                                qVar = c10;
                            } else {
                                p pVar5 = a11;
                                p pVar6 = e10;
                                int F10 = Nc.b.F(0, (int) Math.floor(Math.min(i23, Math.min(i25, i26))), i22);
                                q qVar5 = c10;
                                int F11 = Nc.b.F(0, (int) Math.ceil(Math.max(i23, Math.max(i25, i26))), i22);
                                int F12 = Nc.b.F(0, (int) Math.floor(Math.min(j11, Math.min(j12, j13))), i24);
                                int F13 = Nc.b.F(0, (int) Math.ceil(Math.max(j11, Math.max(j12, j13))), i24);
                                float m10 = i18.m(h10);
                                float n11 = i18.n(h10);
                                float o10 = i18.o(h10);
                                float m11 = i18.m(i20);
                                float n12 = i18.n(i20);
                                float o11 = i18.o(i20);
                                float m12 = i18.m(j10);
                                float n13 = i18.n(j10);
                                float o12 = i18.o(j10);
                                float f41 = n12 - n11;
                                float f42 = o12 - o10;
                                float f43 = o11 - o10;
                                float f44 = n13 - n11;
                                float f45 = (f41 * f42) - (f43 * f44);
                                float f46 = m12 - m10;
                                float f47 = m11 - m10;
                                float f48 = (f43 * f46) - (f47 * f42);
                                float f49 = (f47 * f44) - (f41 * f46);
                                float f50 = (f45 * f45) + (f48 * f48) + (f49 * f49);
                                if (f50 > 1.0E-8f) {
                                    f10 = j13;
                                    f11 = i23;
                                    float sqrt = 1.0f / ((float) Math.sqrt(f50));
                                    f14 = f45 * sqrt;
                                    f12 = f48 * sqrt;
                                    f13 = f49 * sqrt;
                                } else {
                                    f10 = j13;
                                    f11 = i23;
                                    f12 = 1.0f;
                                    f13 = 0.0f;
                                    f14 = 0.0f;
                                }
                                if (qVar5 == null || h10 >= qVar5.d() || i20 >= qVar5.d() || j10 >= qVar5.d()) {
                                    qVar5 = qVar5;
                                    f15 = f13;
                                    f16 = f15;
                                    f17 = f16;
                                    f18 = f12;
                                    f19 = f18;
                                    f20 = f19;
                                    f21 = f14;
                                    f22 = f21;
                                    f23 = f22;
                                } else {
                                    float m13 = qVar5.m(h10);
                                    float n14 = qVar5.n(h10);
                                    float o13 = qVar5.o(h10);
                                    float m14 = qVar5.m(i20);
                                    float n15 = qVar5.n(i20);
                                    f19 = n15;
                                    f16 = qVar5.o(i20);
                                    f23 = qVar5.m(j10);
                                    f20 = qVar5.n(j10);
                                    f17 = qVar5.o(j10);
                                    f21 = m13;
                                    f18 = n14;
                                    f15 = o13;
                                    f22 = m14;
                                }
                                boolean z12 = this.f99913b != null && pVar6 != null && h10 < pVar6.b() && i20 < pVar6.b() && j10 < pVar6.b();
                                q qVar6 = i18;
                                p pVar7 = pVar6;
                                if (z12) {
                                    float i27 = pVar7.i(h10);
                                    float j14 = pVar7.j(h10);
                                    float i28 = pVar7.i(i20) - i27;
                                    float j15 = pVar7.j(i20) - j14;
                                    float i29 = pVar7.i(j10) - i27;
                                    float j16 = pVar7.j(j10) - j14;
                                    float f51 = (i28 * j16) - (j15 * i29);
                                    if (Math.abs(f51) > 1.0E-5f) {
                                        float f52 = 1.0f / f51;
                                        f29 = f52 * ((f42 * i28) - (f43 * i29));
                                        f26 = ((j16 * f43) - (j15 * f42)) * f52;
                                        f28 = ((f44 * i28) - (f41 * i29)) * f52;
                                        f27 = ((f46 * i28) - (f47 * i29)) * f52;
                                        f25 = ((f41 * j16) - (f44 * j15)) * f52;
                                        f24 = ((f47 * j16) - (f46 * j15)) * f52;
                                        z10 = z12;
                                    } else {
                                        f24 = 0.0f;
                                        f25 = 0.0f;
                                        f26 = 0.0f;
                                        f27 = 0.0f;
                                        f28 = 0.0f;
                                        f29 = 0.0f;
                                        z10 = false;
                                    }
                                } else {
                                    z10 = z12;
                                    f24 = 0.0f;
                                    f25 = 0.0f;
                                    f26 = 0.0f;
                                    f27 = 0.0f;
                                    f28 = 0.0f;
                                    f29 = 0.0f;
                                }
                                int i30 = F12;
                                while (i30 <= F13) {
                                    float f53 = i30 + 0.5f;
                                    int i31 = F10;
                                    int i32 = F11;
                                    while (i31 <= i32) {
                                        float f54 = i31 + 0.5f;
                                        float t11 = t(i25, j12, i26, f10, f54, f53) / t10;
                                        float t12 = t(i26, f10, f11, j11, f54, f53) / t10;
                                        float f55 = (1.0f - t11) - t12;
                                        if (t11 < -1.0E-5f || t12 < -1.0E-5f || f55 < -1.0E-5f) {
                                            f30 = i26;
                                            i12 = i32;
                                            f31 = f13;
                                            pVar3 = pVar7;
                                            i13 = F13;
                                            f32 = f14;
                                            f33 = i25;
                                            z11 = z10;
                                            i14 = i21;
                                            aVar2 = aVar4;
                                            vector33 = vector37;
                                            vector34 = vector38;
                                            pVar4 = pVar5;
                                            f34 = f11;
                                            f35 = f10;
                                            qVar3 = qVar6;
                                            qVar4 = qVar5;
                                            i15 = i30;
                                            f36 = f12;
                                            f37 = j12;
                                            f38 = j11;
                                            i16 = i31;
                                        } else {
                                            float f56 = i26;
                                            int i33 = i32;
                                            p pVar8 = pVar7;
                                            float f57 = j12;
                                            Vector3 vector39 = vector38;
                                            vector39.set((m10 * t11) + (m11 * t12) + (m12 * f55), (n11 * t11) + (n12 * t12) + (n13 * f55), (o10 * t11) + (o11 * t12) + (o12 * f55));
                                            Vector3 vector310 = vector37;
                                            vector310.set((f21 * t11) + (f22 * t12) + (f23 * f55), (f18 * t11) + (f19 * t12) + (f20 * f55), (t11 * f15) + (t12 * f16) + (f55 * f17));
                                            if (vector310.lengthSquared() <= 1.0E-8f) {
                                                vector310.set(f14, f12, f13);
                                            } else {
                                                vector310.normalizeLocal();
                                            }
                                            this.f99916e.set(vector310);
                                            if (z10) {
                                                i14 = i21;
                                                qVar4 = qVar5;
                                                f38 = j11;
                                                f30 = f56;
                                                i16 = i31;
                                                pVar3 = pVar8;
                                                i12 = i33;
                                                f31 = f13;
                                                pVar4 = pVar5;
                                                z11 = z10;
                                                i15 = i30;
                                                vector33 = vector310;
                                                qVar3 = qVar6;
                                                i13 = F13;
                                                f36 = f12;
                                                f35 = f10;
                                                f32 = f14;
                                                f34 = f11;
                                                f33 = i25;
                                                f37 = f57;
                                                vector34 = vector39;
                                                g(i31, i30, p10, l10, vector310, this.f99916e, f24, f25, f26, f27, f28, f29);
                                            } else {
                                                f31 = f13;
                                                vector33 = vector310;
                                                i13 = F13;
                                                f36 = f12;
                                                f33 = i25;
                                                z11 = z10;
                                                i14 = i21;
                                                f30 = f56;
                                                pVar3 = pVar8;
                                                pVar4 = pVar5;
                                                i12 = i33;
                                                f34 = f11;
                                                f35 = f10;
                                                qVar3 = qVar6;
                                                qVar4 = qVar5;
                                                i15 = i30;
                                                f32 = f14;
                                                f38 = j11;
                                                f37 = f57;
                                                i16 = i31;
                                                vector34 = vector39;
                                            }
                                            aVar2 = aVar4;
                                            int i34 = aVar2.f99996l;
                                            aVar2.f99996l = i34 + 1;
                                            aVar2.f99994j.set(i34, i16);
                                            aVar2.f99995k.set(i34, i15);
                                            aVar2.f99985a.set(i34, vector34.getX());
                                            aVar2.f99986b.set(i34, vector34.getY());
                                            aVar2.f99987c.set(i34, vector34.getZ());
                                            aVar2.f99988d.set(i34, vector33.getX());
                                            aVar2.f99989e.set(i34, vector33.getY());
                                            aVar2.f99990f.set(i34, vector33.getZ());
                                            aVar2.f99991g.set(i34, this.f99916e.getX());
                                            aVar2.f99992h.set(i34, this.f99916e.getY());
                                            aVar2.f99993i.set(i34, this.f99916e.getZ());
                                        }
                                        i31 = i16 + 1;
                                        j11 = f38;
                                        aVar4 = aVar2;
                                        i30 = i15;
                                        qVar5 = qVar4;
                                        i21 = i14;
                                        i26 = f30;
                                        pVar7 = pVar3;
                                        i32 = i12;
                                        z10 = z11;
                                        f13 = f31;
                                        qVar6 = qVar3;
                                        F13 = i13;
                                        f10 = f35;
                                        f12 = f36;
                                        f14 = f32;
                                        i25 = f33;
                                        j12 = f37;
                                        vector38 = vector34;
                                        vector37 = vector33;
                                        f11 = f34;
                                        pVar5 = pVar4;
                                    }
                                    i30++;
                                    qVar5 = qVar5;
                                    i21 = i21;
                                    z10 = z10;
                                    vector38 = vector38;
                                    F11 = i32;
                                    vector37 = vector37;
                                    f11 = f11;
                                    pVar5 = pVar5;
                                }
                                pVar = pVar7;
                                i10 = i21;
                                aVar = aVar4;
                                vector3 = vector37;
                                vector32 = vector38;
                                pVar2 = pVar5;
                                qVar2 = qVar6;
                                qVar = qVar5;
                            }
                        }
                        i19 = i10 + 1;
                        aVar3 = aVar;
                        c10 = qVar;
                        g10 = nVar;
                        vector35 = vector32;
                        e10 = pVar;
                        vector36 = vector3;
                        i17 = i11;
                        a11 = pVar2;
                        i18 = qVar2;
                    }
                }
            }
            i17++;
            aVar3 = aVar3;
            vector35 = vector35;
            vector36 = vector36;
        }
        return aVar3;
    }

    public final void j(Vector3 surfaceNormal, Vector3 outTangent, Vector3 outBitangent) {
        if (Math.abs(surfaceNormal.getY()) < 0.999f) {
            outTangent.set(0.0f, 1.0f, 0.0f);
        } else {
            outTangent.set(1.0f, 0.0f, 0.0f);
        }
        outTangent.crossLocal(surfaceNormal);
        if (outTangent.lengthSquared() <= 1.0E-8f) {
            outTangent.set(0.0f, 0.0f, 1.0f);
            outTangent.crossLocal(surfaceNormal);
        }
        outTangent.normalizeLocal();
        outBitangent.set(surfaceNormal);
        outBitangent.crossLocal(outTangent);
        outBitangent.normalizeLocal();
    }

    public final List<b> k(int totalItems, int preferredWorkers) {
        int max = Math.max(1, Math.min(totalItems, preferredWorkers));
        int max2 = Math.max(1, (int) Math.ceil(totalItems / max));
        ArrayList arrayList = new ArrayList(max);
        int i10 = 0;
        while (i10 < totalItems) {
            int i11 = i10 + max2;
            arrayList.add(new b(i10, Math.min(totalItems, i11)));
            i10 = i11;
        }
        return arrayList;
    }

    public int l(Bb.b output, List<h> bakeDataList, List<T> lights) {
        if (output == null || bakeDataList == null) {
            return 0;
        }
        if (m(lights)) {
            try {
                return org.ITsMagic.Atlas.d.e(output, bakeDataList, lights, this.f99912a, new Ug.c(this), v());
            } catch (UnsatisfiedLinkError unused) {
            }
        }
        return I(bakeDataList) ? q(output, bakeDataList, lights) : p(output, bakeDataList, lights);
    }

    public boolean m(List<T> lights) {
        return (lights == null || lights.isEmpty() || v() == null) ? false : true;
    }

    public final int n(Bb.b output, List<h> bakeDataList) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        n nVar;
        q qVar;
        int p10 = output.p();
        int l10 = output.l();
        int i15 = 0;
        int i16 = 0;
        while (i15 < bakeDataList.size()) {
            h hVar = bakeDataList.get(i15);
            if (hVar != null && hVar.a() != null) {
                Ug.g a10 = hVar.a();
                q i17 = a10.i();
                p a11 = a10.a();
                n g10 = a10.g();
                if (i17 != null && a11 != null && g10 != null) {
                    int i18 = 0;
                    while (i18 < g10.b()) {
                        int h10 = g10.h(i18);
                        int i19 = g10.i(i18);
                        int j10 = g10.j(i18);
                        if (h10 < 0 || i19 < 0 || j10 < 0 || h10 >= a11.b() || i19 >= a11.b() || j10 >= a11.b() || h10 >= i17.d() || i19 >= i17.d() || j10 >= i17.d()) {
                            i12 = p10;
                            i13 = l10;
                        } else {
                            int i20 = p10 - 1;
                            float f10 = i20;
                            float i21 = a11.i(h10) * f10;
                            int i22 = l10 - 1;
                            i12 = p10;
                            float f11 = i22;
                            float j11 = (1.0f - a11.j(h10)) * f11;
                            i13 = l10;
                            float i23 = a11.i(i19) * f10;
                            float j12 = (1.0f - a11.j(i19)) * f11;
                            float i24 = f10 * a11.i(j10);
                            float j13 = (1.0f - a11.j(j10)) * f11;
                            float t10 = t(i21, j11, i23, j12, i24, j13);
                            if (Math.abs(t10) > 1.0E-5f) {
                                i14 = i16;
                                int F10 = Nc.b.F(0, (int) Math.floor(Math.min(i21, Math.min(i23, i24))), i20);
                                int F11 = Nc.b.F(0, (int) Math.ceil(Math.max(i21, Math.max(i23, i24))), i20);
                                nVar = g10;
                                int F12 = Nc.b.F(0, (int) Math.floor(Math.min(j11, Math.min(j12, j13))), i22);
                                qVar = i17;
                                int F13 = Nc.b.F(0, (int) Math.ceil(Math.max(j11, Math.max(j12, j13))), i22);
                                while (F12 <= F13) {
                                    float f12 = F12 + 0.5f;
                                    int i25 = i14;
                                    int i26 = F10;
                                    while (i26 <= F11) {
                                        int i27 = F13;
                                        float f13 = i26 + 0.5f;
                                        float t11 = t(i23, j12, i24, j13, f13, f12) / t10;
                                        float t12 = t(i24, j13, i21, j11, f13, f12) / t10;
                                        float f14 = (1.0f - t11) - t12;
                                        if (t11 >= -1.0E-5f && t12 >= -1.0E-5f && f14 >= -1.0E-5f) {
                                            i25++;
                                        }
                                        i26++;
                                        F13 = i27;
                                    }
                                    F12++;
                                    i14 = i25;
                                }
                                i16 = i14;
                                i18++;
                                g10 = nVar;
                                p10 = i12;
                                l10 = i13;
                                i17 = qVar;
                            }
                        }
                        i14 = i16;
                        nVar = g10;
                        qVar = i17;
                        i16 = i14;
                        i18++;
                        g10 = nVar;
                        p10 = i12;
                        l10 = i13;
                        i17 = qVar;
                    }
                    i10 = p10;
                    i11 = l10;
                    i15++;
                    p10 = i10;
                    l10 = i11;
                }
            }
            i10 = p10;
            i11 = l10;
            i15++;
            p10 = i10;
            l10 = i11;
        }
        return i16;
    }

    public final int[] o(final Bb.b output, final List<h> bakeDataList, final List<T> lights, List<b> ranges) {
        ArrayList arrayList = new ArrayList(ranges.size());
        for (int i10 = 0; i10 < ranges.size(); i10++) {
            final b bVar = ranges.get(i10);
            arrayList.add(O9.b.c(new Callable() {
                @Override
                public final Object call() {
                    Object z10;
                    z10 = org.ITsMagic.Atlas.a.this.z(output, bakeDataList, lights, bVar);
                    return z10;
                }
            }));
        }
        int[] iArr = new int[ranges.size()];
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            try {
                iArr[i11] = ((Integer) ((Future) arrayList.get(i11)).get()).intValue();
            } catch (Exception e10) {
                throw new RuntimeException("Failed to count light raycasts in parallel", e10);
            }
        }
        return iArr;
    }

    public final int p(Bb.b output, List<h> bakeDataList, List<T> lights) {
        this.f99921j = 0;
        this.f99919h = d.COUNT_ONLY;
        E(output, bakeDataList, lights, 0, bakeDataList.size(), false);
        this.f99919h = d.NONE;
        return this.f99921j;
    }

    public final int q(Bb.b output, List<h> bakeDataList, List<T> lights) {
        List<b> k10 = k(bakeDataList.size(), Math.max(1, O9.b.a() - 2));
        if (k10.size() <= 1) {
            return p(output, bakeDataList, lights);
        }
        int[] o10 = o(output, bakeDataList, lights, k10);
        int i10 = 0;
        for (int i11 : o10) {
            i10 += i11;
        }
        return i10;
    }

    public final int r(Bb.b output, List<h> bakeDataList, List<T> lights, int startBakeIndex, int endBakeIndex) {
        this.f99921j = 0;
        this.f99919h = d.COUNT_ONLY;
        E(output, bakeDataList, lights, startBakeIndex, endBakeIndex, false);
        this.f99919h = d.NONE;
        return this.f99921j;
    }

    public abstract a<T> s();

    public final void u() {
        c cVar = this.f99920i;
        if (cVar != null) {
            int i10 = this.f99923l;
            if (i10 <= 0) {
                cVar.a(0, 0, 1.0f, "");
            } else {
                cVar.a(i10, i10, 1.0f, "");
            }
        }
        this.f99919h = d.NONE;
        this.f99920i = null;
    }

    public abstract d.c<T> v();

    public Bb.b w() {
        return this.f99913b;
    }

    public List<BVHMesh> x() {
        return this.f99912a;
    }

    public boolean y(Vector3 worldPosition, Vector3 worldNormal, Vector3 toLightDirection, float maxDistance) {
        C3593a U10;
        if (maxDistance > 0.01f && toLightDirection.lengthSquared() > 1.0E-8f) {
            d dVar = this.f99919h;
            if (dVar == d.COUNT_ONLY) {
                this.f99921j++;
                return false;
            }
            if (dVar == d.EXECUTE) {
                this.f99922k++;
                B();
            }
            Vector3 h10 = this.f99914c.h();
            h10.set(worldPosition);
            h10.addLocal(worldNormal, 0.01f);
            this.f99914c.e().set(toLightDirection);
            this.f99914c.f31954c = maxDistance - 0.01f;
            for (int i10 = 0; i10 < this.f99912a.size(); i10++) {
                BVHMesh bVHMesh = this.f99912a.get(i10);
                if (bVHMesh != null && bVHMesh.A() != null && bVHMesh.v() != null && (U10 = bVHMesh.U(this.f99914c, Vertex.RayMode.ClosestPoint, false)) != null && U10.getDistance() > 0.01f && U10.getDistance() < this.f99914c.f31954c + 0.01f) {
                    return true;
                }
            }
        }
        return false;
    }

    public final Object z(Bb.b bVar, List list, List list2, b bVar2) throws Exception {
        return Integer.valueOf(s().r(bVar, list, list2, bVar2.f99929a, bVar2.f99930b));
    }
}
