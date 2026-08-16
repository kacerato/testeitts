package com.google.protobuf;

import android.content.Context;
import com.google.protobuf.InterfaceC12659b1;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public abstract class C {

    public static final int f67828f = 4096;

    public static final int f67829g = Integer.MAX_VALUE;

    public static volatile int f67830h = 100;

    public int f67831a;

    public int f67832b;

    public int f67833c;

    public D f67834d;

    public boolean f67835e;

    public static final class b extends C {

        public final byte[] f67836i;

        public final boolean f67837j;

        public int f67838k;

        public int f67839l;

        public int f67840m;

        public int f67841n;

        public int f67842o;

        public boolean f67843p;

        public int f67844q;

        @Override
        public int A() throws IOException {
            return O();
        }

        @Override
        public int B() throws IOException {
            return M();
        }

        @Override
        public long C() throws IOException {
            return N();
        }

        @Override
        public float D() throws IOException {
            return Float.intBitsToFloat(M());
        }

        @Override
        public <T extends InterfaceC12659b1> T E(final int fieldNumber, final InterfaceC12723w1<T> parser, final C12666d0 extensionRegistry) throws IOException {
            b();
            this.f67831a++;
            T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistry);
            a(A2.c(fieldNumber, 4));
            this.f67831a--;
            return parsePartialFrom;
        }

        @Override
        public void F(final int fieldNumber, final InterfaceC12659b1.a builder, final C12666d0 extensionRegistry) throws IOException {
            b();
            this.f67831a++;
            builder.mergeFrom(this, extensionRegistry);
            a(A2.c(fieldNumber, 4));
            this.f67831a--;
        }

        @Override
        public int G() throws IOException {
            return O();
        }

        @Override
        public long H() throws IOException {
            return R();
        }

        @Override
        public <T extends InterfaceC12659b1> T I(final InterfaceC12723w1<T> parser, final C12666d0 extensionRegistry) throws IOException {
            int O10 = O();
            b();
            int u10 = u(O10);
            this.f67831a++;
            T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistry);
            a(0);
            this.f67831a--;
            if (g() != 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            t(u10);
            return parsePartialFrom;
        }

        @Override
        public void J(final InterfaceC12659b1.a builder, final C12666d0 extensionRegistry) throws IOException {
            int O10 = O();
            b();
            int u10 = u(O10);
            this.f67831a++;
            builder.mergeFrom(this, extensionRegistry);
            a(0);
            this.f67831a--;
            if (g() != 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            t(u10);
        }

        @Override
        public byte K() throws IOException {
            int i10 = this.f67840m;
            if (i10 == this.f67838k) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            byte[] bArr = this.f67836i;
            this.f67840m = i10 + 1;
            return bArr[i10];
        }

        @Override
        public byte[] L(final int length) throws IOException {
            if (length > 0) {
                int i10 = this.f67838k;
                int i11 = this.f67840m;
                if (length <= i10 - i11) {
                    int i12 = length + i11;
                    this.f67840m = i12;
                    return Arrays.copyOfRange(this.f67836i, i11, i12);
                }
            }
            if (length > 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (length == 0) {
                return D0.f67925e;
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override
        public int M() throws IOException {
            int i10 = this.f67840m;
            if (this.f67838k - i10 < 4) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            byte[] bArr = this.f67836i;
            this.f67840m = i10 + 4;
            return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
        }

        @Override
        public long N() throws IOException {
            int i10 = this.f67840m;
            if (this.f67838k - i10 < 8) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            byte[] bArr = this.f67836i;
            this.f67840m = i10 + 8;
            return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
        }

        @Override
        public int O() throws IOException {
            int i10;
            int i11 = this.f67840m;
            int i12 = this.f67838k;
            if (i12 != i11) {
                byte[] bArr = this.f67836i;
                int i13 = i11 + 1;
                byte b10 = bArr[i11];
                if (b10 >= 0) {
                    this.f67840m = i13;
                    return b10;
                }
                if (i12 - i13 >= 9) {
                    int i14 = i11 + 2;
                    int i15 = (bArr[i13] << 7) ^ b10;
                    if (i15 < 0) {
                        i10 = i15 ^ (-128);
                    } else {
                        int i16 = i11 + 3;
                        int i17 = (bArr[i14] << 14) ^ i15;
                        if (i17 >= 0) {
                            i10 = i17 ^ 16256;
                        } else {
                            int i18 = i11 + 4;
                            int i19 = i17 ^ (bArr[i16] << 21);
                            if (i19 < 0) {
                                i10 = (-2080896) ^ i19;
                            } else {
                                i16 = i11 + 5;
                                byte b11 = bArr[i18];
                                int i20 = (i19 ^ (b11 << 28)) ^ 266354560;
                                if (b11 < 0) {
                                    i18 = i11 + 6;
                                    if (bArr[i16] < 0) {
                                        i16 = i11 + 7;
                                        if (bArr[i18] < 0) {
                                            i18 = i11 + 8;
                                            if (bArr[i16] < 0) {
                                                i16 = i11 + 9;
                                                if (bArr[i18] < 0) {
                                                    int i21 = i11 + 10;
                                                    if (bArr[i16] >= 0) {
                                                        i14 = i21;
                                                        i10 = i20;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i10 = i20;
                                }
                                i10 = i20;
                            }
                            i14 = i18;
                        }
                        i14 = i16;
                    }
                    this.f67840m = i14;
                    return i10;
                }
            }
            return (int) S();
        }

        @Override
        public long R() throws IOException {
            long j10;
            long j11;
            long j12;
            int i10 = this.f67840m;
            int i11 = this.f67838k;
            if (i11 != i10) {
                byte[] bArr = this.f67836i;
                int i12 = i10 + 1;
                byte b10 = bArr[i10];
                if (b10 >= 0) {
                    this.f67840m = i12;
                    return b10;
                }
                if (i11 - i12 >= 9) {
                    int i13 = i10 + 2;
                    int i14 = (bArr[i12] << 7) ^ b10;
                    if (i14 < 0) {
                        j10 = i14 ^ (-128);
                    } else {
                        int i15 = i10 + 3;
                        int i16 = (bArr[i13] << 14) ^ i14;
                        if (i16 >= 0) {
                            j10 = i16 ^ 16256;
                            i13 = i15;
                        } else {
                            int i17 = i10 + 4;
                            int i18 = i16 ^ (bArr[i15] << 21);
                            if (i18 < 0) {
                                long j13 = (-2080896) ^ i18;
                                i13 = i17;
                                j10 = j13;
                            } else {
                                long j14 = i18;
                                i13 = i10 + 5;
                                long j15 = j14 ^ (bArr[i17] << 28);
                                if (j15 >= 0) {
                                    j12 = 266354560;
                                } else {
                                    int i19 = i10 + 6;
                                    long j16 = j15 ^ (bArr[i13] << 35);
                                    if (j16 < 0) {
                                        j11 = -34093383808L;
                                    } else {
                                        i13 = i10 + 7;
                                        j15 = j16 ^ (bArr[i19] << 42);
                                        if (j15 >= 0) {
                                            j12 = 4363953127296L;
                                        } else {
                                            i19 = i10 + 8;
                                            j16 = j15 ^ (bArr[i13] << 49);
                                            if (j16 < 0) {
                                                j11 = -558586000294016L;
                                            } else {
                                                i13 = i10 + 9;
                                                long j17 = (j16 ^ (bArr[i19] << 56)) ^ 71499008037633920L;
                                                if (j17 < 0) {
                                                    int i20 = i10 + 10;
                                                    if (bArr[i13] >= 0) {
                                                        i13 = i20;
                                                    }
                                                }
                                                j10 = j17;
                                            }
                                        }
                                    }
                                    j10 = j16 ^ j11;
                                    i13 = i19;
                                }
                                j10 = j15 ^ j12;
                            }
                        }
                    }
                    this.f67840m = i13;
                    return j10;
                }
            }
            return S();
        }

        @Override
        public long S() throws IOException {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                j10 |= (r3 & Byte.MAX_VALUE) << i10;
                if ((K() & 128) == 0) {
                    return j10;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override
        public int T() throws IOException {
            return M();
        }

        @Override
        public long U() throws IOException {
            return N();
        }

        @Override
        public int V() throws IOException {
            return C.c(O());
        }

        @Override
        public long W() throws IOException {
            return C.d(R());
        }

        @Override
        public String X() throws IOException {
            int O10 = O();
            if (O10 > 0) {
                int i10 = this.f67838k;
                int i11 = this.f67840m;
                if (O10 <= i10 - i11) {
                    String str = new String(this.f67836i, i11, O10, D0.f67922b);
                    this.f67840m += O10;
                    return str;
                }
            }
            if (O10 == 0) {
                return "";
            }
            if (O10 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override
        public String Y() throws IOException {
            int O10 = O();
            if (O10 > 0) {
                int i10 = this.f67838k;
                int i11 = this.f67840m;
                if (O10 <= i10 - i11) {
                    String h10 = Utf8.h(this.f67836i, i11, O10);
                    this.f67840m += O10;
                    return h10;
                }
            }
            if (O10 == 0) {
                return "";
            }
            if (O10 <= 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override
        public int Z() throws IOException {
            if (j()) {
                this.f67842o = 0;
                return 0;
            }
            int O10 = O();
            this.f67842o = O10;
            if (A2.a(O10) != 0) {
                return this.f67842o;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override
        public void a(final int value) throws InvalidProtocolBufferException {
            if (this.f67842o != value) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        @Override
        public int a0() throws IOException {
            return O();
        }

        @Override
        public long b0() throws IOException {
            return R();
        }

        @Override
        @Deprecated
        public void c0(final int fieldNumber, final InterfaceC12659b1.a builder) throws IOException {
            F(fieldNumber, builder, C12666d0.d());
        }

        @Override
        public void d0() {
            this.f67841n = this.f67840m;
        }

        @Override
        public void f(boolean enabled) {
            this.f67843p = enabled;
        }

        @Override
        public int g() {
            int i10 = this.f67844q;
            if (i10 == Integer.MAX_VALUE) {
                return -1;
            }
            return i10 - i();
        }

        @Override
        public int h() {
            return this.f67842o;
        }

        @Override
        public boolean h0(final int tag) throws IOException {
            int b10 = A2.b(tag);
            if (b10 == 0) {
                o0();
                return true;
            }
            if (b10 == 1) {
                l0(8);
                return true;
            }
            if (b10 == 2) {
                l0(O());
                return true;
            }
            if (b10 == 3) {
                j0();
                a(A2.c(A2.a(tag), 4));
                return true;
            }
            if (b10 == 4) {
                return false;
            }
            if (b10 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            l0(4);
            return true;
        }

        @Override
        public int i() {
            return this.f67840m - this.f67841n;
        }

        @Override
        public boolean i0(final int tag, final CodedOutputStream output) throws IOException {
            int b10 = A2.b(tag);
            if (b10 == 0) {
                long H10 = H();
                output.h2(tag);
                output.i2(H10);
                return true;
            }
            if (b10 == 1) {
                long N10 = N();
                output.h2(tag);
                output.D1(N10);
                return true;
            }
            if (b10 == 2) {
                AbstractC12724x y10 = y();
                output.h2(tag);
                output.z1(y10);
                return true;
            }
            if (b10 == 3) {
                output.h2(tag);
                k0(output);
                int c10 = A2.c(A2.a(tag), 4);
                a(c10);
                output.h2(c10);
                return true;
            }
            if (b10 == 4) {
                return false;
            }
            if (b10 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int M10 = M();
            output.h2(tag);
            output.C1(M10);
            return true;
        }

        @Override
        public boolean j() throws IOException {
            return this.f67840m == this.f67838k;
        }

        @Override
        public void j0() throws IOException {
            int Z10;
            do {
                Z10 = Z();
                if (Z10 == 0) {
                    return;
                }
            } while (h0(Z10));
        }

        @Override
        public void k0(CodedOutputStream output) throws IOException {
            int Z10;
            do {
                Z10 = Z();
                if (Z10 == 0) {
                    return;
                }
            } while (i0(Z10, output));
        }

        @Override
        public void l0(final int length) throws IOException {
            if (length >= 0) {
                int i10 = this.f67838k;
                int i11 = this.f67840m;
                if (length <= i10 - i11) {
                    this.f67840m = i11 + length;
                    return;
                }
            }
            if (length >= 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        public final void n0() {
            int i10 = this.f67838k + this.f67839l;
            this.f67838k = i10;
            int i11 = i10 - this.f67841n;
            int i12 = this.f67844q;
            if (i11 <= i12) {
                this.f67839l = 0;
                return;
            }
            int i13 = i11 - i12;
            this.f67839l = i13;
            this.f67838k = i10 - i13;
        }

        public final void o0() throws IOException {
            if (this.f67838k - this.f67840m >= 10) {
                p0();
            } else {
                q0();
            }
        }

        public final void p0() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                byte[] bArr = this.f67836i;
                int i11 = this.f67840m;
                this.f67840m = i11 + 1;
                if (bArr[i11] >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        public final void q0() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (K() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override
        public void t(final int oldLimit) {
            this.f67844q = oldLimit;
            n0();
        }

        @Override
        public int u(int byteLimit) throws InvalidProtocolBufferException {
            if (byteLimit < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int i10 = byteLimit + i();
            if (i10 < 0) {
                throw InvalidProtocolBufferException.parseFailure();
            }
            int i11 = this.f67844q;
            if (i10 > i11) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f67844q = i10;
            n0();
            return i11;
        }

        @Override
        public boolean v() throws IOException {
            return R() != 0;
        }

        @Override
        public byte[] w() throws IOException {
            return L(O());
        }

        @Override
        public ByteBuffer x() throws IOException {
            int O10 = O();
            if (O10 > 0) {
                int i10 = this.f67838k;
                int i11 = this.f67840m;
                if (O10 <= i10 - i11) {
                    ByteBuffer wrap = (this.f67837j || !this.f67843p) ? ByteBuffer.wrap(Arrays.copyOfRange(this.f67836i, i11, i11 + O10)) : ByteBuffer.wrap(this.f67836i, i11, O10).slice();
                    this.f67840m += O10;
                    return wrap;
                }
            }
            if (O10 == 0) {
                return D0.f67926f;
            }
            if (O10 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override
        public AbstractC12724x y() throws IOException {
            int O10 = O();
            if (O10 > 0) {
                int i10 = this.f67838k;
                int i11 = this.f67840m;
                if (O10 <= i10 - i11) {
                    AbstractC12724x l02 = (this.f67837j && this.f67843p) ? AbstractC12724x.l0(this.f67836i, i11, O10) : AbstractC12724x.v(this.f67836i, i11, O10);
                    this.f67840m += O10;
                    return l02;
                }
            }
            return O10 == 0 ? AbstractC12724x.f69696g : AbstractC12724x.k0(L(O10));
        }

        @Override
        public double z() throws IOException {
            return Double.longBitsToDouble(N());
        }

        public b(final byte[] buffer, final int offset, final int len, boolean immutable) {
            super();
            this.f67844q = Integer.MAX_VALUE;
            this.f67836i = buffer;
            this.f67838k = len + offset;
            this.f67840m = offset;
            this.f67841n = offset;
            this.f67837j = immutable;
        }
    }

    public static final class c extends C {

        public final Iterable<ByteBuffer> f67845i;

        public final Iterator<ByteBuffer> f67846j;

        public ByteBuffer f67847k;

        public final boolean f67848l;

        public boolean f67849m;

        public int f67850n;

        public int f67851o;

        public int f67852p;

        public int f67853q;

        public int f67854r;

        public int f67855s;

        public long f67856t;

        public long f67857u;

        public long f67858v;

        public long f67859w;

        private void q0() {
            int i10 = this.f67850n + this.f67851o;
            this.f67850n = i10;
            int i11 = i10 - this.f67855s;
            int i12 = this.f67852p;
            if (i11 <= i12) {
                this.f67851o = 0;
                return;
            }
            int i13 = i11 - i12;
            this.f67851o = i13;
            this.f67850n = i10 - i13;
        }

        private void s0() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (K() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override
        public int A() throws IOException {
            return O();
        }

        @Override
        public int B() throws IOException {
            return M();
        }

        @Override
        public long C() throws IOException {
            return N();
        }

        @Override
        public float D() throws IOException {
            return Float.intBitsToFloat(M());
        }

        @Override
        public <T extends InterfaceC12659b1> T E(final int fieldNumber, final InterfaceC12723w1<T> parser, final C12666d0 extensionRegistry) throws IOException {
            b();
            this.f67831a++;
            T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistry);
            a(A2.c(fieldNumber, 4));
            this.f67831a--;
            return parsePartialFrom;
        }

        @Override
        public void F(final int fieldNumber, final InterfaceC12659b1.a builder, final C12666d0 extensionRegistry) throws IOException {
            b();
            this.f67831a++;
            builder.mergeFrom(this, extensionRegistry);
            a(A2.c(fieldNumber, 4));
            this.f67831a--;
        }

        @Override
        public int G() throws IOException {
            return O();
        }

        @Override
        public long H() throws IOException {
            return R();
        }

        @Override
        public <T extends InterfaceC12659b1> T I(final InterfaceC12723w1<T> parser, final C12666d0 extensionRegistry) throws IOException {
            int O10 = O();
            b();
            int u10 = u(O10);
            this.f67831a++;
            T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistry);
            a(0);
            this.f67831a--;
            if (g() != 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            t(u10);
            return parsePartialFrom;
        }

        @Override
        public void J(final InterfaceC12659b1.a builder, final C12666d0 extensionRegistry) throws IOException {
            int O10 = O();
            b();
            int u10 = u(O10);
            this.f67831a++;
            builder.mergeFrom(this, extensionRegistry);
            a(0);
            this.f67831a--;
            if (g() != 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            t(u10);
        }

        @Override
        public byte K() throws IOException {
            if (n0() == 0) {
                o0();
            }
            long j10 = this.f67856t;
            this.f67856t = 1 + j10;
            return x2.A(j10);
        }

        @Override
        public byte[] L(final int length) throws IOException {
            if (length >= 0) {
                long j10 = length;
                if (j10 <= n0()) {
                    byte[] bArr = new byte[length];
                    x2.p(this.f67856t, bArr, 0L, j10);
                    this.f67856t += j10;
                    return bArr;
                }
            }
            if (length >= 0 && length <= r0()) {
                byte[] bArr2 = new byte[length];
                p0(bArr2, 0, length);
                return bArr2;
            }
            if (length > 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (length == 0) {
                return D0.f67925e;
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override
        public int M() throws IOException {
            if (n0() < 4) {
                return (K() & 255) | ((K() & 255) << 8) | ((K() & 255) << 16) | ((K() & 255) << 24);
            }
            long j10 = this.f67856t;
            this.f67856t = 4 + j10;
            return ((x2.A(j10 + 3) & 255) << 24) | (x2.A(j10) & 255) | ((x2.A(1 + j10) & 255) << 8) | ((x2.A(2 + j10) & 255) << 16);
        }

        @Override
        public long N() throws IOException {
            long K10;
            byte K11;
            if (n0() >= 8) {
                long j10 = this.f67856t;
                this.f67856t = 8 + j10;
                K10 = (x2.A(j10) & 255) | ((x2.A(1 + j10) & 255) << 8) | ((x2.A(2 + j10) & 255) << 16) | ((x2.A(3 + j10) & 255) << 24) | ((x2.A(4 + j10) & 255) << 32) | ((x2.A(5 + j10) & 255) << 40) | ((x2.A(6 + j10) & 255) << 48);
                K11 = x2.A(j10 + 7);
            } else {
                K10 = (K() & 255) | ((K() & 255) << 8) | ((K() & 255) << 16) | ((K() & 255) << 24) | ((K() & 255) << 32) | ((K() & 255) << 40) | ((K() & 255) << 48);
                K11 = K();
            }
            return ((K11 & 255) << 56) | K10;
        }

        @Override
        public int O() throws IOException {
            int i10;
            long j10 = this.f67856t;
            if (this.f67859w != j10) {
                long j11 = j10 + 1;
                byte A10 = x2.A(j10);
                if (A10 >= 0) {
                    this.f67856t++;
                    return A10;
                }
                if (this.f67859w - this.f67856t >= 10) {
                    long j12 = 2 + j10;
                    int A11 = (x2.A(j11) << 7) ^ A10;
                    if (A11 < 0) {
                        i10 = A11 ^ (-128);
                    } else {
                        long j13 = 3 + j10;
                        int A12 = (x2.A(j12) << 14) ^ A11;
                        if (A12 >= 0) {
                            i10 = A12 ^ 16256;
                        } else {
                            long j14 = 4 + j10;
                            int A13 = A12 ^ (x2.A(j13) << 21);
                            if (A13 < 0) {
                                i10 = (-2080896) ^ A13;
                            } else {
                                j13 = 5 + j10;
                                byte A14 = x2.A(j14);
                                int i11 = (A13 ^ (A14 << 28)) ^ 266354560;
                                if (A14 < 0) {
                                    j14 = 6 + j10;
                                    if (x2.A(j13) < 0) {
                                        j13 = 7 + j10;
                                        if (x2.A(j14) < 0) {
                                            j14 = 8 + j10;
                                            if (x2.A(j13) < 0) {
                                                j13 = 9 + j10;
                                                if (x2.A(j14) < 0) {
                                                    long j15 = j10 + 10;
                                                    if (x2.A(j13) >= 0) {
                                                        i10 = i11;
                                                        j12 = j15;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i10 = i11;
                                }
                                i10 = i11;
                            }
                            j12 = j14;
                        }
                        j12 = j13;
                    }
                    this.f67856t = j12;
                    return i10;
                }
            }
            return (int) S();
        }

        @Override
        public long R() throws IOException {
            long j10;
            long j11;
            long j12;
            long j13 = this.f67856t;
            if (this.f67859w != j13) {
                long j14 = j13 + 1;
                byte A10 = x2.A(j13);
                if (A10 >= 0) {
                    this.f67856t++;
                    return A10;
                }
                if (this.f67859w - this.f67856t >= 10) {
                    long j15 = 2 + j13;
                    int A11 = (x2.A(j14) << 7) ^ A10;
                    if (A11 < 0) {
                        j10 = A11 ^ (-128);
                    } else {
                        long j16 = 3 + j13;
                        int A12 = (x2.A(j15) << 14) ^ A11;
                        if (A12 >= 0) {
                            j10 = A12 ^ 16256;
                            j15 = j16;
                        } else {
                            long j17 = 4 + j13;
                            int A13 = A12 ^ (x2.A(j16) << 21);
                            if (A13 < 0) {
                                j10 = (-2080896) ^ A13;
                                j15 = j17;
                            } else {
                                long j18 = 5 + j13;
                                long A14 = (x2.A(j17) << 28) ^ A13;
                                if (A14 >= 0) {
                                    j12 = 266354560;
                                } else {
                                    long j19 = 6 + j13;
                                    long A15 = A14 ^ (x2.A(j18) << 35);
                                    if (A15 < 0) {
                                        j11 = -34093383808L;
                                    } else {
                                        j18 = 7 + j13;
                                        A14 = A15 ^ (x2.A(j19) << 42);
                                        if (A14 >= 0) {
                                            j12 = 4363953127296L;
                                        } else {
                                            j19 = 8 + j13;
                                            A15 = A14 ^ (x2.A(j18) << 49);
                                            if (A15 < 0) {
                                                j11 = -558586000294016L;
                                            } else {
                                                j18 = 9 + j13;
                                                long A16 = (A15 ^ (x2.A(j19) << 56)) ^ 71499008037633920L;
                                                if (A16 < 0) {
                                                    long j20 = j13 + 10;
                                                    if (x2.A(j18) >= 0) {
                                                        j10 = A16;
                                                        j15 = j20;
                                                    }
                                                } else {
                                                    j10 = A16;
                                                    j15 = j18;
                                                }
                                            }
                                        }
                                    }
                                    j10 = j11 ^ A15;
                                    j15 = j19;
                                }
                                j10 = j12 ^ A14;
                                j15 = j18;
                            }
                        }
                    }
                    this.f67856t = j15;
                    return j10;
                }
            }
            return S();
        }

        @Override
        public long S() throws IOException {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                j10 |= (r3 & Byte.MAX_VALUE) << i10;
                if ((K() & 128) == 0) {
                    return j10;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override
        public int T() throws IOException {
            return M();
        }

        @Override
        public long U() throws IOException {
            return N();
        }

        @Override
        public int V() throws IOException {
            return C.c(O());
        }

        @Override
        public long W() throws IOException {
            return C.d(R());
        }

        @Override
        public String X() throws IOException {
            int O10 = O();
            if (O10 > 0) {
                long j10 = O10;
                long j11 = this.f67859w;
                long j12 = this.f67856t;
                if (j10 <= j11 - j12) {
                    byte[] bArr = new byte[O10];
                    x2.p(j12, bArr, 0L, j10);
                    String str = new String(bArr, D0.f67922b);
                    this.f67856t += j10;
                    return str;
                }
            }
            if (O10 > 0 && O10 <= r0()) {
                byte[] bArr2 = new byte[O10];
                p0(bArr2, 0, O10);
                return new String(bArr2, D0.f67922b);
            }
            if (O10 == 0) {
                return "";
            }
            if (O10 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override
        public String Y() throws IOException {
            int O10 = O();
            if (O10 > 0) {
                long j10 = O10;
                long j11 = this.f67859w;
                long j12 = this.f67856t;
                if (j10 <= j11 - j12) {
                    String g10 = Utf8.g(this.f67847k, (int) (j12 - this.f67857u), O10);
                    this.f67856t += j10;
                    return g10;
                }
            }
            if (O10 >= 0 && O10 <= r0()) {
                byte[] bArr = new byte[O10];
                p0(bArr, 0, O10);
                return Utf8.h(bArr, 0, O10);
            }
            if (O10 == 0) {
                return "";
            }
            if (O10 <= 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override
        public int Z() throws IOException {
            if (j()) {
                this.f67853q = 0;
                return 0;
            }
            int O10 = O();
            this.f67853q = O10;
            if (A2.a(O10) != 0) {
                return this.f67853q;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override
        public void a(final int value) throws InvalidProtocolBufferException {
            if (this.f67853q != value) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        @Override
        public int a0() throws IOException {
            return O();
        }

        @Override
        public long b0() throws IOException {
            return R();
        }

        @Override
        @Deprecated
        public void c0(final int fieldNumber, final InterfaceC12659b1.a builder) throws IOException {
            F(fieldNumber, builder, C12666d0.d());
        }

        @Override
        public void d0() {
            this.f67855s = (int) ((this.f67854r + this.f67856t) - this.f67857u);
        }

        @Override
        public void f(boolean enabled) {
            this.f67849m = enabled;
        }

        @Override
        public int g() {
            int i10 = this.f67852p;
            if (i10 == Integer.MAX_VALUE) {
                return -1;
            }
            return i10 - i();
        }

        @Override
        public int h() {
            return this.f67853q;
        }

        @Override
        public boolean h0(final int tag) throws IOException {
            int b10 = A2.b(tag);
            if (b10 == 0) {
                s0();
                return true;
            }
            if (b10 == 1) {
                l0(8);
                return true;
            }
            if (b10 == 2) {
                l0(O());
                return true;
            }
            if (b10 == 3) {
                j0();
                a(A2.c(A2.a(tag), 4));
                return true;
            }
            if (b10 == 4) {
                return false;
            }
            if (b10 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            l0(4);
            return true;
        }

        @Override
        public int i() {
            return (int) (((this.f67854r - this.f67855s) + this.f67856t) - this.f67857u);
        }

        @Override
        public boolean i0(final int tag, final CodedOutputStream output) throws IOException {
            int b10 = A2.b(tag);
            if (b10 == 0) {
                long H10 = H();
                output.h2(tag);
                output.i2(H10);
                return true;
            }
            if (b10 == 1) {
                long N10 = N();
                output.h2(tag);
                output.D1(N10);
                return true;
            }
            if (b10 == 2) {
                AbstractC12724x y10 = y();
                output.h2(tag);
                output.z1(y10);
                return true;
            }
            if (b10 == 3) {
                output.h2(tag);
                k0(output);
                int c10 = A2.c(A2.a(tag), 4);
                a(c10);
                output.h2(c10);
                return true;
            }
            if (b10 == 4) {
                return false;
            }
            if (b10 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int M10 = M();
            output.h2(tag);
            output.C1(M10);
            return true;
        }

        @Override
        public boolean j() throws IOException {
            return (((long) this.f67854r) + this.f67856t) - this.f67857u == ((long) this.f67850n);
        }

        @Override
        public void j0() throws IOException {
            int Z10;
            do {
                Z10 = Z();
                if (Z10 == 0) {
                    return;
                }
            } while (h0(Z10));
        }

        @Override
        public void k0(CodedOutputStream output) throws IOException {
            int Z10;
            do {
                Z10 = Z();
                if (Z10 == 0) {
                    return;
                }
            } while (i0(Z10, output));
        }

        @Override
        public void l0(final int length) throws IOException {
            if (length < 0 || length > ((this.f67850n - this.f67854r) - this.f67856t) + this.f67857u) {
                if (length >= 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
            while (length > 0) {
                if (n0() == 0) {
                    o0();
                }
                int min = Math.min(length, (int) n0());
                length -= min;
                this.f67856t += min;
            }
        }

        public final long n0() {
            return this.f67859w - this.f67856t;
        }

        public final void o0() throws InvalidProtocolBufferException {
            if (!this.f67846j.hasNext()) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            u0();
        }

        public final void p0(byte[] bytes, int offset, final int length) throws IOException {
            if (length < 0 || length > r0()) {
                if (length > 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                if (length != 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                return;
            }
            int i10 = length;
            while (i10 > 0) {
                if (n0() == 0) {
                    o0();
                }
                int min = Math.min(i10, (int) n0());
                long j10 = min;
                x2.p(this.f67856t, bytes, (length - i10) + offset, j10);
                i10 -= min;
                this.f67856t += j10;
            }
        }

        public final int r0() {
            return (int) (((this.f67850n - this.f67854r) - this.f67856t) + this.f67857u);
        }

        @Override
        public void t(final int oldLimit) {
            this.f67852p = oldLimit;
            q0();
        }

        public final ByteBuffer t0(int begin, int end) throws IOException {
            int position = this.f67847k.position();
            int limit = this.f67847k.limit();
            ByteBuffer byteBuffer = this.f67847k;
            try {
                try {
                    byteBuffer.position(begin);
                    byteBuffer.limit(end);
                    return this.f67847k.slice();
                } catch (IllegalArgumentException unused) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
            } finally {
                byteBuffer.position(position);
                byteBuffer.limit(limit);
            }
        }

        @Override
        public int u(int byteLimit) throws InvalidProtocolBufferException {
            if (byteLimit < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int i10 = byteLimit + i();
            int i11 = this.f67852p;
            if (i10 > i11) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f67852p = i10;
            q0();
            return i11;
        }

        public final void u0() {
            ByteBuffer next = this.f67846j.next();
            this.f67847k = next;
            this.f67854r += (int) (this.f67856t - this.f67857u);
            long position = next.position();
            this.f67856t = position;
            this.f67857u = position;
            this.f67859w = this.f67847k.limit();
            long k10 = x2.k(this.f67847k);
            this.f67858v = k10;
            this.f67856t += k10;
            this.f67857u += k10;
            this.f67859w += k10;
        }

        @Override
        public boolean v() throws IOException {
            return R() != 0;
        }

        @Override
        public byte[] w() throws IOException {
            return L(O());
        }

        @Override
        public ByteBuffer x() throws IOException {
            int O10 = O();
            if (O10 > 0) {
                long j10 = O10;
                if (j10 <= n0()) {
                    if (this.f67848l || !this.f67849m) {
                        byte[] bArr = new byte[O10];
                        x2.p(this.f67856t, bArr, 0L, j10);
                        this.f67856t += j10;
                        return ByteBuffer.wrap(bArr);
                    }
                    long j11 = this.f67856t + j10;
                    this.f67856t = j11;
                    long j12 = this.f67858v;
                    return t0((int) ((j11 - j12) - j10), (int) (j11 - j12));
                }
            }
            if (O10 > 0 && O10 <= r0()) {
                byte[] bArr2 = new byte[O10];
                p0(bArr2, 0, O10);
                return ByteBuffer.wrap(bArr2);
            }
            if (O10 == 0) {
                return D0.f67926f;
            }
            if (O10 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override
        public AbstractC12724x y() throws IOException {
            int O10 = O();
            if (O10 > 0) {
                long j10 = O10;
                long j11 = this.f67859w;
                long j12 = this.f67856t;
                if (j10 <= j11 - j12) {
                    if (this.f67848l && this.f67849m) {
                        int i10 = (int) (j12 - this.f67858v);
                        AbstractC12724x j02 = AbstractC12724x.j0(t0(i10, O10 + i10));
                        this.f67856t += j10;
                        return j02;
                    }
                    byte[] bArr = new byte[O10];
                    x2.p(j12, bArr, 0L, j10);
                    this.f67856t += j10;
                    return AbstractC12724x.k0(bArr);
                }
            }
            if (O10 <= 0 || O10 > r0()) {
                if (O10 == 0) {
                    return AbstractC12724x.f69696g;
                }
                if (O10 < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (!this.f67848l || !this.f67849m) {
                byte[] bArr2 = new byte[O10];
                p0(bArr2, 0, O10);
                return AbstractC12724x.k0(bArr2);
            }
            ArrayList arrayList = new ArrayList();
            while (O10 > 0) {
                if (n0() == 0) {
                    o0();
                }
                int min = Math.min(O10, (int) n0());
                int i11 = (int) (this.f67856t - this.f67858v);
                arrayList.add(AbstractC12724x.j0(t0(i11, i11 + min)));
                O10 -= min;
                this.f67856t += min;
            }
            return AbstractC12724x.n(arrayList);
        }

        @Override
        public double z() throws IOException {
            return Double.longBitsToDouble(N());
        }

        public c(Iterable<ByteBuffer> inputBufs, int size, boolean immutableFlag) {
            super();
            this.f67852p = Integer.MAX_VALUE;
            this.f67850n = size;
            this.f67845i = inputBufs;
            this.f67846j = inputBufs.iterator();
            this.f67848l = immutableFlag;
            this.f67854r = 0;
            this.f67855s = 0;
            if (size == 0) {
                this.f67847k = D0.f67926f;
                this.f67856t = 0L;
                this.f67857u = 0L;
                this.f67859w = 0L;
                this.f67858v = 0L;
                return;
            }
            u0();
        }
    }

    public static final class d extends C {

        public final InputStream f67860i;

        public final byte[] f67861j;

        public int f67862k;

        public int f67863l;

        public int f67864m;

        public int f67865n;

        public int f67866o;

        public int f67867p;

        public a f67868q;

        public interface a {
            void a();
        }

        public class b implements a {

            public int f67869a;

            public ByteArrayOutputStream f67870b;

            public b() {
                this.f67869a = d.this.f67864m;
            }

            @Override
            public void a() {
                if (this.f67870b == null) {
                    this.f67870b = new ByteArrayOutputStream();
                }
                this.f67870b.write(d.this.f67861j, this.f67869a, d.this.f67864m - this.f67869a);
                this.f67869a = 0;
            }

            public ByteBuffer b() {
                ByteArrayOutputStream byteArrayOutputStream = this.f67870b;
                if (byteArrayOutputStream == null) {
                    return ByteBuffer.wrap(d.this.f67861j, this.f67869a, d.this.f67864m - this.f67869a);
                }
                byteArrayOutputStream.write(d.this.f67861j, this.f67869a, d.this.f67864m);
                return ByteBuffer.wrap(this.f67870b.toByteArray());
            }
        }

        private void A0() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                byte[] bArr = this.f67861j;
                int i11 = this.f67864m;
                this.f67864m = i11 + 1;
                if (bArr[i11] >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void B0() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (K() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        public static int p0(InputStream input) throws IOException {
            try {
                return input.available();
            } catch (InvalidProtocolBufferException e10) {
                e10.setThrownFromInputStream();
                throw e10;
            }
        }

        public static int q0(InputStream input, byte[] data, int offset, int length) throws IOException {
            try {
                return input.read(data, offset, length);
            } catch (InvalidProtocolBufferException e10) {
                e10.setThrownFromInputStream();
                throw e10;
            }
        }

        private void v0() {
            int i10 = this.f67862k + this.f67863l;
            this.f67862k = i10;
            int i11 = this.f67866o + i10;
            int i12 = this.f67867p;
            if (i11 <= i12) {
                this.f67863l = 0;
                return;
            }
            int i13 = i11 - i12;
            this.f67863l = i13;
            this.f67862k = i10 - i13;
        }

        public static long x0(InputStream input, long length) throws IOException {
            try {
                return input.skip(length);
            } catch (InvalidProtocolBufferException e10) {
                e10.setThrownFromInputStream();
                throw e10;
            }
        }

        private void z0() throws IOException {
            if (this.f67862k - this.f67864m >= 10) {
                A0();
            } else {
                B0();
            }
        }

        @Override
        public int A() throws IOException {
            return O();
        }

        @Override
        public int B() throws IOException {
            return M();
        }

        @Override
        public long C() throws IOException {
            return N();
        }

        public final boolean C0(int n10) throws IOException {
            int i10 = this.f67864m;
            if (i10 + n10 <= this.f67862k) {
                throw new IllegalStateException("refillBuffer() called when " + n10 + " bytes were already available in buffer");
            }
            int i11 = this.f67833c;
            int i12 = this.f67866o;
            if (n10 > (i11 - i12) - i10 || i12 + i10 + n10 > this.f67867p) {
                return false;
            }
            a aVar = this.f67868q;
            if (aVar != null) {
                aVar.a();
            }
            int i13 = this.f67864m;
            if (i13 > 0) {
                int i14 = this.f67862k;
                if (i14 > i13) {
                    byte[] bArr = this.f67861j;
                    System.arraycopy(bArr, i13, bArr, 0, i14 - i13);
                }
                this.f67866o += i13;
                this.f67862k -= i13;
                this.f67864m = 0;
            }
            InputStream inputStream = this.f67860i;
            byte[] bArr2 = this.f67861j;
            int i15 = this.f67862k;
            int q02 = q0(inputStream, bArr2, i15, Math.min(bArr2.length - i15, (this.f67833c - this.f67866o) - i15));
            if (q02 == 0 || q02 < -1 || q02 > this.f67861j.length) {
                throw new IllegalStateException(((Object) this.f67860i.getClass()) + "#read(byte[]) returned invalid result: " + q02 + "\nThe InputStream implementation is buggy.");
            }
            if (q02 <= 0) {
                return false;
            }
            this.f67862k += q02;
            v0();
            if (this.f67862k >= n10) {
                return true;
            }
            return C0(n10);
        }

        @Override
        public float D() throws IOException {
            return Float.intBitsToFloat(M());
        }

        @Override
        public <T extends InterfaceC12659b1> T E(final int fieldNumber, final InterfaceC12723w1<T> parser, final C12666d0 extensionRegistry) throws IOException {
            b();
            this.f67831a++;
            T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistry);
            a(A2.c(fieldNumber, 4));
            this.f67831a--;
            return parsePartialFrom;
        }

        @Override
        public void F(final int fieldNumber, final InterfaceC12659b1.a builder, final C12666d0 extensionRegistry) throws IOException {
            b();
            this.f67831a++;
            builder.mergeFrom(this, extensionRegistry);
            a(A2.c(fieldNumber, 4));
            this.f67831a--;
        }

        @Override
        public int G() throws IOException {
            return O();
        }

        @Override
        public long H() throws IOException {
            return R();
        }

        @Override
        public <T extends InterfaceC12659b1> T I(final InterfaceC12723w1<T> parser, final C12666d0 extensionRegistry) throws IOException {
            int O10 = O();
            b();
            int u10 = u(O10);
            this.f67831a++;
            T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistry);
            a(0);
            this.f67831a--;
            if (g() != 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            t(u10);
            return parsePartialFrom;
        }

        @Override
        public void J(final InterfaceC12659b1.a builder, final C12666d0 extensionRegistry) throws IOException {
            int O10 = O();
            b();
            int u10 = u(O10);
            this.f67831a++;
            builder.mergeFrom(this, extensionRegistry);
            a(0);
            this.f67831a--;
            if (g() != 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            t(u10);
        }

        @Override
        public byte K() throws IOException {
            if (this.f67864m == this.f67862k) {
                w0(1);
            }
            byte[] bArr = this.f67861j;
            int i10 = this.f67864m;
            this.f67864m = i10 + 1;
            return bArr[i10];
        }

        @Override
        public byte[] L(final int size) throws IOException {
            int i10 = this.f67864m;
            if (size > this.f67862k - i10 || size <= 0) {
                return s0(size, false);
            }
            int i11 = size + i10;
            this.f67864m = i11;
            return Arrays.copyOfRange(this.f67861j, i10, i11);
        }

        @Override
        public int M() throws IOException {
            int i10 = this.f67864m;
            if (this.f67862k - i10 < 4) {
                w0(4);
                i10 = this.f67864m;
            }
            byte[] bArr = this.f67861j;
            this.f67864m = i10 + 4;
            return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
        }

        @Override
        public long N() throws IOException {
            int i10 = this.f67864m;
            if (this.f67862k - i10 < 8) {
                w0(8);
                i10 = this.f67864m;
            }
            byte[] bArr = this.f67861j;
            this.f67864m = i10 + 8;
            return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
        }

        @Override
        public int O() throws IOException {
            int i10;
            int i11 = this.f67864m;
            int i12 = this.f67862k;
            if (i12 != i11) {
                byte[] bArr = this.f67861j;
                int i13 = i11 + 1;
                byte b10 = bArr[i11];
                if (b10 >= 0) {
                    this.f67864m = i13;
                    return b10;
                }
                if (i12 - i13 >= 9) {
                    int i14 = i11 + 2;
                    int i15 = (bArr[i13] << 7) ^ b10;
                    if (i15 < 0) {
                        i10 = i15 ^ (-128);
                    } else {
                        int i16 = i11 + 3;
                        int i17 = (bArr[i14] << 14) ^ i15;
                        if (i17 >= 0) {
                            i10 = i17 ^ 16256;
                        } else {
                            int i18 = i11 + 4;
                            int i19 = i17 ^ (bArr[i16] << 21);
                            if (i19 < 0) {
                                i10 = (-2080896) ^ i19;
                            } else {
                                i16 = i11 + 5;
                                byte b11 = bArr[i18];
                                int i20 = (i19 ^ (b11 << 28)) ^ 266354560;
                                if (b11 < 0) {
                                    i18 = i11 + 6;
                                    if (bArr[i16] < 0) {
                                        i16 = i11 + 7;
                                        if (bArr[i18] < 0) {
                                            i18 = i11 + 8;
                                            if (bArr[i16] < 0) {
                                                i16 = i11 + 9;
                                                if (bArr[i18] < 0) {
                                                    int i21 = i11 + 10;
                                                    if (bArr[i16] >= 0) {
                                                        i14 = i21;
                                                        i10 = i20;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i10 = i20;
                                }
                                i10 = i20;
                            }
                            i14 = i18;
                        }
                        i14 = i16;
                    }
                    this.f67864m = i14;
                    return i10;
                }
            }
            return (int) S();
        }

        @Override
        public long R() throws IOException {
            long j10;
            long j11;
            long j12;
            int i10 = this.f67864m;
            int i11 = this.f67862k;
            if (i11 != i10) {
                byte[] bArr = this.f67861j;
                int i12 = i10 + 1;
                byte b10 = bArr[i10];
                if (b10 >= 0) {
                    this.f67864m = i12;
                    return b10;
                }
                if (i11 - i12 >= 9) {
                    int i13 = i10 + 2;
                    int i14 = (bArr[i12] << 7) ^ b10;
                    if (i14 < 0) {
                        j10 = i14 ^ (-128);
                    } else {
                        int i15 = i10 + 3;
                        int i16 = (bArr[i13] << 14) ^ i14;
                        if (i16 >= 0) {
                            j10 = i16 ^ 16256;
                            i13 = i15;
                        } else {
                            int i17 = i10 + 4;
                            int i18 = i16 ^ (bArr[i15] << 21);
                            if (i18 < 0) {
                                long j13 = (-2080896) ^ i18;
                                i13 = i17;
                                j10 = j13;
                            } else {
                                long j14 = i18;
                                i13 = i10 + 5;
                                long j15 = j14 ^ (bArr[i17] << 28);
                                if (j15 >= 0) {
                                    j12 = 266354560;
                                } else {
                                    int i19 = i10 + 6;
                                    long j16 = j15 ^ (bArr[i13] << 35);
                                    if (j16 < 0) {
                                        j11 = -34093383808L;
                                    } else {
                                        i13 = i10 + 7;
                                        j15 = j16 ^ (bArr[i19] << 42);
                                        if (j15 >= 0) {
                                            j12 = 4363953127296L;
                                        } else {
                                            i19 = i10 + 8;
                                            j16 = j15 ^ (bArr[i13] << 49);
                                            if (j16 < 0) {
                                                j11 = -558586000294016L;
                                            } else {
                                                i13 = i10 + 9;
                                                long j17 = (j16 ^ (bArr[i19] << 56)) ^ 71499008037633920L;
                                                if (j17 < 0) {
                                                    int i20 = i10 + 10;
                                                    if (bArr[i13] >= 0) {
                                                        i13 = i20;
                                                    }
                                                }
                                                j10 = j17;
                                            }
                                        }
                                    }
                                    j10 = j16 ^ j11;
                                    i13 = i19;
                                }
                                j10 = j15 ^ j12;
                            }
                        }
                    }
                    this.f67864m = i13;
                    return j10;
                }
            }
            return S();
        }

        @Override
        public long S() throws IOException {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                j10 |= (r3 & Byte.MAX_VALUE) << i10;
                if ((K() & 128) == 0) {
                    return j10;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override
        public int T() throws IOException {
            return M();
        }

        @Override
        public long U() throws IOException {
            return N();
        }

        @Override
        public int V() throws IOException {
            return C.c(O());
        }

        @Override
        public long W() throws IOException {
            return C.d(R());
        }

        @Override
        public String X() throws IOException {
            int O10 = O();
            if (O10 > 0) {
                int i10 = this.f67862k;
                int i11 = this.f67864m;
                if (O10 <= i10 - i11) {
                    String str = new String(this.f67861j, i11, O10, D0.f67922b);
                    this.f67864m += O10;
                    return str;
                }
            }
            if (O10 == 0) {
                return "";
            }
            if (O10 > this.f67862k) {
                return new String(s0(O10, false), D0.f67922b);
            }
            w0(O10);
            String str2 = new String(this.f67861j, this.f67864m, O10, D0.f67922b);
            this.f67864m += O10;
            return str2;
        }

        @Override
        public String Y() throws IOException {
            byte[] s02;
            int O10 = O();
            int i10 = this.f67864m;
            int i11 = this.f67862k;
            if (O10 <= i11 - i10 && O10 > 0) {
                s02 = this.f67861j;
                this.f67864m = i10 + O10;
            } else {
                if (O10 == 0) {
                    return "";
                }
                i10 = 0;
                if (O10 <= i11) {
                    w0(O10);
                    s02 = this.f67861j;
                    this.f67864m = O10;
                } else {
                    s02 = s0(O10, false);
                }
            }
            return Utf8.h(s02, i10, O10);
        }

        @Override
        public int Z() throws IOException {
            if (j()) {
                this.f67865n = 0;
                return 0;
            }
            int O10 = O();
            this.f67865n = O10;
            if (A2.a(O10) != 0) {
                return this.f67865n;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override
        public void a(final int value) throws InvalidProtocolBufferException {
            if (this.f67865n != value) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        @Override
        public int a0() throws IOException {
            return O();
        }

        @Override
        public long b0() throws IOException {
            return R();
        }

        @Override
        @Deprecated
        public void c0(final int fieldNumber, final InterfaceC12659b1.a builder) throws IOException {
            F(fieldNumber, builder, C12666d0.d());
        }

        @Override
        public void d0() {
            this.f67866o = -this.f67864m;
        }

        @Override
        public void f(boolean enabled) {
        }

        @Override
        public int g() {
            int i10 = this.f67867p;
            if (i10 == Integer.MAX_VALUE) {
                return -1;
            }
            return i10 - (this.f67866o + this.f67864m);
        }

        @Override
        public int h() {
            return this.f67865n;
        }

        @Override
        public boolean h0(final int tag) throws IOException {
            int b10 = A2.b(tag);
            if (b10 == 0) {
                z0();
                return true;
            }
            if (b10 == 1) {
                l0(8);
                return true;
            }
            if (b10 == 2) {
                l0(O());
                return true;
            }
            if (b10 == 3) {
                j0();
                a(A2.c(A2.a(tag), 4));
                return true;
            }
            if (b10 == 4) {
                return false;
            }
            if (b10 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            l0(4);
            return true;
        }

        @Override
        public int i() {
            return this.f67866o + this.f67864m;
        }

        @Override
        public boolean i0(final int tag, final CodedOutputStream output) throws IOException {
            int b10 = A2.b(tag);
            if (b10 == 0) {
                long H10 = H();
                output.h2(tag);
                output.i2(H10);
                return true;
            }
            if (b10 == 1) {
                long N10 = N();
                output.h2(tag);
                output.D1(N10);
                return true;
            }
            if (b10 == 2) {
                AbstractC12724x y10 = y();
                output.h2(tag);
                output.z1(y10);
                return true;
            }
            if (b10 == 3) {
                output.h2(tag);
                k0(output);
                int c10 = A2.c(A2.a(tag), 4);
                a(c10);
                output.h2(c10);
                return true;
            }
            if (b10 == 4) {
                return false;
            }
            if (b10 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int M10 = M();
            output.h2(tag);
            output.C1(M10);
            return true;
        }

        @Override
        public boolean j() throws IOException {
            return this.f67864m == this.f67862k && !C0(1);
        }

        @Override
        public void j0() throws IOException {
            int Z10;
            do {
                Z10 = Z();
                if (Z10 == 0) {
                    return;
                }
            } while (h0(Z10));
        }

        @Override
        public void k0(CodedOutputStream output) throws IOException {
            int Z10;
            do {
                Z10 = Z();
                if (Z10 == 0) {
                    return;
                }
            } while (i0(Z10, output));
        }

        @Override
        public void l0(final int size) throws IOException {
            int i10 = this.f67862k;
            int i11 = this.f67864m;
            if (size > i10 - i11 || size < 0) {
                y0(size);
            } else {
                this.f67864m = i11 + size;
            }
        }

        public final AbstractC12724x r0(final int size) throws IOException {
            byte[] t02 = t0(size);
            if (t02 != null) {
                return AbstractC12724x.u(t02);
            }
            int i10 = this.f67864m;
            int i11 = this.f67862k;
            int i12 = i11 - i10;
            this.f67866o += i11;
            this.f67864m = 0;
            this.f67862k = 0;
            List<byte[]> u02 = u0(size - i12);
            byte[] bArr = new byte[size];
            System.arraycopy(this.f67861j, i10, bArr, 0, i12);
            for (byte[] bArr2 : u02) {
                System.arraycopy(bArr2, 0, bArr, i12, bArr2.length);
                i12 += bArr2.length;
            }
            return AbstractC12724x.k0(bArr);
        }

        public final byte[] s0(final int size, boolean ensureNoLeakedReferences) throws IOException {
            byte[] t02 = t0(size);
            if (t02 != null) {
                return ensureNoLeakedReferences ? (byte[]) t02.clone() : t02;
            }
            int i10 = this.f67864m;
            int i11 = this.f67862k;
            int i12 = i11 - i10;
            this.f67866o += i11;
            this.f67864m = 0;
            this.f67862k = 0;
            List<byte[]> u02 = u0(size - i12);
            byte[] bArr = new byte[size];
            System.arraycopy(this.f67861j, i10, bArr, 0, i12);
            for (byte[] bArr2 : u02) {
                System.arraycopy(bArr2, 0, bArr, i12, bArr2.length);
                i12 += bArr2.length;
            }
            return bArr;
        }

        @Override
        public void t(final int oldLimit) {
            this.f67867p = oldLimit;
            v0();
        }

        public final byte[] t0(final int size) throws IOException {
            if (size == 0) {
                return D0.f67925e;
            }
            if (size < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int i10 = this.f67866o;
            int i11 = this.f67864m;
            int i12 = i10 + i11 + size;
            if (i12 - this.f67833c > 0) {
                throw InvalidProtocolBufferException.sizeLimitExceeded();
            }
            int i13 = this.f67867p;
            if (i12 > i13) {
                l0((i13 - i10) - i11);
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            int i14 = this.f67862k - i11;
            int i15 = size - i14;
            if (i15 >= 4096 && i15 > p0(this.f67860i)) {
                return null;
            }
            byte[] bArr = new byte[size];
            System.arraycopy(this.f67861j, this.f67864m, bArr, 0, i14);
            this.f67866o += this.f67862k;
            this.f67864m = 0;
            this.f67862k = 0;
            while (i14 < size) {
                int q02 = q0(this.f67860i, bArr, i14, size - i14);
                if (q02 == -1) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                this.f67866o += q02;
                i14 += q02;
            }
            return bArr;
        }

        @Override
        public int u(int byteLimit) throws InvalidProtocolBufferException {
            if (byteLimit < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int i10 = byteLimit + this.f67866o + this.f67864m;
            int i11 = this.f67867p;
            if (i10 > i11) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f67867p = i10;
            v0();
            return i11;
        }

        public final List<byte[]> u0(int sizeLeft) throws IOException {
            ArrayList arrayList = new ArrayList();
            while (sizeLeft > 0) {
                int min = Math.min(sizeLeft, 4096);
                byte[] bArr = new byte[min];
                int i10 = 0;
                while (i10 < min) {
                    int read = this.f67860i.read(bArr, i10, min - i10);
                    if (read == -1) {
                        throw InvalidProtocolBufferException.truncatedMessage();
                    }
                    this.f67866o += read;
                    i10 += read;
                }
                sizeLeft -= min;
                arrayList.add(bArr);
            }
            return arrayList;
        }

        @Override
        public boolean v() throws IOException {
            return R() != 0;
        }

        @Override
        public byte[] w() throws IOException {
            int O10 = O();
            int i10 = this.f67862k;
            int i11 = this.f67864m;
            if (O10 > i10 - i11 || O10 <= 0) {
                return s0(O10, false);
            }
            byte[] copyOfRange = Arrays.copyOfRange(this.f67861j, i11, i11 + O10);
            this.f67864m += O10;
            return copyOfRange;
        }

        public final void w0(int n10) throws IOException {
            if (C0(n10)) {
                return;
            }
            if (n10 <= (this.f67833c - this.f67866o) - this.f67864m) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.sizeLimitExceeded();
        }

        @Override
        public ByteBuffer x() throws IOException {
            int O10 = O();
            int i10 = this.f67862k;
            int i11 = this.f67864m;
            if (O10 > i10 - i11 || O10 <= 0) {
                return O10 == 0 ? D0.f67926f : ByteBuffer.wrap(s0(O10, true));
            }
            ByteBuffer wrap = ByteBuffer.wrap(Arrays.copyOfRange(this.f67861j, i11, i11 + O10));
            this.f67864m += O10;
            return wrap;
        }

        @Override
        public AbstractC12724x y() throws IOException {
            int O10 = O();
            int i10 = this.f67862k;
            int i11 = this.f67864m;
            if (O10 > i10 - i11 || O10 <= 0) {
                return O10 == 0 ? AbstractC12724x.f69696g : r0(O10);
            }
            AbstractC12724x v10 = AbstractC12724x.v(this.f67861j, i11, O10);
            this.f67864m += O10;
            return v10;
        }

        public final void y0(final int size) throws IOException {
            if (size < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int i10 = this.f67866o;
            int i11 = this.f67864m;
            int i12 = i10 + i11 + size;
            int i13 = this.f67867p;
            if (i12 > i13) {
                l0((i13 - i10) - i11);
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            int i14 = 0;
            if (this.f67868q == null) {
                this.f67866o = i10 + i11;
                int i15 = this.f67862k - i11;
                this.f67862k = 0;
                this.f67864m = 0;
                i14 = i15;
                while (i14 < size) {
                    try {
                        long j10 = size - i14;
                        long x02 = x0(this.f67860i, j10);
                        if (x02 < 0 || x02 > j10) {
                            throw new IllegalStateException(((Object) this.f67860i.getClass()) + "#skip returned invalid result: " + x02 + "\nThe InputStream implementation is buggy.");
                        }
                        if (x02 == 0) {
                            break;
                        } else {
                            i14 += (int) x02;
                        }
                    } finally {
                        this.f67866o += i14;
                        v0();
                    }
                }
            }
            if (i14 >= size) {
                return;
            }
            int i16 = this.f67862k;
            int i17 = i16 - this.f67864m;
            this.f67864m = i16;
            w0(1);
            while (true) {
                int i18 = size - i17;
                int i19 = this.f67862k;
                if (i18 <= i19) {
                    this.f67864m = i18;
                    return;
                } else {
                    i17 += i19;
                    this.f67864m = i19;
                    w0(1);
                }
            }
        }

        @Override
        public double z() throws IOException {
            return Double.longBitsToDouble(N());
        }

        public d(final InputStream input, int bufferSize) {
            super();
            this.f67867p = Integer.MAX_VALUE;
            this.f67868q = null;
            D0.e(input, Context.INPUT_SERVICE);
            this.f67860i = input;
            this.f67861j = new byte[bufferSize];
            this.f67862k = 0;
            this.f67864m = 0;
            this.f67866o = 0;
        }
    }

    public static final class e extends C {

        public final ByteBuffer f67872i;

        public final boolean f67873j;

        public final long f67874k;

        public long f67875l;

        public long f67876m;

        public long f67877n;

        public int f67878o;

        public int f67879p;

        public boolean f67880q;

        public int f67881r;

        public static boolean o0() {
            return x2.V();
        }

        private void p0() {
            long j10 = this.f67875l + this.f67878o;
            this.f67875l = j10;
            int i10 = (int) (j10 - this.f67877n);
            int i11 = this.f67881r;
            if (i10 <= i11) {
                this.f67878o = 0;
                return;
            }
            int i12 = i10 - i11;
            this.f67878o = i12;
            this.f67875l = j10 - i12;
        }

        private int q0() {
            return (int) (this.f67875l - this.f67876m);
        }

        private void r0() throws IOException {
            if (q0() >= 10) {
                s0();
            } else {
                t0();
            }
        }

        private void s0() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                long j10 = this.f67876m;
                this.f67876m = 1 + j10;
                if (x2.A(j10) >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void t0() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (K() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override
        public int A() throws IOException {
            return O();
        }

        @Override
        public int B() throws IOException {
            return M();
        }

        @Override
        public long C() throws IOException {
            return N();
        }

        @Override
        public float D() throws IOException {
            return Float.intBitsToFloat(M());
        }

        @Override
        public <T extends InterfaceC12659b1> T E(final int fieldNumber, final InterfaceC12723w1<T> parser, final C12666d0 extensionRegistry) throws IOException {
            b();
            this.f67831a++;
            T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistry);
            a(A2.c(fieldNumber, 4));
            this.f67831a--;
            return parsePartialFrom;
        }

        @Override
        public void F(final int fieldNumber, final InterfaceC12659b1.a builder, final C12666d0 extensionRegistry) throws IOException {
            b();
            this.f67831a++;
            builder.mergeFrom(this, extensionRegistry);
            a(A2.c(fieldNumber, 4));
            this.f67831a--;
        }

        @Override
        public int G() throws IOException {
            return O();
        }

        @Override
        public long H() throws IOException {
            return R();
        }

        @Override
        public <T extends InterfaceC12659b1> T I(final InterfaceC12723w1<T> parser, final C12666d0 extensionRegistry) throws IOException {
            int O10 = O();
            b();
            int u10 = u(O10);
            this.f67831a++;
            T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistry);
            a(0);
            this.f67831a--;
            if (g() != 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            t(u10);
            return parsePartialFrom;
        }

        @Override
        public void J(final InterfaceC12659b1.a builder, final C12666d0 extensionRegistry) throws IOException {
            int O10 = O();
            b();
            int u10 = u(O10);
            this.f67831a++;
            builder.mergeFrom(this, extensionRegistry);
            a(0);
            this.f67831a--;
            if (g() != 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            t(u10);
        }

        @Override
        public byte K() throws IOException {
            long j10 = this.f67876m;
            if (j10 == this.f67875l) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f67876m = 1 + j10;
            return x2.A(j10);
        }

        @Override
        public byte[] L(final int length) throws IOException {
            if (length < 0 || length > q0()) {
                if (length > 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                if (length == 0) {
                    return D0.f67925e;
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
            byte[] bArr = new byte[length];
            long j10 = this.f67876m;
            long j11 = length;
            u0(j10, j10 + j11).get(bArr);
            this.f67876m += j11;
            return bArr;
        }

        @Override
        public int M() throws IOException {
            long j10 = this.f67876m;
            if (this.f67875l - j10 < 4) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f67876m = 4 + j10;
            return ((x2.A(j10 + 3) & 255) << 24) | (x2.A(j10) & 255) | ((x2.A(1 + j10) & 255) << 8) | ((x2.A(2 + j10) & 255) << 16);
        }

        @Override
        public long N() throws IOException {
            long j10 = this.f67876m;
            if (this.f67875l - j10 < 8) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f67876m = 8 + j10;
            return ((x2.A(j10 + 7) & 255) << 56) | (x2.A(j10) & 255) | ((x2.A(1 + j10) & 255) << 8) | ((x2.A(2 + j10) & 255) << 16) | ((x2.A(3 + j10) & 255) << 24) | ((x2.A(4 + j10) & 255) << 32) | ((x2.A(5 + j10) & 255) << 40) | ((x2.A(6 + j10) & 255) << 48);
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x008c, code lost:
        
            if (com.google.protobuf.x2.A(r3) < 0) goto L34;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int O() throws IOException {
            int i10;
            long j10 = this.f67876m;
            if (this.f67875l != j10) {
                long j11 = 1 + j10;
                byte A10 = x2.A(j10);
                if (A10 >= 0) {
                    this.f67876m = j11;
                    return A10;
                }
                if (this.f67875l - j11 >= 9) {
                    long j12 = 2 + j10;
                    int A11 = (x2.A(j11) << 7) ^ A10;
                    if (A11 < 0) {
                        i10 = A11 ^ (-128);
                    } else {
                        long j13 = 3 + j10;
                        int A12 = A11 ^ (x2.A(j12) << 14);
                        if (A12 >= 0) {
                            i10 = A12 ^ 16256;
                        } else {
                            j12 = 4 + j10;
                            int A13 = A12 ^ (x2.A(j13) << 21);
                            if (A13 < 0) {
                                i10 = (-2080896) ^ A13;
                            } else {
                                j13 = 5 + j10;
                                byte A14 = x2.A(j12);
                                int i11 = (A13 ^ (A14 << 28)) ^ 266354560;
                                if (A14 < 0) {
                                    j12 = 6 + j10;
                                    if (x2.A(j13) < 0) {
                                        j13 = 7 + j10;
                                        if (x2.A(j12) < 0) {
                                            j12 = 8 + j10;
                                            if (x2.A(j13) < 0) {
                                                j13 = j10 + 9;
                                                if (x2.A(j12) < 0) {
                                                    j12 = 10 + j10;
                                                }
                                            }
                                        }
                                    }
                                    i10 = i11;
                                }
                                i10 = i11;
                            }
                        }
                        j12 = j13;
                    }
                    this.f67876m = j12;
                    return i10;
                }
            }
            return (int) S();
        }

        @Override
        public long R() throws IOException {
            long j10;
            long j11;
            long j12;
            int i10;
            long j13 = this.f67876m;
            if (this.f67875l != j13) {
                long j14 = 1 + j13;
                byte A10 = x2.A(j13);
                if (A10 >= 0) {
                    this.f67876m = j14;
                    return A10;
                }
                if (this.f67875l - j14 >= 9) {
                    long j15 = 2 + j13;
                    int A11 = (x2.A(j14) << 7) ^ A10;
                    if (A11 >= 0) {
                        long j16 = 3 + j13;
                        int A12 = A11 ^ (x2.A(j15) << 14);
                        if (A12 >= 0) {
                            j10 = A12 ^ 16256;
                            j15 = j16;
                        } else {
                            j15 = 4 + j13;
                            int A13 = A12 ^ (x2.A(j16) << 21);
                            if (A13 < 0) {
                                i10 = (-2080896) ^ A13;
                            } else {
                                long j17 = 5 + j13;
                                long A14 = A13 ^ (x2.A(j15) << 28);
                                if (A14 >= 0) {
                                    j12 = 266354560;
                                } else {
                                    long j18 = 6 + j13;
                                    long A15 = A14 ^ (x2.A(j17) << 35);
                                    if (A15 < 0) {
                                        j11 = -34093383808L;
                                    } else {
                                        j17 = 7 + j13;
                                        A14 = A15 ^ (x2.A(j18) << 42);
                                        if (A14 >= 0) {
                                            j12 = 4363953127296L;
                                        } else {
                                            j18 = 8 + j13;
                                            A15 = A14 ^ (x2.A(j17) << 49);
                                            if (A15 < 0) {
                                                j11 = -558586000294016L;
                                            } else {
                                                long j19 = j13 + 9;
                                                long A16 = (A15 ^ (x2.A(j18) << 56)) ^ 71499008037633920L;
                                                if (A16 < 0) {
                                                    long j20 = j13 + 10;
                                                    if (x2.A(j19) >= 0) {
                                                        j15 = j20;
                                                        j10 = A16;
                                                    }
                                                } else {
                                                    j10 = A16;
                                                    j15 = j19;
                                                }
                                            }
                                        }
                                    }
                                    j10 = j11 ^ A15;
                                    j15 = j18;
                                }
                                j10 = j12 ^ A14;
                                j15 = j17;
                            }
                        }
                        this.f67876m = j15;
                        return j10;
                    }
                    i10 = A11 ^ (-128);
                    j10 = i10;
                    this.f67876m = j15;
                    return j10;
                }
            }
            return S();
        }

        @Override
        public long S() throws IOException {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                j10 |= (r3 & Byte.MAX_VALUE) << i10;
                if ((K() & 128) == 0) {
                    return j10;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override
        public int T() throws IOException {
            return M();
        }

        @Override
        public long U() throws IOException {
            return N();
        }

        @Override
        public int V() throws IOException {
            return C.c(O());
        }

        @Override
        public long W() throws IOException {
            return C.d(R());
        }

        @Override
        public String X() throws IOException {
            int O10 = O();
            if (O10 <= 0 || O10 > q0()) {
                if (O10 == 0) {
                    return "";
                }
                if (O10 < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            byte[] bArr = new byte[O10];
            long j10 = O10;
            x2.p(this.f67876m, bArr, 0L, j10);
            String str = new String(bArr, D0.f67922b);
            this.f67876m += j10;
            return str;
        }

        @Override
        public String Y() throws IOException {
            int O10 = O();
            if (O10 > 0 && O10 <= q0()) {
                String g10 = Utf8.g(this.f67872i, n0(this.f67876m), O10);
                this.f67876m += O10;
                return g10;
            }
            if (O10 == 0) {
                return "";
            }
            if (O10 <= 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override
        public int Z() throws IOException {
            if (j()) {
                this.f67879p = 0;
                return 0;
            }
            int O10 = O();
            this.f67879p = O10;
            if (A2.a(O10) != 0) {
                return this.f67879p;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override
        public void a(final int value) throws InvalidProtocolBufferException {
            if (this.f67879p != value) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        @Override
        public int a0() throws IOException {
            return O();
        }

        @Override
        public long b0() throws IOException {
            return R();
        }

        @Override
        @Deprecated
        public void c0(final int fieldNumber, final InterfaceC12659b1.a builder) throws IOException {
            F(fieldNumber, builder, C12666d0.d());
        }

        @Override
        public void d0() {
            this.f67877n = this.f67876m;
        }

        @Override
        public void f(boolean enabled) {
            this.f67880q = enabled;
        }

        @Override
        public int g() {
            int i10 = this.f67881r;
            if (i10 == Integer.MAX_VALUE) {
                return -1;
            }
            return i10 - i();
        }

        @Override
        public int h() {
            return this.f67879p;
        }

        @Override
        public boolean h0(final int tag) throws IOException {
            int b10 = A2.b(tag);
            if (b10 == 0) {
                r0();
                return true;
            }
            if (b10 == 1) {
                l0(8);
                return true;
            }
            if (b10 == 2) {
                l0(O());
                return true;
            }
            if (b10 == 3) {
                j0();
                a(A2.c(A2.a(tag), 4));
                return true;
            }
            if (b10 == 4) {
                return false;
            }
            if (b10 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            l0(4);
            return true;
        }

        @Override
        public int i() {
            return (int) (this.f67876m - this.f67877n);
        }

        @Override
        public boolean i0(final int tag, final CodedOutputStream output) throws IOException {
            int b10 = A2.b(tag);
            if (b10 == 0) {
                long H10 = H();
                output.h2(tag);
                output.i2(H10);
                return true;
            }
            if (b10 == 1) {
                long N10 = N();
                output.h2(tag);
                output.D1(N10);
                return true;
            }
            if (b10 == 2) {
                AbstractC12724x y10 = y();
                output.h2(tag);
                output.z1(y10);
                return true;
            }
            if (b10 == 3) {
                output.h2(tag);
                k0(output);
                int c10 = A2.c(A2.a(tag), 4);
                a(c10);
                output.h2(c10);
                return true;
            }
            if (b10 == 4) {
                return false;
            }
            if (b10 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int M10 = M();
            output.h2(tag);
            output.C1(M10);
            return true;
        }

        @Override
        public boolean j() throws IOException {
            return this.f67876m == this.f67875l;
        }

        @Override
        public void j0() throws IOException {
            int Z10;
            do {
                Z10 = Z();
                if (Z10 == 0) {
                    return;
                }
            } while (h0(Z10));
        }

        @Override
        public void k0(CodedOutputStream output) throws IOException {
            int Z10;
            do {
                Z10 = Z();
                if (Z10 == 0) {
                    return;
                }
            } while (i0(Z10, output));
        }

        @Override
        public void l0(final int length) throws IOException {
            if (length >= 0 && length <= q0()) {
                this.f67876m += length;
            } else {
                if (length >= 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
        }

        public final int n0(long pos) {
            return (int) (pos - this.f67874k);
        }

        @Override
        public void t(final int oldLimit) {
            this.f67881r = oldLimit;
            p0();
        }

        @Override
        public int u(int byteLimit) throws InvalidProtocolBufferException {
            if (byteLimit < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int i10 = byteLimit + i();
            int i11 = this.f67881r;
            if (i10 > i11) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f67881r = i10;
            p0();
            return i11;
        }

        public final ByteBuffer u0(long begin, long end) throws IOException {
            int position = this.f67872i.position();
            int limit = this.f67872i.limit();
            ByteBuffer byteBuffer = this.f67872i;
            try {
                try {
                    byteBuffer.position(n0(begin));
                    byteBuffer.limit(n0(end));
                    return this.f67872i.slice();
                } catch (IllegalArgumentException e10) {
                    InvalidProtocolBufferException truncatedMessage = InvalidProtocolBufferException.truncatedMessage();
                    truncatedMessage.initCause(e10);
                    throw truncatedMessage;
                }
            } finally {
                byteBuffer.position(position);
                byteBuffer.limit(limit);
            }
        }

        @Override
        public boolean v() throws IOException {
            return R() != 0;
        }

        @Override
        public byte[] w() throws IOException {
            return L(O());
        }

        @Override
        public ByteBuffer x() throws IOException {
            int O10 = O();
            if (O10 <= 0 || O10 > q0()) {
                if (O10 == 0) {
                    return D0.f67926f;
                }
                if (O10 < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (this.f67873j || !this.f67880q) {
                byte[] bArr = new byte[O10];
                long j10 = O10;
                x2.p(this.f67876m, bArr, 0L, j10);
                this.f67876m += j10;
                return ByteBuffer.wrap(bArr);
            }
            long j11 = this.f67876m;
            long j12 = O10;
            ByteBuffer u02 = u0(j11, j11 + j12);
            this.f67876m += j12;
            return u02;
        }

        @Override
        public AbstractC12724x y() throws IOException {
            int O10 = O();
            if (O10 <= 0 || O10 > q0()) {
                if (O10 == 0) {
                    return AbstractC12724x.f69696g;
                }
                if (O10 < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (this.f67873j && this.f67880q) {
                long j10 = this.f67876m;
                long j11 = O10;
                ByteBuffer u02 = u0(j10, j10 + j11);
                this.f67876m += j11;
                return AbstractC12724x.j0(u02);
            }
            byte[] bArr = new byte[O10];
            long j12 = O10;
            x2.p(this.f67876m, bArr, 0L, j12);
            this.f67876m += j12;
            return AbstractC12724x.k0(bArr);
        }

        @Override
        public double z() throws IOException {
            return Double.longBitsToDouble(N());
        }

        public e(ByteBuffer buffer, boolean immutable) {
            super();
            this.f67881r = Integer.MAX_VALUE;
            this.f67872i = buffer;
            long k10 = x2.k(buffer);
            this.f67874k = k10;
            this.f67875l = buffer.limit() + k10;
            long position = k10 + buffer.position();
            this.f67876m = position;
            this.f67877n = position;
            this.f67873j = immutable;
        }
    }

    public static int P(final int firstByte, final InputStream input) throws IOException {
        if ((firstByte & 128) == 0) {
            return firstByte;
        }
        int i10 = firstByte & 127;
        int i11 = 7;
        while (i11 < 32) {
            int read = input.read();
            if (read == -1) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            i10 |= (read & 127) << i11;
            if ((read & 128) == 0) {
                return i10;
            }
            i11 += 7;
        }
        while (i11 < 64) {
            int read2 = input.read();
            if (read2 == -1) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if ((read2 & 128) == 0) {
                return i10;
            }
            i11 += 7;
        }
        throw InvalidProtocolBufferException.malformedVarint();
    }

    public static int Q(final InputStream input) throws IOException {
        int read = input.read();
        if (read != -1) {
            return P(read, input);
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    public static int c(final int n10) {
        return (-(n10 & 1)) ^ (n10 >>> 1);
    }

    public static long d(final long n10) {
        return (-(n10 & 1)) ^ (n10 >>> 1);
    }

    public static C k(final InputStream input) {
        return l(input, 4096);
    }

    public static C l(final InputStream input, int bufferSize) {
        if (bufferSize > 0) {
            return input == null ? q(D0.f67925e) : new d(input, bufferSize);
        }
        throw new IllegalArgumentException("bufferSize must be > 0");
    }

    public static C m(final Iterable<ByteBuffer> input) {
        return !e.o0() ? k(new E0(input)) : n(input, false);
    }

    public static C n(final Iterable<ByteBuffer> bufs, final boolean bufferIsImmutable) {
        int i10 = 0;
        int i11 = 0;
        for (ByteBuffer byteBuffer : bufs) {
            i11 += byteBuffer.remaining();
            i10 = byteBuffer.hasArray() ? i10 | 1 : byteBuffer.isDirect() ? i10 | 2 : i10 | 4;
        }
        return i10 == 2 ? new c(bufs, i11, bufferIsImmutable) : k(new E0(bufs));
    }

    public static C o(ByteBuffer buf) {
        return p(buf, false);
    }

    public static C p(ByteBuffer buf, boolean bufferIsImmutable) {
        if (buf.hasArray()) {
            return s(buf.array(), buf.arrayOffset() + buf.position(), buf.remaining(), bufferIsImmutable);
        }
        if (buf.isDirect() && e.o0()) {
            return new e(buf, bufferIsImmutable);
        }
        int remaining = buf.remaining();
        byte[] bArr = new byte[remaining];
        buf.duplicate().get(bArr);
        return s(bArr, 0, remaining, true);
    }

    public static C q(final byte[] buf) {
        return r(buf, 0, buf.length);
    }

    public static C r(final byte[] buf, final int off, final int len) {
        return s(buf, off, len, false);
    }

    public static C s(final byte[] buf, final int off, final int len, final boolean bufferIsImmutable) {
        b bVar = new b(buf, off, len, bufferIsImmutable);
        try {
            bVar.u(len);
            return bVar;
        } catch (InvalidProtocolBufferException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public abstract int A() throws IOException;

    public abstract int B() throws IOException;

    public abstract long C() throws IOException;

    public abstract float D() throws IOException;

    public abstract <T extends InterfaceC12659b1> T E(final int fieldNumber, final InterfaceC12723w1<T> parser, final C12666d0 extensionRegistry) throws IOException;

    public abstract void F(final int fieldNumber, final InterfaceC12659b1.a builder, final C12666d0 extensionRegistry) throws IOException;

    public abstract int G() throws IOException;

    public abstract long H() throws IOException;

    public abstract <T extends InterfaceC12659b1> T I(final InterfaceC12723w1<T> parser, final C12666d0 extensionRegistry) throws IOException;

    public abstract void J(final InterfaceC12659b1.a builder, final C12666d0 extensionRegistry) throws IOException;

    public abstract byte K() throws IOException;

    public abstract byte[] L(final int size) throws IOException;

    public abstract int M() throws IOException;

    public abstract long N() throws IOException;

    public abstract int O() throws IOException;

    public abstract long R() throws IOException;

    public abstract long S() throws IOException;

    public abstract int T() throws IOException;

    public abstract long U() throws IOException;

    public abstract int V() throws IOException;

    public abstract long W() throws IOException;

    public abstract String X() throws IOException;

    public abstract String Y() throws IOException;

    public abstract int Z() throws IOException;

    public abstract void a(final int value) throws InvalidProtocolBufferException;

    public abstract int a0() throws IOException;

    public void b() throws InvalidProtocolBufferException {
        if (this.f67831a >= this.f67832b) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
    }

    public abstract long b0() throws IOException;

    @Deprecated
    public abstract void c0(final int fieldNumber, final InterfaceC12659b1.a builder) throws IOException;

    public abstract void d0();

    public final void e() {
        this.f67835e = true;
    }

    public final int e0(final int limit) {
        if (limit >= 0) {
            int i10 = this.f67832b;
            this.f67832b = limit;
            return i10;
        }
        throw new IllegalArgumentException("Recursion limit cannot be negative: " + limit);
    }

    public abstract void f(boolean enabled);

    public final int f0(final int limit) {
        if (limit >= 0) {
            int i10 = this.f67833c;
            this.f67833c = limit;
            return i10;
        }
        throw new IllegalArgumentException("Size limit cannot be negative: " + limit);
    }

    public abstract int g();

    public final boolean g0() {
        return this.f67835e;
    }

    public abstract int h();

    public abstract boolean h0(final int tag) throws IOException;

    public abstract int i();

    @Deprecated
    public abstract boolean i0(final int tag, final CodedOutputStream output) throws IOException;

    public abstract boolean j() throws IOException;

    public abstract void j0() throws IOException;

    public abstract void k0(CodedOutputStream output) throws IOException;

    public abstract void l0(final int size) throws IOException;

    public final void m0() {
        this.f67835e = false;
    }

    public abstract void t(final int oldLimit);

    public abstract int u(int byteLimit) throws InvalidProtocolBufferException;

    public abstract boolean v() throws IOException;

    public abstract byte[] w() throws IOException;

    public abstract ByteBuffer x() throws IOException;

    public abstract AbstractC12724x y() throws IOException;

    public abstract double z() throws IOException;

    public C() {
        this.f67832b = f67830h;
        this.f67833c = Integer.MAX_VALUE;
        this.f67835e = false;
    }
}
