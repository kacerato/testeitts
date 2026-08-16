package net.jpountz.lz4;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Locale;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class l extends FilterOutputStream {

    public static final int f98045j = 4;

    public static final int f98046k = 8;

    public static final int f98047l = 407708164;

    public static final int f98048m = 15;

    public static final int f98049n = Integer.MIN_VALUE;

    public static final d.a[] f98050o = {d.a.BLOCK_INDEPENDENCE};

    public static final String f98051p = "The stream is already closed";

    public final net.jpountz.lz4.d f98052b;

    public final net.jpountz.xxhash.k f98053c;

    public final ByteBuffer f98054d;

    public final byte[] f98055e;

    public final int f98056f;

    public final long f98057g;

    public final ByteBuffer f98058h;

    public e f98059i;

    public static class b {

        public static final int f98060b = 143;

        public final c f98061a;

        public static b a(byte b10) {
            int i10 = (b10 >>> 4) & 7;
            if ((b10 & Opcodes.OPC_d2l) <= 0) {
                return new b(c.b(i10));
            }
            throw new RuntimeException("Reserved fields must be 0");
        }

        public int b() {
            return 1 << ((this.f98061a.a() * 2) + 8);
        }

        public byte c() {
            return (byte) ((this.f98061a.a() & 7) << 4);
        }

        public b(c cVar) {
            this.f98061a = cVar;
        }
    }

    public enum c {
        SIZE_64KB(4),
        SIZE_256KB(5),
        SIZE_1MB(6),
        SIZE_4MB(7);

        private final int indicator;

        c(int i10) {
            this.indicator = i10;
        }

        public static c b(int i10) {
            if (i10 == 4) {
                return SIZE_64KB;
            }
            if (i10 == 5) {
                return SIZE_256KB;
            }
            if (i10 == 6) {
                return SIZE_1MB;
            }
            if (i10 == 7) {
                return SIZE_4MB;
            }
            throw new IllegalArgumentException(String.format(Locale.ROOT, "Block size must be 4-7. Cannot use value of [%d]", Integer.valueOf(i10)));
        }

        public int a() {
            return this.indicator;
        }
    }

    public static class e {

        public final d f98065a;

        public final b f98066b;

        public final net.jpountz.xxhash.c f98067c;

        public boolean f98068d = false;

        public e(d dVar, b bVar) {
            this.f98065a = dVar;
            this.f98066b = bVar;
            this.f98067c = dVar.c(d.a.CONTENT_CHECKSUM) ? net.jpountz.xxhash.t.b().i(0) : null;
        }

        public int a() {
            return this.f98067c.d();
        }

        public void b() {
            this.f98068d = true;
        }

        public b c() {
            return this.f98066b;
        }

        public d d() {
            return this.f98065a;
        }

        public boolean e(d.a aVar) {
            return this.f98065a.c(aVar);
        }

        public boolean f() {
            return this.f98068d;
        }

        public void g(byte[] bArr, int i10, int i11) {
            this.f98067c.f(bArr, i10, i11);
        }
    }

    public l(OutputStream outputStream, c cVar, d.a... aVarArr) throws IOException {
        this(outputStream, cVar, -1L, aVarArr);
    }

    public final void c() {
        if (this.f98059i.f()) {
            throw new IllegalStateException(f98051p);
        }
    }

    @Override
    public void close() throws IOException {
        if (!this.f98059i.f()) {
            flush();
            e();
        }
        super.close();
    }

    public final void d() throws IOException {
        byte[] bArr;
        int i10;
        if (this.f98054d.position() == 0) {
            return;
        }
        Arrays.fill(this.f98055e, (byte) 0);
        if (this.f98059i.e(d.a.CONTENT_CHECKSUM)) {
            this.f98059i.g(this.f98054d.array(), 0, this.f98054d.position());
        }
        int b10 = this.f98052b.b(this.f98054d.array(), 0, this.f98054d.position(), this.f98055e, 0);
        if (b10 >= this.f98054d.position()) {
            b10 = this.f98054d.position();
            bArr = Arrays.copyOf(this.f98054d.array(), b10);
            i10 = Integer.MIN_VALUE;
        } else {
            bArr = this.f98055e;
            i10 = 0;
        }
        this.f98058h.putInt(0, i10 | b10);
        this.out.write(this.f98058h.array());
        this.out.write(bArr, 0, b10);
        if (this.f98059i.e(d.a.BLOCK_CHECKSUM)) {
            this.f98058h.putInt(0, this.f98053c.c(bArr, 0, b10, 0));
            this.out.write(this.f98058h.array());
        }
        this.f98054d.rewind();
    }

    public final void e() throws IOException {
        this.f98058h.putInt(0, 0);
        this.out.write(this.f98058h.array());
        if (this.f98059i.e(d.a.CONTENT_CHECKSUM)) {
            this.f98058h.putInt(0, this.f98059i.a());
            this.out.write(this.f98058h.array());
        }
        this.f98059i.b();
    }

    public final void f() throws IOException {
        ByteBuffer order = ByteBuffer.allocate(15).order(ByteOrder.LITTLE_ENDIAN);
        order.putInt(f98047l);
        order.put(this.f98059i.d().d());
        order.put(this.f98059i.c().c());
        if (this.f98059i.e(d.a.CONTENT_SIZE)) {
            order.putLong(this.f98057g);
        }
        order.put((byte) ((this.f98053c.c(order.array(), 4, order.position() - 4, 0) >> 8) & 255));
        this.out.write(order.array(), 0, order.position());
    }

    @Override
    public void flush() throws IOException {
        if (!this.f98059i.f()) {
            d();
        }
        super.flush();
    }

    @Override
    public void write(int i10) throws IOException {
        c();
        if (this.f98054d.position() == this.f98056f) {
            d();
        }
        this.f98054d.put((byte) i10);
    }

    public l(OutputStream outputStream, c cVar, long j10, d.a... aVarArr) throws IOException {
        this(outputStream, cVar, j10, i.e().c(), net.jpountz.xxhash.t.b().d(), aVarArr);
    }

    public l(OutputStream outputStream, c cVar, long j10, net.jpountz.lz4.d dVar, net.jpountz.xxhash.k kVar, d.a... aVarArr) throws IOException {
        super(outputStream);
        ByteBuffer allocate = ByteBuffer.allocate(4);
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        this.f98058h = allocate.order(byteOrder);
        this.f98059i = null;
        this.f98052b = dVar;
        this.f98053c = kVar;
        e eVar = new e(new d(1, aVarArr), new b(cVar));
        this.f98059i = eVar;
        int b10 = eVar.c().b();
        this.f98056f = b10;
        this.f98054d = ByteBuffer.allocate(b10).order(byteOrder);
        this.f98055e = new byte[dVar.h(b10)];
        if (this.f98059i.d().c(d.a.CONTENT_SIZE) && j10 < 0) {
            throw new IllegalArgumentException("Known size must be greater than zero in order to use the known size feature");
        }
        this.f98057g = j10;
        f();
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        if (i10 >= 0 && i11 >= 0 && i10 + i11 <= bArr.length) {
            c();
            while (i11 > this.f98054d.remaining()) {
                int remaining = this.f98054d.remaining();
                this.f98054d.put(bArr, i10, remaining);
                d();
                i10 += remaining;
                i11 -= remaining;
            }
            this.f98054d.put(bArr, i10, i11);
            return;
        }
        throw new IndexOutOfBoundsException();
    }

    public static class d {

        public static final int f98062c = 1;

        public final BitSet f98063a;

        public final int f98064b;

        public enum a {
            RESERVED_0(0),
            RESERVED_1(1),
            CONTENT_CHECKSUM(2),
            CONTENT_SIZE(3),
            BLOCK_CHECKSUM(4),
            BLOCK_INDEPENDENCE(5);

            private final int position;

            a(int i10) {
                this.position = i10;
            }
        }

        public d(int i10, a... aVarArr) {
            this.f98063a = new BitSet(8);
            this.f98064b = i10;
            if (aVarArr != null) {
                for (a aVar : aVarArr) {
                    this.f98063a.set(aVar.position);
                }
            }
            e();
        }

        public static d a(byte b10) {
            byte b11 = (byte) (b10 & Opcodes.OPC_checkcast);
            return new d(b11 >>> 6, (byte) (b10 ^ b11));
        }

        public int b() {
            return this.f98064b;
        }

        public boolean c(a aVar) {
            return this.f98063a.get(aVar.position);
        }

        public byte d() {
            return (byte) (this.f98063a.toByteArray()[0] | ((this.f98064b & 3) << 6));
        }

        public final void e() {
            if (this.f98063a.get(a.RESERVED_0.position)) {
                throw new RuntimeException("Reserved0 field must be 0");
            }
            if (this.f98063a.get(a.RESERVED_1.position)) {
                throw new RuntimeException("Reserved1 field must be 0");
            }
            if (!this.f98063a.get(a.BLOCK_INDEPENDENCE.position)) {
                throw new RuntimeException("Dependent block stream is unsupported (BLOCK_INDEPENDENCE must be set)");
            }
            if (this.f98064b != 1) {
                throw new RuntimeException(String.format(Locale.ROOT, "Version %d is unsupported", Integer.valueOf(this.f98064b)));
            }
        }

        public d(int i10, byte b10) {
            this.f98063a = BitSet.valueOf(new byte[]{b10});
            this.f98064b = i10;
            e();
        }
    }

    public l(OutputStream outputStream, c cVar) throws IOException {
        this(outputStream, cVar, f98050o);
    }

    public l(OutputStream outputStream) throws IOException {
        this(outputStream, c.SIZE_4MB);
    }
}
