package com.android.tools.r8.internal;

import java.nio.ByteBuffer;

public final class C10619ze extends AbstractC4916Be {

    public final ByteBuffer f54424c;

    public final long f54425d;

    public long f54426e;

    public long f54427f;

    public final long f54428g;

    public int f54429h;

    public int f54430i;

    public int f54431j = Integer.MAX_VALUE;

    public C10619ze(ByteBuffer byteBuffer, boolean z10) {
        this.f54424c = byteBuffer;
        long c10 = AbstractC6671bw0.f46895c.c(byteBuffer, AbstractC6671bw0.f46899g);
        this.f54425d = c10;
        this.f54426e = byteBuffer.limit() + c10;
        long position = c10 + byteBuffer.position();
        this.f54427f = position;
        this.f54428g = position;
    }

    @Override
    public final void a(int i10) {
        if (this.f54430i != i10) {
            throw new MJ("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override
    public final int b() {
        int i10 = this.f54431j;
        if (i10 == Integer.MAX_VALUE) {
            return -1;
        }
        return i10 - ((int) (this.f54427f - this.f54428g));
    }

    @Override
    public final boolean c() {
        return x() != 0;
    }

    @Override
    public final C7707i8 d() {
        int l10 = l();
        if (l10 > 0) {
            long j10 = this.f54426e;
            long j11 = this.f54427f;
            if (l10 <= ((int) (j10 - j11))) {
                byte[] bArr = new byte[l10];
                long j12 = l10;
                AbstractC6671bw0.f46895c.a(j11, bArr, j12);
                this.f54427f += j12;
                C7707i8 c7707i8 = AbstractC8373m8.f50204c;
                return new C7707i8(bArr);
            }
        }
        if (l10 == 0) {
            return AbstractC8373m8.f50204c;
        }
        if (l10 < 0) {
            throw new MJ("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override
    public final boolean e(int i10) {
        int s10;
        int i11 = i10 & 7;
        int i12 = 0;
        if (i11 == 0) {
            if (((int) (this.f54426e - this.f54427f)) >= 10) {
                while (i12 < 10) {
                    long j10 = this.f54427f;
                    this.f54427f = j10 + 1;
                    if (AbstractC6671bw0.f46895c.a(j10) < 0) {
                        i12++;
                    }
                }
                throw new MJ("CodedInputStream encountered a malformed varint.");
            }
            while (i12 < 10) {
                long j11 = this.f54427f;
                if (j11 != this.f54426e) {
                    this.f54427f = j11 + 1;
                    if (AbstractC6671bw0.f46895c.a(j11) < 0) {
                        i12++;
                    }
                } else {
                    throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                }
            }
            throw new MJ("CodedInputStream encountered a malformed varint.");
            return true;
        }
        if (i11 == 1) {
            f(8);
            return true;
        }
        if (i11 != 2) {
            if (i11 != 3) {
                if (i11 == 4) {
                    return false;
                }
                if (i11 == 5) {
                    f(4);
                    return true;
                }
                int i13 = MJ.f42271c;
                throw new KJ();
            }
            do {
                s10 = s();
                if (s10 == 0) {
                    break;
                }
            } while (e(s10));
            a(((i10 >>> 3) << 3) | 4);
            return true;
        }
        f(l());
        return true;
    }

    @Override
    public final int f() {
        return l();
    }

    @Override
    public final int g() {
        return v();
    }

    @Override
    public final long h() {
        return w();
    }

    @Override
    public final float i() {
        return Float.intBitsToFloat(v());
    }

    @Override
    public final int j() {
        return l();
    }

    @Override
    public final long k() {
        return x();
    }

    @Override
    public final int l() {
        int i10;
        long j10 = this.f54427f;
        if (this.f54426e != j10) {
            long j11 = j10 + 1;
            AbstractC6504aw0 abstractC6504aw0 = AbstractC6671bw0.f46895c;
            byte a10 = abstractC6504aw0.a(j10);
            if (a10 >= 0) {
                this.f54427f = j11;
                return a10;
            }
            if (this.f54426e - j11 >= 9) {
                long j12 = 2 + j10;
                int a11 = (abstractC6504aw0.a(j11) << 7) ^ a10;
                if (a11 < 0) {
                    i10 = a11 ^ (-128);
                } else {
                    long j13 = 3 + j10;
                    int a12 = a11 ^ (abstractC6504aw0.a(j12) << 14);
                    if (a12 >= 0) {
                        i10 = a12 ^ 16256;
                        j12 = j13;
                    } else {
                        j12 = 4 + j10;
                        int a13 = a12 ^ (abstractC6504aw0.a(j13) << 21);
                        if (a13 < 0) {
                            i10 = (-2080896) ^ a13;
                        } else {
                            long j14 = 5 + j10;
                            byte a14 = abstractC6504aw0.a(j12);
                            int i11 = (a13 ^ (a14 << 28)) ^ 266354560;
                            if (a14 < 0) {
                                j12 = 6 + j10;
                                if (abstractC6504aw0.a(j14) < 0) {
                                    j14 = 7 + j10;
                                    if (abstractC6504aw0.a(j12) < 0) {
                                        j12 = 8 + j10;
                                        if (abstractC6504aw0.a(j14) < 0) {
                                            long j15 = 9 + j10;
                                            if (abstractC6504aw0.a(j12) < 0) {
                                                long j16 = j10 + 10;
                                                if (abstractC6504aw0.a(j15) >= 0) {
                                                    j12 = j16;
                                                }
                                            } else {
                                                j12 = j15;
                                            }
                                        }
                                    }
                                }
                                i10 = i11;
                            }
                            j12 = j14;
                            i10 = i11;
                        }
                    }
                }
                this.f54427f = j12;
                return i10;
            }
        }
        long j17 = 0;
        for (int i12 = 0; i12 < 64; i12 += 7) {
            long j18 = this.f54427f;
            if (j18 == this.f54426e) {
                throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            this.f54427f = j18 + 1;
            j17 |= (r5 & Byte.MAX_VALUE) << i12;
            if ((AbstractC6671bw0.f46895c.a(j18) & 128) == 0) {
                return (int) j17;
            }
        }
        throw new MJ("CodedInputStream encountered a malformed varint.");
    }

    @Override
    public final int m() {
        return v();
    }

    @Override
    public final long n() {
        return w();
    }

    @Override
    public final int o() {
        return AbstractC4916Be.b(l());
    }

    @Override
    public final long p() {
        return AbstractC4916Be.a(x());
    }

    @Override
    public final String q() {
        int l10 = l();
        if (l10 > 0) {
            long j10 = this.f54426e;
            long j11 = this.f54427f;
            if (l10 <= ((int) (j10 - j11))) {
                byte[] bArr = new byte[l10];
                long j12 = l10;
                AbstractC6671bw0.f46895c.a(j11, bArr, j12);
                String str = new String(bArr, YI.f45965b);
                this.f54427f += j12;
                return str;
            }
        }
        if (l10 == 0) {
            return "";
        }
        if (l10 < 0) {
            throw new MJ("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override
    public final String r() {
        int l10 = l();
        if (l10 > 0) {
            long j10 = this.f54426e;
            long j11 = this.f54427f;
            if (l10 <= ((int) (j10 - j11))) {
                int i10 = (int) (j11 - this.f54425d);
                ByteBuffer byteBuffer = this.f54424c;
                AbstractC8838ow0 abstractC8838ow0 = AbstractC9672tw0.f52738a;
                abstractC8838ow0.getClass();
                String a10 = byteBuffer.hasArray() ? abstractC8838ow0.a(byteBuffer.array(), byteBuffer.arrayOffset() + i10, l10) : byteBuffer.isDirect() ? abstractC8838ow0.b(byteBuffer, i10, l10) : AbstractC8838ow0.a(byteBuffer, i10, l10);
                this.f54427f += l10;
                return a10;
            }
        }
        if (l10 == 0) {
            return "";
        }
        if (l10 <= 0) {
            throw new MJ("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override
    public final int s() {
        if (this.f54427f == this.f54426e) {
            this.f54430i = 0;
            return 0;
        }
        int l10 = l();
        this.f54430i = l10;
        if ((l10 >>> 3) != 0) {
            return l10;
        }
        throw new MJ("Protocol message contained an invalid tag (zero).");
    }

    @Override
    public final int t() {
        return l();
    }

    @Override
    public final long u() {
        return x();
    }

    public final int v() {
        long j10 = this.f54427f;
        if (this.f54426e - j10 < 4) {
            throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.f54427f = 4 + j10;
        AbstractC6504aw0 abstractC6504aw0 = AbstractC6671bw0.f46895c;
        return ((abstractC6504aw0.a(j10 + 3) & 255) << 24) | (abstractC6504aw0.a(j10) & 255) | ((abstractC6504aw0.a(1 + j10) & 255) << 8) | ((abstractC6504aw0.a(2 + j10) & 255) << 16);
    }

    public final long w() {
        long j10 = this.f54427f;
        if (this.f54426e - j10 < 8) {
            throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.f54427f = 8 + j10;
        AbstractC6504aw0 abstractC6504aw0 = AbstractC6671bw0.f46895c;
        return ((abstractC6504aw0.a(j10 + 7) & 255) << 56) | (abstractC6504aw0.a(j10) & 255) | ((abstractC6504aw0.a(1 + j10) & 255) << 8) | ((abstractC6504aw0.a(2 + j10) & 255) << 16) | ((abstractC6504aw0.a(3 + j10) & 255) << 24) | ((abstractC6504aw0.a(4 + j10) & 255) << 32) | ((abstractC6504aw0.a(5 + j10) & 255) << 40) | ((abstractC6504aw0.a(6 + j10) & 255) << 48);
    }

    public final long x() {
        long j10;
        long j11;
        int i10;
        long j12 = this.f54427f;
        long j13 = 0;
        if (this.f54426e != j12) {
            long j14 = j12 + 1;
            AbstractC6504aw0 abstractC6504aw0 = AbstractC6671bw0.f46895c;
            byte a10 = abstractC6504aw0.a(j12);
            if (a10 >= 0) {
                this.f54427f = j14;
                return a10;
            }
            if (this.f54426e - j14 >= 9) {
                long j15 = 2 + j12;
                int a11 = (abstractC6504aw0.a(j14) << 7) ^ a10;
                if (a11 >= 0) {
                    long j16 = 3 + j12;
                    int a12 = a11 ^ (abstractC6504aw0.a(j15) << 14);
                    if (a12 >= 0) {
                        j10 = a12 ^ 16256;
                        j15 = j16;
                    } else {
                        j15 = 4 + j12;
                        int a13 = a12 ^ (abstractC6504aw0.a(j16) << 21);
                        if (a13 < 0) {
                            i10 = (-2080896) ^ a13;
                        } else {
                            long j17 = j12 + 5;
                            long a14 = a13 ^ (abstractC6504aw0.a(j15) << 28);
                            if (a14 >= 0) {
                                j10 = 266354560 ^ a14;
                                j15 = j17;
                            } else {
                                j15 = j12 + 6;
                                long a15 = (abstractC6504aw0.a(j17) << 35) ^ a14;
                                if (a15 < 0) {
                                    j11 = -34093383808L;
                                } else {
                                    long j18 = 7 + j12;
                                    long a16 = a15 ^ (abstractC6504aw0.a(j15) << 42);
                                    if (a16 >= 0) {
                                        j10 = 4363953127296L ^ a16;
                                        j15 = j18;
                                    } else {
                                        j15 = j12 + 8;
                                        a15 = a16 ^ (abstractC6504aw0.a(j18) << 49);
                                        if (a15 < 0) {
                                            j11 = -558586000294016L;
                                        } else {
                                            long j19 = 9 + j12;
                                            long a17 = (a15 ^ (abstractC6504aw0.a(j15) << 56)) ^ 71499008037633920L;
                                            if (a17 < 0) {
                                                long j20 = j12 + 10;
                                                if (abstractC6504aw0.a(j19) >= 0) {
                                                    j15 = j20;
                                                }
                                            } else {
                                                j15 = j19;
                                            }
                                            j10 = a17;
                                        }
                                    }
                                }
                                j10 = j11 ^ a15;
                            }
                        }
                    }
                    this.f54427f = j15;
                    return j10;
                }
                i10 = a11 ^ (-128);
                j10 = i10;
                this.f54427f = j15;
                return j10;
            }
        }
        for (int i11 = 0; i11 < 64; i11 += 7) {
            long j21 = this.f54427f;
            if (j21 == this.f54426e) {
                throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            this.f54427f = j21 + 1;
            j13 |= (r2 & Byte.MAX_VALUE) << i11;
            if ((AbstractC6671bw0.f46895c.a(j21) & 128) == 0) {
                return j13;
            }
        }
        throw new MJ("CodedInputStream encountered a malformed varint.");
    }

    public final void y() {
        long j10 = this.f54426e + this.f54429h;
        this.f54426e = j10;
        int i10 = (int) (j10 - this.f54428g);
        int i11 = this.f54431j;
        if (i10 <= i11) {
            this.f54429h = 0;
            return;
        }
        int i12 = i10 - i11;
        this.f54429h = i12;
        this.f54426e = j10 - i12;
    }

    @Override
    public final void c(int i10) {
        this.f54431j = i10;
        y();
    }

    public final void f(int i10) {
        if (i10 >= 0) {
            long j10 = this.f54426e;
            long j11 = this.f54427f;
            if (i10 <= ((int) (j10 - j11))) {
                this.f54427f = j11 + i10;
                return;
            }
        }
        if (i10 < 0) {
            throw new MJ("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override
    public final void a(int i10, InterfaceC7928jW interfaceC7928jW, C10670zv c10670zv) {
        a();
        this.f38961a++;
        interfaceC7928jW.mergeFrom(this, c10670zv);
        a((i10 << 3) | 4);
        this.f38961a--;
    }

    @Override
    public final void a(InterfaceC7095eW interfaceC7095eW, C10670zv c10670zv) {
        int l10 = l();
        a();
        int d10 = d(l10);
        this.f38961a++;
        interfaceC7095eW.mergeFrom(this, c10670zv);
        a(0);
        this.f38961a--;
        if (b() == 0) {
            this.f54431j = d10;
            y();
            return;
        }
        throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override
    public final int d(int i10) {
        if (i10 >= 0) {
            int i11 = i10 + ((int) (this.f54427f - this.f54428g));
            int i12 = this.f54431j;
            if (i11 <= i12) {
                this.f54431j = i11;
                y();
                return i12;
            }
            throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        throw new MJ("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    @Override
    public final InterfaceC8095kW a(InterfaceC10535z50 interfaceC10535z50, C10670zv c10670zv) {
        int l10 = l();
        a();
        int d10 = d(l10);
        this.f38961a++;
        InterfaceC8095kW interfaceC8095kW = (InterfaceC8095kW) interfaceC10535z50.parsePartialFrom(this, c10670zv);
        a(0);
        this.f38961a--;
        if (b() == 0) {
            this.f54431j = d10;
            y();
            return interfaceC8095kW;
        }
        throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override
    public final double e() {
        return Double.longBitsToDouble(w());
    }
}
