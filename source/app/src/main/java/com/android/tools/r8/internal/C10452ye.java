package com.android.tools.r8.internal;

import android.content.Context;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;

public final class C10452ye extends AbstractC4916Be {

    public final InputStream f54084c;

    public final byte[] f54085d;

    public int f54086e;

    public int f54087f;

    public int f54088g;

    public int f54089h;

    public int f54090i;

    public int f54091j = Integer.MAX_VALUE;

    public C10452ye(InputStream inputStream) {
        Charset charset = YI.f45964a;
        if (inputStream == null) {
            throw new NullPointerException(Context.INPUT_SERVICE);
        }
        this.f54084c = inputStream;
        this.f54085d = new byte[4096];
        this.f54086e = 0;
        this.f54088g = 0;
        this.f54090i = 0;
    }

    @Override
    public final void a(int i10) {
        if (this.f54089h != i10) {
            throw new MJ("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override
    public final int b() {
        int i10 = this.f54091j;
        if (i10 == Integer.MAX_VALUE) {
            return -1;
        }
        return i10 - (this.f54090i + this.f54088g);
    }

    @Override
    public final boolean c() {
        return x() != 0;
    }

    @Override
    public final C7707i8 d() {
        int l10 = l();
        int i10 = this.f54086e;
        int i11 = this.f54088g;
        if (l10 <= i10 - i11 && l10 > 0) {
            byte[] bArr = this.f54085d;
            C7707i8 c7707i8 = AbstractC8373m8.f50204c;
            AbstractC8373m8.a(i11, i11 + l10, bArr.length);
            C7707i8 c7707i82 = new C7707i8(AbstractC8373m8.f50205d.a(bArr, i11, l10));
            this.f54088g += l10;
            return c7707i82;
        }
        if (l10 == 0) {
            return AbstractC8373m8.f50204c;
        }
        byte[] g10 = g(l10);
        if (g10 != null) {
            int length = g10.length;
            AbstractC8373m8.a(0, length, g10.length);
            return new C7707i8(AbstractC8373m8.f50205d.a(g10, 0, length));
        }
        int i12 = this.f54088g;
        int i13 = this.f54086e;
        int i14 = i13 - i12;
        this.f54090i += i13;
        this.f54088g = 0;
        this.f54086e = 0;
        ArrayList h10 = h(l10 - i14);
        byte[] bArr2 = new byte[l10];
        System.arraycopy(this.f54085d, i12, bArr2, 0, i14);
        int size = h10.size();
        int i15 = 0;
        while (i15 < size) {
            Object obj = h10.get(i15);
            i15++;
            byte[] bArr3 = (byte[]) obj;
            System.arraycopy(bArr3, 0, bArr2, i14, bArr3.length);
            i14 += bArr3.length;
        }
        C7707i8 c7707i83 = AbstractC8373m8.f50204c;
        return new C7707i8(bArr2);
    }

    @Override
    public final boolean e(int i10) {
        int s10;
        int i11 = i10 & 7;
        int i12 = 0;
        if (i11 == 0) {
            if (this.f54086e - this.f54088g >= 10) {
                while (i12 < 10) {
                    byte[] bArr = this.f54085d;
                    int i13 = this.f54088g;
                    this.f54088g = i13 + 1;
                    if (bArr[i13] < 0) {
                        i12++;
                    }
                }
                throw new MJ("CodedInputStream encountered a malformed varint.");
            }
            while (i12 < 10) {
                if (this.f54088g == this.f54086e) {
                    i(1);
                }
                byte[] bArr2 = this.f54085d;
                int i14 = this.f54088g;
                this.f54088g = i14 + 1;
                if (bArr2[i14] < 0) {
                    i12++;
                }
            }
            throw new MJ("CodedInputStream encountered a malformed varint.");
            return true;
        }
        if (i11 == 1) {
            j(8);
            return true;
        }
        if (i11 != 2) {
            if (i11 != 3) {
                if (i11 == 4) {
                    return false;
                }
                if (i11 == 5) {
                    j(4);
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
        j(l());
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
        int i11 = this.f54088g;
        int i12 = this.f54086e;
        if (i12 != i11) {
            byte[] bArr = this.f54085d;
            int i13 = i11 + 1;
            byte b10 = bArr[i11];
            if (b10 >= 0) {
                this.f54088g = i13;
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
                this.f54088g = i14;
                return i10;
            }
        }
        long j10 = 0;
        for (int i23 = 0; i23 < 64; i23 += 7) {
            if (this.f54088g == this.f54086e) {
                i(1);
            }
            byte[] bArr2 = this.f54085d;
            int i24 = this.f54088g;
            this.f54088g = i24 + 1;
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
            int i10 = this.f54086e;
            int i11 = this.f54088g;
            if (l10 <= i10 - i11) {
                String str = new String(this.f54085d, i11, l10, YI.f45965b);
                this.f54088g += l10;
                return str;
            }
        }
        if (l10 == 0) {
            return "";
        }
        if (l10 > this.f54086e) {
            return new String(f(l10), YI.f45965b);
        }
        i(l10);
        String str2 = new String(this.f54085d, this.f54088g, l10, YI.f45965b);
        this.f54088g += l10;
        return str2;
    }

    @Override
    public final String r() {
        byte[] f10;
        int l10 = l();
        int i10 = this.f54088g;
        int i11 = this.f54086e;
        if (l10 <= i11 - i10 && l10 > 0) {
            f10 = this.f54085d;
            this.f54088g = i10 + l10;
        } else {
            if (l10 == 0) {
                return "";
            }
            i10 = 0;
            if (l10 <= i11) {
                i(l10);
                f10 = this.f54085d;
                this.f54088g = l10;
            } else {
                f10 = f(l10);
            }
        }
        return AbstractC9672tw0.f52738a.a(f10, i10, l10);
    }

    @Override
    public final int s() {
        if (this.f54088g == this.f54086e && !k(1)) {
            this.f54089h = 0;
            return 0;
        }
        int l10 = l();
        this.f54089h = l10;
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
        int i10 = this.f54088g;
        if (this.f54086e - i10 < 4) {
            i(4);
            i10 = this.f54088g;
        }
        byte[] bArr = this.f54085d;
        this.f54088g = i10 + 4;
        return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    public final long w() {
        int i10 = this.f54088g;
        if (this.f54086e - i10 < 8) {
            i(8);
            i10 = this.f54088g;
        }
        byte[] bArr = this.f54085d;
        this.f54088g = i10 + 8;
        return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
    }

    public final long x() {
        long j10;
        long j11;
        long j12;
        int i10 = this.f54088g;
        int i11 = this.f54086e;
        long j13 = 0;
        if (i11 != i10) {
            byte[] bArr = this.f54085d;
            int i12 = i10 + 1;
            byte b10 = bArr[i10];
            if (b10 >= 0) {
                this.f54088g = i12;
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
                this.f54088g = i13;
                return j10;
            }
        }
        for (int i21 = 0; i21 < 64; i21 += 7) {
            if (this.f54088g == this.f54086e) {
                i(1);
            }
            byte[] bArr2 = this.f54085d;
            int i22 = this.f54088g;
            this.f54088g = i22 + 1;
            j13 |= (r1 & Byte.MAX_VALUE) << i21;
            if ((bArr2[i22] & 128) == 0) {
                return j13;
            }
        }
        throw new MJ("CodedInputStream encountered a malformed varint.");
    }

    public final void y() {
        int i10 = this.f54086e + this.f54087f;
        this.f54086e = i10;
        int i11 = this.f54090i + i10;
        int i12 = this.f54091j;
        if (i11 <= i12) {
            this.f54087f = 0;
            return;
        }
        int i13 = i11 - i12;
        this.f54087f = i13;
        this.f54086e = i10 - i13;
    }

    @Override
    public final void c(int i10) {
        this.f54091j = i10;
        y();
    }

    public final byte[] f(int i10) {
        byte[] g10 = g(i10);
        if (g10 != null) {
            return g10;
        }
        int i11 = this.f54088g;
        int i12 = this.f54086e;
        int i13 = i12 - i11;
        this.f54090i += i12;
        this.f54088g = 0;
        this.f54086e = 0;
        ArrayList h10 = h(i10 - i13);
        byte[] bArr = new byte[i10];
        System.arraycopy(this.f54085d, i11, bArr, 0, i13);
        int size = h10.size();
        int i14 = 0;
        while (i14 < size) {
            Object obj = h10.get(i14);
            i14++;
            byte[] bArr2 = (byte[]) obj;
            System.arraycopy(bArr2, 0, bArr, i13, bArr2.length);
            i13 += bArr2.length;
        }
        return bArr;
    }

    public final byte[] g(int i10) {
        if (i10 == 0) {
            return YI.f45967d;
        }
        if (i10 >= 0) {
            int i11 = this.f54090i;
            int i12 = this.f54088g;
            int i13 = i11 + i12 + i10;
            if (i13 - Integer.MAX_VALUE <= 0) {
                int i14 = this.f54091j;
                if (i13 <= i14) {
                    int i15 = this.f54086e - i12;
                    int i16 = i10 - i15;
                    if (i16 >= 4096 && i16 > this.f54084c.available()) {
                        return null;
                    }
                    byte[] bArr = new byte[i10];
                    System.arraycopy(this.f54085d, this.f54088g, bArr, 0, i15);
                    this.f54090i += this.f54086e;
                    this.f54088g = 0;
                    this.f54086e = 0;
                    while (i15 < i10) {
                        int read = this.f54084c.read(bArr, i15, i10 - i15);
                        if (read != -1) {
                            this.f54090i += read;
                            i15 += read;
                        } else {
                            throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                        }
                    }
                    return bArr;
                }
                j((i14 - i11) - i12);
                throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            throw new MJ("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
        }
        throw new MJ("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public final ArrayList h(int i10) {
        ArrayList arrayList = new ArrayList();
        while (i10 > 0) {
            int min = Math.min(i10, 4096);
            byte[] bArr = new byte[min];
            int i11 = 0;
            while (i11 < min) {
                int read = this.f54084c.read(bArr, i11, min - i11);
                if (read != -1) {
                    this.f54090i += read;
                    i11 += read;
                } else {
                    throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                }
            }
            i10 -= min;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    public final void i(int i10) {
        if (k(i10)) {
            return;
        }
        if (i10 > (Integer.MAX_VALUE - this.f54090i) - this.f54088g) {
            throw new MJ("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
        }
        throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public final void j(int i10) {
        int i11 = this.f54086e;
        int i12 = this.f54088g;
        int i13 = i11 - i12;
        if (i10 <= i13 && i10 >= 0) {
            this.f54088g = i12 + i10;
            return;
        }
        if (i10 >= 0) {
            int i14 = this.f54090i;
            int i15 = i14 + i12;
            int i16 = i15 + i10;
            int i17 = this.f54091j;
            if (i16 <= i17) {
                this.f54090i = i15;
                this.f54086e = 0;
                this.f54088g = 0;
                while (i13 < i10) {
                    try {
                        long j10 = i10 - i13;
                        long skip = this.f54084c.skip(j10);
                        if (skip < 0 || skip > j10) {
                            throw new IllegalStateException(((Object) this.f54084c.getClass()) + "#skip returned invalid result: " + skip + "\nThe InputStream implementation is buggy.");
                        }
                        if (skip == 0) {
                            break;
                        } else {
                            i13 += (int) skip;
                        }
                    } finally {
                        this.f54090i += i13;
                        y();
                    }
                }
                if (i13 >= i10) {
                    return;
                }
                int i18 = this.f54086e;
                int i19 = i18 - this.f54088g;
                this.f54088g = i18;
                i(1);
                while (true) {
                    int i20 = i10 - i19;
                    int i21 = this.f54086e;
                    if (i20 > i21) {
                        i19 += i21;
                        this.f54088g = i21;
                        i(1);
                    } else {
                        this.f54088g = i20;
                        return;
                    }
                }
            } else {
                j((i17 - i14) - i12);
                throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
        } else {
            throw new MJ("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
    }

    public final boolean k(int i10) {
        int i11 = this.f54088g;
        int i12 = i11 + i10;
        int i13 = this.f54086e;
        if (i12 > i13) {
            int i14 = this.f54090i;
            if (i10 > (Integer.MAX_VALUE - i14) - i11 || i14 + i11 + i10 > this.f54091j) {
                return false;
            }
            if (i11 > 0) {
                if (i13 > i11) {
                    byte[] bArr = this.f54085d;
                    System.arraycopy(bArr, i11, bArr, 0, i13 - i11);
                }
                this.f54090i += i11;
                this.f54086e -= i11;
                this.f54088g = 0;
            }
            InputStream inputStream = this.f54084c;
            byte[] bArr2 = this.f54085d;
            int i15 = this.f54086e;
            int read = inputStream.read(bArr2, i15, Math.min(bArr2.length - i15, (Integer.MAX_VALUE - this.f54090i) - i15));
            if (read == 0 || read < -1 || read > this.f54085d.length) {
                throw new IllegalStateException(((Object) this.f54084c.getClass()) + "#read(byte[]) returned invalid result: " + read + "\nThe InputStream implementation is buggy.");
            }
            if (read <= 0) {
                return false;
            }
            this.f54086e += read;
            y();
            if (this.f54086e >= i10) {
                return true;
            }
            return k(i10);
        }
        throw new IllegalStateException(HC.a(i10, "refillBuffer() called when ", " bytes were already available in buffer"));
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
            this.f54091j = d10;
            y();
            return;
        }
        throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
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
            this.f54091j = d10;
            y();
            return interfaceC8095kW;
        }
        throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override
    public final int d(int i10) {
        if (i10 >= 0) {
            int i11 = this.f54090i + this.f54088g + i10;
            int i12 = this.f54091j;
            if (i11 <= i12) {
                this.f54091j = i11;
                y();
                return i12;
            }
            throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        throw new MJ("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }
}
