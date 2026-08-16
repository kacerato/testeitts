package Fc;

import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;
import com.itsmagic.engine.Engines.Sound.Native.AudioUtils;
import com.itsmagic.engine.Engines.Sound.Native.NativeSoundEmitter;

public final class c extends NativeSoundEmitter {

    public final int f6754A;

    public NativeShortBuffer f6755u;

    public c(NativeShortBuffer audioData, int sampleRate) {
        if (audioData == null) {
            throw new NullPointerException("audioData can't be null");
        }
        if (audioData.isGarbage()) {
            throw new IllegalArgumentException("audioData is garbage");
        }
        if (audioData.capacity() <= 0) {
            throw new IllegalArgumentException("audioData is empty");
        }
        this.f6754A = sampleRate;
        NativeShortBuffer d02 = d0(audioData, sampleRate);
        try {
            d02.position(0);
            this.f6755u = d02;
            I(d02, d02.capacity());
        } catch (Throwable th2) {
            if (d02 != null && !d02.isGarbage()) {
                d02.destroyImmediate();
            }
            throw th2;
        }
    }

    @Override
    public NativeShortBuffer C() {
        return this.f6755u;
    }

    public int c0() {
        return this.f6754A;
    }

    public final NativeShortBuffer d0(NativeShortBuffer audioData, int sampleRate) {
        int sampleRate2 = getSampleRate();
        return (sampleRate <= 0 || sampleRate == sampleRate2) ? audioData.m1252clone() : AudioUtils.c(audioData, sampleRate, sampleRate2);
    }

    @Override
    public void destroy() {
        NativeShortBuffer nativeShortBuffer = this.f6755u;
        this.f6755u = null;
        try {
            super.destroy();
        } finally {
            if (nativeShortBuffer != null && !nativeShortBuffer.isGarbage()) {
                nativeShortBuffer.destroyImmediate();
            }
        }
    }
}
