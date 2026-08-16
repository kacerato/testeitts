package Fc;

import Hc.b;
import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;
import com.itsmagic.engine.Engines.Sound.Imported.d;
import com.itsmagic.engine.Engines.Sound.Imported.g;
import com.itsmagic.engine.Engines.Sound.Native.NativeSoundEmitter;
import java.io.File;
import java.io.IOException;

public final class d extends a implements b.InterfaceC0179b {

    public final g f6756C;

    public final int f6757D;

    public final int f6758E;

    public final int f6759F;

    public final int f6760G;

    public final int f6761H;

    public final NativeShortBuffer f6762I;

    public final Object f6763J;

    public int f6764K;

    public int f6765L;

    public boolean f6766M;

    public d(String file) throws IOException {
        this(file, com.itsmagic.engine.Engines.Sound.Imported.d.d(file));
    }

    @Override
    public void M() {
        if (F() == NativeSoundEmitter.c.Stopped) {
            this.f6766M = true;
            this.f6764K = 0;
            this.f6765L = 0;
        }
        Y();
    }

    @Override
    public void Y() {
        if (j0()) {
            f0(this.f6759F);
        }
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
        synchronized (this.f6763J) {
            h0();
        }
    }

    @Override
    public boolean c() {
        if (K()) {
            return false;
        }
        int max = Math.max(0, A());
        if (isLoop() && this.f6757D + max < this.f6765L) {
            this.f6766M = true;
        }
        this.f6765L = max;
        if (this.f6766M) {
            return true;
        }
        return (F() != NativeSoundEmitter.c.Stopped || this.f6764K <= max) && this.f6764K < G() && g0(max) < this.f6759F;
    }

    @Override
    public void destroy() {
        Hc.b.k(this);
        if (!this.f6762I.isGarbage()) {
            this.f6762I.destroyImmediate();
        }
        super.destroy();
    }

    @Override
    public boolean e0() {
        return true;
    }

    public final void f0(int wantedAheadFrames) {
        synchronized (this.f6763J) {
            do {
                try {
                    if (K()) {
                        return;
                    }
                    int max = Math.max(0, A());
                    if (!this.f6766M && g0(max) >= wantedAheadFrames) {
                        return;
                    }
                    if (!this.f6766M && this.f6764K >= G()) {
                        return;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            } while (h0());
        }
    }

    public final int g0(int currentFrame) {
        return Math.max(0, this.f6764K - Math.max(0, currentFrame));
    }

    public final boolean h0() {
        int b10;
        if (K()) {
            return false;
        }
        int max = Math.max(0, A());
        if (this.f6766M) {
            U(max);
            this.f6764K = max;
            this.f6766M = false;
        }
        int max2 = Math.max(max, this.f6764K);
        int min = Math.min(this.f6757D, Math.max(0, G() - max2));
        if (min <= 0 || (b10 = this.f6756C.b(max2, min, this.f6762I)) <= 0) {
            return false;
        }
        V(this.f6762I, max2, b10);
        this.f6764K = max2 + b10;
        return true;
    }

    public final void i0() {
        f0(this.f6759F);
    }

    public final boolean j0() {
        if (K() || F() != NativeSoundEmitter.c.Playing) {
            return false;
        }
        int max = Math.max(0, A());
        if (this.f6766M) {
            return true;
        }
        return this.f6764K < G() && g0(max) < this.f6760G;
    }

    @Override
    public void seekTo(int msec) {
        super.seekTo(msec);
        this.f6766M = true;
        this.f6764K = Math.max(0, A());
        Y();
    }

    public d(File ioFile) throws IOException {
        this(ioFile.getAbsolutePath(), com.itsmagic.engine.Engines.Sound.Imported.d.c(ioFile));
    }

    public d(String file, d.b preparedAudio) {
        super(file, preparedAudio.f81447a.a(), preparedAudio.f81448b);
        this.f6763J = new Object();
        this.f6766M = true;
        this.f6756C = new g(preparedAudio);
        int max = Math.max(1, Math.round(getSampleRate() * 0.04f));
        this.f6757D = max;
        int max2 = Math.max(max, Math.round(getSampleRate() * 2.5f));
        this.f6758E = max2;
        int max3 = Math.max(max2 + max, Math.max(2, 6) * max);
        this.f6761H = max3;
        int max4 = Math.max(max, Math.min(max2, max3 - max));
        this.f6759F = max4;
        this.f6760G = Math.max(max, Math.min(max4, max * 2));
        this.f6762I = new NativeShortBuffer(max);
        J(preparedAudio.f81448b.pcmFrames, max3);
        i0();
        Y();
    }
}
