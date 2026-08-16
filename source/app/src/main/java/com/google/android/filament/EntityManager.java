package com.google.android.filament;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import com.google.android.filament.proguard.UsedByReflection;

public class EntityManager {

    public long f59953a;

    public static class a {

        public static final EntityManager f59954a = new EntityManager();
    }

    @NonNull
    public static EntityManager f() {
        return a.f59954a;
    }

    private static native int nCreate(long j10);

    private static native void nCreateArray(long j10, int i10, int[] iArr);

    private static native void nDestroy(long j10, int i10);

    private static native void nDestroyArray(long j10, int i10, int[] iArr);

    private static native long nGetEntityManager();

    private static native boolean nIsAlive(long j10, int i10);

    @g
    public int a() {
        return nCreate(this.f59953a);
    }

    @NonNull
    @g
    public int[] b(@IntRange(from = 1) int i10) {
        if (i10 < 1) {
            throw new ArrayIndexOutOfBoundsException("n must be at least 1");
        }
        int[] iArr = new int[i10];
        nCreateArray(this.f59953a, i10, iArr);
        return iArr;
    }

    @NonNull
    public int[] c(@NonNull @g int[] iArr) {
        nCreateArray(this.f59953a, iArr.length, iArr);
        return iArr;
    }

    public void d(@g int i10) {
        nDestroy(this.f59953a, i10);
    }

    public void e(@NonNull @g int[] iArr) {
        nDestroyArray(this.f59953a, iArr.length, iArr);
    }

    public boolean g(@g int i10) {
        return nIsAlive(this.f59953a, i10);
    }

    @UsedByReflection("AssetLoader.java")
    public long getNativeObject() {
        return this.f59953a;
    }

    public EntityManager() {
        this.f59953a = nGetEntityManager();
    }

    public EntityManager(long j10) {
        nGetEntityManager();
        this.f59953a = j10;
    }
}
