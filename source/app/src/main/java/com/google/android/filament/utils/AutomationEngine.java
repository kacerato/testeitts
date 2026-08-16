package com.google.android.filament.utils;

import androidx.annotation.NonNull;
import com.google.android.filament.ColorGrading;
import com.google.android.filament.Engine;
import com.google.android.filament.IndirectLight;
import com.google.android.filament.LightManager;
import com.google.android.filament.MaterialInstance;
import com.google.android.filament.Renderer;
import com.google.android.filament.Scene;
import com.google.android.filament.View;
import com.google.android.filament.g;

public class AutomationEngine {

    public final long f60358a;

    public ColorGrading f60359b;

    public static class a {

        public float f60360a = 16.0f;

        public float f60361b = 125.0f;

        public float f60362c = 100.0f;

        public float f60363d = 0.1f;

        public float f60364e = 100.0f;

        public float f60365f = 28.0f;

        public float f60366g = 10.0f;
    }

    public static class b {

        public float f60367a = 0.2f;

        public int f60368b = 2;

        public boolean f60369c = true;
    }

    public static class c {

        public View f60370a;

        public Renderer f60371b;

        public MaterialInstance[] f60372c;

        public LightManager f60373d;

        public Scene f60374e;

        public IndirectLight f60375f;

        @g
        public int f60376g;

        @g
        public int[] f60377h;
    }

    public static class d {

        public float f60378a = 0.75f;

        public boolean f60379b = false;

        public boolean f60380c = true;

        public boolean f60381d = true;

        public boolean f60382e = false;

        public float f60383f = 0.0f;
    }

    public AutomationEngine(@NonNull String str) {
        long nCreateAutomationEngine = nCreateAutomationEngine(str);
        this.f60358a = nCreateAutomationEngine;
        if (nCreateAutomationEngine == 0) {
            throw new IllegalStateException("Couldn't create AutomationEngine");
        }
    }

    private static native void nApplySettings(long j10, long j11, String str, long j12, long[] jArr, long j13, int i10, int[] iArr, long j14, long j15, long j16);

    private static native long nCreateAutomationEngine(String str);

    private static native long nCreateDefaultAutomationEngine();

    private static native void nDestroy(long j10);

    private static native void nGetCameraSettings(long j10, Object obj);

    private static native long nGetColorGrading(long j10, long j11);

    private static native int nGetCurrentTest(long j10);

    private static native int nGetTestCount(long j10);

    private static native void nGetViewerOptions(long j10, Object obj);

    private static native void nSetOptions(long j10, float f10, int i10, boolean z10);

    private static native boolean nShouldClose(long j10);

    private static native void nSignalBatchMode(long j10);

    private static native void nStartBatchMode(long j10);

    private static native void nStartRunning(long j10);

    private static native void nStopRunning(long j10);

    private static native void nTick(long j10, long j11, long j12, long[] jArr, long j13, long j14, int i10, int[] iArr, long j15, long j16, float f10);

    public void a(@NonNull Engine engine, @NonNull String str, @NonNull c cVar) {
        long[] jArr;
        if (cVar.f60370a == null || cVar.f60371b == null) {
            throw new IllegalStateException("Must provide a View and Renderer");
        }
        if (cVar.f60373d == null || cVar.f60374e == null) {
            throw new IllegalStateException("Must provide a LightManager and Scene");
        }
        MaterialInstance[] materialInstanceArr = cVar.f60372c;
        if (materialInstanceArr != null) {
            int length = materialInstanceArr.length;
            jArr = new long[length];
            for (int i10 = 0; i10 < length; i10++) {
                jArr[i10] = cVar.f60372c[i10].l();
            }
        } else {
            jArr = null;
        }
        long[] jArr2 = jArr;
        long v10 = cVar.f60370a.v();
        IndirectLight indirectLight = cVar.f60375f;
        nApplySettings(this.f60358a, engine.getNativeObject(), str, v10, jArr2, indirectLight == null ? 0L : indirectLight.q(), cVar.f60376g, cVar.f60377h, cVar.f60373d.E(), cVar.f60374e.j(), cVar.f60371b.j());
    }

    @NonNull
    public a b() {
        a aVar = new a();
        nGetCameraSettings(this.f60358a, aVar);
        return aVar;
    }

    @NonNull
    public ColorGrading c(@NonNull Engine engine) {
        long nGetColorGrading = nGetColorGrading(this.f60358a, engine.getNativeObject());
        ColorGrading colorGrading = this.f60359b;
        if (colorGrading == null || colorGrading.x() != nGetColorGrading) {
            this.f60359b = nGetColorGrading == 0 ? null : new ColorGrading(nGetColorGrading);
        }
        return this.f60359b;
    }

    public int d() {
        return nGetCurrentTest(this.f60358a);
    }

    public long e() {
        return this.f60358a;
    }

    public int f() {
        return nGetTestCount(this.f60358a);
    }

    public void finalize() throws Throwable {
        nDestroy(this.f60358a);
        super.finalize();
    }

    @NonNull
    public d g() {
        d dVar = new d();
        nGetViewerOptions(this.f60358a, dVar);
        return dVar;
    }

    public void h(@NonNull b bVar) {
        nSetOptions(this.f60358a, bVar.f60367a, bVar.f60368b, bVar.f60369c);
    }

    public boolean i() {
        return nShouldClose(this.f60358a);
    }

    public void j() {
        nSignalBatchMode(this.f60358a);
    }

    public void k() {
        nStartBatchMode(this.f60358a);
    }

    public void l() {
        nStartRunning(this.f60358a);
    }

    public void m() {
        nStopRunning(this.f60358a);
    }

    public void n(@NonNull Engine engine, @NonNull c cVar, float f10) {
        long[] jArr;
        long j10;
        AutomationEngine automationEngine;
        if (cVar.f60370a == null || cVar.f60371b == null) {
            throw new IllegalStateException("Must provide a View and Renderer");
        }
        MaterialInstance[] materialInstanceArr = cVar.f60372c;
        if (materialInstanceArr != null) {
            int length = materialInstanceArr.length;
            jArr = new long[length];
            for (int i10 = 0; i10 < length; i10++) {
                jArr[i10] = cVar.f60372c[i10].l();
            }
        } else {
            jArr = null;
        }
        long[] jArr2 = jArr;
        long v10 = cVar.f60370a.v();
        long j11 = cVar.f60371b.j();
        IndirectLight indirectLight = cVar.f60375f;
        long q10 = indirectLight == null ? 0L : indirectLight.q();
        LightManager lightManager = cVar.f60373d;
        long E10 = lightManager == null ? 0L : lightManager.E();
        Scene scene = cVar.f60374e;
        if (scene == null) {
            automationEngine = this;
            j10 = 0;
        } else {
            j10 = scene.j();
            automationEngine = this;
        }
        nTick(automationEngine.f60358a, engine.getNativeObject(), v10, jArr2, j11, q10, cVar.f60376g, cVar.f60377h, E10, j10, f10);
    }

    public AutomationEngine() {
        long nCreateDefaultAutomationEngine = nCreateDefaultAutomationEngine();
        this.f60358a = nCreateDefaultAutomationEngine;
        if (nCreateDefaultAutomationEngine == 0) {
            throw new IllegalStateException("Couldn't create AutomationEngine");
        }
    }
}
