package net.jpountz.lz4;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.Checksum;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class C14389b extends FilterOutputStream {

    public static final byte[] f97992k;

    public static final int f97993l;

    public static final int f97994m;

    public static final int f97995n = 10;

    public static final int f97996o = 64;

    public static final int f97997p = 33554432;

    public static final int f97998q = 16;

    public static final int f97999r = 32;

    public static final int f98000s = -1756908916;

    public static final boolean f98001t = false;

    public final int f98002b;

    public final int f98003c;

    public final d f98004d;

    public final Checksum f98005e;

    public final byte[] f98006f;

    public final byte[] f98007g;

    public final boolean f98008h;

    public boolean f98009i;

    public int f98010j;

    static {
        byte[] bArr = {Opcodes.OPC_astore_1, 90, 52, Opcodes.OPC_lstore_3, Opcodes.OPC_idiv, 111, Opcodes.OPC_dadd, 107};
        f97992k = bArr;
        int length = bArr.length;
        f97993l = length;
        f97994m = length + 13;
    }

    public C14389b(OutputStream outputStream, int i10, d dVar, Checksum checksum, boolean z10) {
        super(outputStream);
        this.f98002b = i10;
        this.f98004d = dVar;
        this.f98005e = checksum;
        this.f98003c = a(i10);
        this.f98006f = new byte[i10];
        byte[] bArr = new byte[f97994m + dVar.h(i10)];
        this.f98007g = bArr;
        this.f98008h = z10;
        this.f98010j = 0;
        this.f98009i = false;
        System.arraycopy(f97992k, 0, bArr, 0, f97993l);
    }

    public static int a(int i10) {
        if (i10 < 64) {
            throw new IllegalArgumentException("blockSize must be >= 64, got " + i10);
        }
        if (i10 <= 33554432) {
            return Math.max(0, 22 - Integer.numberOfLeadingZeros(i10 - 1));
        }
        throw new IllegalArgumentException("blockSize must be <= 33554432, got " + i10);
    }

    public static void f(int i10, byte[] bArr, int i11) {
        bArr[i11] = (byte) i10;
        bArr[i11 + 1] = (byte) (i10 >>> 8);
        bArr[i11 + 2] = (byte) (i10 >>> 16);
        bArr[i11 + 3] = (byte) (i10 >>> 24);
    }

    public final void c() {
        if (this.f98009i) {
            throw new IllegalStateException("This stream is already closed");
        }
    }

    @Override
    public void close() throws IOException {
        if (!this.f98009i) {
            d();
        }
        OutputStream outputStream = this.out;
        if (outputStream != null) {
            outputStream.close();
            this.out = null;
        }
    }

    public void d() throws IOException {
        c();
        e();
        byte[] bArr = this.f98007g;
        int i10 = f97993l;
        bArr[i10] = (byte) (this.f98003c | 16);
        f(0, bArr, i10 + 1);
        f(0, this.f98007g, i10 + 5);
        f(0, this.f98007g, i10 + 9);
        this.out.write(this.f98007g, 0, f97994m);
        this.f98009i = true;
        this.out.flush();
    }

    public final void e() throws IOException {
        int i10;
        if (this.f98010j == 0) {
            return;
        }
        this.f98005e.reset();
        this.f98005e.update(this.f98006f, 0, this.f98010j);
        int value = (int) this.f98005e.getValue();
        d dVar = this.f98004d;
        byte[] bArr = this.f98006f;
        int i11 = this.f98010j;
        byte[] bArr2 = this.f98007g;
        int i12 = f97994m;
        int b10 = dVar.b(bArr, 0, i11, bArr2, i12);
        int i13 = this.f98010j;
        if (b10 >= i13) {
            System.arraycopy(this.f98006f, 0, this.f98007g, i12, i13);
            i10 = 16;
        } else {
            i13 = b10;
            i10 = 32;
        }
        byte[] bArr3 = this.f98007g;
        int i14 = f97993l;
        bArr3[i14] = (byte) (i10 | this.f98003c);
        f(i13, bArr3, i14 + 1);
        f(this.f98010j, this.f98007g, i14 + 5);
        f(value, this.f98007g, i14 + 9);
        this.out.write(this.f98007g, 0, i12 + i13);
        this.f98010j = 0;
    }

    @Override
    public void flush() throws IOException {
        if (this.out != null) {
            if (this.f98008h) {
                e();
            }
            this.out.flush();
        }
    }

    public String toString() {
        return getClass().getSimpleName() + "(out=" + ((Object) this.out) + ", blockSize=" + this.f98002b + ", compressor=" + ((Object) this.f98004d) + ", checksum=" + ((Object) this.f98005e) + ")";
    }

    @Override
    public void write(int i10) throws IOException {
        c();
        if (this.f98010j == this.f98002b) {
            e();
        }
        byte[] bArr = this.f98006f;
        int i11 = this.f98010j;
        this.f98010j = i11 + 1;
        bArr[i11] = (byte) i10;
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        net.jpountz.util.c.c(bArr, i10, i11);
        c();
        while (true) {
            int i12 = this.f98010j;
            int i13 = i12 + i11;
            int i14 = this.f98002b;
            if (i13 > i14) {
                int i15 = i14 - i12;
                System.arraycopy(bArr, i10, this.f98006f, i12, i14 - i12);
                this.f98010j = this.f98002b;
                e();
                i10 += i15;
                i11 -= i15;
            } else {
                System.arraycopy(bArr, i10, this.f98006f, i12, i11);
                this.f98010j += i11;
                return;
            }
        }
    }

    public C14389b(OutputStream outputStream, int i10, d dVar) {
        this(outputStream, i10, dVar, net.jpountz.xxhash.t.b().i(f98000s).c(), false);
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        c();
        write(bArr, 0, bArr.length);
    }

    public C14389b(OutputStream outputStream, int i10) {
        this(outputStream, i10, i.e().c());
    }

    public C14389b(OutputStream outputStream) {
        this(outputStream, 65536);
    }
}
