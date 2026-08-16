package Sg;

import Tg.C3089c;
import Tg.f;
import Tg.x;
import Tg.z;
import java.io.IOException;
import java.util.Random;

public final class d {

    public final boolean f23282a;

    public final Random f23283b;

    public final Tg.d f23284c;

    public final C3089c f23285d;

    public boolean f23286e;

    public final C3089c f23287f = new C3089c();

    public final a f23288g = new a();

    public boolean f23289h;

    public final byte[] f23290i;

    public final C3089c.C0708c f23291j;

    public final class a implements x {

        public int f23292b;

        public long f23293c;

        public boolean f23294d;

        public boolean f23295e;

        public a() {
        }

        @Override
        public z a0() {
            return d.this.f23284c.a0();
        }

        @Override
        public void close() throws IOException {
            if (this.f23295e) {
                throw new IOException("closed");
            }
            d dVar = d.this;
            dVar.d(this.f23292b, dVar.f23287f.Q(), this.f23294d, true);
            this.f23295e = true;
            d.this.f23289h = false;
        }

        @Override
        public void flush() throws IOException {
            if (this.f23295e) {
                throw new IOException("closed");
            }
            d dVar = d.this;
            dVar.d(this.f23292b, dVar.f23287f.Q(), this.f23294d, false);
            this.f23294d = false;
        }

        @Override
        public void h0(C3089c c3089c, long j10) throws IOException {
            if (this.f23295e) {
                throw new IOException("closed");
            }
            d.this.f23287f.h0(c3089c, j10);
            boolean z10 = this.f23294d && this.f23293c != -1 && d.this.f23287f.Q() > this.f23293c - 8192;
            long e10 = d.this.f23287f.e();
            if (e10 <= 0 || z10) {
                return;
            }
            d.this.d(this.f23292b, e10, this.f23294d, false);
            this.f23294d = false;
        }
    }

    public d(boolean z10, Tg.d dVar, Random random) {
        if (dVar == null) {
            throw new NullPointerException("sink == null");
        }
        if (random == null) {
            throw new NullPointerException("random == null");
        }
        this.f23282a = z10;
        this.f23284c = dVar;
        this.f23285d = dVar.C();
        this.f23283b = random;
        this.f23290i = z10 ? new byte[4] : null;
        this.f23291j = z10 ? new C3089c.C0708c() : null;
    }

    public x a(int i10, long j10) {
        if (this.f23289h) {
            throw new IllegalStateException("Another message writer is active. Did you call close()?");
        }
        this.f23289h = true;
        a aVar = this.f23288g;
        aVar.f23292b = i10;
        aVar.f23293c = j10;
        aVar.f23294d = true;
        aVar.f23295e = false;
        return aVar;
    }

    public void b(int i10, f fVar) throws IOException {
        f fVar2 = f.f24997g;
        if (i10 != 0 || fVar != null) {
            if (i10 != 0) {
                b.d(i10);
            }
            C3089c c3089c = new C3089c();
            c3089c.writeShort(i10);
            if (fVar != null) {
                c3089c.D(fVar);
            }
            fVar2 = c3089c.C1();
        }
        try {
            c(8, fVar2);
        } finally {
            this.f23286e = true;
        }
    }

    public final void c(int i10, f fVar) throws IOException {
        if (this.f23286e) {
            throw new IOException("closed");
        }
        int S10 = fVar.S();
        if (S10 > 125) {
            throw new IllegalArgumentException("Payload size must be less than or equal to 125");
        }
        this.f23285d.writeByte(i10 | 128);
        if (this.f23282a) {
            this.f23285d.writeByte(S10 | 128);
            this.f23283b.nextBytes(this.f23290i);
            this.f23285d.write(this.f23290i);
            if (S10 > 0) {
                long Q10 = this.f23285d.Q();
                this.f23285d.D(fVar);
                this.f23285d.t(this.f23291j);
                this.f23291j.e(Q10);
                b.c(this.f23291j, this.f23290i);
                this.f23291j.close();
            }
        } else {
            this.f23285d.writeByte(S10);
            this.f23285d.D(fVar);
        }
        this.f23284c.flush();
    }

    public void d(int i10, long j10, boolean z10, boolean z11) throws IOException {
        if (this.f23286e) {
            throw new IOException("closed");
        }
        if (!z10) {
            i10 = 0;
        }
        if (z11) {
            i10 |= 128;
        }
        this.f23285d.writeByte(i10);
        int i11 = this.f23282a ? 128 : 0;
        if (j10 <= 125) {
            this.f23285d.writeByte(((int) j10) | i11);
        } else if (j10 <= b.f23266s) {
            this.f23285d.writeByte(i11 | 126);
            this.f23285d.writeShort((int) j10);
        } else {
            this.f23285d.writeByte(i11 | 127);
            this.f23285d.writeLong(j10);
        }
        if (this.f23282a) {
            this.f23283b.nextBytes(this.f23290i);
            this.f23285d.write(this.f23290i);
            if (j10 > 0) {
                long Q10 = this.f23285d.Q();
                this.f23285d.h0(this.f23287f, j10);
                this.f23285d.t(this.f23291j);
                this.f23291j.e(Q10);
                b.c(this.f23291j, this.f23290i);
                this.f23291j.close();
            }
        } else {
            this.f23285d.h0(this.f23287f, j10);
        }
        this.f23284c.T();
    }

    public void e(f fVar) throws IOException {
        c(9, fVar);
    }

    public void f(f fVar) throws IOException {
        c(10, fVar);
    }
}
