package com.google.android.filament;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;

public class Camera {

    public long f59913a;

    @g
    public final int f59914b;

    public enum a {
        VERTICAL,
        HORIZONTAL
    }

    public enum b {
        PERSPECTIVE,
        ORTHO
    }

    public Camera(long j10, @g int i10) {
        this.f59913a = j10;
        this.f59914b = i10;
    }

    public static double b(double d10, double d11) {
        return nComputeEffectiveFocalLength(d10, d11);
    }

    public static double c(double d10, double d11) {
        return nComputeEffectiveFov(d10, d11);
    }

    private static native double nComputeEffectiveFocalLength(double d10, double d11);

    private static native double nComputeEffectiveFov(double d10, double d11);

    private static native float nGetAperture(long j10);

    private static native double nGetCullingFar(long j10);

    private static native void nGetCullingProjectionMatrix(long j10, double[] dArr);

    private static native double nGetFieldOfViewInDegrees(long j10, int i10);

    private static native double nGetFocalLength(long j10);

    private static native float nGetFocusDistance(long j10);

    private static native void nGetForwardVector(long j10, float[] fArr);

    private static native void nGetLeftVector(long j10, float[] fArr);

    private static native void nGetModelMatrix(long j10, float[] fArr);

    private static native void nGetModelMatrixFp64(long j10, double[] dArr);

    private static native double nGetNear(long j10);

    private static native void nGetPosition(long j10, float[] fArr);

    private static native void nGetProjectionMatrix(long j10, double[] dArr);

    private static native void nGetScaling(long j10, double[] dArr);

    private static native float nGetSensitivity(long j10);

    private static native void nGetShift(long j10, double[] dArr);

    private static native float nGetShutterSpeed(long j10);

    private static native void nGetUpVector(long j10, float[] fArr);

    private static native void nGetViewMatrix(long j10, float[] fArr);

    private static native void nGetViewMatrixFp64(long j10, double[] dArr);

    private static native void nLookAt(long j10, double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17, double d18);

    private static native void nSetCustomEyeProjection(long j10, double[] dArr, int i10, double[] dArr2, double d10, double d11);

    private static native void nSetCustomProjection(long j10, double[] dArr, double[] dArr2, double d10, double d11);

    private static native void nSetExposure(long j10, float f10, float f11, float f12);

    private static native void nSetEyeModelMatrix(long j10, int i10, double[] dArr);

    private static native void nSetFocusDistance(long j10, float f10);

    private static native void nSetLensProjection(long j10, double d10, double d11, double d12, double d13);

    private static native void nSetModelMatrix(long j10, float[] fArr);

    private static native void nSetModelMatrixFp64(long j10, double[] dArr);

    private static native void nSetProjection(long j10, int i10, double d10, double d11, double d12, double d13, double d14, double d15);

    private static native void nSetProjectionFov(long j10, double d10, double d11, double d12, double d13, int i10);

    private static native void nSetScaling(long j10, double d10, double d11);

    private static native void nSetShift(long j10, double d10, double d11);

    public void A(@NonNull double[] dArr, int i10, @NonNull @Size(min = 16) double[] dArr2, double d10, double d11) {
        c.n(dArr2);
        if (dArr.length < i10 * 16) {
            throw new IllegalArgumentException("inProjection array too small for the given count");
        }
        nSetCustomEyeProjection(o(), dArr, i10, dArr2, d10, d11);
    }

    public void B(@NonNull @Size(min = 16) double[] dArr, double d10, double d11) {
        c.n(dArr);
        nSetCustomProjection(o(), dArr, dArr, d10, d11);
    }

    public void C(@NonNull @Size(min = 16) double[] dArr, @NonNull @Size(min = 16) double[] dArr2, double d10, double d11) {
        c.n(dArr);
        c.n(dArr2);
        nSetCustomProjection(o(), dArr, dArr2, d10, d11);
    }

    public void D(float f10) {
        E(1.0f, 1.2f, (1.0f / f10) * 100.0f);
    }

    public void E(float f10, float f11, float f12) {
        nSetExposure(o(), f10, f11, f12);
    }

    public void F(int i10, @NonNull @Size(min = 16) double[] dArr) {
        c.n(dArr);
        nSetEyeModelMatrix(o(), i10, dArr);
    }

    public void G(float f10) {
        nSetFocusDistance(o(), f10);
    }

    public void H(double d10, double d11, double d12, double d13) {
        nSetLensProjection(o(), d10, d11, d12, d13);
    }

    public void I(@NonNull @Size(min = 16) double[] dArr) {
        c.l(dArr);
        nSetModelMatrixFp64(o(), dArr);
    }

    public void J(@NonNull @Size(min = 16) float[] fArr) {
        c.p(fArr);
        nSetModelMatrix(o(), fArr);
    }

    public void K(double d10, double d11, double d12, double d13, @NonNull a aVar) {
        nSetProjectionFov(o(), d10, d11, d12, d13, aVar.ordinal());
    }

    public void L(@NonNull b bVar, double d10, double d11, double d12, double d13, double d14, double d15) {
        nSetProjection(o(), bVar.ordinal(), d10, d11, d12, d13, d14, d15);
    }

    public void M(double d10, double d11) {
        nSetScaling(o(), d10, d11);
    }

    @Deprecated
    public void N(@NonNull @Size(min = 4) double[] dArr) {
        c.c(dArr);
        M(dArr[0], dArr[1]);
    }

    public void O(double d10, double d11) {
        nSetShift(o(), d10, d11);
    }

    public void a() {
        this.f59913a = 0L;
    }

    public float d() {
        return nGetAperture(o());
    }

    public float e() {
        return (float) nGetCullingFar(o());
    }

    @NonNull
    @Size(min = 16)
    public double[] f(@Nullable @Size(min = 16) double[] dArr) {
        double[] m10 = c.m(dArr);
        nGetCullingProjectionMatrix(o(), m10);
        return m10;
    }

    @g
    public int g() {
        return this.f59914b;
    }

    public double h(@NonNull a aVar) {
        return nGetFieldOfViewInDegrees(o(), aVar.ordinal());
    }

    public double i() {
        return nGetFocalLength(o());
    }

    public float j() {
        return nGetFocusDistance(o());
    }

    @NonNull
    @Size(min = 3)
    public float[] k(@Nullable @Size(min = 3) float[] fArr) {
        float[] e10 = c.e(fArr);
        nGetForwardVector(o(), e10);
        return e10;
    }

    @NonNull
    @Size(min = 3)
    public float[] l(@Nullable @Size(min = 3) float[] fArr) {
        float[] e10 = c.e(fArr);
        nGetLeftVector(o(), e10);
        return e10;
    }

    @NonNull
    @Size(min = 16)
    public double[] m(@Nullable @Size(min = 16) double[] dArr) {
        double[] k10 = c.k(dArr);
        nGetModelMatrixFp64(o(), k10);
        return k10;
    }

    @NonNull
    @Size(min = 16)
    public float[] n(@Nullable @Size(min = 16) float[] fArr) {
        float[] o10 = c.o(fArr);
        nGetModelMatrix(o(), o10);
        return o10;
    }

    public long o() {
        long j10 = this.f59913a;
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalStateException("Calling method on destroyed Camera");
    }

    public float p() {
        return (float) nGetNear(o());
    }

    @NonNull
    @Size(min = 3)
    public float[] q(@Nullable @Size(min = 3) float[] fArr) {
        float[] e10 = c.e(fArr);
        nGetPosition(o(), e10);
        return e10;
    }

    @NonNull
    @Size(min = 16)
    public double[] r(@Nullable @Size(min = 16) double[] dArr) {
        double[] m10 = c.m(dArr);
        nGetProjectionMatrix(o(), m10);
        return m10;
    }

    @NonNull
    @Size(min = 4)
    public double[] s(@Nullable @Size(min = 4) double[] dArr) {
        double[] b10 = c.b(dArr);
        nGetScaling(o(), b10);
        return b10;
    }

    public float t() {
        return nGetSensitivity(o());
    }

    @NonNull
    @Size(min = 2)
    public double[] u(@Nullable @Size(min = 2) double[] dArr) {
        double[] a10 = c.a(dArr);
        nGetShift(o(), a10);
        return a10;
    }

    public float v() {
        return nGetShutterSpeed(o());
    }

    @NonNull
    @Size(min = 3)
    public float[] w(@Nullable @Size(min = 3) float[] fArr) {
        float[] e10 = c.e(fArr);
        nGetUpVector(o(), e10);
        return e10;
    }

    @NonNull
    @Size(min = 16)
    public double[] x(@Nullable @Size(min = 16) double[] dArr) {
        double[] k10 = c.k(dArr);
        nGetViewMatrixFp64(o(), k10);
        return k10;
    }

    @NonNull
    @Size(min = 16)
    public float[] y(@Nullable @Size(min = 16) float[] fArr) {
        float[] o10 = c.o(fArr);
        nGetViewMatrix(o(), o10);
        return o10;
    }

    public void z(double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17, double d18) {
        nLookAt(o(), d10, d11, d12, d13, d14, d15, d16, d17, d18);
    }
}
