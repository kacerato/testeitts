package Tg;

import java.io.IOException;

public abstract class h implements x {

    public final x f25004b;

    public h(x xVar) {
        if (xVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f25004b = xVar;
    }

    @Override
    public z a0() {
        return this.f25004b.a0();
    }

    public final x c() {
        return this.f25004b;
    }

    @Override
    public void close() throws IOException {
        this.f25004b.close();
    }

    @Override
    public void flush() throws IOException {
        this.f25004b.flush();
    }

    @Override
    public void h0(C3089c c3089c, long j10) throws IOException {
        this.f25004b.h0(c3089c, j10);
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f25004b.toString() + ")";
    }
}
