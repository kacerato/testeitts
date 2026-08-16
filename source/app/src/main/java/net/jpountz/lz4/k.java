package net.jpountz.lz4;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Locale;
import net.jpountz.lz4.l;

public class k extends FilterInputStream {

    public static final String f98026p = "Stream ended prematurely";

    public static final String f98027q = "Stream unsupported";

    public static final String f98028r = "Block checksum mismatch";

    public static final String f98029s = "Stream frame descriptor corrupted";

    public static final int f98030t = 407710288;

    public final y f98031b;

    public final net.jpountz.xxhash.k f98032c;

    public final byte[] f98033d;

    public final ByteBuffer f98034e;

    public final boolean f98035f;

    public byte[] f98036g;

    public ByteBuffer f98037h;

    public byte[] f98038i;

    public int f98039j;

    public long f98040k;

    public long f98041l;

    public boolean f98042m;

    public l.e f98043n;

    public final ByteBuffer f98044o;

    public k(InputStream inputStream) throws IOException {
        this(inputStream, i.e().l(), net.jpountz.xxhash.t.b().d());
    }

    @Override
    public int available() throws IOException {
        return this.f98037h.remaining();
    }

    public long c() throws IOException {
        if (!this.f98035f) {
            throw new UnsupportedOperationException("Operation not permitted when multiple frames can be read");
        }
        if (this.f98042m || e()) {
            return this.f98040k;
        }
        return -1L;
    }

    @Override
    public void close() throws IOException {
        super.close();
    }

    public boolean d() throws IOException {
        if (this.f98035f) {
            return (this.f98042m || e()) && this.f98040k >= 0;
        }
        return false;
    }

    public final boolean e() throws IOException {
        while (true) {
            int i10 = 0;
            do {
                int read = this.f92730in.read(this.f98044o.array(), i10, 4 - i10);
                if (read < 0) {
                    if (!this.f98042m) {
                        throw new IOException(f98026p);
                    }
                    if (i10 <= 0) {
                        return false;
                    }
                    throw new IOException(f98026p);
                }
                i10 += read;
            } while (i10 < 4);
            int i11 = this.f98044o.getInt(0);
            if (i11 == 407708164) {
                g();
                return true;
            }
            if ((i11 >>> 4) != 25481893) {
                throw new IOException(f98027q);
            }
            k();
        }
    }

    public final void f() throws IOException {
        int h10 = h(this.f92730in);
        boolean z10 = (Integer.MIN_VALUE & h10) == 0;
        int i10 = h10 & Integer.MAX_VALUE;
        if (i10 == 0) {
            if (this.f98043n.e(l.d.a.CONTENT_CHECKSUM) && h(this.f92730in) != this.f98043n.a()) {
                throw new IOException("Content checksum mismatch");
            }
            if (this.f98043n.e(l.d.a.CONTENT_SIZE) && this.f98040k != this.f98041l) {
                throw new IOException("Size check mismatch");
            }
            this.f98043n.b();
            return;
        }
        byte[] bArr = z10 ? this.f98036g : this.f98038i;
        if (i10 > this.f98039j) {
            throw new IOException(String.format(Locale.ROOT, "Block size %s exceeded max: %s", Integer.valueOf(i10), Integer.valueOf(this.f98039j)));
        }
        int i11 = 0;
        while (i11 < i10) {
            int read = this.f92730in.read(bArr, i11, i10 - i11);
            if (read < 0) {
                throw new IOException(f98026p);
            }
            i11 += read;
        }
        if (this.f98043n.e(l.d.a.BLOCK_CHECKSUM) && h(this.f92730in) != this.f98032c.c(bArr, 0, i10, 0)) {
            throw new IOException(f98028r);
        }
        if (z10) {
            try {
                y yVar = this.f98031b;
                byte[] bArr2 = this.f98038i;
                i10 = yVar.a(bArr, 0, i10, bArr2, 0, bArr2.length);
            } catch (LZ4Exception e10) {
                throw new IOException(e10);
            }
        }
        if (this.f98043n.e(l.d.a.CONTENT_CHECKSUM)) {
            this.f98043n.g(this.f98038i, 0, i10);
        }
        this.f98041l += i10;
        this.f98037h.limit(i10);
        this.f98037h.rewind();
    }

    public final void g() throws IOException {
        this.f98034e.rewind();
        int read = this.f92730in.read();
        if (read < 0) {
            throw new IOException(f98026p);
        }
        int read2 = this.f92730in.read();
        if (read2 < 0) {
            throw new IOException(f98026p);
        }
        byte b10 = (byte) (read & 255);
        l.d a10 = l.d.a(b10);
        this.f98034e.put(b10);
        byte b11 = (byte) (read2 & 255);
        l.b a11 = l.b.a(b11);
        this.f98034e.put(b11);
        this.f98043n = new l.e(a10, a11);
        if (a10.c(l.d.a.CONTENT_SIZE)) {
            long j10 = j(this.f92730in);
            this.f98040k = j10;
            this.f98034e.putLong(j10);
        }
        this.f98041l = 0L;
        byte c10 = (byte) ((this.f98032c.c(this.f98033d, 0, this.f98034e.position(), 0) >> 8) & 255);
        int read3 = this.f92730in.read();
        if (read3 < 0) {
            throw new IOException(f98026p);
        }
        if (c10 != ((byte) (read3 & 255))) {
            throw new IOException(f98029s);
        }
        int b12 = this.f98043n.c().b();
        this.f98039j = b12;
        this.f98036g = new byte[b12];
        byte[] bArr = new byte[b12];
        this.f98038i = bArr;
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        this.f98037h = wrap;
        wrap.limit(0);
        this.f98042m = true;
    }

    public final int h(InputStream inputStream) throws IOException {
        int i10 = 0;
        do {
            int read = inputStream.read(this.f98044o.array(), i10, 4 - i10);
            if (read < 0) {
                throw new IOException(f98026p);
            }
            i10 += read;
        } while (i10 < 4);
        return this.f98044o.getInt(0);
    }

    public final long j(InputStream inputStream) throws IOException {
        int i10 = 0;
        do {
            int read = inputStream.read(this.f98044o.array(), i10, 8 - i10);
            if (read < 0) {
                throw new IOException(f98026p);
            }
            i10 += read;
        } while (i10 < 8);
        return this.f98044o.getLong(0);
    }

    public final void k() throws IOException {
        int h10 = h(this.f92730in);
        byte[] bArr = new byte[1024];
        while (h10 > 0) {
            int read = this.f92730in.read(bArr, 0, Math.min(h10, 1024));
            if (read < 0) {
                throw new IOException(f98026p);
            }
            h10 -= read;
        }
        this.f98042m = true;
    }

    @Override
    public synchronized void mark(int i10) {
        throw new UnsupportedOperationException("mark not supported");
    }

    @Override
    public boolean markSupported() {
        return false;
    }

    @Override
    public int read() throws IOException {
        while (true) {
            if (this.f98042m && this.f98037h.remaining() != 0) {
                return this.f98037h.get() & 255;
            }
            if ((!this.f98042m || this.f98043n.f()) && ((this.f98042m && this.f98035f) || !e())) {
                return -1;
            }
            f();
        }
    }

    @Override
    public synchronized void reset() throws IOException {
        throw new UnsupportedOperationException("reset not supported");
    }

    @Override
    public long skip(long j10) throws IOException {
        if (j10 <= 0) {
            return 0L;
        }
        while (true) {
            if (this.f98042m && this.f98037h.remaining() != 0) {
                long min = Math.min(j10, this.f98037h.remaining());
                ByteBuffer byteBuffer = this.f98037h;
                byteBuffer.position(byteBuffer.position() + ((int) min));
                return min;
            }
            if ((!this.f98042m || this.f98043n.f()) && ((this.f98042m && this.f98035f) || !e())) {
                return 0L;
            }
            f();
        }
    }

    public k(InputStream inputStream, boolean z10) throws IOException {
        this(inputStream, i.e().l(), net.jpountz.xxhash.t.b().d(), z10);
    }

    public k(InputStream inputStream, y yVar, net.jpountz.xxhash.k kVar) throws IOException {
        this(inputStream, yVar, kVar, false);
    }

    public k(InputStream inputStream, y yVar, net.jpountz.xxhash.k kVar, boolean z10) throws IOException {
        super(inputStream);
        byte[] bArr = new byte[15];
        this.f98033d = bArr;
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        this.f98034e = wrap.order(byteOrder);
        this.f98037h = null;
        this.f98038i = null;
        this.f98039j = -1;
        this.f98040k = -1L;
        this.f98041l = 0L;
        this.f98042m = false;
        this.f98043n = null;
        this.f98044o = ByteBuffer.allocate(8).order(byteOrder);
        this.f98031b = yVar;
        this.f98032c = kVar;
        this.f98035f = z10;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (i10 < 0 || i11 < 0 || i10 + i11 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        while (true) {
            if (this.f98042m && this.f98037h.remaining() != 0) {
                int min = Math.min(i11, this.f98037h.remaining());
                this.f98037h.get(bArr, i10, min);
                return min;
            }
            if ((!this.f98042m || this.f98043n.f()) && ((this.f98042m && this.f98035f) || !e())) {
                return -1;
            }
            f();
        }
    }
}
