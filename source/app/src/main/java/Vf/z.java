package Vf;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.C14026x;
import nf.F0;
import nf.InterfaceC14422l0;

@InterfaceC14422l0(version = "1.3")
public final class z implements Iterator<F0>, Nf.a {

    public final long f26924b;

    public boolean f26925c;

    public final long f26926d;

    public long f26927e;

    public z(long j10, long j11, long j12, C14026x c14026x) {
        this(j10, j11, j12);
    }

    public long a() {
        long j10 = this.f26927e;
        if (j10 != this.f26924b) {
            this.f26927e = F0.i(this.f26926d + j10);
        } else {
            if (!this.f26925c) {
                throw new NoSuchElementException();
            }
            this.f26925c = false;
        }
        return j10;
    }

    @Override
    public boolean hasNext() {
        return this.f26925c;
    }

    @Override
    public F0 next() {
        return F0.b(a());
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public z(long j10, long j11, long j12) {
        this.f26924b = j11;
        boolean z10 = false;
        if (j12 <= 0 ? Long.compareUnsigned(j10, j11) >= 0 : Long.compareUnsigned(j10, j11) <= 0) {
            z10 = true;
        }
        this.f26925c = z10;
        this.f26926d = F0.i(j12);
        this.f26927e = this.f26925c ? j10 : j11;
    }
}
