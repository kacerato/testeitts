package com.android.tools.r8.internal;

import java.util.Arrays;

public final class C10285xe extends AbstractC4916Be {

    public final byte[] f53791c;

    public int f53792d;

    public int f53793e;

    public int f53794f;

    public final int f53795g;

    public int f53796h;

    public int f53797i = Integer.MAX_VALUE;

    public C10285xe(byte[] bArr, int i10, int i11, boolean z10) {
        this.f53791c = bArr;
        this.f53792d = i11 + i10;
        this.f53794f = i10;
        this.f53795g = i10;
    }

    @Override
    public final void a(int i10) {
        if (this.f53796h != i10) {
            throw new MJ("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override
    public final int b() {
        int i10 = this.f53797i;
        if (i10 == Integer.MAX_VALUE) {
            return -1;
        }
        return i10 - (this.f53794f - this.f53795g);
    }

    @Override
    public final boolean c() {
        return x() != 0;
    }

    @Override
    public final C7707i8 d() {
        byte[] bArr;
        int l10 = l();
        if (l10 > 0) {
            int i10 = this.f53792d;
            int i11 = this.f53794f;
            if (l10 <= i10 - i11) {
                byte[] bArr2 = this.f53791c;
                C7707i8 c7707i8 = AbstractC8373m8.f50204c;
                AbstractC8373m8.a(i11, i11 + l10, bArr2.length);
                C7707i8 c7707i82 = new C7707i8(AbstractC8373m8.f50205d.a(bArr2, i11, l10));
                this.f53794f += l10;
                return c7707i82;
            }
        }
        if (l10 == 0) {
            return AbstractC8373m8.f50204c;
        }
        if (l10 > 0) {
            int i12 = this.f53792d;
            int i13 = this.f53794f;
            if (l10 <= i12 - i13) {
                int i14 = l10 + i13;
                this.f53794f = i14;
                bArr = Arrays.copyOfRange(this.f53791c, i13, i14);
                C7707i8 c7707i83 = AbstractC8373m8.f50204c;
                return new C7707i8(bArr);
            }
        }
        if (l10 > 0) {
            throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        if (l10 == 0) {
            bArr = YI.f45967d;
            C7707i8 c7707i832 = AbstractC8373m8.f50204c;
            return new C7707i8(bArr);
        }
        throw new MJ("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    @Override
    public final boolean e(int i10) {
        int s10;
        int i11 = i10 & 7;
        int i12 = 0;
        if (i11 == 0) {
            if (this.f53792d - this.f53794f >= 10) {
                while (i12 < 10) {
                    byte[] bArr = this.f53791c;
                    int i13 = this.f53794f;
                    this.f53794f = i13 + 1;
                    if (bArr[i13] < 0) {
                        i12++;
                    }
                }
                throw new MJ("CodedInputStream encountered a malformed varint.");
            }
            while (i12 < 10) {
                int i14 = this.f53794f;
                if (i14 != this.f53792d) {
                    byte[] bArr2 = this.f53791c;
                    this.f53794f = i14 + 1;
                    if (bArr2[i14] < 0) {
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
                int i15 = MJ.f42271c;
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
        int i11 = this.f53794f;
        int i12 = this.f53792d;
        if (i12 != i11) {
            byte[] bArr = this.f53791c;
            int i13 = i11 + 1;
            byte b10 = bArr[i11];
            if (b10 >= 0) {
                this.f53794f = i13;
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
                            i14 = i18;
                        } else {
                            i16 = i11 + 5;
                            byte b11 = bArr[i18];
                            int i20 = (i19 ^ (b11 << 28)) ^ 266354560;
                            if (b11 < 0) {
                                int i21 = i11 + 6;
                                if (bArr[i16] < 0) {
                                    i16 = i11 + 7;
                                    if (bArr[i21] < 0) {
                                        i21 = i11 + 8;
                                        if (bArr[i16] < 0) {
                                            i16 = i11 + 9;
                                            if (bArr[i21] < 0) {
                                                int i22 = i11 + 10;
                                                if (bArr[i16] >= 0) {
                                                    i16 = i22;
                                                }
                                            }
                                        }
                                    }
                                }
                                i16 = i21;
                            }
                            i10 = i20;
                        }
                    }
                    i14 = i16;
                }
                this.f53794f = i14;
                return i10;
            }
        }
        long j10 = 0;
        for (int i23 = 0; i23 < 64; i23 += 7) {
            int i24 = this.f53794f;
            if (i24 == this.f53792d) {
                throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            byte[] bArr2 = this.f53791c;
            this.f53794f = i24 + 1;
            j10 |= (r3 & Byte.MAX_VALUE) << i23;
            if ((bArr2[i24] & 128) == 0) {
                return (int) j10;
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
            int i10 = this.f53792d;
            int i11 = this.f53794f;
            if (l10 <= i10 - i11) {
                String str = new String(this.f53791c, i11, l10, YI.f45965b);
                this.f53794f += l10;
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
            int i10 = this.f53792d;
            int i11 = this.f53794f;
            if (l10 <= i10 - i11) {
                String a10 = AbstractC9672tw0.f52738a.a(this.f53791c, i11, l10);
                this.f53794f += l10;
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
        if (this.f53794f == this.f53792d) {
            this.f53796h = 0;
            return 0;
        }
        int l10 = l();
        this.f53796h = l10;
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
        int i10 = this.f53794f;
        if (this.f53792d - i10 < 4) {
            throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        byte[] bArr = this.f53791c;
        this.f53794f = i10 + 4;
        return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    public final long w() {
        int i10 = this.f53794f;
        if (this.f53792d - i10 < 8) {
            throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        byte[] bArr = this.f53791c;
        this.f53794f = i10 + 8;
        return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
    }

    public final long x() {
        long j10;
        long j11;
        long j12;
        int i10 = this.f53794f;
        int i11 = this.f53792d;
        long j13 = 0;
        if (i11 != i10) {
            byte[] bArr = this.f53791c;
            int i12 = i10 + 1;
            byte b10 = bArr[i10];
            if (b10 >= 0) {
                this.f53794f = i12;
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
                            j10 = (-2080896) ^ i18;
                            i13 = i17;
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
                            j10 = j12 ^ j15;
                        }
                    }
                }
                this.f53794f = i13;
                return j10;
            }
        }
        for (int i21 = 0; i21 < 64; i21 += 7) {
            int i22 = this.f53794f;
            if (i22 == this.f53792d) {
                throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            byte[] bArr2 = this.f53791c;
            this.f53794f = i22 + 1;
            j13 |= (r1 & Byte.MAX_VALUE) << i21;
            if ((bArr2[i22] & 128) == 0) {
                return j13;
            }
        }
        throw new MJ("CodedInputStream encountered a malformed varint.");
    }

    public final void y() {
        int i10 = this.f53792d + this.f53793e;
        this.f53792d = i10;
        int i11 = i10 - this.f53795g;
        int i12 = this.f53797i;
        if (i11 <= i12) {
            this.f53793e = 0;
            return;
        }
        int i13 = i11 - i12;
        this.f53793e = i13;
        this.f53792d = i10 - i13;
    }

    @Override
    public final void c(int i10) {
        this.f53797i = i10;
        y();
    }

    public final void f(int i10) {
        if (i10 >= 0) {
            int i11 = this.f53792d;
            int i12 = this.f53794f;
            if (i10 <= i11 - i12) {
                this.f53794f = i12 + i10;
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
            this.f53797i = d10;
            y();
            return;
        }
        throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override
    public final int d(int i10) {
        if (i10 >= 0) {
            int i11 = (this.f53794f - this.f53795g) + i10;
            if (i11 >= 0) {
                int i12 = this.f53797i;
                if (i11 <= i12) {
                    this.f53797i = i11;
                    y();
                    return i12;
                }
                throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            throw new MJ("Failed to parse the message.");
        }
        throw new MJ("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    @Override
    public final double e() {
        return Double.longBitsToDouble(w());
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
            this.f53797i = d10;
            y();
            return interfaceC8095kW;
        }
        throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }
}
