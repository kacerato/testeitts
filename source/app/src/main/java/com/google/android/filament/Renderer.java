package com.google.android.filament;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import com.google.android.filament.Texture;
import java.nio.Buffer;
import java.nio.BufferOverflowException;
import java.nio.ReadOnlyBufferException;

public class Renderer {

    public static final int f60057f = 1;

    public static final int f60058g = 2;

    public static final int f60059h = 4;

    public final Engine f60060a;

    public long f60061b;

    public b f60062c;

    public c f60063d;

    public a f60064e;

    public static class a {

        @NonNull
        public double[] f60065a = {0.0d, 0.0d, 0.0d, 0.0d};

        public boolean f60066b = false;

        public boolean f60067c = true;
    }

    public static class b {

        public float f60068a = 60.0f;

        @Deprecated
        public long f60069b = 0;

        @Deprecated
        public long f60070c = 0;
    }

    public static class c {

        public float f60071a = 1.0f;

        public float f60072b = 0.0f;

        public float f60073c = 0.06666667f;

        public int f60074d = 15;
    }

    public Renderer(@NonNull Engine engine, long j10) {
        this.f60060a = engine;
        this.f60061b = j10;
    }

    private static native boolean nBeginFrame(long j10, long j11, long j12);

    private static native void nCopyFrame(long j10, long j11, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18);

    private static native void nEndFrame(long j10);

    private static native int nGetFrameToSkipCount(long j10);

    private static native double nGetUserTime(long j10);

    private static native int nReadPixels(long j10, long j11, int i10, int i11, int i12, int i13, Buffer buffer, int i14, int i15, int i16, int i17, int i18, int i19, int i20, Object obj, Runnable runnable);

    private static native int nReadPixelsEx(long j10, long j11, long j12, int i10, int i11, int i12, int i13, Buffer buffer, int i14, int i15, int i16, int i17, int i18, int i19, int i20, Object obj, Runnable runnable);

    private static native void nRender(long j10, long j11);

    private static native void nRenderStandaloneView(long j10, long j11);

    private static native void nResetUserTime(long j10);

    private static native void nSetClearOptions(long j10, double d10, double d11, double d12, double d13, boolean z10, boolean z11);

    private static native void nSetDesiredPresentationTime(long j10, long j11);

    private static native void nSetDisplayInfo(long j10, float f10);

    private static native void nSetFrameRateOptions(long j10, float f10, float f11, float f12, int i10);

    private static native void nSetPresentationTime(long j10, long j11);

    private static native void nSetRenderingDeadline(long j10, long j11);

    private static native void nSetVsyncTime(long j10, long j11);

    private static native boolean nShouldRenderFrame(long j10);

    private static native void nSkipFrame(long j10, long j11);

    private static native void nSkipNextFrames(long j10, int i10);

    public void A(int i10) {
        nSkipNextFrames(j(), i10);
    }

    public boolean a(@NonNull SwapChain swapChain, long j10) {
        return nBeginFrame(j(), swapChain.b(), j10);
    }

    public void b() {
        this.f60061b = 0L;
    }

    public void c(@NonNull SwapChain swapChain, @NonNull w wVar, @NonNull w wVar2, int i10) {
        nCopyFrame(j(), swapChain.b(), wVar.f60456a, wVar.f60457b, wVar.f60458c, wVar.f60459d, wVar2.f60456a, wVar2.f60457b, wVar2.f60458c, wVar2.f60459d, i10);
    }

    public void d() {
        nEndFrame(j());
    }

    @NonNull
    public a e() {
        if (this.f60064e == null) {
            this.f60064e = new a();
        }
        return this.f60064e;
    }

    @NonNull
    public b f() {
        if (this.f60062c == null) {
            this.f60062c = new b();
        }
        return this.f60062c;
    }

    @NonNull
    public Engine g() {
        return this.f60060a;
    }

    @NonNull
    public c h() {
        if (this.f60063d == null) {
            this.f60063d = new c();
        }
        return this.f60063d;
    }

    public int i() {
        return nGetFrameToSkipCount(j());
    }

    public long j() {
        long j10 = this.f60061b;
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalStateException("Calling method on destroyed Renderer");
    }

    public double k() {
        return nGetUserTime(j());
    }

    @Deprecated
    public void l(@NonNull SwapChain swapChain, @NonNull w wVar, @NonNull w wVar2, int i10) {
        c(swapChain, wVar, wVar2, i10);
    }

    public void m(@IntRange(from = 0) int i10, @IntRange(from = 0) int i11, @IntRange(from = 0) int i12, @IntRange(from = 0) int i13, @NonNull Texture.g gVar) {
        if (gVar.f60142a.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        long j10 = j();
        long nativeObject = this.f60060a.getNativeObject();
        Buffer buffer = gVar.f60142a;
        if (nReadPixels(j10, nativeObject, i10, i11, i12, i13, buffer, buffer.remaining(), gVar.f60145d, gVar.f60146e, gVar.f60143b.ordinal(), gVar.f60144c, gVar.f60147f, gVar.f60148g.ordinal(), gVar.f60151j, gVar.f60152k) < 0) {
            throw new BufferOverflowException();
        }
    }

    public void n(@NonNull RenderTarget renderTarget, @IntRange(from = 0) int i10, @IntRange(from = 0) int i11, @IntRange(from = 0) int i12, @IntRange(from = 0) int i13, @NonNull Texture.g gVar) {
        if (gVar.f60142a.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        long j10 = j();
        long nativeObject = this.f60060a.getNativeObject();
        long m10 = renderTarget.m();
        Buffer buffer = gVar.f60142a;
        if (nReadPixelsEx(j10, nativeObject, m10, i10, i11, i12, i13, buffer, buffer.remaining(), gVar.f60145d, gVar.f60146e, gVar.f60143b.ordinal(), gVar.f60144c, gVar.f60147f, gVar.f60148g.ordinal(), gVar.f60151j, gVar.f60152k) < 0) {
            throw new BufferOverflowException();
        }
    }

    public void o(@NonNull View view) {
        nRender(j(), view.v());
    }

    public void p(@NonNull View view) {
        nRenderStandaloneView(j(), view.v());
    }

    public void q() {
        nResetUserTime(j());
    }

    public void r(@NonNull a aVar) {
        this.f60064e = aVar;
        long j10 = j();
        double[] dArr = aVar.f60065a;
        nSetClearOptions(j10, dArr[0], dArr[1], dArr[2], dArr[3], aVar.f60066b, aVar.f60067c);
    }

    public void s(long j10) {
        nSetDesiredPresentationTime(j(), j10);
    }

    public void t(@NonNull b bVar) {
        this.f60062c = bVar;
        nSetDisplayInfo(j(), bVar.f60068a);
    }

    public void u(@NonNull c cVar) {
        this.f60063d = cVar;
        nSetFrameRateOptions(j(), cVar.f60071a, cVar.f60072b, cVar.f60073c, cVar.f60074d);
    }

    public void v(long j10) {
        nSetPresentationTime(j(), j10);
    }

    public void w(long j10) {
        nSetRenderingDeadline(j(), j10);
    }

    public void x(long j10) {
        nSetVsyncTime(j(), j10);
    }

    public boolean y() {
        return nShouldRenderFrame(j());
    }

    public void z(long j10) {
        nSkipFrame(j(), j10);
    }
}
