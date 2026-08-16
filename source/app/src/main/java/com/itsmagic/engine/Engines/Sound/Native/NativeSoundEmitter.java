package com.itsmagic.engine.Engines.Sound.Native;

import android.media.AudioManager;
import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;
import java.util.concurrent.atomic.AtomicBoolean;
import wc.C15987a;
import wc.b;

public abstract class NativeSoundEmitter extends com.itsmagic.engine.Engines.Native.Base.a {

    public static final int f81466p = 22000;

    public static final Object f81467q = new Object();

    public static final wc.b f81468r = new C15987a(new a());

    public static long f81469s = 0;

    public static final int f81470t = 22000;

    public long f81471b;

    public boolean f81472c;

    public int f81478k;

    public boolean f81480m;

    public b f81481n;

    public float f81473d = 0.0f;

    public float f81474e = 0.0f;

    public float f81475g = 1.0f;

    public float f81476i = 1.0f;

    public float f81477j = 1.0f;

    public c f81479l = c.Stopped;

    public final AtomicBoolean f81482o = new AtomicBoolean();

    public class a implements b.a {
        @Override
        public void a(long pointerToDelete) {
            synchronized (NativeSoundEmitter.f81467q) {
                if (N7.c.o() == null) {
                    return;
                }
                NativeSoundEmitter.z();
                if (NativeSoundEmitter.f81469s != 0 && pointerToDelete != 0) {
                    NativeSoundEmitter.nativeDeleteBuffer(NativeSoundEmitter.f81469s, pointerToDelete);
                }
            }
        }
    }

    public interface b {
        void a();

        void b();
    }

    public enum c {
        Playing,
        Paused,
        Stopped
    }

    static {
        System.loadLibrary("native-sound-emitter");
        f81469s = nativeTryInit();
        nativeInit(f81469s, 22000, N(((AudioManager) N7.c.o().getSystemService("audio")).getProperty(AudioManager.PROPERTY_OUTPUT_FRAMES_PER_BUFFER), 550));
    }

    public static int D() {
        return 22000;
    }

    public static int N(String value, int fallback) {
        try {
            return Integer.parseInt(value);
        } catch (Throwable unused) {
            return fallback;
        }
    }

    private long callTryCreate() {
        long nativeTryCreate;
        synchronized (f81467q) {
            z();
            nativeTryCreate = nativeTryCreate();
        }
        return nativeTryCreate;
    }

    public static native void nativeAllocImmediate(long bufferPointer, long soundPointer, long pcmPointer, int frameCount);

    public static native void nativeAllocStream(long bufferPointer, long soundPointer, int totalFrames, int ringBufferFrames);

    public static native void nativeDeleteBuffer(long bufferPointer, long soundPointer);

    public static native float nativeGetLeftVolume(long pointer);

    public static native float nativeGetPitch(long pointer);

    public static native float nativeGetRightVolume(long pointer);

    public static native float nativeGetSpeed(long pointer);

    public static native int nativeGetSteps(long pointer);

    public static native long nativeInit(long pointer, int sampleRate, int framesPerBurst);

    public static native boolean nativeIsActive(long bufferPointer);

    public static native int nativeIsFinished(long pointer);

    public static native int nativeIsLoop(long pointer);

    public static native int nativeIsPlaying(long pointer);

    public static native void nativeSetLeftVolume(long pointer, float value);

    public static native void nativeSetLoop(long pointer, int value);

    public static native void nativeSetPitch(long pointer, float value);

    public static native void nativeSetRightVolume(long pointer, float value);

    public static native void nativeSetSpeed(long pointer, float value);

    public static native void nativeSetSteps(long pointer, int value);

    public static native void nativeSetTotalFrames(long pointer, int value);

    public static native void nativeStart(long pointer);

    public static native void nativeStreamReset(long soundPointer, int frameOffset);

    public static native void nativeStreamWrite(long soundPointer, long pcmPointer, int startFrame, int frameCount);

    public static native long nativeTryCreate();

    public static native long nativeTryInit();

    public static native void turnOffEngine(long pointer);

    public static void z() {
        long j10 = f81469s;
        if (j10 == 0 || !nativeIsActive(j10)) {
            int N10 = N(((AudioManager) N7.c.o().getSystemService("audio")).getProperty(AudioManager.PROPERTY_OUTPUT_FRAMES_PER_BUFFER), 128);
            long nativeTryInit = nativeTryInit();
            f81469s = nativeTryInit;
            nativeInit(nativeTryInit, 22000, N10);
        }
    }

    public final int A() {
        try {
            return k();
        } catch (IllegalStateException e10) {
            if (this.f81482o.get() || !this.f81472c || this.f81471b == 0) {
                return 0;
            }
            throw e10;
        }
    }

    public float B() {
        if (this.f81478k > 0) {
            return A() / 22000.0f;
        }
        return 0.0f;
    }

    public NativeShortBuffer C() {
        return null;
    }

    public b E() {
        return this.f81481n;
    }

    public c F() {
        x();
        return this.f81479l;
    }

    public int G() {
        return this.f81478k;
    }

    public float H() {
        int i10 = this.f81478k;
        if (i10 > 0) {
            return i10 / 22000.0f;
        }
        return 0.0f;
    }

    public final void I(NativeShortBuffer pcmData, int totalFrames) {
        if (this.f81472c) {
            throw new RuntimeException("Sound emitter already initialized");
        }
        this.f81478k = Math.max(0, totalFrames);
        long callTryCreate = callTryCreate();
        this.f81471b = callTryCreate;
        h(callTryCreate, pcmData, this.f81478k);
        this.f81472c = true;
        f81468r.a(new wc.c(this, this.f81471b));
        updateNativeState();
    }

    public final void J(int totalFrames, int ringBufferFrames) {
        if (this.f81472c) {
            throw new RuntimeException("Sound emitter already initialized");
        }
        this.f81478k = Math.max(0, totalFrames);
        long callTryCreate = callTryCreate();
        this.f81471b = callTryCreate;
        i(callTryCreate, this.f81478k, Math.max(1, ringBufferFrames));
        this.f81472c = true;
        f81468r.a(new wc.c(this, this.f81471b));
        updateNativeState();
    }

    public final boolean K() {
        return this.f81482o.get();
    }

    public boolean L() {
        return this.f81482o.get() || !this.f81472c || this.f81471b == 0 || x() > 0;
    }

    public void M() {
    }

    public void O(float second) {
        if (this.f81478k <= 0) {
            return;
        }
        r((int) (Nc.b.I(second / Math.max(1.0E-4f, H())) * this.f81478k));
        M();
    }

    public void P(b onPlayEndListener) {
        this.f81481n = onPlayEndListener;
    }

    public void Q(c state) {
        c cVar = c.Playing;
        boolean z10 = state == cVar && !l();
        if (this.f81479l != state || z10) {
            this.f81479l = state;
            if (state == cVar && !l()) {
                u();
            }
            updateNativeState();
            M();
        }
    }

    public void S(float left, float right) {
        T(left, right, this.f81475g);
    }

    public void T(float left, float right, float volume) {
        this.f81475g = volume;
        this.f81473d = left;
        this.f81474e = right;
        m(left * volume);
        p(right * volume);
        updateNativeState();
    }

    public final void U(int frameOffset) {
        v(this.f81471b, frameOffset);
    }

    public final void V(NativeShortBuffer pcmData, int startFrame, int frameCount) {
        if (frameCount <= 0) {
            return;
        }
        w(this.f81471b, pcmData, startFrame, frameCount);
    }

    public final void W() {
        throw new IllegalStateException("Sound emitter is destroyed");
    }

    public final void X() {
        throw new IllegalStateException("Sound emitter is not prepared");
    }

    public void Y() {
    }

    public final void Z(int frame) {
        r(Math.max(0, frame));
    }

    public final void a0(int totalFrames) {
        this.f81478k = Math.max(0, totalFrames);
        if (!this.f81472c || this.f81471b == 0 || this.f81482o.get()) {
            return;
        }
        s(this.f81478k);
    }

    public final void b0() {
        if (!this.f81472c || this.f81471b == 0) {
            X();
        }
        if (this.f81482o.get()) {
            W();
        }
    }

    @Override
    public int bytesPerItem() {
        return 0;
    }

    public void destroy() {
        this.f81482o.set(true);
        this.f81479l = c.Stopped;
        M();
        destroyImmediate();
        this.f81471b = 0L;
        this.f81472c = false;
        this.f81481n = null;
    }

    @Override
    public void destroyImmediate() {
        synchronized (f81467q) {
            f81468r.b(this);
        }
    }

    public float getLeftVolume() {
        return this.f81473d;
    }

    public float getPitch() {
        return this.f81477j;
    }

    @Override
    public long getPointerCritical() {
        return this.f81471b;
    }

    public float getRightVolume() {
        return this.f81474e;
    }

    public int getSampleRate() {
        return 22000;
    }

    public float getSpeed() {
        return this.f81476i;
    }

    public float getVolume() {
        return this.f81475g;
    }

    @Override
    public long gpuUsedBytes() {
        return 0L;
    }

    public final void h(long soundPointer, NativeShortBuffer pcmData, int frameCount) {
        synchronized (f81467q) {
            try {
                if (this.f81482o.get()) {
                    W();
                }
                z();
                nativeAllocImmediate(f81469s, soundPointer, pcmData.getCriticalDirectCppPointer(), frameCount);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void i(long soundPointer, int totalFrames, int ringBufferFrames) {
        synchronized (f81467q) {
            try {
                if (this.f81482o.get()) {
                    W();
                }
                z();
                nativeAllocStream(f81469s, soundPointer, totalFrames, ringBufferFrames);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean isLoop() {
        return this.f81480m;
    }

    @Override
    public boolean isNative() {
        return true;
    }

    public boolean isPaused() {
        return this.f81479l == c.Paused;
    }

    public boolean isPlaying() {
        x();
        return this.f81479l == c.Playing;
    }

    public boolean isStopped() {
        return this.f81479l == c.Stopped;
    }

    public final int j() {
        synchronized (f81467q) {
            try {
                if (!this.f81482o.get() && this.f81472c && this.f81471b != 0) {
                    z();
                    return nativeIsFinished(this.f81471b);
                }
                return 0;
            } finally {
            }
        }
    }

    public final int k() {
        int nativeGetSteps;
        synchronized (f81467q) {
            b0();
            z();
            nativeGetSteps = nativeGetSteps(this.f81471b);
        }
        return nativeGetSteps;
    }

    public final boolean l() {
        synchronized (f81467q) {
            try {
                if (!this.f81482o.get() && this.f81472c && this.f81471b != 0) {
                    z();
                    return nativeIsPlaying(this.f81471b) == 1;
                }
                return false;
            } finally {
            }
        }
    }

    public final void m(float value) {
        synchronized (f81467q) {
            b0();
            z();
            nativeSetLeftVolume(this.f81471b, value);
        }
    }

    public final void n(int value) {
        synchronized (f81467q) {
            b0();
            z();
            nativeSetLoop(this.f81471b, value);
        }
    }

    @Override
    public long nativeUsedBytes() {
        return 68L;
    }

    public final void o(float value) {
        synchronized (f81467q) {
            b0();
            z();
            nativeSetPitch(this.f81471b, value);
        }
    }

    public final void p(float value) {
        synchronized (f81467q) {
            b0();
            z();
            nativeSetRightVolume(this.f81471b, value);
        }
    }

    public void pause() {
        Q(c.Paused);
    }

    public void play() {
        Q(c.Playing);
    }

    public final void q(float value) {
        synchronized (f81467q) {
            b0();
            z();
            nativeSetSpeed(this.f81471b, value);
        }
    }

    public final void r(int value) {
        synchronized (f81467q) {
            b0();
            z();
            nativeSetSteps(this.f81471b, Math.max(0, Math.min(value, this.f81478k)));
        }
    }

    public final void s(int value) {
        synchronized (f81467q) {
            b0();
            z();
            nativeSetTotalFrames(this.f81471b, Math.max(0, value));
        }
    }

    public void seekTo(int msec) {
        O(Math.max(0, msec) / 1000.0f);
    }

    public void setLeftVolume(float leftVolume) {
        this.f81473d = leftVolume;
        m(leftVolume * this.f81475g);
        updateNativeState();
    }

    public void setLoop(boolean z10) {
        this.f81480m = z10;
        n(z10 ? 1 : 0);
        M();
    }

    public void setPitch(float pitch) {
        this.f81477j = pitch;
        o(pitch);
    }

    public void setRightVolume(float rightVolume) {
        this.f81474e = rightVolume;
        p(rightVolume * this.f81475g);
        updateNativeState();
    }

    public void setSpeed(float speed) {
        this.f81476i = speed;
        q(speed);
        updateNativeState();
        M();
    }

    public void setVolume(float volume) {
        this.f81475g = volume;
        m(this.f81473d * volume);
        p(this.f81474e * volume);
        updateNativeState();
    }

    public void stop() {
        Q(c.Stopped);
    }

    public final void u() {
        synchronized (f81467q) {
            b0();
            z();
            nativeStart(this.f81471b);
        }
    }

    public final void updateNativeState() {
        synchronized (f81467q) {
            try {
                if (!this.f81482o.get() && this.f81472c && this.f81471b != 0) {
                    z();
                    y(nativeIsFinished(this.f81471b));
                    if (!this.f81482o.get() && this.f81472c && this.f81471b != 0) {
                        int ordinal = this.f81479l.ordinal();
                        if (ordinal == 0) {
                            nativeSetSpeed(this.f81471b, this.f81476i);
                            nativeStart(this.f81471b);
                        } else if (ordinal == 1) {
                            nativeSetSpeed(this.f81471b, 0.0f);
                        } else if (ordinal == 2) {
                            nativeSetSteps(this.f81471b, 0);
                            nativeSetSpeed(this.f81471b, 0.0f);
                        }
                    }
                }
            } finally {
            }
        }
    }

    public final void v(long soundPointer, int frameOffset) {
        synchronized (f81467q) {
            b0();
            z();
            nativeStreamReset(soundPointer, frameOffset);
        }
    }

    public final void w(long soundPointer, NativeShortBuffer pcmData, int startFrame, int frameCount) {
        synchronized (f81467q) {
            b0();
            z();
            nativeStreamWrite(soundPointer, pcmData.getCriticalDirectCppPointer(), startFrame, frameCount);
        }
    }

    public final int x() {
        return y(j());
    }

    public final int y(int finishedCount) {
        if (finishedCount <= 0 || this.f81479l != c.Playing) {
            return 0;
        }
        for (int i10 = 0; i10 < finishedCount; i10++) {
            b bVar = this.f81481n;
            if (bVar == null) {
                break;
            }
            bVar.a();
        }
        if (!this.f81480m) {
            this.f81479l = c.Stopped;
            b bVar2 = this.f81481n;
            if (bVar2 != null) {
                bVar2.b();
            }
        }
        return finishedCount;
    }
}
