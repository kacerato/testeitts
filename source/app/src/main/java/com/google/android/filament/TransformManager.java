package com.google.android.filament;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;

public class TransformManager {

    public long f60173a;

    public TransformManager(long j10) {
        this.f60173a = j10;
    }

    private static native void nCommitLocalTransformTransaction(long j10);

    private static native int nCreate(long j10, int i10);

    private static native int nCreateArray(long j10, int i10, int i11, float[] fArr);

    private static native int nCreateArrayFp64(long j10, int i10, int i11, double[] dArr);

    private static native void nDestroy(long j10, int i10);

    private static native int nGetChildCount(long j10, int i10);

    private static native void nGetChildren(long j10, int i10, int[] iArr, int i11);

    private static native int nGetInstance(long j10, int i10);

    private static native int nGetParent(long j10, int i10);

    private static native void nGetTransform(long j10, int i10, float[] fArr);

    private static native void nGetTransformFp64(long j10, int i10, double[] dArr);

    private static native void nGetWorldTransform(long j10, int i10, float[] fArr);

    private static native void nGetWorldTransformFp64(long j10, int i10, double[] dArr);

    private static native boolean nHasComponent(long j10, int i10);

    private static native boolean nIsAccurateTranslationsEnabled(long j10);

    private static native void nOpenLocalTransformTransaction(long j10);

    private static native void nSetAccurateTranslationsEnabled(long j10, boolean z10);

    private static native void nSetParent(long j10, int i10, int i11);

    private static native void nSetTransform(long j10, int i10, float[] fArr);

    private static native void nSetTransformFp64(long j10, int i10, double[] dArr);

    public void a() {
        nCommitLocalTransformTransaction(this.f60173a);
    }

    @h
    public int b(@g int i10) {
        return nCreate(this.f60173a, i10);
    }

    @h
    public int c(@g int i10, @h int i11, @Nullable @Size(min = 16) double[] dArr) {
        return nCreateArrayFp64(this.f60173a, i10, i11, dArr);
    }

    @h
    public int d(@g int i10, @h int i11, @Nullable @Size(min = 16) float[] fArr) {
        return nCreateArray(this.f60173a, i10, i11, fArr);
    }

    public void e(@g int i10) {
        nDestroy(this.f60173a, i10);
    }

    public int f(@h int i10) {
        return nGetChildCount(this.f60173a, i10);
    }

    @NonNull
    @g
    public int[] g(@h int i10, @Nullable int[] iArr) {
        if (iArr == null) {
            iArr = new int[f(i10)];
        }
        if (iArr.length > 0) {
            nGetChildren(this.f60173a, i10, iArr, iArr.length);
        }
        return iArr;
    }

    @h
    public int h(@g int i10) {
        return nGetInstance(this.f60173a, i10);
    }

    public long i() {
        return this.f60173a;
    }

    @g
    public int j(@h int i10) {
        return nGetParent(this.f60173a, i10);
    }

    @NonNull
    @Size(min = 16)
    public double[] k(@h int i10, @Nullable @Size(min = 16) double[] dArr) {
        double[] k10 = c.k(dArr);
        nGetTransformFp64(this.f60173a, i10, k10);
        return k10;
    }

    @NonNull
    @Size(min = 16)
    public float[] l(@h int i10, @Nullable @Size(min = 16) float[] fArr) {
        float[] o10 = c.o(fArr);
        nGetTransform(this.f60173a, i10, o10);
        return o10;
    }

    @NonNull
    @Size(min = 16)
    public double[] m(@h int i10, @Nullable @Size(min = 16) double[] dArr) {
        double[] k10 = c.k(dArr);
        nGetWorldTransformFp64(this.f60173a, i10, k10);
        return k10;
    }

    @NonNull
    @Size(min = 16)
    public float[] n(@h int i10, @Nullable @Size(min = 16) float[] fArr) {
        float[] o10 = c.o(fArr);
        nGetWorldTransform(this.f60173a, i10, o10);
        return o10;
    }

    public boolean o(@g int i10) {
        return nHasComponent(this.f60173a, i10);
    }

    public boolean p() {
        return nIsAccurateTranslationsEnabled(this.f60173a);
    }

    public void q() {
        nOpenLocalTransformTransaction(this.f60173a);
    }

    public void r(boolean z10) {
        nSetAccurateTranslationsEnabled(this.f60173a, z10);
    }

    public void s(@h int i10, @h int i11) {
        nSetParent(this.f60173a, i10, i11);
    }

    public void t(@h int i10, @NonNull @Size(min = 16) double[] dArr) {
        c.l(dArr);
        nSetTransformFp64(this.f60173a, i10, dArr);
    }

    public void u(@h int i10, @NonNull @Size(min = 16) float[] fArr) {
        c.p(fArr);
        nSetTransform(this.f60173a, i10, fArr);
    }
}
