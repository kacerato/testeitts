package com.google.android.filament;

import androidx.annotation.NonNull;

public class SwapChain {

    public final Object f60117a;

    public long f60118b;

    public enum a {
        ONLY_IF_SEAMLESS,
        ALWAYS
    }

    public enum b {
        DEFAULT,
        FIXED_SOURCE
    }

    public SwapChain(long j10, Object obj) {
        this.f60118b = j10;
        this.f60117a = obj;
    }

    public static boolean f(@NonNull Engine engine, int i10) {
        return nIsMSAASwapChainSupported(engine.getNativeObject(), i10);
    }

    public static boolean g(@NonNull Engine engine) {
        return nIsProtectedContentSupported(engine.getNativeObject());
    }

    public static boolean h(@NonNull Engine engine) {
        return nIsSRGBSwapChainSupported(engine.getNativeObject());
    }

    private static native boolean nIsFrameRateChangeSupported(long j10);

    private static native boolean nIsFrameScheduledCallbackSet(long j10);

    private static native boolean nIsMSAASwapChainSupported(long j10, int i10);

    private static native boolean nIsProtectedContentSupported(long j10);

    private static native boolean nIsSRGBSwapChainSupported(long j10);

    private static native void nSetFrameCompletedCallback(long j10, Object obj, Runnable runnable);

    private static native void nSetFrameRate(long j10, float f10, int i10, int i11);

    private static native void nSetFrameScheduledCallback(long j10, Object obj, Runnable runnable);

    public void a() {
        this.f60118b = 0L;
    }

    public long b() {
        long j10 = this.f60118b;
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalStateException("Calling method on destroyed SwapChain");
    }

    public Object c() {
        return this.f60117a;
    }

    public boolean d() {
        return nIsFrameRateChangeSupported(b());
    }

    public boolean e() {
        return nIsFrameScheduledCallbackSet(b());
    }

    public void i(@NonNull Object obj, @NonNull Runnable runnable) {
        nSetFrameCompletedCallback(b(), obj, runnable);
    }

    public void j(float f10) {
        k(f10, b.DEFAULT, a.ONLY_IF_SEAMLESS);
    }

    public void k(float f10, @NonNull b bVar, @NonNull a aVar) {
        nSetFrameRate(b(), f10, bVar.ordinal(), aVar.ordinal());
    }

    public void l(@NonNull Object obj, @NonNull Runnable runnable) {
        nSetFrameScheduledCallback(b(), obj, runnable);
    }
}
