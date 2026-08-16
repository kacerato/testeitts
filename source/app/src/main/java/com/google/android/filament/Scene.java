package com.google.android.filament;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class Scene {

    public long f60075a;

    @Nullable
    public Skybox f60076b;

    @Nullable
    public IndirectLight f60077c;

    public interface a {
        void a(@g int i10);
    }

    public Scene(long j10) {
        this.f60075a = j10;
    }

    private static native void nAddEntities(long j10, int[] iArr);

    private static native void nAddEntity(long j10, int i10);

    private static native boolean nGetEntities(long j10, int[] iArr, int i10);

    private static native int nGetEntityCount(long j10);

    private static native int nGetLightCount(long j10);

    private static native int nGetRenderableCount(long j10);

    private static native boolean nHasEntity(long j10, int i10);

    private static native void nRemove(long j10, int i10);

    private static native void nRemoveEntities(long j10, int[] iArr);

    private static native void nSetIndirectLight(long j10, long j11);

    private static native void nSetSkybox(long j10, long j11);

    public void a(@g int[] iArr) {
        nAddEntities(j(), iArr);
    }

    public void b(@g int i10) {
        nAddEntity(j(), i10);
    }

    public void c() {
        this.f60075a = 0L;
    }

    public void d(@NonNull a aVar) {
        for (int i10 : f(null)) {
            aVar.a(i10);
        }
    }

    public int[] e() {
        return f(null);
    }

    public int[] f(@Nullable int[] iArr) {
        int g10 = g();
        if (iArr == null || iArr.length < g10) {
            iArr = new int[g10];
        }
        if (nGetEntities(j(), iArr, iArr.length)) {
            return iArr;
        }
        throw new IllegalStateException("Error retriving Scene's entities");
    }

    public int g() {
        return nGetEntityCount(j());
    }

    @Nullable
    public IndirectLight h() {
        return this.f60077c;
    }

    public int i() {
        return nGetLightCount(j());
    }

    public long j() {
        long j10 = this.f60075a;
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalStateException("Calling method on destroyed Scene");
    }

    public int k() {
        return nGetRenderableCount(j());
    }

    @Nullable
    public Skybox l() {
        return this.f60076b;
    }

    public boolean m(@g int i10) {
        return nHasEntity(j(), i10);
    }

    @Deprecated
    public void n(@g int i10) {
        p(i10);
    }

    public void o(@g int[] iArr) {
        nRemoveEntities(j(), iArr);
    }

    public void p(@g int i10) {
        nRemove(j(), i10);
    }

    public void q(@Nullable IndirectLight indirectLight) {
        this.f60077c = indirectLight;
        long j10 = j();
        IndirectLight indirectLight2 = this.f60077c;
        nSetIndirectLight(j10, indirectLight2 != null ? indirectLight2.q() : 0L);
    }

    public void r(@Nullable Skybox skybox) {
        this.f60076b = skybox;
        long j10 = j();
        Skybox skybox2 = this.f60076b;
        nSetSkybox(j10, skybox2 != null ? skybox2.l() : 0L);
    }
}
