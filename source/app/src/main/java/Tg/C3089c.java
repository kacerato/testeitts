package Tg;

import ag.a0;
import android.provider.ContactsContract;
import android.security.keystore.KeyProperties;
import b2.C3835d;
import com.tonyodev.fetch2.util.FetchDefaults;
import eg.C13143u0;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public final class C3089c implements e, d, Cloneable, ByteChannel {

    public static final byte[] f24982d = {48, Opcodes.OPC_daload, 50, 51, 52, Opcodes.OPC_saload, 54, Opcodes.OPC_lstore, Opcodes.OPC_fstore, Opcodes.OPC_dstore, Opcodes.OPC_ladd, Opcodes.OPC_fadd, Opcodes.OPC_dadd, 100, 101, 102};

    public static final int f24983e = 65533;

    @Nullable
    public u f24984b;

    public long f24985c;

    public class a extends OutputStream {
        public a() {
        }

        @Override
        public void close() {
        }

        @Override
        public void flush() {
        }

        public String toString() {
            return ((Object) C3089c.this) + ".outputStream()";
        }

        @Override
        public void write(int i10) {
            C3089c.this.writeByte((byte) i10);
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) {
            C3089c.this.write(bArr, i10, i11);
        }
    }

    public class b extends InputStream {
        public b() {
        }

        @Override
        public int available() {
            return (int) Math.min(C3089c.this.f24985c, 2147483647L);
        }

        @Override
        public void close() {
        }

        @Override
        public int read() {
            C3089c c3089c = C3089c.this;
            if (c3089c.f24985c > 0) {
                return c3089c.readByte() & 255;
            }
            return -1;
        }

        public String toString() {
            return ((Object) C3089c.this) + ".inputStream()";
        }

        @Override
        public int read(byte[] bArr, int i10, int i11) {
            return C3089c.this.read(bArr, i10, i11);
        }
    }

    public static final class C0708c implements Closeable {

        public C3089c f24988b;

        public boolean f24989c;

        public u f24990d;

        public byte[] f24992f;

        public long f24991e = -1;

        public int f24993g = -1;

        public int f24994h = -1;

        public final long a(int i10) {
            if (i10 <= 0) {
                throw new IllegalArgumentException("minByteCount <= 0: " + i10);
            }
            if (i10 > 8192) {
                throw new IllegalArgumentException("minByteCount > Segment.SIZE: " + i10);
            }
            C3089c c3089c = this.f24988b;
            if (c3089c == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            if (!this.f24989c) {
                throw new IllegalStateException("expandBuffer() only permitted for read/write buffers");
            }
            long j10 = c3089c.f24985c;
            u V10 = c3089c.V(i10);
            int i11 = 8192 - V10.f25063c;
            V10.f25063c = 8192;
            long j11 = i11;
            this.f24988b.f24985c = j10 + j11;
            this.f24990d = V10;
            this.f24991e = j10;
            this.f24992f = V10.f25061a;
            this.f24993g = 8192 - i11;
            this.f24994h = 8192;
            return j11;
        }

        public final int c() {
            long j10 = this.f24991e;
            if (j10 != this.f24988b.f24985c) {
                return j10 == -1 ? e(0L) : e(j10 + (this.f24994h - this.f24993g));
            }
            throw new IllegalStateException();
        }

        @Override
        public void close() {
            if (this.f24988b == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            this.f24988b = null;
            this.f24990d = null;
            this.f24991e = -1L;
            this.f24992f = null;
            this.f24993g = -1;
            this.f24994h = -1;
        }

        public final long d(long j10) {
            C3089c c3089c = this.f24988b;
            if (c3089c == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            if (!this.f24989c) {
                throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers");
            }
            long j11 = c3089c.f24985c;
            if (j10 <= j11) {
                if (j10 < 0) {
                    throw new IllegalArgumentException("newSize < 0: " + j10);
                }
                long j12 = j11 - j10;
                while (true) {
                    if (j12 <= 0) {
                        break;
                    }
                    C3089c c3089c2 = this.f24988b;
                    u uVar = c3089c2.f24984b.f25067g;
                    int i10 = uVar.f25063c;
                    long j13 = i10 - uVar.f25062b;
                    if (j13 > j12) {
                        uVar.f25063c = (int) (i10 - j12);
                        break;
                    }
                    c3089c2.f24984b = uVar.b();
                    v.a(uVar);
                    j12 -= j13;
                }
                this.f24990d = null;
                this.f24991e = j10;
                this.f24992f = null;
                this.f24993g = -1;
                this.f24994h = -1;
            } else if (j10 > j11) {
                long j14 = j10 - j11;
                boolean z10 = true;
                while (j14 > 0) {
                    u V10 = this.f24988b.V(1);
                    int min = (int) Math.min(j14, 8192 - V10.f25063c);
                    int i11 = V10.f25063c + min;
                    V10.f25063c = i11;
                    j14 -= min;
                    if (z10) {
                        this.f24990d = V10;
                        this.f24991e = j11;
                        this.f24992f = V10.f25061a;
                        this.f24993g = i11 - min;
                        this.f24994h = i11;
                        z10 = false;
                    }
                }
            }
            this.f24988b.f24985c = j10;
            return j11;
        }

        public final int e(long j10) {
            if (j10 >= -1) {
                C3089c c3089c = this.f24988b;
                long j11 = c3089c.f24985c;
                if (j10 <= j11) {
                    if (j10 == -1 || j10 == j11) {
                        this.f24990d = null;
                        this.f24991e = j10;
                        this.f24992f = null;
                        this.f24993g = -1;
                        this.f24994h = -1;
                        return -1;
                    }
                    u uVar = c3089c.f24984b;
                    u uVar2 = this.f24990d;
                    long j12 = 0;
                    if (uVar2 != null) {
                        long j13 = this.f24991e - (this.f24993g - uVar2.f25062b);
                        if (j13 > j10) {
                            j11 = j13;
                            uVar2 = uVar;
                            uVar = uVar2;
                        } else {
                            j12 = j13;
                        }
                    } else {
                        uVar2 = uVar;
                    }
                    if (j11 - j10 > j10 - j12) {
                        while (true) {
                            int i10 = uVar2.f25063c;
                            int i11 = uVar2.f25062b;
                            if (j10 < (i10 - i11) + j12) {
                                break;
                            }
                            j12 += i10 - i11;
                            uVar2 = uVar2.f25066f;
                        }
                    } else {
                        while (j11 > j10) {
                            uVar = uVar.f25067g;
                            j11 -= uVar.f25063c - uVar.f25062b;
                        }
                        uVar2 = uVar;
                        j12 = j11;
                    }
                    if (this.f24989c && uVar2.f25064d) {
                        u f10 = uVar2.f();
                        C3089c c3089c2 = this.f24988b;
                        if (c3089c2.f24984b == uVar2) {
                            c3089c2.f24984b = f10;
                        }
                        uVar2 = uVar2.c(f10);
                        uVar2.f25067g.b();
                    }
                    this.f24990d = uVar2;
                    this.f24991e = j10;
                    this.f24992f = uVar2.f25061a;
                    int i12 = uVar2.f25062b + ((int) (j10 - j12));
                    this.f24993g = i12;
                    int i13 = uVar2.f25063c;
                    this.f24994h = i13;
                    return i13 - i12;
                }
            }
            throw new ArrayIndexOutOfBoundsException(String.format("offset=%s > size=%s", Long.valueOf(j10), Long.valueOf(this.f24988b.f24985c)));
        }
    }

    public List<Integer> A() {
        if (this.f24984b == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        u uVar = this.f24984b;
        arrayList.add(Integer.valueOf(uVar.f25063c - uVar.f25062b));
        u uVar2 = this.f24984b;
        while (true) {
            uVar2 = uVar2.f25066f;
            if (uVar2 == this.f24984b) {
                return arrayList;
            }
            arrayList.add(Integer.valueOf(uVar2.f25063c - uVar2.f25062b));
        }
    }

    @Override
    public String A1(Charset charset) {
        try {
            return E1(this.f24985c, charset);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0055, code lost:
    
        if (r19 == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0057, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0058, code lost:
    
        return r11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int B(q qVar, boolean z10) {
        int i10;
        int i11;
        u uVar;
        int i12;
        int i13;
        u uVar2 = this.f24984b;
        int i14 = -2;
        if (uVar2 != null) {
            byte[] bArr = uVar2.f25061a;
            int i15 = uVar2.f25062b;
            int i16 = uVar2.f25063c;
            int[] iArr = qVar.f25040c;
            u uVar3 = uVar2;
            int i17 = 0;
            int i18 = -1;
            loop0: while (true) {
                int i19 = i17 + 1;
                int i20 = iArr[i17];
                int i21 = i17 + 2;
                int i22 = iArr[i19];
                if (i22 != -1) {
                    i18 = i22;
                }
                if (uVar3 == null) {
                    break;
                }
                if (i20 >= 0) {
                    int i23 = i15 + 1;
                    int i24 = bArr[i15] & 255;
                    int i25 = i21 + i20;
                    while (i21 != i25) {
                        if (i24 == iArr[i21]) {
                            i10 = iArr[i21 + i20];
                            if (i23 == i16) {
                                uVar3 = uVar3.f25066f;
                                i11 = uVar3.f25062b;
                                bArr = uVar3.f25061a;
                                i16 = uVar3.f25063c;
                                if (uVar3 == uVar2) {
                                    uVar3 = null;
                                }
                            } else {
                                i11 = i23;
                            }
                        } else {
                            i21++;
                        }
                    }
                    return i18;
                }
                int i26 = i21 + (i20 * (-1));
                while (true) {
                    int i27 = i15 + 1;
                    int i28 = i21 + 1;
                    if ((bArr[i15] & 255) != iArr[i21]) {
                        return i18;
                    }
                    boolean z11 = i28 == i26;
                    if (i27 == i16) {
                        u uVar4 = uVar3.f25066f;
                        i13 = uVar4.f25062b;
                        byte[] bArr2 = uVar4.f25061a;
                        i12 = uVar4.f25063c;
                        if (uVar4 != uVar2) {
                            uVar = uVar4;
                            bArr = bArr2;
                        } else {
                            if (!z11) {
                                break loop0;
                            }
                            bArr = bArr2;
                            uVar = null;
                        }
                    } else {
                        uVar = uVar3;
                        i12 = i16;
                        i13 = i27;
                    }
                    if (z11) {
                        i10 = iArr[i28];
                        i11 = i13;
                        i16 = i12;
                        uVar3 = uVar;
                        break;
                    }
                    i15 = i13;
                    i16 = i12;
                    uVar3 = uVar;
                    i21 = i28;
                }
                if (i10 >= 0) {
                    return i10;
                }
                i17 = -i10;
                i15 = i11;
                i14 = -2;
            }
        } else {
            if (z10) {
                return -2;
            }
            return qVar.indexOf(f.f24997g);
        }
    }

    @Override
    public int B1() throws EOFException {
        int i10;
        int i11;
        int i12;
        if (this.f24985c == 0) {
            throw new EOFException();
        }
        byte l10 = l(0L);
        if ((l10 & 128) == 0) {
            i10 = l10 & Byte.MAX_VALUE;
            i12 = 0;
            i11 = 1;
        } else if ((l10 & 224) == 192) {
            i10 = l10 & 31;
            i11 = 2;
            i12 = 128;
        } else if ((l10 & 240) == 224) {
            i10 = l10 & 15;
            i11 = 3;
            i12 = 2048;
        } else {
            if ((l10 & 248) != 240) {
                skip(1L);
                return 65533;
            }
            i10 = l10 & 7;
            i11 = 4;
            i12 = 65536;
        }
        long j10 = i11;
        if (this.f24985c < j10) {
            throw new EOFException("size < " + i11 + ": " + this.f24985c + " (to read code point prefixed 0x" + Integer.toHexString(l10) + ")");
        }
        for (int i13 = 1; i13 < i11; i13++) {
            long j11 = i13;
            byte l11 = l(j11);
            if ((l11 & Opcodes.OPC_checkcast) != 128) {
                skip(j11);
                return 65533;
            }
            i10 = (i10 << 6) | (l11 & Opcodes.OPC_lstore_0);
        }
        skip(j10);
        if (i10 > 1114111) {
            return 65533;
        }
        if ((i10 < 55296 || i10 > 57343) && i10 >= i12) {
            return i10;
        }
        return 65533;
    }

    @Override
    public C3089c C() {
        return this;
    }

    @Override
    public f C1() {
        return new f(z1());
    }

    @Override
    public String D1() {
        try {
            return E1(this.f24985c, B.f24968a);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override
    public String E1(long j10, Charset charset) throws EOFException {
        B.b(this.f24985c, 0L, j10);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j10 > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j10);
        }
        if (j10 == 0) {
            return "";
        }
        u uVar = this.f24984b;
        int i10 = uVar.f25062b;
        if (i10 + j10 > uVar.f25063c) {
            return new String(M1(j10), charset);
        }
        String str = new String(uVar.f25061a, i10, (int) j10, charset);
        int i11 = (int) (uVar.f25062b + j10);
        uVar.f25062b = i11;
        this.f24985c -= j10;
        if (i11 == uVar.f25063c) {
            this.f24984b = uVar.b();
            v.a(uVar);
        }
        return str;
    }

    @Override
    public int F1(q qVar) {
        int B10 = B(qVar, false);
        if (B10 == -1) {
            return -1;
        }
        try {
            skip(qVar.f25039b[B10].S());
            return B10;
        } catch (EOFException unused) {
            throw new AssertionError();
        }
    }

    public final f G() {
        return j("SHA-1");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a2 A[EDGE_INSN: B:40:0x00a2->B:37:0x00a2 BREAK  A[LOOP:0: B:4:0x000b->B:39:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x009a  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long G1() {
        int i10;
        if (this.f24985c == 0) {
            throw new IllegalStateException("size == 0");
        }
        int i11 = 0;
        boolean z10 = false;
        long j10 = 0;
        do {
            u uVar = this.f24984b;
            byte[] bArr = uVar.f25061a;
            int i12 = uVar.f25062b;
            int i13 = uVar.f25063c;
            while (i12 < i13) {
                byte b10 = bArr[i12];
                if (b10 >= 48 && b10 <= 57) {
                    i10 = b10 - 48;
                } else if (b10 >= 97 && b10 <= 102) {
                    i10 = b10 + Opcodes.OPC_ret;
                } else if (b10 >= 65 && b10 <= 70) {
                    i10 = b10 + Opcodes.OPC_jsr_w;
                } else {
                    if (i11 == 0) {
                        throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + Integer.toHexString(b10));
                    }
                    z10 = true;
                    if (i12 != i13) {
                        this.f24984b = uVar.b();
                        v.a(uVar);
                    } else {
                        uVar.f25062b = i12;
                    }
                    if (!z10) {
                        break;
                    }
                }
                if (((-1152921504606846976L) & j10) != 0) {
                    throw new NumberFormatException("Number too large: " + new C3089c().P(j10).writeByte(b10).D1());
                }
                j10 = (j10 << 4) | i10;
                i12++;
                i11++;
            }
            if (i12 != i13) {
            }
            if (!z10) {
            }
        } while (this.f24984b != null);
        this.f24985c -= i11;
        return j10;
    }

    @Override
    public long H(y yVar) throws IOException {
        if (yVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j10 = 0;
        while (true) {
            long K10 = yVar.K(this, 8192L);
            if (K10 == -1) {
                return j10;
            }
            j10 += K10;
        }
    }

    @Override
    public long H1(f fVar) {
        return s1(fVar, 0L);
    }

    @Override
    public long J1(byte b10, long j10, long j11) {
        u uVar;
        long j12 = 0;
        if (j10 < 0 || j11 < j10) {
            throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.f24985c), Long.valueOf(j10), Long.valueOf(j11)));
        }
        long j13 = this.f24985c;
        long j14 = j11 > j13 ? j13 : j11;
        if (j10 == j14 || (uVar = this.f24984b) == null) {
            return -1L;
        }
        if (j13 - j10 < j10) {
            while (j13 > j10) {
                uVar = uVar.f25067g;
                j13 -= uVar.f25063c - uVar.f25062b;
            }
        } else {
            while (true) {
                long j15 = (uVar.f25063c - uVar.f25062b) + j12;
                if (j15 >= j10) {
                    break;
                }
                uVar = uVar.f25066f;
                j12 = j15;
            }
            j13 = j12;
        }
        long j16 = j10;
        while (j13 < j14) {
            byte[] bArr = uVar.f25061a;
            int min = (int) Math.min(uVar.f25063c, (uVar.f25062b + j14) - j13);
            for (int i10 = (int) ((uVar.f25062b + j16) - j13); i10 < min; i10++) {
                if (bArr[i10] == b10) {
                    return (i10 - uVar.f25062b) + j13;
                }
            }
            j13 += uVar.f25063c - uVar.f25062b;
            uVar = uVar.f25066f;
            j16 = j13;
        }
        return -1L;
    }

    @Override
    public long K(C3089c c3089c, long j10) {
        if (c3089c == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
        long j11 = this.f24985c;
        if (j11 == 0) {
            return -1L;
        }
        if (j10 > j11) {
            j10 = j11;
        }
        c3089c.h0(this, j10);
        return j10;
    }

    @Override
    public String K1(long j10) throws EOFException {
        if (j10 < 0) {
            throw new IllegalArgumentException("limit < 0: " + j10);
        }
        long j11 = j10 != Long.MAX_VALUE ? j10 + 1 : Long.MAX_VALUE;
        long J12 = J1((byte) 10, 0L, j11);
        if (J12 != -1) {
            return z(J12);
        }
        if (j11 < Q() && l(j11 - 1) == 13 && l(j11) == 10) {
            return z(j11);
        }
        C3089c c3089c = new C3089c();
        f(c3089c, 0L, Math.min(32L, Q()));
        throw new EOFException("\\n not found: limit=" + Math.min(Q(), j10) + " content=" + c3089c.C1().s() + a0.f32048F);
    }

    public final f L() {
        return j("SHA-256");
    }

    @Override
    public String L1() throws EOFException {
        return K1(Long.MAX_VALUE);
    }

    @Override
    public byte[] M1(long j10) throws EOFException {
        B.b(this.f24985c, 0L, j10);
        if (j10 <= 2147483647L) {
            byte[] bArr = new byte[(int) j10];
            readFully(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j10);
    }

    public final f N() {
        return j("SHA-512");
    }

    public final long Q() {
        return this.f24985c;
    }

    public final f R() {
        long j10 = this.f24985c;
        if (j10 <= 2147483647L) {
            return S((int) j10);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f24985c);
    }

    public final f S(int i10) {
        return i10 == 0 ? f.f24997g : new w(this, i10);
    }

    @Override
    public d T() {
        return this;
    }

    public u V(int i10) {
        if (i10 < 1 || i10 > 8192) {
            throw new IllegalArgumentException();
        }
        u uVar = this.f24984b;
        if (uVar != null) {
            u uVar2 = uVar.f25067g;
            return (uVar2.f25063c + i10 > 8192 || !uVar2.f25065e) ? uVar2.c(v.b()) : uVar2;
        }
        u b10 = v.b();
        this.f24984b = b10;
        b10.f25067g = b10;
        b10.f25066f = b10;
        return b10;
    }

    @Override
    public void X1(long j10) throws EOFException {
        if (this.f24985c < j10) {
            throw new EOFException();
        }
    }

    @Override
    public C3089c D(f fVar) {
        if (fVar == null) {
            throw new IllegalArgumentException("byteString == null");
        }
        fVar.c0(this);
        return this;
    }

    @Override
    public long Y1(f fVar) throws IOException {
        return t1(fVar, 0L);
    }

    @Override
    public C3089c write(byte[] bArr) {
        if (bArr != null) {
            return write(bArr, 0, bArr.length);
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override
    public z a0() {
        return z.f25073d;
    }

    @Override
    public boolean b2() {
        return this.f24985c == 0;
    }

    public final void c() {
        try {
            skip(this.f24985c);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override
    public C3089c write(byte[] bArr, int i10, int i11) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j10 = i11;
        B.b(bArr.length, i10, j10);
        int i12 = i11 + i10;
        while (i10 < i12) {
            u V10 = V(1);
            int min = Math.min(i12 - i10, 8192 - V10.f25063c);
            System.arraycopy(bArr, i10, V10.f25061a, V10.f25063c, min);
            i10 += min;
            V10.f25063c += min;
        }
        this.f24985c += j10;
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ac A[EDGE_INSN: B:46:0x00ac->B:40:0x00ac BREAK  A[LOOP:0: B:4:0x000f->B:45:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00a4  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long c2() {
        if (this.f24985c == 0) {
            throw new IllegalStateException("size == 0");
        }
        int i10 = 0;
        boolean z10 = false;
        long j10 = -7;
        long j11 = 0;
        boolean z11 = false;
        do {
            u uVar = this.f24984b;
            byte[] bArr = uVar.f25061a;
            int i11 = uVar.f25062b;
            int i12 = uVar.f25063c;
            while (i11 < i12) {
                byte b10 = bArr[i11];
                if (b10 >= 48 && b10 <= 57) {
                    int i13 = 48 - b10;
                    if (j11 < -922337203685477580L || (j11 == -922337203685477580L && i13 < j10)) {
                        C3089c writeByte = new C3089c().J(j11).writeByte(b10);
                        if (!z10) {
                            writeByte.readByte();
                        }
                        throw new NumberFormatException("Number too large: " + writeByte.D1());
                    }
                    j11 = (j11 * 10) + i13;
                } else if (b10 == 45 && i10 == 0) {
                    j10--;
                    z10 = true;
                } else {
                    if (i10 == 0) {
                        throw new NumberFormatException("Expected leading [0-9] or '-' character but was 0x" + Integer.toHexString(b10));
                    }
                    z11 = true;
                    if (i11 != i12) {
                        this.f24984b = uVar.b();
                        v.a(uVar);
                    } else {
                        uVar.f25062b = i11;
                    }
                    if (!z11) {
                        break;
                    }
                }
                i11++;
                i10++;
            }
            if (i11 != i12) {
            }
            if (!z11) {
            }
        } while (this.f24984b != null);
        this.f24985c -= i10;
        return z10 ? j11 : -j11;
    }

    @Override
    public void close() {
    }

    public C3089c clone() {
        C3089c c3089c = new C3089c();
        if (this.f24985c == 0) {
            return c3089c;
        }
        u d10 = this.f24984b.d();
        c3089c.f24984b = d10;
        d10.f25067g = d10;
        d10.f25066f = d10;
        u uVar = this.f24984b;
        while (true) {
            uVar = uVar.f25066f;
            if (uVar == this.f24984b) {
                c3089c.f24985c = this.f24985c;
                return c3089c;
            }
            c3089c.f24984b.f25067g.c(uVar.d());
        }
    }

    @Override
    public C3089c writeByte(int i10) {
        u V10 = V(1);
        byte[] bArr = V10.f25061a;
        int i11 = V10.f25063c;
        V10.f25063c = i11 + 1;
        bArr[i11] = (byte) i10;
        this.f24985c++;
        return this;
    }

    @Override
    public long d2(x xVar) throws IOException {
        long j10 = this.f24985c;
        if (j10 > 0) {
            xVar.h0(this, j10);
        }
        return j10;
    }

    public final long e() {
        long j10 = this.f24985c;
        if (j10 == 0) {
            return 0L;
        }
        u uVar = this.f24984b.f25067g;
        return (uVar.f25063c >= 8192 || !uVar.f25065e) ? j10 : j10 - (r3 - uVar.f25062b);
    }

    @Override
    public C3089c J(long j10) {
        boolean z10;
        if (j10 == 0) {
            return writeByte(48);
        }
        int i10 = 1;
        if (j10 < 0) {
            j10 = -j10;
            if (j10 < 0) {
                return X("-9223372036854775808");
            }
            z10 = true;
        } else {
            z10 = false;
        }
        if (j10 >= 100000000) {
            i10 = j10 < C3835d.f32898d ? j10 < 10000000000L ? j10 < ContactsContract.Directory.ENTERPRISE_DEFAULT ? 9 : 10 : j10 < 100000000000L ? 11 : 12 : j10 < 1000000000000000L ? j10 < 10000000000000L ? 13 : j10 < 100000000000000L ? 14 : 15 : j10 < 100000000000000000L ? j10 < 10000000000000000L ? 16 : 17 : j10 < 1000000000000000000L ? 18 : 19;
        } else if (j10 >= FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER) {
            i10 = j10 < C13143u0.f85788e ? j10 < 100000 ? 5 : 6 : j10 < 10000000 ? 7 : 8;
        } else if (j10 >= 100) {
            i10 = j10 < 1000 ? 3 : 4;
        } else if (j10 >= 10) {
            i10 = 2;
        }
        if (z10) {
            i10++;
        }
        u V10 = V(i10);
        byte[] bArr = V10.f25061a;
        int i11 = V10.f25063c + i10;
        while (j10 != 0) {
            i11--;
            bArr[i11] = f24982d[(int) (j10 % 10)];
            j10 /= 10;
        }
        if (z10) {
            bArr[i11 - 1] = Opcodes.OPC_aload_3;
        }
        V10.f25063c += i10;
        this.f24985c += i10;
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3089c)) {
            return false;
        }
        C3089c c3089c = (C3089c) obj;
        long j10 = this.f24985c;
        if (j10 != c3089c.f24985c) {
            return false;
        }
        long j11 = 0;
        if (j10 == 0) {
            return true;
        }
        u uVar = this.f24984b;
        u uVar2 = c3089c.f24984b;
        int i10 = uVar.f25062b;
        int i11 = uVar2.f25062b;
        while (j11 < this.f24985c) {
            long min = Math.min(uVar.f25063c - i10, uVar2.f25063c - i11);
            int i12 = 0;
            while (i12 < min) {
                int i13 = i10 + 1;
                int i14 = i11 + 1;
                if (uVar.f25061a[i10] != uVar2.f25061a[i11]) {
                    return false;
                }
                i12++;
                i10 = i13;
                i11 = i14;
            }
            if (i10 == uVar.f25063c) {
                uVar = uVar.f25066f;
                i10 = uVar.f25062b;
            }
            if (i11 == uVar2.f25063c) {
                uVar2 = uVar2.f25066f;
                i11 = uVar2.f25062b;
            }
            j11 += min;
        }
        return true;
    }

    public final C3089c f(C3089c c3089c, long j10, long j11) {
        if (c3089c == null) {
            throw new IllegalArgumentException("out == null");
        }
        B.b(this.f24985c, j10, j11);
        if (j11 == 0) {
            return this;
        }
        c3089c.f24985c += j11;
        u uVar = this.f24984b;
        while (true) {
            int i10 = uVar.f25063c;
            int i11 = uVar.f25062b;
            if (j10 < i10 - i11) {
                break;
            }
            j10 -= i10 - i11;
            uVar = uVar.f25066f;
        }
        while (j11 > 0) {
            u d10 = uVar.d();
            int i12 = (int) (d10.f25062b + j10);
            d10.f25062b = i12;
            d10.f25063c = Math.min(i12 + ((int) j11), d10.f25063c);
            u uVar2 = c3089c.f24984b;
            if (uVar2 == null) {
                d10.f25067g = d10;
                d10.f25066f = d10;
                c3089c.f24984b = d10;
            } else {
                uVar2.f25067g.c(d10);
            }
            j11 -= d10.f25063c - d10.f25062b;
            uVar = uVar.f25066f;
            j10 = 0;
        }
        return this;
    }

    @Override
    public C3089c P(long j10) {
        if (j10 == 0) {
            return writeByte(48);
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j10)) / 4) + 1;
        u V10 = V(numberOfTrailingZeros);
        byte[] bArr = V10.f25061a;
        int i10 = V10.f25063c;
        for (int i11 = (i10 + numberOfTrailingZeros) - 1; i11 >= i10; i11--) {
            bArr[i11] = f24982d[(int) (15 & j10)];
            j10 >>>= 4;
        }
        V10.f25063c += numberOfTrailingZeros;
        this.f24985c += numberOfTrailingZeros;
        return this;
    }

    @Override
    public void f2(C3089c c3089c, long j10) throws EOFException {
        long j11 = this.f24985c;
        if (j11 >= j10) {
            c3089c.h0(this, j10);
        } else {
            c3089c.h0(this, j11);
            throw new EOFException();
        }
    }

    @Override
    public void flush() {
    }

    public final C3089c g(OutputStream outputStream) throws IOException {
        return h(outputStream, 0L, this.f24985c);
    }

    @Override
    public C3089c writeInt(int i10) {
        u V10 = V(4);
        byte[] bArr = V10.f25061a;
        int i11 = V10.f25063c;
        bArr[i11] = (byte) ((i10 >>> 24) & 255);
        bArr[i11 + 1] = (byte) ((i10 >>> 16) & 255);
        bArr[i11 + 2] = (byte) ((i10 >>> 8) & 255);
        bArr[i11 + 3] = (byte) (i10 & 255);
        V10.f25063c = i11 + 4;
        this.f24985c += 4;
        return this;
    }

    @Override
    public boolean g2(long j10, f fVar) {
        return y1(j10, fVar, 0, fVar.S());
    }

    public final C3089c h(OutputStream outputStream, long j10, long j11) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        B.b(this.f24985c, j10, j11);
        if (j11 == 0) {
            return this;
        }
        u uVar = this.f24984b;
        while (true) {
            int i10 = uVar.f25063c;
            int i11 = uVar.f25062b;
            if (j10 < i10 - i11) {
                break;
            }
            j10 -= i10 - i11;
            uVar = uVar.f25066f;
        }
        while (j11 > 0) {
            int min = (int) Math.min(uVar.f25063c - r9, j11);
            outputStream.write(uVar.f25061a, (int) (uVar.f25062b + j10), min);
            j11 -= min;
            uVar = uVar.f25066f;
            j10 = 0;
        }
        return this;
    }

    @Override
    public void h0(C3089c c3089c, long j10) {
        if (c3089c == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (c3089c == this) {
            throw new IllegalArgumentException("source == this");
        }
        B.b(c3089c.f24985c, 0L, j10);
        while (j10 > 0) {
            u uVar = c3089c.f24984b;
            if (j10 < uVar.f25063c - uVar.f25062b) {
                u uVar2 = this.f24984b;
                u uVar3 = uVar2 != null ? uVar2.f25067g : null;
                if (uVar3 != null && uVar3.f25065e) {
                    if ((uVar3.f25063c + j10) - (uVar3.f25064d ? 0 : uVar3.f25062b) <= 8192) {
                        uVar.g(uVar3, (int) j10);
                        c3089c.f24985c -= j10;
                        this.f24985c += j10;
                        return;
                    }
                }
                c3089c.f24984b = uVar.e((int) j10);
            }
            u uVar4 = c3089c.f24984b;
            long j11 = uVar4.f25063c - uVar4.f25062b;
            c3089c.f24984b = uVar4.b();
            u uVar5 = this.f24984b;
            if (uVar5 == null) {
                this.f24984b = uVar4;
                uVar4.f25067g = uVar4;
                uVar4.f25066f = uVar4;
            } else {
                uVar5.f25067g.c(uVar4).a();
            }
            c3089c.f24985c -= j11;
            this.f24985c += j11;
            j10 -= j11;
        }
    }

    @Override
    public int h2() {
        return B.c(readInt());
    }

    public int hashCode() {
        u uVar = this.f24984b;
        if (uVar == null) {
            return 0;
        }
        int i10 = 1;
        do {
            int i11 = uVar.f25063c;
            for (int i12 = uVar.f25062b; i12 < i11; i12++) {
                i10 = (i10 * 31) + uVar.f25061a[i12];
            }
            uVar = uVar.f25066f;
        } while (uVar != this.f24984b);
        return i10;
    }

    @Override
    public boolean i(long j10) {
        return this.f24985c >= j10;
    }

    @Override
    public C3089c M(int i10) {
        return writeInt(B.c(i10));
    }

    @Override
    public boolean isOpen() {
        return true;
    }

    public final f j(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            u uVar = this.f24984b;
            if (uVar != null) {
                byte[] bArr = uVar.f25061a;
                int i10 = uVar.f25062b;
                messageDigest.update(bArr, i10, uVar.f25063c - i10);
                u uVar2 = this.f24984b;
                while (true) {
                    uVar2 = uVar2.f25066f;
                    if (uVar2 == this.f24984b) {
                        break;
                    }
                    byte[] bArr2 = uVar2.f25061a;
                    int i11 = uVar2.f25062b;
                    messageDigest.update(bArr2, i11, uVar2.f25063c - i11);
                }
            }
            return f.J(messageDigest.digest());
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    @Override
    public C3089c writeLong(long j10) {
        u V10 = V(8);
        byte[] bArr = V10.f25061a;
        int i10 = V10.f25063c;
        bArr[i10] = (byte) ((j10 >>> 56) & 255);
        bArr[i10 + 1] = (byte) ((j10 >>> 48) & 255);
        bArr[i10 + 2] = (byte) ((j10 >>> 40) & 255);
        bArr[i10 + 3] = (byte) ((j10 >>> 32) & 255);
        bArr[i10 + 4] = (byte) ((j10 >>> 24) & 255);
        bArr[i10 + 5] = (byte) ((j10 >>> 16) & 255);
        bArr[i10 + 6] = (byte) ((j10 >>> 8) & 255);
        bArr[i10 + 7] = (byte) (j10 & 255);
        V10.f25063c = i10 + 8;
        this.f24985c += 8;
        return this;
    }

    @Override
    public InputStream j2() {
        return new b();
    }

    @Override
    public C3089c W() {
        return this;
    }

    @Override
    public C3089c E(long j10) {
        return writeLong(B.d(j10));
    }

    public final byte l(long j10) {
        int i10;
        B.b(this.f24985c, j10, 1L);
        long j11 = this.f24985c;
        if (j11 - j10 <= j10) {
            long j12 = j10 - j11;
            u uVar = this.f24984b;
            do {
                uVar = uVar.f25067g;
                int i11 = uVar.f25063c;
                i10 = uVar.f25062b;
                j12 += i11 - i10;
            } while (j12 < 0);
            return uVar.f25061a[i10 + ((int) j12)];
        }
        u uVar2 = this.f24984b;
        while (true) {
            int i12 = uVar2.f25063c;
            int i13 = uVar2.f25062b;
            long j13 = i12 - i13;
            if (j10 < j13) {
                return uVar2.f25061a[i13 + ((int) j10)];
            }
            j10 -= j13;
            uVar2 = uVar2.f25066f;
        }
    }

    public final f m(String str, f fVar) {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(fVar.a0(), str));
            u uVar = this.f24984b;
            if (uVar != null) {
                byte[] bArr = uVar.f25061a;
                int i10 = uVar.f25062b;
                mac.update(bArr, i10, uVar.f25063c - i10);
                u uVar2 = this.f24984b;
                while (true) {
                    uVar2 = uVar2.f25066f;
                    if (uVar2 == this.f24984b) {
                        break;
                    }
                    byte[] bArr2 = uVar2.f25061a;
                    int i11 = uVar2.f25062b;
                    mac.update(bArr2, i11, uVar2.f25063c - i11);
                }
            }
            return f.J(mac.doFinal());
        } catch (InvalidKeyException e10) {
            throw new IllegalArgumentException(e10);
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    @Override
    public C3089c writeShort(int i10) {
        u V10 = V(2);
        byte[] bArr = V10.f25061a;
        int i11 = V10.f25063c;
        bArr[i11] = (byte) ((i10 >>> 8) & 255);
        bArr[i11 + 1] = (byte) (i10 & 255);
        V10.f25063c = i11 + 2;
        this.f24985c += 2;
        return this;
    }

    public final f n(f fVar) {
        return m("HmacSHA1", fVar);
    }

    @Override
    public C3089c O(int i10) {
        return writeShort(B.e((short) i10));
    }

    public final f o(f fVar) {
        return m(KeyProperties.KEY_ALGORITHM_HMAC_SHA256, fVar);
    }

    @Override
    public C3089c I(String str, int i10, int i11, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i10 < 0) {
            throw new IllegalAccessError("beginIndex < 0: " + i10);
        }
        if (i11 < i10) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i11 + " < " + i10);
        }
        if (i11 <= str.length()) {
            if (charset == null) {
                throw new IllegalArgumentException("charset == null");
            }
            if (charset.equals(B.f24968a)) {
                return F(str, i10, i11);
            }
            byte[] bytes = str.substring(i10, i11).getBytes(charset);
            return write(bytes, 0, bytes.length);
        }
        throw new IllegalArgumentException("endIndex > string.length: " + i11 + " > " + str.length());
    }

    public final f p(f fVar) {
        return m(KeyProperties.KEY_ALGORITHM_HMAC_SHA512, fVar);
    }

    @Override
    public C3089c l0(String str, Charset charset) {
        return I(str, 0, str.length(), charset);
    }

    @Override
    public long p1(byte b10) {
        return J1(b10, 0L, Long.MAX_VALUE);
    }

    public final f q() {
        return j(KeyProperties.DIGEST_MD5);
    }

    public final C3089c q0(OutputStream outputStream) throws IOException {
        return r0(outputStream, this.f24985c);
    }

    @Override
    public long q1(byte b10, long j10) {
        return J1(b10, j10, Long.MAX_VALUE);
    }

    public final boolean r(u uVar, int i10, f fVar, int i11, int i12) {
        int i13 = uVar.f25063c;
        byte[] bArr = uVar.f25061a;
        while (i11 < i12) {
            if (i10 == i13) {
                uVar = uVar.f25066f;
                byte[] bArr2 = uVar.f25061a;
                bArr = bArr2;
                i10 = uVar.f25062b;
                i13 = uVar.f25063c;
            }
            if (bArr[i10] != fVar.r(i11)) {
                return false;
            }
            i10++;
            i11++;
        }
        return true;
    }

    public final C3089c r0(OutputStream outputStream, long j10) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        B.b(this.f24985c, 0L, j10);
        u uVar = this.f24984b;
        while (j10 > 0) {
            int min = (int) Math.min(j10, uVar.f25063c - uVar.f25062b);
            outputStream.write(uVar.f25061a, uVar.f25062b, min);
            int i10 = uVar.f25062b + min;
            uVar.f25062b = i10;
            long j11 = min;
            this.f24985c -= j11;
            j10 -= j11;
            if (i10 == uVar.f25063c) {
                u b10 = uVar.b();
                this.f24984b = b10;
                v.a(uVar);
                uVar = b10;
            }
        }
        return this;
    }

    @Override
    @Nullable
    public String r1() throws EOFException {
        long p12 = p1((byte) 10);
        if (p12 != -1) {
            return z(p12);
        }
        long j10 = this.f24985c;
        if (j10 != 0) {
            return w1(j10);
        }
        return null;
    }

    @Override
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override
    public byte readByte() {
        long j10 = this.f24985c;
        if (j10 == 0) {
            throw new IllegalStateException("size == 0");
        }
        u uVar = this.f24984b;
        int i10 = uVar.f25062b;
        int i11 = uVar.f25063c;
        int i12 = i10 + 1;
        byte b10 = uVar.f25061a[i10];
        this.f24985c = j10 - 1;
        if (i12 == i11) {
            this.f24984b = uVar.b();
            v.a(uVar);
        } else {
            uVar.f25062b = i12;
        }
        return b10;
    }

    @Override
    public void readFully(byte[] bArr) throws EOFException {
        int i10 = 0;
        while (i10 < bArr.length) {
            int read = read(bArr, i10, bArr.length - i10);
            if (read == -1) {
                throw new EOFException();
            }
            i10 += read;
        }
    }

    @Override
    public int readInt() {
        long j10 = this.f24985c;
        if (j10 < 4) {
            throw new IllegalStateException("size < 4: " + this.f24985c);
        }
        u uVar = this.f24984b;
        int i10 = uVar.f25062b;
        int i11 = uVar.f25063c;
        if (i11 - i10 < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = uVar.f25061a;
        int i12 = i10 + 3;
        int i13 = ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 2] & 255) << 8);
        int i14 = i10 + 4;
        int i15 = (bArr[i12] & 255) | i13;
        this.f24985c = j10 - 4;
        if (i14 == i11) {
            this.f24984b = uVar.b();
            v.a(uVar);
        } else {
            uVar.f25062b = i14;
        }
        return i15;
    }

    @Override
    public long readLong() {
        long j10 = this.f24985c;
        if (j10 < 8) {
            throw new IllegalStateException("size < 8: " + this.f24985c);
        }
        u uVar = this.f24984b;
        int i10 = uVar.f25062b;
        int i11 = uVar.f25063c;
        if (i11 - i10 < 8) {
            return ((readInt() & 4294967295L) << 32) | (4294967295L & readInt());
        }
        byte[] bArr = uVar.f25061a;
        int i12 = i10 + 7;
        long j11 = ((bArr[i10 + 1] & 255) << 48) | ((bArr[i10] & 255) << 56) | ((bArr[i10 + 2] & 255) << 40) | ((bArr[i10 + 3] & 255) << 32) | ((bArr[i10 + 4] & 255) << 24) | ((bArr[i10 + 5] & 255) << 16) | ((bArr[i10 + 6] & 255) << 8);
        int i13 = i10 + 8;
        long j12 = j11 | (bArr[i12] & 255);
        this.f24985c = j10 - 8;
        if (i13 == i11) {
            this.f24984b = uVar.b();
            v.a(uVar);
        } else {
            uVar.f25062b = i13;
        }
        return j12;
    }

    @Override
    public short readShort() {
        long j10 = this.f24985c;
        if (j10 < 2) {
            throw new IllegalStateException("size < 2: " + this.f24985c);
        }
        u uVar = this.f24984b;
        int i10 = uVar.f25062b;
        int i11 = uVar.f25063c;
        if (i11 - i10 < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        byte[] bArr = uVar.f25061a;
        int i12 = i10 + 1;
        int i13 = (bArr[i10] & 255) << 8;
        int i14 = i10 + 2;
        int i15 = (bArr[i12] & 255) | i13;
        this.f24985c = j10 - 2;
        if (i14 == i11) {
            this.f24984b = uVar.b();
            v.a(uVar);
        } else {
            uVar.f25062b = i14;
        }
        return (short) i15;
    }

    public final C0708c s() {
        return t(new C0708c());
    }

    @Override
    public OutputStream s0() {
        return new a();
    }

    @Override
    public long s1(f fVar, long j10) {
        int i10;
        int i11;
        long j11 = 0;
        if (j10 < 0) {
            throw new IllegalArgumentException("fromIndex < 0");
        }
        u uVar = this.f24984b;
        if (uVar == null) {
            return -1L;
        }
        long j12 = this.f24985c;
        if (j12 - j10 < j10) {
            while (j12 > j10) {
                uVar = uVar.f25067g;
                j12 -= uVar.f25063c - uVar.f25062b;
            }
        } else {
            while (true) {
                long j13 = (uVar.f25063c - uVar.f25062b) + j11;
                if (j13 >= j10) {
                    break;
                }
                uVar = uVar.f25066f;
                j11 = j13;
            }
            j12 = j11;
        }
        if (fVar.S() == 2) {
            byte r10 = fVar.r(0);
            byte r11 = fVar.r(1);
            while (j12 < this.f24985c) {
                byte[] bArr = uVar.f25061a;
                i10 = (int) ((uVar.f25062b + j10) - j12);
                int i12 = uVar.f25063c;
                while (i10 < i12) {
                    byte b10 = bArr[i10];
                    if (b10 == r10 || b10 == r11) {
                        i11 = uVar.f25062b;
                        return (i10 - i11) + j12;
                    }
                    i10++;
                }
                j12 += uVar.f25063c - uVar.f25062b;
                uVar = uVar.f25066f;
                j10 = j12;
            }
            return -1L;
        }
        byte[] C10 = fVar.C();
        while (j12 < this.f24985c) {
            byte[] bArr2 = uVar.f25061a;
            i10 = (int) ((uVar.f25062b + j10) - j12);
            int i13 = uVar.f25063c;
            while (i10 < i13) {
                byte b11 = bArr2[i10];
                for (byte b12 : C10) {
                    if (b11 == b12) {
                        i11 = uVar.f25062b;
                        return (i10 - i11) + j12;
                    }
                }
                i10++;
            }
            j12 += uVar.f25063c - uVar.f25062b;
            uVar = uVar.f25066f;
            j10 = j12;
        }
        return -1L;
    }

    @Override
    public void skip(long j10) throws EOFException {
        while (j10 > 0) {
            if (this.f24984b == null) {
                throw new EOFException();
            }
            int min = (int) Math.min(j10, r0.f25063c - r0.f25062b);
            long j11 = min;
            this.f24985c -= j11;
            j10 -= j11;
            u uVar = this.f24984b;
            int i10 = uVar.f25062b + min;
            uVar.f25062b = i10;
            if (i10 == uVar.f25063c) {
                this.f24984b = uVar.b();
                v.a(uVar);
            }
        }
    }

    public final C0708c t(C0708c c0708c) {
        if (c0708c.f24988b != null) {
            throw new IllegalStateException("already attached to a buffer");
        }
        c0708c.f24988b = this;
        c0708c.f24989c = true;
        return c0708c;
    }

    @Override
    public d t0(y yVar, long j10) throws IOException {
        while (j10 > 0) {
            long K10 = yVar.K(this, j10);
            if (K10 == -1) {
                throw new EOFException();
            }
            j10 -= K10;
        }
        return this;
    }

    @Override
    public long t1(f fVar, long j10) throws IOException {
        byte[] bArr;
        if (fVar.S() == 0) {
            throw new IllegalArgumentException("bytes is empty");
        }
        long j11 = 0;
        if (j10 < 0) {
            throw new IllegalArgumentException("fromIndex < 0");
        }
        u uVar = this.f24984b;
        long j12 = -1;
        if (uVar == null) {
            return -1L;
        }
        long j13 = this.f24985c;
        if (j13 - j10 < j10) {
            while (j13 > j10) {
                uVar = uVar.f25067g;
                j13 -= uVar.f25063c - uVar.f25062b;
            }
        } else {
            while (true) {
                long j14 = (uVar.f25063c - uVar.f25062b) + j11;
                if (j14 >= j10) {
                    break;
                }
                uVar = uVar.f25066f;
                j11 = j14;
            }
            j13 = j11;
        }
        byte r10 = fVar.r(0);
        int S10 = fVar.S();
        long j15 = 1 + (this.f24985c - S10);
        long j16 = j10;
        u uVar2 = uVar;
        long j17 = j13;
        while (j17 < j15) {
            byte[] bArr2 = uVar2.f25061a;
            int min = (int) Math.min(uVar2.f25063c, (uVar2.f25062b + j15) - j17);
            int i10 = (int) ((uVar2.f25062b + j16) - j17);
            while (i10 < min) {
                if (bArr2[i10] == r10) {
                    bArr = bArr2;
                    if (r(uVar2, i10 + 1, fVar, 1, S10)) {
                        return (i10 - uVar2.f25062b) + j17;
                    }
                } else {
                    bArr = bArr2;
                }
                i10++;
                bArr2 = bArr;
            }
            j17 += uVar2.f25063c - uVar2.f25062b;
            uVar2 = uVar2.f25066f;
            j16 = j17;
            j12 = -1;
        }
        return j12;
    }

    public String toString() {
        return R().toString();
    }

    public final C3089c u(InputStream inputStream) throws IOException {
        w(inputStream, Long.MAX_VALUE, true);
        return this;
    }

    @Override
    public C3089c X(String str) {
        return F(str, 0, str.length());
    }

    @Override
    public short u1() {
        return B.e(readShort());
    }

    public final C3089c v(InputStream inputStream, long j10) throws IOException {
        if (j10 >= 0) {
            w(inputStream, j10, false);
            return this;
        }
        throw new IllegalArgumentException("byteCount < 0: " + j10);
    }

    @Override
    public C3089c F(String str, int i10, int i11) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("beginIndex < 0: " + i10);
        }
        if (i11 < i10) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i11 + " < " + i10);
        }
        if (i11 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i11 + " > " + str.length());
        }
        while (i10 < i11) {
            char charAt = str.charAt(i10);
            if (charAt < '\u0080') {
                u V10 = V(1);
                byte[] bArr = V10.f25061a;
                int i12 = V10.f25063c - i10;
                int min = Math.min(i11, 8192 - i12);
                int i13 = i10 + 1;
                bArr[i10 + i12] = (byte) charAt;
                while (i13 < min) {
                    char charAt2 = str.charAt(i13);
                    if (charAt2 >= '\u0080') {
                        break;
                    }
                    bArr[i13 + i12] = (byte) charAt2;
                    i13++;
                }
                int i14 = V10.f25063c;
                int i15 = (i12 + i13) - i14;
                V10.f25063c = i14 + i15;
                this.f24985c += i15;
                i10 = i13;
            } else {
                if (charAt < '\u0800') {
                    writeByte((charAt >> 6) | 192);
                    writeByte((charAt & '?') | 128);
                } else if (charAt < '\ud800' || charAt > '\udfff') {
                    writeByte((charAt >> '\f') | 224);
                    writeByte(((charAt >> 6) & 63) | 128);
                    writeByte((charAt & '?') | 128);
                } else {
                    int i16 = i10 + 1;
                    char charAt3 = i16 < i11 ? str.charAt(i16) : (char) 0;
                    if (charAt > '\udbff' || charAt3 < '\udc00' || charAt3 > '\udfff') {
                        writeByte(63);
                        i10 = i16;
                    } else {
                        int i17 = (((charAt & '\u27ff') << 10) | ('\u23ff' & charAt3)) + 65536;
                        writeByte((i17 >> 18) | 240);
                        writeByte(((i17 >> 12) & 63) | 128);
                        writeByte(((i17 >> 6) & 63) | 128);
                        writeByte((i17 & 63) | 128);
                        i10 += 2;
                    }
                }
                i10++;
            }
        }
        return this;
    }

    @Override
    public long v1() {
        return B.d(readLong());
    }

    public final void w(InputStream inputStream, long j10, boolean z10) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        while (true) {
            if (j10 <= 0 && !z10) {
                return;
            }
            u V10 = V(1);
            int read = inputStream.read(V10.f25061a, V10.f25063c, (int) Math.min(j10, 8192 - V10.f25063c));
            if (read == -1) {
                if (!z10) {
                    throw new EOFException();
                }
                return;
            } else {
                V10.f25063c += read;
                long j11 = read;
                this.f24985c += j11;
                j10 -= j11;
            }
        }
    }

    @Override
    public C3089c U(int i10) {
        if (i10 < 128) {
            writeByte(i10);
        } else if (i10 < 2048) {
            writeByte((i10 >> 6) | 192);
            writeByte((i10 & 63) | 128);
        } else if (i10 < 65536) {
            if (i10 < 55296 || i10 > 57343) {
                writeByte((i10 >> 12) | 224);
                writeByte(((i10 >> 6) & 63) | 128);
                writeByte((i10 & 63) | 128);
            } else {
                writeByte(63);
            }
        } else {
            if (i10 > 1114111) {
                throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i10));
            }
            writeByte((i10 >> 18) | 240);
            writeByte(((i10 >> 12) & 63) | 128);
            writeByte(((i10 >> 6) & 63) | 128);
            writeByte((i10 & 63) | 128);
        }
        return this;
    }

    @Override
    public String w1(long j10) throws EOFException {
        return E1(j10, B.f24968a);
    }

    public final C0708c x() {
        return y(new C0708c());
    }

    @Override
    public f x1(long j10) throws EOFException {
        return new f(M1(j10));
    }

    public final C0708c y(C0708c c0708c) {
        if (c0708c.f24988b != null) {
            throw new IllegalStateException("already attached to a buffer");
        }
        c0708c.f24988b = this;
        c0708c.f24989c = false;
        return c0708c;
    }

    @Override
    public boolean y1(long j10, f fVar, int i10, int i11) {
        if (j10 < 0 || i10 < 0 || i11 < 0 || this.f24985c - j10 < i11 || fVar.S() - i10 < i11) {
            return false;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            if (l(i12 + j10) != fVar.r(i10 + i12)) {
                return false;
            }
        }
        return true;
    }

    public String z(long j10) throws EOFException {
        if (j10 > 0) {
            long j11 = j10 - 1;
            if (l(j11) == 13) {
                String w12 = w1(j11);
                skip(2L);
                return w12;
            }
        }
        String w13 = w1(j10);
        skip(1L);
        return w13;
    }

    @Override
    public byte[] z1() {
        try {
            return M1(this.f24985c);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        B.b(bArr.length, i10, i11);
        u uVar = this.f24984b;
        if (uVar == null) {
            return -1;
        }
        int min = Math.min(i11, uVar.f25063c - uVar.f25062b);
        System.arraycopy(uVar.f25061a, uVar.f25062b, bArr, i10, min);
        int i12 = uVar.f25062b + min;
        uVar.f25062b = i12;
        this.f24985c -= min;
        if (i12 == uVar.f25063c) {
            this.f24984b = uVar.b();
            v.a(uVar);
        }
        return min;
    }

    @Override
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer != null) {
            int remaining = byteBuffer.remaining();
            int i10 = remaining;
            while (i10 > 0) {
                u V10 = V(1);
                int min = Math.min(i10, 8192 - V10.f25063c);
                byteBuffer.get(V10.f25061a, V10.f25063c, min);
                i10 -= min;
                V10.f25063c += min;
            }
            this.f24985c += remaining;
            return remaining;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override
    public int read(ByteBuffer byteBuffer) throws IOException {
        u uVar = this.f24984b;
        if (uVar == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), uVar.f25063c - uVar.f25062b);
        byteBuffer.put(uVar.f25061a, uVar.f25062b, min);
        int i10 = uVar.f25062b + min;
        uVar.f25062b = i10;
        this.f24985c -= min;
        if (i10 == uVar.f25063c) {
            this.f24984b = uVar.b();
            v.a(uVar);
        }
        return min;
    }
}
