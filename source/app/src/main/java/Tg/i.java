package Tg;

import java.io.IOException;

public abstract class i implements y {

    public final y f25005b;

    public i(y yVar) {
        if (yVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f25005b = yVar;
    }

    @Override
    public long K(C3089c c3089c, long j10) throws IOException {
        return this.f25005b.K(c3089c, j10);
    }

    @Override
    public z a0() {
        return this.f25005b.a0();
    }

    public final y c() {
        return this.f25005b;
    }

    @Override
    public void close() throws IOException {
        this.f25005b.close();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f25005b.toString() + ")";
    }
}
