package Tf;

import java.io.InvalidObjectException;
import java.io.Serializable;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nXorWowRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 XorWowRandom.kt\nkotlin/random/XorWowRandom\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1#2:69\n*E\n"})
public final class i extends f implements Serializable {

    @NotNull
    public static final a f24960j = new a(null);

    public static final long f24961k = 0;

    public int f24962d;

    public int f24963e;

    public int f24964f;

    public int f24965g;

    public int f24966h;

    public int f24967i;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    public i(int i10, int i11, int i12, int i13, int i14, int i15) {
        this.f24962d = i10;
        this.f24963e = i11;
        this.f24964f = i12;
        this.f24965g = i13;
        this.f24966h = i14;
        this.f24967i = i15;
        r();
        for (int i16 = 0; i16 < 64; i16++) {
            l();
        }
    }

    @Override
    public int b(int i10) {
        return g.j(l(), i10);
    }

    @Override
    public int l() {
        int i10 = this.f24962d;
        int i11 = i10 ^ (i10 >>> 2);
        this.f24962d = this.f24963e;
        this.f24963e = this.f24964f;
        this.f24964f = this.f24965g;
        int i12 = this.f24966h;
        this.f24965g = i12;
        int i13 = ((i11 ^ (i11 << 1)) ^ i12) ^ (i12 << 4);
        this.f24966h = i13;
        int i14 = this.f24967i + 362437;
        this.f24967i = i14;
        return i13 + i14;
    }

    public final void r() {
        if ((this.f24962d | this.f24963e | this.f24964f | this.f24965g | this.f24966h) == 0) {
            throw new IllegalArgumentException("Initial state must have at least one non-zero element.");
        }
    }

    public final Object s() {
        try {
            r();
            return this;
        } catch (Throwable th2) {
            Throwable initCause = new InvalidObjectException(th2.getMessage()).initCause(th2);
            M.o(initCause, "initCause(...)");
            throw initCause;
        }
    }

    public i(int i10, int i11) {
        this(i10, i11, 0, 0, ~i10, (i10 << 10) ^ (i11 >>> 4));
    }
}
