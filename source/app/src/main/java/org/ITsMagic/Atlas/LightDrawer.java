package org.ITsMagic.Atlas;

import Ug.h;
import Ug.k;
import android.graphics.Bitmap;
import android.graphics.Color;
import com.itsmagic.engine.Activities.Editor.Extensions.Area.AreaEditorComponent;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.PointLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SpotLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SunLight;
import com.itsmagic.engine.Engines.Engine.Vertex.BVHMesh;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.ITsMagic.Atlas.a;
import org.ITsMagic.Atlas.c;
import t3.C15377a;
import ub.n;
import ub.p;

public class LightDrawer {

    public static final float f99861a = 0.003921569f;

    public static final boolean f99862b = false;

    public class a implements c.b {

        public final e f99863a;

        public final int f99864b;

        public a(final e val$listener, final int val$finalTotalRaycasts) {
            this.f99863a = val$listener;
            this.f99864b = val$finalTotalRaycasts;
        }

        @Override
        public void a(int executed, int total, float progress, String tda) {
            int i10 = this.f99864b;
            if (i10 > 0) {
                this.f99863a.a(i10, i10, 1.0f, tda);
            } else {
                this.f99863a.a(0, 0, progress, tda);
            }
        }

        @Override
        public void b(String step) {
            this.f99863a.b(step);
        }
    }

    public class b implements a.c {

        public final e f99866a;

        public b(final e val$listener) {
            this.f99866a = val$listener;
        }

        @Override
        public void a(int executed, int total, float progress, String tda) {
            this.f99866a.a(executed, total, progress, tda);
        }
    }

    public class c implements a.c {

        public final int f99868a;

        public final e f99869b;

        public final int f99870c;

        public final int f99871d;

        public c(final int val$globalTotal, final e val$listener, final int val$passTotal, final int val$passOffset) {
            this.f99868a = val$globalTotal;
            this.f99869b = val$listener;
            this.f99870c = val$passTotal;
            this.f99871d = val$passOffset;
        }

        @Override
        public void a(int executed, int total, float progress, String tda) {
            if (this.f99868a <= 0) {
                this.f99869b.a(0, 0, progress, tda);
                return;
            }
            int g10 = LightDrawer.this.g(this.f99871d + LightDrawer.this.g(executed, 0, this.f99870c), 0, this.f99868a);
            int i10 = this.f99868a;
            this.f99869b.a(g10, i10, g10 / i10, tda);
        }
    }

    public static class d {

        public static final int[] f99873a;

        static {
            int[] iArr = new int[AreaEditorComponent.q.values().length];
            f99873a = iArr;
            try {
                iArr[AreaEditorComponent.q.FAST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f99873a[AreaEditorComponent.q.BALANCED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f99873a[AreaEditorComponent.q.HIGH_QUALITY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public interface e {
        void a(int executed, int total, float progress, String tda);

        void b(String step);
    }

    static {
        System.loadLibrary("vertex");
    }

    private static native void nativeBlurGiTexture(long sourceRPointer, long sourceGPointer, long sourceBPointer, long sourceAPointer, long outRPointer, long outGPointer, long outBPointer, long outAPointer, int width, int height);

    public final void b(p targetTexture, p sourceTexture) {
        Bb.b d10 = Bb.b.d(targetTexture, 50.0f);
        Bb.b d11 = Bb.b.d(sourceTexture, 50.0f);
        try {
            int min = Math.min(d10.p(), d11.p());
            int min2 = Math.min(d10.l(), d11.l());
            for (int i10 = 0; i10 < min2; i10++) {
                for (int i11 = 0; i11 < min; i11++) {
                    float i12 = d11.i(i11, i10);
                    if (i12 > 0.0f) {
                        int i13 = i11;
                        int i14 = i10;
                        d10.s(i13, i14, h(d10.n(i11, i10) + d11.n(i11, i10)), h(d10.k(i11, i10) + d11.k(i11, i10)), h(d10.j(i11, i10) + d11.j(i11, i10)), Math.max(d10.i(i11, i10), i12));
                    }
                }
            }
            d10.c();
            d10.e();
            d11.e();
        } catch (Throwable th2) {
            d10.e();
            d11.e();
            throw th2;
        }
    }

    public final void c(Bb.b output, p aoTexture, float intensity) {
        int i10;
        float f10;
        int i11;
        Bb.b d10 = Bb.b.d(aoTexture, 50.0f);
        try {
            int p10 = output.p();
            int l10 = output.l();
            float h10 = h(intensity);
            for (int i12 = 0; i12 < l10; i12++) {
                int i13 = 1;
                float max = l10 > 1 ? (i12 / (l10 - 1)) * Math.max(d10.l() - 1, 0) : 0.0f;
                int i14 = 0;
                while (i14 < p10) {
                    float i15 = output.i(i14, i12);
                    if (i15 > 0.0f) {
                        float max2 = p10 > i13 ? (i14 / (p10 - 1)) * Math.max(d10.p() - i13, 0) : 0.0f;
                        if (p(d10, max2, max, 3) > 0.0f) {
                            float h11 = 1.0f - h(p(d10, max2, max, 0) * h10);
                            i10 = i14;
                            f10 = max;
                            i11 = i13;
                            output.s(i14, i12, h(output.n(i14, i12) * h11), h(output.k(i14, i12) * h11), h(output.j(i14, i12) * h11), i15);
                            i14 = i10 + 1;
                            max = f10;
                            i13 = i11;
                        }
                    }
                    i10 = i14;
                    f10 = max;
                    i11 = i13;
                    i14 = i10 + 1;
                    max = f10;
                    i13 = i11;
                }
            }
            d10.e();
        } catch (Throwable th2) {
            d10.e();
            throw th2;
        }
    }

    public final void d(Bb.b output, p giTexture) {
        int i10;
        float f10;
        Bb.b d10 = Bb.b.d(giTexture, 50.0f);
        try {
            int p10 = output.p();
            int l10 = output.l();
            for (int i11 = 0; i11 < l10; i11++) {
                float max = l10 > 1 ? (i11 / (l10 - 1)) * Math.max(d10.l() - 1, 0) : 0.0f;
                int i12 = 0;
                while (i12 < p10) {
                    if (output.i(i12, i11) > 0.0f) {
                        float max2 = p10 > 1 ? (i12 / (p10 - 1)) * Math.max(d10.p() - 1, 0) : 0.0f;
                        if (p(d10, max2, max, 3) > 0.0f) {
                            i10 = i12;
                            f10 = max;
                            output.s(i12, i11, h(output.n(i12, i11) + p(d10, max2, max, 0)), h(output.k(i12, i11) + p(d10, max2, max, 1)), h(output.j(i12, i11) + p(d10, max2, max, 2)), output.i(i12, i11));
                            i12 = i10 + 1;
                            max = f10;
                        }
                    }
                    i10 = i12;
                    f10 = max;
                    i12 = i10 + 1;
                    max = f10;
                }
            }
            d10.e();
        } catch (Throwable th2) {
            d10.e();
            throw th2;
        }
    }

    public final void e(p giTexture) {
        NativeFloatBuffer nativeFloatBuffer;
        NativeFloatBuffer nativeFloatBuffer2;
        NativeFloatBuffer nativeFloatBuffer3;
        NativeFloatBuffer nativeFloatBuffer4;
        NativeFloatBuffer nativeFloatBuffer5;
        NativeFloatBuffer nativeFloatBuffer6;
        NativeFloatBuffer nativeFloatBuffer7;
        NativeFloatBuffer nativeFloatBuffer8;
        Bb.b d10 = Bb.b.d(giTexture, 50.0f);
        try {
            int p10 = d10.p();
            int l10 = d10.l();
            if (p10 <= 1 && l10 <= 1) {
                return;
            }
            int i10 = p10 * l10;
            NativeFloatBuffer nativeFloatBuffer9 = new NativeFloatBuffer(i10);
            NativeFloatBuffer nativeFloatBuffer10 = new NativeFloatBuffer(i10);
            NativeFloatBuffer nativeFloatBuffer11 = new NativeFloatBuffer(i10);
            NativeFloatBuffer nativeFloatBuffer12 = new NativeFloatBuffer(i10);
            NativeFloatBuffer nativeFloatBuffer13 = new NativeFloatBuffer(i10);
            NativeFloatBuffer nativeFloatBuffer14 = new NativeFloatBuffer(i10);
            NativeFloatBuffer nativeFloatBuffer15 = new NativeFloatBuffer(i10);
            NativeFloatBuffer nativeFloatBuffer16 = new NativeFloatBuffer(i10);
            for (int i11 = 0; i11 < l10; i11++) {
                for (int i12 = 0; i12 < p10; i12++) {
                    int i13 = (i11 * p10) + i12;
                    try {
                        nativeFloatBuffer9.set(i13, d10.n(i12, i11));
                        nativeFloatBuffer10.set(i13, d10.k(i12, i11));
                        nativeFloatBuffer11.set(i13, d10.j(i12, i11));
                        nativeFloatBuffer12.set(i13, d10.i(i12, i11));
                    } catch (Throwable th2) {
                        th = th2;
                        nativeFloatBuffer3 = nativeFloatBuffer13;
                        nativeFloatBuffer4 = nativeFloatBuffer12;
                        nativeFloatBuffer5 = nativeFloatBuffer11;
                        nativeFloatBuffer8 = nativeFloatBuffer10;
                        nativeFloatBuffer2 = nativeFloatBuffer16;
                        nativeFloatBuffer7 = nativeFloatBuffer14;
                        nativeFloatBuffer6 = nativeFloatBuffer15;
                        nativeFloatBuffer = nativeFloatBuffer9;
                        nativeFloatBuffer.destroy();
                        nativeFloatBuffer8.destroy();
                        nativeFloatBuffer5.destroy();
                        nativeFloatBuffer4.destroy();
                        nativeFloatBuffer3.destroy();
                        nativeFloatBuffer7.destroy();
                        nativeFloatBuffer6.destroy();
                        nativeFloatBuffer2.destroy();
                        throw th;
                    }
                }
            }
            long criticalDirectCppPointer = NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer9, 0L);
            long criticalDirectCppPointer2 = NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer10, 0L);
            NativeFloatBuffer nativeFloatBuffer17 = nativeFloatBuffer16;
            NativeFloatBuffer nativeFloatBuffer18 = nativeFloatBuffer10;
            NativeFloatBuffer nativeFloatBuffer19 = nativeFloatBuffer9;
            NativeFloatBuffer nativeFloatBuffer20 = nativeFloatBuffer14;
            NativeFloatBuffer nativeFloatBuffer21 = nativeFloatBuffer15;
            try {
                nativeBlurGiTexture(criticalDirectCppPointer, criticalDirectCppPointer2, NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer11, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer12, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer13, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer14, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer15, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer16, 0L), p10, l10);
                for (int i14 = 0; i14 < l10; i14++) {
                    int i15 = 0;
                    while (i15 < p10) {
                        int i16 = (i14 * p10) + i15;
                        nativeFloatBuffer2 = nativeFloatBuffer17;
                        nativeFloatBuffer3 = nativeFloatBuffer13;
                        nativeFloatBuffer4 = nativeFloatBuffer12;
                        nativeFloatBuffer5 = nativeFloatBuffer11;
                        nativeFloatBuffer6 = nativeFloatBuffer21;
                        nativeFloatBuffer8 = nativeFloatBuffer18;
                        nativeFloatBuffer = nativeFloatBuffer19;
                        nativeFloatBuffer7 = nativeFloatBuffer20;
                        int i17 = l10;
                        try {
                            d10.s(i15, i14, h(nativeFloatBuffer13.get(i16)), h(nativeFloatBuffer20.get(i16)), h(nativeFloatBuffer21.get(i16)), h(nativeFloatBuffer17.get(i16)));
                            i15++;
                            nativeFloatBuffer18 = nativeFloatBuffer8;
                            nativeFloatBuffer19 = nativeFloatBuffer;
                            l10 = i17;
                            nativeFloatBuffer17 = nativeFloatBuffer2;
                            nativeFloatBuffer13 = nativeFloatBuffer3;
                            nativeFloatBuffer12 = nativeFloatBuffer4;
                            nativeFloatBuffer11 = nativeFloatBuffer5;
                            nativeFloatBuffer21 = nativeFloatBuffer6;
                            nativeFloatBuffer20 = nativeFloatBuffer7;
                        } catch (Throwable th3) {
                            th = th3;
                            nativeFloatBuffer.destroy();
                            nativeFloatBuffer8.destroy();
                            nativeFloatBuffer5.destroy();
                            nativeFloatBuffer4.destroy();
                            nativeFloatBuffer3.destroy();
                            nativeFloatBuffer7.destroy();
                            nativeFloatBuffer6.destroy();
                            nativeFloatBuffer2.destroy();
                            throw th;
                        }
                    }
                }
                NativeFloatBuffer nativeFloatBuffer22 = nativeFloatBuffer17;
                NativeFloatBuffer nativeFloatBuffer23 = nativeFloatBuffer13;
                NativeFloatBuffer nativeFloatBuffer24 = nativeFloatBuffer12;
                NativeFloatBuffer nativeFloatBuffer25 = nativeFloatBuffer11;
                NativeFloatBuffer nativeFloatBuffer26 = nativeFloatBuffer21;
                NativeFloatBuffer nativeFloatBuffer27 = nativeFloatBuffer20;
                NativeFloatBuffer nativeFloatBuffer28 = nativeFloatBuffer18;
                nativeFloatBuffer19.destroy();
                nativeFloatBuffer28.destroy();
                nativeFloatBuffer25.destroy();
                nativeFloatBuffer24.destroy();
                nativeFloatBuffer23.destroy();
                nativeFloatBuffer27.destroy();
                nativeFloatBuffer26.destroy();
                nativeFloatBuffer22.destroy();
                d10.c();
            } catch (Throwable th4) {
                th = th4;
                nativeFloatBuffer = nativeFloatBuffer19;
                nativeFloatBuffer2 = nativeFloatBuffer17;
                nativeFloatBuffer3 = nativeFloatBuffer13;
                nativeFloatBuffer4 = nativeFloatBuffer12;
                nativeFloatBuffer5 = nativeFloatBuffer11;
                nativeFloatBuffer6 = nativeFloatBuffer21;
                nativeFloatBuffer7 = nativeFloatBuffer20;
                nativeFloatBuffer8 = nativeFloatBuffer18;
            }
        } finally {
            d10.e();
        }
    }

    public final List<BVHMesh> f(List<k> allBuildedAtlases, e listener) {
        BVHMesh k10;
        ArrayList arrayList = new ArrayList();
        if (allBuildedAtlases == null) {
            return arrayList;
        }
        for (int i10 = 0; i10 < allBuildedAtlases.size(); i10++) {
            listener.b("Creating BVH Mesh");
            k kVar = allBuildedAtlases.get(i10);
            if (kVar != null && kVar.c() != null) {
                for (int i11 = 0; i11 < kVar.c().size(); i11++) {
                    h hVar = kVar.c().get(i11);
                    if (hVar != null && hVar.a() != null && (k10 = k(hVar.a())) != null) {
                        arrayList.add(k10);
                    }
                }
            }
        }
        return arrayList;
    }

    public final int g(int value, int min, int max) {
        return Math.max(min, Math.min(value, max));
    }

    public final float h(float value) {
        return Math.max(0.0f, Math.min(1.0f, value));
    }

    public final a.c i(e listener) {
        return new b(listener);
    }

    public final a.c j(e listener, int passOffset, int passTotal, int globalTotal) {
        return new c(globalTotal, listener, passTotal, passOffset);
    }

    public final BVHMesh k(Ug.g atlasVertex) {
        if (atlasVertex == null || atlasVertex.i() == null || atlasVertex.g() == null) {
            return null;
        }
        BVHMesh bVHMesh = new BVHMesh();
        bVHMesh.S(atlasVertex.i());
        bVHMesh.N(atlasVertex.g());
        if (atlasVertex.c() != null) {
            bVHMesh.J(atlasVertex.c());
        }
        if (atlasVertex.a() != null) {
            bVHMesh.P(atlasVertex.a());
        } else if (atlasVertex.e() != null) {
            bVHMesh.P(atlasVertex.e());
        }
        bVHMesh.apply();
        return bVHMesh;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x039f  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x03b3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:157:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x03ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03a9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:166:0x03a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:209:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x00d9 A[Catch: all -> 0x00c3, TryCatch #11 {all -> 0x00c3, blocks: (B:31:0x00b9, B:38:0x017e, B:220:0x00d9, B:222:0x00e3, B:224:0x00ee, B:226:0x00f8, B:228:0x0102, B:230:0x010c, B:231:0x0114, B:233:0x0121, B:235:0x0144, B:237:0x015b), top: B:21:0x0080 }] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x00e3 A[Catch: all -> 0x00c3, TryCatch #11 {all -> 0x00c3, blocks: (B:31:0x00b9, B:38:0x017e, B:220:0x00d9, B:222:0x00e3, B:224:0x00ee, B:226:0x00f8, B:228:0x0102, B:230:0x010c, B:231:0x0114, B:233:0x0121, B:235:0x0144, B:237:0x015b), top: B:21:0x0080 }] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x00ee A[Catch: all -> 0x00c3, TryCatch #11 {all -> 0x00c3, blocks: (B:31:0x00b9, B:38:0x017e, B:220:0x00d9, B:222:0x00e3, B:224:0x00ee, B:226:0x00f8, B:228:0x0102, B:230:0x010c, B:231:0x0114, B:233:0x0121, B:235:0x0144, B:237:0x015b), top: B:21:0x0080 }] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x00f8 A[Catch: all -> 0x00c3, TryCatch #11 {all -> 0x00c3, blocks: (B:31:0x00b9, B:38:0x017e, B:220:0x00d9, B:222:0x00e3, B:224:0x00ee, B:226:0x00f8, B:228:0x0102, B:230:0x010c, B:231:0x0114, B:233:0x0121, B:235:0x0144, B:237:0x015b), top: B:21:0x0080 }] */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0102 A[Catch: all -> 0x00c3, TryCatch #11 {all -> 0x00c3, blocks: (B:31:0x00b9, B:38:0x017e, B:220:0x00d9, B:222:0x00e3, B:224:0x00ee, B:226:0x00f8, B:228:0x0102, B:230:0x010c, B:231:0x0114, B:233:0x0121, B:235:0x0144, B:237:0x015b), top: B:21:0x0080 }] */
    /* JADX WARN: Removed duplicated region for block: B:230:0x010c A[Catch: all -> 0x00c3, TryCatch #11 {all -> 0x00c3, blocks: (B:31:0x00b9, B:38:0x017e, B:220:0x00d9, B:222:0x00e3, B:224:0x00ee, B:226:0x00f8, B:228:0x0102, B:230:0x010c, B:231:0x0114, B:233:0x0121, B:235:0x0144, B:237:0x015b), top: B:21:0x0080 }] */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0121 A[Catch: all -> 0x00c3, TryCatch #11 {all -> 0x00c3, blocks: (B:31:0x00b9, B:38:0x017e, B:220:0x00d9, B:222:0x00e3, B:224:0x00ee, B:226:0x00f8, B:228:0x0102, B:230:0x010c, B:231:0x0114, B:233:0x0121, B:235:0x0144, B:237:0x015b), top: B:21:0x0080 }] */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0144 A[Catch: all -> 0x00c3, TryCatch #11 {all -> 0x00c3, blocks: (B:31:0x00b9, B:38:0x017e, B:220:0x00d9, B:222:0x00e3, B:224:0x00ee, B:226:0x00f8, B:228:0x0102, B:230:0x010c, B:231:0x0114, B:233:0x0121, B:235:0x0144, B:237:0x015b), top: B:21:0x0080 }] */
    /* JADX WARN: Removed duplicated region for block: B:237:0x015b A[Catch: all -> 0x00c3, TryCatch #11 {all -> 0x00c3, blocks: (B:31:0x00b9, B:38:0x017e, B:220:0x00d9, B:222:0x00e3, B:224:0x00ee, B:226:0x00f8, B:228:0x0102, B:230:0x010c, B:231:0x0114, B:233:0x0121, B:235:0x0144, B:237:0x015b), top: B:21:0x0080 }] */
    /* JADX WARN: Removed duplicated region for block: B:239:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x03bc  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x03c1  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x03d5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x03d0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x03cb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x03c6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v0, types: [ub.p] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v4, types: [Bb.b] */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void l(p pVar, p pVar2, p pVar3, p pVar4, float f10, int i10, AreaEditorComponent.r rVar, float f11, boolean z10, boolean z11, float f12, float f13, float f14, AreaEditorComponent.q qVar, List<h> list, List<k> list2, List<SunLight> list3, List<SpotLight> list4, List<PointLight> list5, int i11, File file, e eVar) {
        Bb.b bVar;
        Bb.b bVar2;
        n nVar;
        n nVar2;
        n nVar3;
        boolean z12;
        String str;
        List<BVHMesh> list6;
        PointLigthTriangleRasterizer pointLigthTriangleRasterizer;
        SpotLigthTriangleRasterizer spotLigthTriangleRasterizer;
        e eVar2;
        int i12;
        float f15;
        float f16;
        int i13;
        List<BVHMesh> list7;
        n nVar4;
        n nVar5;
        n nVar6;
        Bb.b bVar3;
        LightDrawer lightDrawer = this;
        ?? r13 = pVar2;
        Bb.b d10 = Bb.b.d(pVar, 50.0f);
        n nVar7 = null;
        Bb.b d11 = r13 != 0 ? Bb.b.d(r13, 50.0f) : null;
        Bb.b d12 = pVar3 != null ? Bb.b.d(pVar3, 50.0f) : null;
        try {
            eVar.b("Preparing light atlas texture");
            d10.f(0.0f, 0.0f, 0.0f, 0.0f);
            eVar.b("Preparing raycast meshes");
            List<BVHMesh> f17 = lightDrawer.f(list2, eVar);
            boolean z13 = (list3 == null || list3.isEmpty()) ? false : true;
            boolean z14 = (list4 == null || list4.isEmpty()) ? false : true;
            try {
                if (list5 != null) {
                    if (!list5.isEmpty()) {
                        z12 = true;
                        if (!z13 || z14 || z12) {
                            Bb.b bVar4 = d12;
                            str = "/";
                            SunLigthTriangleRasterizer sunLigthTriangleRasterizer = !z13 ? new SunLigthTriangleRasterizer(f17, bVar4) : null;
                            SpotLigthTriangleRasterizer spotLigthTriangleRasterizer2 = !z14 ? new SpotLigthTriangleRasterizer(f17, bVar4) : null;
                            PointLigthTriangleRasterizer pointLigthTriangleRasterizer2 = !z12 ? new PointLigthTriangleRasterizer(f17, bVar4) : null;
                            int l10 = !z13 ? sunLigthTriangleRasterizer.l(d10, list, list3) : 0;
                            int l11 = !z14 ? spotLigthTriangleRasterizer2.l(d10, list, list4) : 0;
                            int l12 = !z12 ? pointLigthTriangleRasterizer2.l(d10, list, list5) : 0;
                            int i14 = l10 + l11 + l12;
                            list6 = f17;
                            eVar.a(0, i14, 0.0f, "");
                            if (z13) {
                                pointLigthTriangleRasterizer = pointLigthTriangleRasterizer2;
                                spotLigthTriangleRasterizer = spotLigthTriangleRasterizer2;
                                eVar2 = eVar;
                                l10 = 0;
                            } else {
                                eVar.b("Rasterizing sun lights");
                                pointLigthTriangleRasterizer = pointLigthTriangleRasterizer2;
                                spotLigthTriangleRasterizer = spotLigthTriangleRasterizer2;
                                eVar2 = eVar;
                                sunLigthTriangleRasterizer.C(d10, list, list3, l10, lightDrawer.j(eVar, 0, l10, i14));
                            }
                            if (z14) {
                                eVar2.b("Rasterizing spot lights");
                                spotLigthTriangleRasterizer.C(d10, list, list4, l11, lightDrawer.j(eVar2, l10, l11, i14));
                                l10 += l11;
                            }
                            if (z12) {
                                eVar2.b("Rasterizing point lights");
                                pointLigthTriangleRasterizer.C(d10, list, list5, l12, lightDrawer.j(eVar2, l10, l12, i14));
                            }
                            i12 = i14;
                            f15 = 0.0f;
                            r13 = bVar4;
                        } else {
                            try {
                                eVar.b("Rasterizing mesh coverage");
                                PointLigthTriangleRasterizer pointLigthTriangleRasterizer3 = new PointLigthTriangleRasterizer(f17, d12);
                                int l13 = pointLigthTriangleRasterizer3.l(d10, list, Collections.emptyList());
                                Bb.b bVar5 = d12;
                                try {
                                    eVar.a(0, l13, 0.0f, "");
                                    r13 = bVar5;
                                    str = "/";
                                    pointLigthTriangleRasterizer3.C(d10, list, Collections.emptyList(), l13, lightDrawer.j(eVar, 0, l13, l13));
                                    list6 = f17;
                                    eVar2 = eVar;
                                    f15 = 0.0f;
                                    i12 = l13;
                                } catch (Throwable th2) {
                                    th = th2;
                                    r13 = bVar5;
                                    bVar2 = d10;
                                    bVar = r13;
                                    nVar = null;
                                    nVar2 = null;
                                    nVar3 = null;
                                    bVar2.e();
                                    if (d11 != null) {
                                    }
                                    if (bVar != null) {
                                    }
                                    if (nVar7 != null) {
                                    }
                                    if (nVar3 != null) {
                                    }
                                    if (nVar != null) {
                                    }
                                    if (nVar2 == null) {
                                    }
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                r13 = d12;
                            }
                        }
                        if (f10 <= f15) {
                            int i15 = i10;
                            float f18 = f15;
                            if (i15 <= 0 || d11 == null || i12 <= 0) {
                                f16 = f18;
                            } else {
                                eVar2.b("Syncing direct light atlas");
                                d10.c();
                                int o10 = lightDrawer.o(d10.p(), f10);
                                int o11 = lightDrawer.o(d10.l(), f10);
                                nVar5 = new n(o10, o11);
                                try {
                                    nVar5.apply();
                                    n nVar8 = new n(o10, o11);
                                    try {
                                        Bb.b d13 = Bb.b.d(nVar8, 50.0f);
                                        try {
                                            d13.f(f18, f18, f18, f18);
                                            d13.e();
                                            List<BVHMesh> list8 = list6;
                                            BounceGIRasterizer bounceGIRasterizer = new BounceGIRasterizer(list8, r13);
                                            if (i15 > 1) {
                                                try {
                                                    n nVar9 = new n(o10, o11);
                                                    try {
                                                        nVar9.apply();
                                                        nVar3 = nVar9;
                                                    } catch (Throwable th4) {
                                                        th = th4;
                                                        nVar3 = nVar9;
                                                        nVar = nVar8;
                                                        bVar2 = d10;
                                                        bVar = r13;
                                                        nVar2 = nVar7;
                                                        nVar7 = nVar5;
                                                        bVar2.e();
                                                        if (d11 != null) {
                                                        }
                                                        if (bVar != null) {
                                                        }
                                                        if (nVar7 != null) {
                                                        }
                                                        if (nVar3 != null) {
                                                        }
                                                        if (nVar != null) {
                                                        }
                                                        if (nVar2 == null) {
                                                        }
                                                    }
                                                } catch (Throwable th5) {
                                                    th = th5;
                                                    nVar = nVar8;
                                                    bVar2 = d10;
                                                    bVar = r13;
                                                    nVar2 = null;
                                                    nVar3 = null;
                                                    nVar7 = nVar5;
                                                    bVar2.e();
                                                    if (d11 != null) {
                                                    }
                                                    if (bVar != null) {
                                                    }
                                                    if (nVar7 != null) {
                                                    }
                                                    if (nVar3 != null) {
                                                    }
                                                    if (nVar != null) {
                                                    }
                                                    if (nVar2 == null) {
                                                    }
                                                }
                                            } else {
                                                nVar3 = null;
                                            }
                                            p pVar5 = pVar;
                                            p pVar6 = nVar5;
                                            p pVar7 = nVar3;
                                            int i16 = 0;
                                            Bb.b bVar6 = r13;
                                            while (i16 < i15) {
                                                float f19 = i16 == 0 ? f11 : 1.0f;
                                                try {
                                                    StringBuilder sb2 = new StringBuilder();
                                                    sb2.append("Bounce GI ");
                                                    int i17 = i16 + 1;
                                                    sb2.append(i17);
                                                    String str2 = str;
                                                    sb2.append(str2);
                                                    sb2.append(i15);
                                                    eVar2.b(sb2.toString());
                                                    a.c i18 = lightDrawer.i(eVar2);
                                                    bVar = bVar6;
                                                    int i19 = i12;
                                                    p pVar8 = pVar6;
                                                    List<BVHMesh> list9 = list8;
                                                    BounceGIRasterizer bounceGIRasterizer2 = bounceGIRasterizer;
                                                    n nVar10 = nVar8;
                                                    nVar6 = nVar5;
                                                    float f20 = f18;
                                                    int i20 = i15;
                                                    bVar3 = d10;
                                                    try {
                                                        bounceGIRasterizer.u(pVar6, pVar5, pVar2, pVar4, list, f10, rVar, f19, z10, i18);
                                                        eVar2.b("Accumulating Bounce GI " + i17 + str2 + i20);
                                                        nVar = nVar10;
                                                        lightDrawer = this;
                                                        try {
                                                            lightDrawer.b(nVar, pVar8);
                                                            if (i17 < i20) {
                                                                pVar6 = pVar7 != null ? pVar7 : pVar8;
                                                                pVar5 = pVar8;
                                                                pVar7 = pVar5;
                                                            } else {
                                                                pVar6 = pVar8;
                                                            }
                                                            i12 = i19;
                                                            i15 = i20;
                                                            nVar8 = nVar;
                                                            i16 = i17;
                                                            bVar6 = bVar;
                                                            bounceGIRasterizer = bounceGIRasterizer2;
                                                            nVar5 = nVar6;
                                                            list8 = list9;
                                                            f18 = f20;
                                                            d10 = bVar3;
                                                            str = str2;
                                                        } catch (Throwable th6) {
                                                            th = th6;
                                                            nVar2 = null;
                                                            nVar7 = nVar6;
                                                            bVar2 = bVar3;
                                                            bVar2.e();
                                                            if (d11 != null) {
                                                            }
                                                            if (bVar != null) {
                                                            }
                                                            if (nVar7 != null) {
                                                            }
                                                            if (nVar3 != null) {
                                                            }
                                                            if (nVar != null) {
                                                            }
                                                            if (nVar2 == null) {
                                                            }
                                                        }
                                                    } catch (Throwable th7) {
                                                        th = th7;
                                                        nVar = nVar10;
                                                        nVar2 = null;
                                                        nVar7 = nVar6;
                                                        bVar2 = bVar3;
                                                        bVar2.e();
                                                        if (d11 != null) {
                                                        }
                                                        if (bVar != null) {
                                                        }
                                                        if (nVar7 != null) {
                                                        }
                                                        if (nVar3 != null) {
                                                        }
                                                        if (nVar != null) {
                                                        }
                                                        if (nVar2 == null) {
                                                        }
                                                    }
                                                } catch (Throwable th8) {
                                                    th = th8;
                                                    nVar = nVar8;
                                                    nVar6 = nVar5;
                                                    bVar3 = d10;
                                                    bVar = bVar6;
                                                }
                                            }
                                            list7 = list8;
                                            nVar = nVar8;
                                            nVar6 = nVar5;
                                            f16 = f18;
                                            bVar3 = d10;
                                            bVar = bVar6;
                                            i13 = i12;
                                            try {
                                                eVar2.b("Blurring Bounce GI");
                                                lightDrawer.e(nVar);
                                                if (file != null && !C15377a.f109719g.booleanValue()) {
                                                    eVar2.b("Exporting Bounce GI debug");
                                                    lightDrawer.q(nVar, file);
                                                }
                                                eVar2.b("Int. Bounce GI");
                                                bVar2 = bVar3;
                                                try {
                                                    lightDrawer.d(bVar2, nVar);
                                                    nVar4 = nVar;
                                                    nVar5 = nVar6;
                                                    if (z11 && f13 > f16 && f12 > f16) {
                                                        try {
                                                            eVar2.b("Ambient occlusion");
                                                            nVar2 = new n(lightDrawer.n(bVar2.p(), qVar), lightDrawer.n(bVar2.l(), qVar));
                                                            try {
                                                                nVar2.apply();
                                                                new AmbientOcclusionRasterizer(list7).k(nVar2, list, f12, f14, qVar, lightDrawer.i(eVar2));
                                                                eVar2.b("Blurring ambient occlusion");
                                                                lightDrawer.e(nVar2);
                                                                eVar2.b("Applying ambient occlusion");
                                                                lightDrawer.c(bVar2, nVar2, f13);
                                                                nVar7 = nVar2;
                                                            } catch (Throwable th9) {
                                                                th = th9;
                                                                nVar = nVar4;
                                                                nVar7 = nVar5;
                                                                bVar2.e();
                                                                if (d11 != null) {
                                                                    d11.e();
                                                                }
                                                                if (bVar != null) {
                                                                    bVar.e();
                                                                }
                                                                if (nVar7 != null) {
                                                                    try {
                                                                        nVar7.destroyImmediate();
                                                                    } catch (Exception unused) {
                                                                    }
                                                                }
                                                                if (nVar3 != null) {
                                                                    try {
                                                                        nVar3.destroyImmediate();
                                                                    } catch (Exception unused2) {
                                                                    }
                                                                }
                                                                if (nVar != null) {
                                                                    try {
                                                                        nVar.destroyImmediate();
                                                                    } catch (Exception unused3) {
                                                                    }
                                                                }
                                                                if (nVar2 == null) {
                                                                    throw th;
                                                                }
                                                                try {
                                                                    nVar2.destroyImmediate();
                                                                    throw th;
                                                                } catch (Exception unused4) {
                                                                    throw th;
                                                                }
                                                            }
                                                        } catch (Throwable th10) {
                                                            th = th10;
                                                            nVar = nVar4;
                                                            nVar2 = nVar7;
                                                            nVar7 = nVar5;
                                                            bVar2.e();
                                                            if (d11 != null) {
                                                            }
                                                            if (bVar != null) {
                                                            }
                                                            if (nVar7 != null) {
                                                            }
                                                            if (nVar3 != null) {
                                                            }
                                                            if (nVar != null) {
                                                            }
                                                            if (nVar2 == null) {
                                                            }
                                                        }
                                                    }
                                                    eVar2.b("Applying light atlas texture");
                                                    bVar2.c();
                                                    eVar2.b("Dilating light atlas");
                                                    org.ITsMagic.Atlas.c.c(pVar, i11, new a(eVar2, i13));
                                                    eVar2.b("Drawing light atlas finished");
                                                    bVar2.e();
                                                    if (d11 != null) {
                                                        d11.e();
                                                    }
                                                    if (bVar != null) {
                                                        bVar.e();
                                                    }
                                                    if (nVar5 != null) {
                                                        try {
                                                            nVar5.destroyImmediate();
                                                        } catch (Exception unused5) {
                                                        }
                                                    }
                                                    if (nVar3 != null) {
                                                        try {
                                                            nVar3.destroyImmediate();
                                                        } catch (Exception unused6) {
                                                        }
                                                    }
                                                    if (nVar4 != null) {
                                                        try {
                                                            nVar4.destroyImmediate();
                                                        } catch (Exception unused7) {
                                                        }
                                                    }
                                                    if (nVar7 != null) {
                                                        try {
                                                            nVar7.destroyImmediate();
                                                            return;
                                                        } catch (Exception unused8) {
                                                            return;
                                                        }
                                                    }
                                                    return;
                                                } catch (Throwable th11) {
                                                    th = th11;
                                                    nVar2 = null;
                                                    nVar7 = nVar6;
                                                    bVar2.e();
                                                    if (d11 != null) {
                                                    }
                                                    if (bVar != null) {
                                                    }
                                                    if (nVar7 != null) {
                                                    }
                                                    if (nVar3 != null) {
                                                    }
                                                    if (nVar != null) {
                                                    }
                                                    if (nVar2 == null) {
                                                    }
                                                }
                                            } catch (Throwable th12) {
                                                th = th12;
                                                bVar2 = bVar3;
                                            }
                                        } catch (Throwable th13) {
                                            nVar = nVar8;
                                            nVar6 = nVar5;
                                            bVar2 = d10;
                                            bVar = r13;
                                            try {
                                                d13.e();
                                                throw th13;
                                            } catch (Throwable th14) {
                                                th = th14;
                                                nVar2 = null;
                                                nVar3 = nVar2;
                                                nVar7 = nVar6;
                                                bVar2.e();
                                                if (d11 != null) {
                                                }
                                                if (bVar != null) {
                                                }
                                                if (nVar7 != null) {
                                                }
                                                if (nVar3 != null) {
                                                }
                                                if (nVar != null) {
                                                }
                                                if (nVar2 == null) {
                                                }
                                            }
                                        }
                                    } catch (Throwable th15) {
                                        th = th15;
                                        nVar = nVar8;
                                        nVar6 = nVar5;
                                        bVar2 = d10;
                                        bVar = r13;
                                    }
                                } catch (Throwable th16) {
                                    th = th16;
                                    nVar6 = nVar5;
                                    bVar2 = d10;
                                    bVar = r13;
                                    nVar = null;
                                    nVar2 = null;
                                }
                            }
                        } else {
                            f16 = f15;
                        }
                        bVar2 = d10;
                        bVar = r13;
                        i13 = i12;
                        list7 = list6;
                        nVar4 = null;
                        nVar5 = null;
                        nVar3 = null;
                        if (z11) {
                            eVar2.b("Ambient occlusion");
                            nVar2 = new n(lightDrawer.n(bVar2.p(), qVar), lightDrawer.n(bVar2.l(), qVar));
                            nVar2.apply();
                            new AmbientOcclusionRasterizer(list7).k(nVar2, list, f12, f14, qVar, lightDrawer.i(eVar2));
                            eVar2.b("Blurring ambient occlusion");
                            lightDrawer.e(nVar2);
                            eVar2.b("Applying ambient occlusion");
                            lightDrawer.c(bVar2, nVar2, f13);
                            nVar7 = nVar2;
                        }
                        eVar2.b("Applying light atlas texture");
                        bVar2.c();
                        eVar2.b("Dilating light atlas");
                        org.ITsMagic.Atlas.c.c(pVar, i11, new a(eVar2, i13));
                        eVar2.b("Drawing light atlas finished");
                        bVar2.e();
                        if (d11 != null) {
                        }
                        if (bVar != null) {
                        }
                        if (nVar5 != null) {
                        }
                        if (nVar3 != null) {
                        }
                        if (nVar4 != null) {
                        }
                        if (nVar7 != null) {
                        }
                    }
                }
                if (z13) {
                }
                Bb.b bVar42 = d12;
                str = "/";
                if (!z13) {
                }
                if (!z14) {
                }
                if (!z12) {
                }
                if (!z13) {
                }
                if (!z14) {
                }
                if (!z12) {
                }
                int i142 = l10 + l11 + l12;
                list6 = f17;
                eVar.a(0, i142, 0.0f, "");
                if (z13) {
                }
                if (z14) {
                }
                if (z12) {
                }
                i12 = i142;
                f15 = 0.0f;
                r13 = bVar42;
                if (f10 <= f15) {
                }
                bVar2 = d10;
                bVar = r13;
                i13 = i12;
                list7 = list6;
                nVar4 = null;
                nVar5 = null;
                nVar3 = null;
                if (z11) {
                }
                eVar2.b("Applying light atlas texture");
                bVar2.c();
                eVar2.b("Dilating light atlas");
                org.ITsMagic.Atlas.c.c(pVar, i11, new a(eVar2, i13));
                eVar2.b("Drawing light atlas finished");
                bVar2.e();
                if (d11 != null) {
                }
                if (bVar != null) {
                }
                if (nVar5 != null) {
                }
                if (nVar3 != null) {
                }
                if (nVar4 != null) {
                }
                if (nVar7 != null) {
                }
            } catch (Throwable th17) {
                th = th17;
            }
            z12 = false;
        } catch (Throwable th18) {
            th = th18;
            bVar = d12;
            bVar2 = d10;
        }
    }

    public final float m(Bb.b texture, int x10, int y10, int channel) {
        if (channel == 0) {
            return texture.n(x10, y10);
        }
        if (channel == 1) {
            return texture.k(x10, y10);
        }
        if (channel == 2) {
            return texture.j(x10, y10);
        }
        if (channel != 3) {
            return 0.0f;
        }
        return texture.i(x10, y10);
    }

    public final int n(int baseResolution, AreaEditorComponent.q quality) {
        float f10;
        if (baseResolution <= 1) {
            return 1;
        }
        if (quality != null) {
            int i10 = d.f99873a[quality.ordinal()];
            if (i10 == 1) {
                f10 = 0.2f;
            } else if (i10 == 2) {
                f10 = 0.45f;
            } else if (i10 == 3) {
                f10 = 1.0f;
            }
            return Math.max(1, Math.round(baseResolution * ((float) Math.sqrt(Math.max(0.01f, Math.min(1.0f, f10))))));
        }
        f10 = 0.5f;
        return Math.max(1, Math.round(baseResolution * ((float) Math.sqrt(Math.max(0.01f, Math.min(1.0f, f10))))));
    }

    public final int o(int baseResolution, float giQuality) {
        if (baseResolution <= 1) {
            return 1;
        }
        if (!Float.isFinite(giQuality) || giQuality <= 0.0f) {
            giQuality = 0.25f;
        }
        return Math.max(1, Math.round(baseResolution * ((float) Math.sqrt(Math.max(0.01f, Math.min(1.0f, giQuality))))));
    }

    public final float p(Bb.b texture, float x10, float y10, int channel) {
        int p10 = texture.p();
        int l10 = texture.l();
        if (p10 <= 0 || l10 <= 0) {
            return 0.0f;
        }
        int i10 = p10 - 1;
        int g10 = g((int) Math.floor(x10), 0, i10);
        int i11 = l10 - 1;
        int g11 = g((int) Math.floor(y10), 0, i11);
        int g12 = g(g10 + 1, 0, i10);
        int g13 = g(g11 + 1, 0, i11);
        float h10 = h(x10 - g10);
        float h11 = h(y10 - g11);
        float m10 = m(texture, g10, g11, channel);
        float m11 = m(texture, g12, g11, channel);
        float m12 = m(texture, g10, g13, channel);
        float f10 = m10 + ((m11 - m10) * h10);
        return f10 + (((m12 + ((m(texture, g12, g13, channel) - m12) * h10)) - f10) * h11);
    }

    public final void q(p texture, File outputFile) {
        if (texture == null || outputFile == null) {
            return;
        }
        Bb.b d10 = Bb.b.d(texture, 50.0f);
        Bitmap bitmap = null;
        try {
            try {
                int p10 = d10.p();
                int l10 = d10.l();
                if (p10 > 0 && l10 > 0) {
                    Bitmap createBitmap = Bitmap.createBitmap(p10, l10, Bitmap.Config.ARGB_8888);
                    for (int i10 = 0; i10 < l10; i10++) {
                        for (int i11 = 0; i11 < p10; i11++) {
                            createBitmap.setPixel(i11, i10, Color.argb(Math.round(h(d10.i(i11, i10)) * 255.0f), Math.round(h(d10.n(i11, i10)) * 255.0f), Math.round(h(d10.k(i11, i10)) * 255.0f), Math.round(h(d10.j(i11, i10)) * 255.0f)));
                        }
                    }
                    FileOutputStream fileOutputStream = new FileOutputStream(outputFile);
                    try {
                        createBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        createBitmap.recycle();
                        d10.e();
                        return;
                    } catch (Throwable th2) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
                d10.e();
            } catch (IOException e10) {
                throw new RuntimeException("Failed to export GI debug texture to " + ((Object) outputFile), e10);
            }
        } catch (Throwable th4) {
            if (0 != 0) {
                bitmap.recycle();
            }
            d10.e();
            throw th4;
        }
    }
}
