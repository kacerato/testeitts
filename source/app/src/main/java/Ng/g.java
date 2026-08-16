package Ng;

import Ng.c;
import Tg.C3089c;
import Tg.y;
import Tg.z;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class g implements Closeable {

    public static final Logger f16309f = Logger.getLogger(d.class.getName());

    public final Tg.e f16310b;

    public final a f16311c;

    public final boolean f16312d;

    public final c.a f16313e;

    public static final class a implements y {

        public final Tg.e f16314b;

        public int f16315c;

        public byte f16316d;

        public int f16317e;

        public int f16318f;

        public short f16319g;

        public a(Tg.e eVar) {
            this.f16314b = eVar;
        }

        @Override
        public long K(C3089c c3089c, long j10) throws IOException {
            while (true) {
                int i10 = this.f16318f;
                if (i10 != 0) {
                    long K10 = this.f16314b.K(c3089c, Math.min(j10, i10));
                    if (K10 == -1) {
                        return -1L;
                    }
                    this.f16318f = (int) (this.f16318f - K10);
                    return K10;
                }
                this.f16314b.skip(this.f16319g);
                this.f16319g = (short) 0;
                if ((this.f16316d & 4) != 0) {
                    return -1L;
                }
                c();
            }
        }

        @Override
        public z a0() {
            return this.f16314b.a0();
        }

        public final void c() throws IOException {
            int i10 = this.f16317e;
            int h10 = g.h(this.f16314b);
            this.f16318f = h10;
            this.f16315c = h10;
            byte readByte = (byte) (this.f16314b.readByte() & 255);
            this.f16316d = (byte) (this.f16314b.readByte() & 255);
            Logger logger = g.f16309f;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(d.b(true, this.f16317e, this.f16315c, readByte, this.f16316d));
            }
            int readInt = this.f16314b.readInt() & Integer.MAX_VALUE;
            this.f16317e = readInt;
            if (readByte != 9) {
                throw d.d("%s != TYPE_CONTINUATION", Byte.valueOf(readByte));
            }
            if (readInt != i10) {
                throw d.d("TYPE_CONTINUATION streamId changed", new Object[0]);
            }
        }

        @Override
        public void close() throws IOException {
        }
    }

    public interface b {
        void a(boolean z10, l lVar);

        void b(int i10, int i11, List<Ng.b> list) throws IOException;

        void c(int i10, Ng.a aVar, Tg.f fVar);

        void d(int i10, Ng.a aVar);

        void e(boolean z10, int i10, int i11);

        void f(boolean z10, int i10, int i11, List<Ng.b> list);

        void h(int i10, long j10);

        void i(boolean z10, int i10, Tg.e eVar, int i11) throws IOException;

        void j(int i10, String str, Tg.f fVar, String str2, int i11, long j10);

        void k();

        void l(int i10, int i11, int i12, boolean z10);
    }

    public g(Tg.e eVar, boolean z10) {
        this.f16310b = eVar;
        this.f16312d = z10;
        a aVar = new a(eVar);
        this.f16311c = aVar;
        this.f16313e = new c.a(4096, aVar);
    }

    public static int a(int i10, byte b10, short s10) throws IOException {
        if ((b10 & 8) != 0) {
            i10--;
        }
        if (s10 <= i10) {
            return (short) (i10 - s10);
        }
        throw d.d("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s10), Integer.valueOf(i10));
    }

    public static int h(Tg.e eVar) throws IOException {
        return (eVar.readByte() & 255) | ((eVar.readByte() & 255) << 16) | ((eVar.readByte() & 255) << 8);
    }

    public boolean b(boolean z10, b bVar) throws IOException {
        try {
            this.f16310b.X1(9L);
            int h10 = h(this.f16310b);
            if (h10 < 0 || h10 > 16384) {
                throw d.d("FRAME_SIZE_ERROR: %s", Integer.valueOf(h10));
            }
            byte readByte = (byte) (this.f16310b.readByte() & 255);
            if (z10 && readByte != 4) {
                throw d.d("Expected a SETTINGS frame but was %s", Byte.valueOf(readByte));
            }
            byte readByte2 = (byte) (this.f16310b.readByte() & 255);
            int readInt = this.f16310b.readInt() & Integer.MAX_VALUE;
            Logger logger = f16309f;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(d.b(true, readInt, h10, readByte, readByte2));
            }
            switch (readByte) {
                case 0:
                    d(bVar, h10, readByte2, readInt);
                    return true;
                case 1:
                    g(bVar, h10, readByte2, readInt);
                    return true;
                case 2:
                    l(bVar, h10, readByte2, readInt);
                    return true;
                case 3:
                    n(bVar, h10, readByte2, readInt);
                    return true;
                case 4:
                    o(bVar, h10, readByte2, readInt);
                    return true;
                case 5:
                    m(bVar, h10, readByte2, readInt);
                    return true;
                case 6:
                    j(bVar, h10, readByte2, readInt);
                    return true;
                case 7:
                    e(bVar, h10, readByte2, readInt);
                    return true;
                case 8:
                    p(bVar, h10, readByte2, readInt);
                    return true;
                default:
                    this.f16310b.skip(h10);
                    return true;
            }
        } catch (IOException unused) {
            return false;
        }
    }

    public void c(b bVar) throws IOException {
        if (this.f16312d) {
            if (!b(true, bVar)) {
                throw d.d("Required SETTINGS preface not received", new Object[0]);
            }
            return;
        }
        Tg.e eVar = this.f16310b;
        Tg.f fVar = d.f16204a;
        Tg.f x12 = eVar.x1(fVar.S());
        Logger logger = f16309f;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(Gg.c.s("<< CONNECTION %s", x12.s()));
        }
        if (!fVar.equals(x12)) {
            throw d.d("Expected a connection header but was %s", x12.b0());
        }
    }

    @Override
    public void close() throws IOException {
        this.f16310b.close();
    }

    public final void d(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i11 == 0) {
            throw d.d("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
        }
        boolean z10 = (b10 & 1) != 0;
        if ((b10 & 32) != 0) {
            throw d.d("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
        }
        short readByte = (b10 & 8) != 0 ? (short) (this.f16310b.readByte() & 255) : (short) 0;
        bVar.i(z10, i11, this.f16310b, a(i10, b10, readByte));
        this.f16310b.skip(readByte);
    }

    public final void e(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i10 < 8) {
            throw d.d("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i10));
        }
        if (i11 != 0) {
            throw d.d("TYPE_GOAWAY streamId != 0", new Object[0]);
        }
        int readInt = this.f16310b.readInt();
        int readInt2 = this.f16310b.readInt();
        int i12 = i10 - 8;
        Ng.a a10 = Ng.a.a(readInt2);
        if (a10 == null) {
            throw d.d("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(readInt2));
        }
        Tg.f fVar = Tg.f.f24997g;
        if (i12 > 0) {
            fVar = this.f16310b.x1(i12);
        }
        bVar.c(readInt, a10, fVar);
    }

    public final List<Ng.b> f(int i10, short s10, byte b10, int i11) throws IOException {
        a aVar = this.f16311c;
        aVar.f16318f = i10;
        aVar.f16315c = i10;
        aVar.f16319g = s10;
        aVar.f16316d = b10;
        aVar.f16317e = i11;
        this.f16313e.l();
        return this.f16313e.e();
    }

    public final void g(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i11 == 0) {
            throw d.d("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
        }
        boolean z10 = (b10 & 1) != 0;
        short readByte = (b10 & 8) != 0 ? (short) (this.f16310b.readByte() & 255) : (short) 0;
        if ((b10 & 32) != 0) {
            k(bVar, i11);
            i10 -= 5;
        }
        bVar.f(z10, i11, -1, f(a(i10, b10, readByte), readByte, b10, i11));
    }

    public final void j(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i10 != 8) {
            throw d.d("TYPE_PING length != 8: %s", Integer.valueOf(i10));
        }
        if (i11 != 0) {
            throw d.d("TYPE_PING streamId != 0", new Object[0]);
        }
        bVar.e((b10 & 1) != 0, this.f16310b.readInt(), this.f16310b.readInt());
    }

    public final void k(b bVar, int i10) throws IOException {
        int readInt = this.f16310b.readInt();
        bVar.l(i10, readInt & Integer.MAX_VALUE, (this.f16310b.readByte() & 255) + 1, (Integer.MIN_VALUE & readInt) != 0);
    }

    public final void l(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i10 != 5) {
            throw d.d("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i10));
        }
        if (i11 == 0) {
            throw d.d("TYPE_PRIORITY streamId == 0", new Object[0]);
        }
        k(bVar, i11);
    }

    public final void m(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i11 == 0) {
            throw d.d("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
        }
        short readByte = (b10 & 8) != 0 ? (short) (this.f16310b.readByte() & 255) : (short) 0;
        bVar.b(i11, this.f16310b.readInt() & Integer.MAX_VALUE, f(a(i10 - 4, b10, readByte), readByte, b10, i11));
    }

    public final void n(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i10 != 4) {
            throw d.d("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i10));
        }
        if (i11 == 0) {
            throw d.d("TYPE_RST_STREAM streamId == 0", new Object[0]);
        }
        int readInt = this.f16310b.readInt();
        Ng.a a10 = Ng.a.a(readInt);
        if (a10 == null) {
            throw d.d("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(readInt));
        }
        bVar.d(i11, a10);
    }

    public final void o(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i11 != 0) {
            throw d.d("TYPE_SETTINGS streamId != 0", new Object[0]);
        }
        if ((b10 & 1) != 0) {
            if (i10 != 0) {
                throw d.d("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
            }
            bVar.k();
            return;
        }
        if (i10 % 6 != 0) {
            throw d.d("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i10));
        }
        l lVar = new l();
        for (int i12 = 0; i12 < i10; i12 += 6) {
            int readShort = this.f16310b.readShort() & 65535;
            int readInt = this.f16310b.readInt();
            if (readShort != 2) {
                if (readShort == 3) {
                    readShort = 4;
                } else if (readShort == 4) {
                    if (readInt < 0) {
                        throw d.d("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                    }
                    readShort = 7;
                } else if (readShort == 5 && (readInt < 16384 || readInt > 16777215)) {
                    throw d.d("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(readInt));
                }
            } else if (readInt != 0 && readInt != 1) {
                throw d.d("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
            }
            lVar.k(readShort, readInt);
        }
        bVar.a(false, lVar);
    }

    public final void p(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i10 != 4) {
            throw d.d("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i10));
        }
        long readInt = this.f16310b.readInt() & 2147483647L;
        if (readInt == 0) {
            throw d.d("windowSizeIncrement was 0", Long.valueOf(readInt));
        }
        bVar.h(i11, readInt);
    }
}
