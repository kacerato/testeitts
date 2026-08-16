package Fc;

import Hc.b;
import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;
import com.itsmagic.engine.Engines.Sound.Native.NativeSoundEmitter;

public final class e extends NativeSoundEmitter implements b.InterfaceC0179b {

    public static final int f6767I = 536870911;

    public static final long f6768J = 2;

    public final NativeShortBuffer f6769A;

    public final int f6770B;

    public final int f6771C;

    public int f6772D;

    public int f6773E;

    public b f6775G;

    public final a f6777u;

    public boolean f6774F = true;

    public b f6776H = b.PLAYING;

    public interface a {
        b fillAudio(NativeShortBuffer audio, int playedSamples, float seconds);
    }

    public enum b {
        PLAYING,
        PAUSED,
        STOPPED
    }

    public e(a callback) {
        if (callback == null) {
            throw new NullPointerException("callback can't be null");
        }
        this.f6777u = callback;
        int max = Math.max(1, Math.round(getSampleRate() * 0.04f));
        this.f6770B = max;
        int max2 = Math.max(2, 6) * max;
        this.f6771C = max2;
        this.f6769A = new NativeShortBuffer(max);
        J(536870911, max2);
        a0(max2);
    }

    @Override
    public void M() {
        NativeSoundEmitter.c F10 = F();
        if (F10 != NativeSoundEmitter.c.Playing) {
            this.f6775G = null;
        }
        if (F10 == NativeSoundEmitter.c.Stopped) {
            this.f6774F = true;
            this.f6772D = 0;
            this.f6773E = 0;
            this.f6776H = b.STOPPED;
            a0(this.f6771C);
        }
        Y();
    }

    @Override
    public void O(float second) {
        int max = Math.max(0, Math.round(Math.max(0.0f, second) * getSampleRate()));
        this.f6775G = null;
        this.f6776H = b.PLAYING;
        this.f6774F = true;
        this.f6772D = max;
        this.f6773E = max;
        int i10 = this.f6771C;
        a0(Math.max(i10, max + i10));
        Z(max);
        Y();
    }

    @Override
    public void Y() {
        if (c()) {
            Hc.b.m(this);
        } else {
            Hc.b.k(this);
        }
    }

    @Override
    public void a() {
        if (K()) {
            return;
        }
        int max = Math.max(0, A());
        b bVar = this.f6775G;
        if (bVar != null) {
            if (max < this.f6772D) {
                d0(2L);
                return;
            }
            this.f6775G = null;
            if (bVar == b.PAUSED) {
                super.Q(NativeSoundEmitter.c.Paused);
                return;
            } else {
                super.Q(NativeSoundEmitter.c.Stopped);
                return;
            }
        }
        if (F() != NativeSoundEmitter.c.Playing) {
            return;
        }
        if (this.f6774F) {
            U(max);
            this.f6772D = max;
            this.f6774F = false;
            int i10 = this.f6771C;
            a0(Math.max(i10, max + i10));
        }
        int max2 = Math.max(max, this.f6772D);
        this.f6769A.fill((short) 0);
        b fillAudio = this.f6777u.fillAudio(this.f6769A, max2, max2 / getSampleRate());
        if (fillAudio == null) {
            fillAudio = b.STOPPED;
        }
        V(this.f6769A, max2, this.f6770B);
        int i11 = max2 + this.f6770B;
        this.f6772D = i11;
        this.f6776H = fillAudio;
        if (fillAudio == b.PLAYING) {
            a0(i11);
        } else {
            this.f6775G = fillAudio;
            a0(i11);
        }
    }

    @Override
    public boolean c() {
        if (K()) {
            return false;
        }
        int max = Math.max(0, A());
        NativeSoundEmitter.c F10 = F();
        NativeSoundEmitter.c cVar = NativeSoundEmitter.c.Playing;
        if (F10 == cVar && this.f6770B + max < this.f6773E) {
            this.f6774F = true;
        }
        this.f6773E = max;
        if (this.f6775G != null) {
            return true;
        }
        if (F() != cVar) {
            return false;
        }
        return this.f6774F || this.f6772D - max <= this.f6770B * 3;
    }

    public b c0() {
        return this.f6776H;
    }

    public final void d0(long millis) {
        try {
            Thread.sleep(millis);
        } catch (InterruptedException unused) {
        }
    }

    @Override
    public void destroy() {
        Hc.b.k(this);
        try {
            super.destroy();
        } finally {
            if (!this.f6769A.isGarbage()) {
                this.f6769A.destroyImmediate();
            }
        }
    }

    @Override
    public void seekTo(int msec) {
        O(Math.max(0, msec) / 1000.0f);
    }
}
