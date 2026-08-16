package Vf;

import java.util.NoSuchElementException;
import pf.AbstractC14976h0;

public final class n extends AbstractC14976h0 {

    public final long f26900b;

    public final long f26901c;

    public boolean f26902d;

    public long f26903e;

    public n(long j10, long j11, long j12) {
        this.f26900b = j12;
        this.f26901c = j11;
        boolean z10 = false;
        if (j12 <= 0 ? j10 >= j11 : j10 <= j11) {
            z10 = true;
        }
        this.f26902d = z10;
        this.f26903e = z10 ? j10 : j11;
    }

    public final long a() {
        return this.f26900b;
    }

    @Override
    public boolean hasNext() {
        return this.f26902d;
    }

    @Override
    public long nextLong() {
        long j10 = this.f26903e;
        if (j10 != this.f26901c) {
            this.f26903e = this.f26900b + j10;
        } else {
            if (!this.f26902d) {
                throw new NoSuchElementException();
            }
            this.f26902d = false;
        }
        return j10;
    }
}
