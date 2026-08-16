package qd;

import java.util.Arrays;
import td.C15398d;

public final class r extends z {

    public final z[] f106100e;

    public r(z[] zVarArr) {
        this.f106100e = (z[]) Arrays.copyOf(zVarArr, zVarArr.length);
    }

    @Override
    public long a(long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean b(long j10, long j11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public long c() {
        return C15398d.c(this.f106100e);
    }

    @Override
    public long d() {
        throw new UnsupportedOperationException();
    }

    @Override
    public void e(long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public String toString() {
        return Arrays.toString(this.f106100e);
    }
}
