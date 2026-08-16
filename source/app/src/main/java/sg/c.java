package Sg;

import Tg.C3089c;
import Tg.e;
import Tg.f;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

public final class c {

    public final boolean f23270a;

    public final e f23271b;

    public final a f23272c;

    public boolean f23273d;

    public int f23274e;

    public long f23275f;

    public boolean f23276g;

    public boolean f23277h;

    public final C3089c f23278i = new C3089c();

    public final C3089c f23279j = new C3089c();

    public final byte[] f23280k;

    public final C3089c.C0708c f23281l;

    public interface a {
        void b(f fVar) throws IOException;

        void e(f fVar);

        void f(int i10, String str);

        void g(f fVar);

        void i(String str) throws IOException;
    }

    public c(boolean z10, e eVar, a aVar) {
        if (eVar == null) {
            throw new NullPointerException("source == null");
        }
        if (aVar == null) {
            throw new NullPointerException("frameCallback == null");
        }
        this.f23270a = z10;
        this.f23271b = eVar;
        this.f23272c = aVar;
        this.f23280k = z10 ? null : new byte[4];
        this.f23281l = z10 ? null : new C3089c.C0708c();
    }

    public void a() throws IOException {
        c();
        if (this.f23277h) {
            b();
        } else {
            e();
        }
    }

    public final void b() throws IOException {
        short s10;
        String str;
        long j10 = this.f23275f;
        if (j10 > 0) {
            this.f23271b.f2(this.f23278i, j10);
            if (!this.f23270a) {
                this.f23278i.t(this.f23281l);
                this.f23281l.e(0L);
                b.c(this.f23281l, this.f23280k);
                this.f23281l.close();
            }
        }
        switch (this.f23274e) {
            case 8:
                long Q10 = this.f23278i.Q();
                if (Q10 == 1) {
                    throw new ProtocolException("Malformed close payload length of 1.");
                }
                if (Q10 != 0) {
                    s10 = this.f23278i.readShort();
                    str = this.f23278i.D1();
                    String b10 = b.b(s10);
                    if (b10 != null) {
                        throw new ProtocolException(b10);
                    }
                } else {
                    s10 = 1005;
                    str = "";
                }
                this.f23272c.f(s10, str);
                this.f23273d = true;
                return;
            case 9:
                this.f23272c.g(this.f23278i.C1());
                return;
            case 10:
                this.f23272c.e(this.f23278i.C1());
                return;
            default:
                throw new ProtocolException("Unknown control opcode: " + Integer.toHexString(this.f23274e));
        }
    }

    public final void c() throws IOException {
        if (this.f23273d) {
            throw new IOException("closed");
        }
        long i10 = this.f23271b.a0().i();
        this.f23271b.a0().b();
        try {
            byte readByte = this.f23271b.readByte();
            this.f23271b.a0().h(i10, TimeUnit.NANOSECONDS);
            this.f23274e = readByte & 15;
            boolean z10 = (readByte & 128) != 0;
            this.f23276g = z10;
            boolean z11 = (readByte & 8) != 0;
            this.f23277h = z11;
            if (z11 && !z10) {
                throw new ProtocolException("Control frames must be final.");
            }
            boolean z12 = (readByte & 64) != 0;
            boolean z13 = (readByte & 32) != 0;
            boolean z14 = (readByte & 16) != 0;
            if (z12 || z13 || z14) {
                throw new ProtocolException("Reserved flags are unsupported.");
            }
            byte readByte2 = this.f23271b.readByte();
            boolean z15 = (readByte2 & 128) != 0;
            if (z15 == this.f23270a) {
                throw new ProtocolException(this.f23270a ? "Server-sent frames must not be masked." : "Client-sent frames must be masked.");
            }
            long j10 = readByte2 & Byte.MAX_VALUE;
            this.f23275f = j10;
            if (j10 == 126) {
                this.f23275f = this.f23271b.readShort() & b.f23266s;
            } else if (j10 == 127) {
                long readLong = this.f23271b.readLong();
                this.f23275f = readLong;
                if (readLong < 0) {
                    throw new ProtocolException("Frame length 0x" + Long.toHexString(this.f23275f) + " > 0x7FFFFFFFFFFFFFFF");
                }
            }
            if (this.f23277h && this.f23275f > 125) {
                throw new ProtocolException("Control frame must be less than 125B.");
            }
            if (z15) {
                this.f23271b.readFully(this.f23280k);
            }
        } catch (Throwable th2) {
            this.f23271b.a0().h(i10, TimeUnit.NANOSECONDS);
            throw th2;
        }
    }

    public final void d() throws IOException {
        while (!this.f23273d) {
            long j10 = this.f23275f;
            if (j10 > 0) {
                this.f23271b.f2(this.f23279j, j10);
                if (!this.f23270a) {
                    this.f23279j.t(this.f23281l);
                    this.f23281l.e(this.f23279j.Q() - this.f23275f);
                    b.c(this.f23281l, this.f23280k);
                    this.f23281l.close();
                }
            }
            if (this.f23276g) {
                return;
            }
            f();
            if (this.f23274e != 0) {
                throw new ProtocolException("Expected continuation opcode. Got: " + Integer.toHexString(this.f23274e));
            }
        }
        throw new IOException("closed");
    }

    public final void e() throws IOException {
        int i10 = this.f23274e;
        if (i10 != 1 && i10 != 2) {
            throw new ProtocolException("Unknown opcode: " + Integer.toHexString(i10));
        }
        d();
        if (i10 == 1) {
            this.f23272c.i(this.f23279j.D1());
        } else {
            this.f23272c.b(this.f23279j.C1());
        }
    }

    public final void f() throws IOException {
        while (!this.f23273d) {
            c();
            if (!this.f23277h) {
                return;
            } else {
                b();
            }
        }
    }
}
