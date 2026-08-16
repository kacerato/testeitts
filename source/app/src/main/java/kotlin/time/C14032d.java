package kotlin.time;

import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.time.H;
import org.jetbrains.annotations.NotNull;

public final class C14032d implements H {

    @NotNull
    public final H f95857b;

    public final long f95858c;

    public C14032d(H h10, long j10, C14026x c14026x) {
        this(h10, j10);
    }

    @Override
    public long a() {
        return C14036h.V(this.f95857b.a(), this.f95858c);
    }

    @Override
    public boolean b() {
        return H.a.a(this);
    }

    @Override
    public boolean c() {
        return H.a.b(this);
    }

    public final long d() {
        return this.f95858c;
    }

    @NotNull
    public final H e() {
        return this.f95857b;
    }

    @Override
    @NotNull
    public H f(long j10) {
        return new C14032d(this.f95857b, C14036h.W(this.f95858c, j10), null);
    }

    @Override
    @NotNull
    public H l(long j10) {
        return H.a.c(this, j10);
    }

    public C14032d(H mark, long j10) {
        M.p(mark, "mark");
        this.f95857b = mark;
        this.f95858c = j10;
    }
}
