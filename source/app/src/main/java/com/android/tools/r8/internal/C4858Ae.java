package com.android.tools.r8.internal;

import java.io.InputStream;
import java.util.ArrayList;

public final class C4858Ae {

    public int f38663c;

    public final InputStream f38665e;

    public int f38666f;

    public int f38669i;

    public int f38668h = Integer.MAX_VALUE;

    public final byte[] f38661a = new byte[4096];

    public int f38662b = 0;

    public int f38664d = 0;

    public int f38667g = 0;

    public C4858Ae(InputStream inputStream) {
        this.f38665e = inputStream;
    }

    public final boolean a(int i10, C5264He c5264He) {
        int i11;
        int i12 = i10 & 7;
        if (i12 == 0) {
            long g10 = g();
            c5264He.g(i10);
            c5264He.d(g10);
            return true;
        }
        if (i12 == 1) {
            long e10 = e();
            c5264He.g(i10);
            c5264He.c(e10);
            return true;
        }
        if (i12 == 2) {
            ET b10 = b();
            c5264He.g(i10);
            c5264He.g(b10.f39875d.length);
            c5264He.a(b10);
            return true;
        }
        if (i12 != 3) {
            if (i12 == 4) {
                return false;
            }
            if (i12 == 5) {
                int d10 = d();
                c5264He.g(i10);
                c5264He.f(d10);
                return true;
            }
            throw new LJ("Protocol message tag had invalid wire type.");
        }
        c5264He.g(i10);
        do {
            i11 = i();
            if (i11 == 0) {
                break;
            }
        } while (a(i11, c5264He));
        int i13 = ((i10 >>> 3) << 3) | 4;
        if (this.f38666f == i13) {
            c5264He.g(i13);
            return true;
        }
        throw new LJ("Protocol message end-group tag did not match expected tag.");
    }

    public final ET b() {
        int f10 = f();
        int i10 = this.f38662b;
        int i11 = this.f38664d;
        if (f10 > i10 - i11 || f10 <= 0) {
            if (f10 == 0) {
                return AbstractC8206l8.f49897b;
            }
            return new ET(c(f10));
        }
        byte[] bArr = new byte[f10];
        System.arraycopy(this.f38661a, i11, bArr, 0, f10);
        ET et = new ET(bArr);
        this.f38664d += f10;
        return et;
    }

    public final int c() {
        return f();
    }

    public final int d() {
        int i10 = this.f38664d;
        if (this.f38662b - i10 < 4) {
            d(4);
            i10 = this.f38664d;
        }
        byte[] bArr = this.f38661a;
        this.f38664d = i10 + 4;
        return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    public final long e() {
        int i10 = this.f38664d;
        if (this.f38662b - i10 < 8) {
            d(8);
            i10 = this.f38664d;
        }
        byte[] bArr = this.f38661a;
        this.f38664d = i10 + 8;
        return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
    }

    public final int f() {
        int i10;
        int i11 = this.f38664d;
        int i12 = this.f38662b;
        if (i12 != i11) {
            byte[] bArr = this.f38661a;
            int i13 = i11 + 1;
            byte b10 = bArr[i11];
            if (b10 >= 0) {
                this.f38664d = i13;
                return b10;
            }
            if (i12 - i13 >= 9) {
                int i14 = i11 + 2;
                int i15 = (bArr[i13] << 7) ^ b10;
                long j10 = i15;
                if (j10 < 0) {
                    i10 = (int) ((-128) ^ j10);
                } else {
                    int i16 = i11 + 3;
                    int i17 = (bArr[i14] << 14) ^ i15;
                    long j11 = i17;
                    if (j11 >= 0) {
                        i10 = (int) (16256 ^ j11);
                    } else {
                        int i18 = i11 + 4;
                        long j12 = i17 ^ (bArr[i16] << 21);
                        if (j12 < 0) {
                            i10 = (int) ((-2080896) ^ j12);
                            i14 = i18;
                        } else {
                            i16 = i11 + 5;
                            int i19 = (int) ((r1 ^ (r3 << 28)) ^ 266354560);
                            if (bArr[i18] < 0) {
                                int i20 = i11 + 6;
                                if (bArr[i16] < 0) {
                                    i16 = i11 + 7;
                                    if (bArr[i20] < 0) {
                                        i20 = i11 + 8;
                                        if (bArr[i16] < 0) {
                                            i16 = i11 + 9;
                                            if (bArr[i20] < 0) {
                                                int i21 = i11 + 10;
                                                if (bArr[i16] >= 0) {
                                                    i16 = i21;
                                                }
                                            }
                                        }
                                    }
                                }
                                i16 = i20;
                            }
                            i10 = i19;
                        }
                    }
                    i14 = i16;
                }
                this.f38664d = i14;
                return i10;
            }
        }
        return (int) h();
    }

    public final long g() {
        long j10;
        long j11;
        long j12;
        int i10 = this.f38664d;
        int i11 = this.f38662b;
        if (i11 != i10) {
            byte[] bArr = this.f38661a;
            int i12 = i10 + 1;
            byte b10 = bArr[i10];
            if (b10 >= 0) {
                this.f38664d = i12;
                return b10;
            }
            if (i11 - i12 >= 9) {
                int i13 = i10 + 2;
                long j13 = (bArr[i12] << 7) ^ b10;
                if (j13 >= 0) {
                    int i14 = i10 + 3;
                    long j14 = j13 ^ (bArr[i13] << 14);
                    if (j14 >= 0) {
                        j12 = 16256;
                    } else {
                        i13 = i10 + 4;
                        j13 = j14 ^ (bArr[i14] << 21);
                        if (j13 < 0) {
                            j11 = -2080896;
                        } else {
                            i14 = i10 + 5;
                            j14 = j13 ^ (bArr[i13] << 28);
                            if (j14 >= 0) {
                                j12 = 266354560;
                            } else {
                                i13 = i10 + 6;
                                j13 = j14 ^ (bArr[i14] << 35);
                                if (j13 < 0) {
                                    j11 = -34093383808L;
                                } else {
                                    i14 = i10 + 7;
                                    j14 = j13 ^ (bArr[i13] << 42);
                                    if (j14 >= 0) {
                                        j12 = 4363953127296L;
                                    } else {
                                        i13 = i10 + 8;
                                        j13 = j14 ^ (bArr[i14] << 49);
                                        if (j13 >= 0) {
                                            int i15 = i10 + 9;
                                            long j15 = (j13 ^ (bArr[i13] << 56)) ^ 71499008037633920L;
                                            if (j15 < 0) {
                                                int i16 = i10 + 10;
                                                if (bArr[i15] >= 0) {
                                                    i13 = i16;
                                                }
                                            } else {
                                                i13 = i15;
                                            }
                                            j10 = j15;
                                            this.f38664d = i13;
                                            return j10;
                                        }
                                        j11 = -558586000294016L;
                                    }
                                }
                            }
                        }
                    }
                    j10 = j14 ^ j12;
                    i13 = i14;
                    this.f38664d = i13;
                    return j10;
                }
                j11 = -128;
                j10 = j13 ^ j11;
                this.f38664d = i13;
                return j10;
            }
        }
        return h();
    }

    public final long h() {
        long j10 = 0;
        for (int i10 = 0; i10 < 64; i10 += 7) {
            if (this.f38664d == this.f38662b) {
                d(1);
            }
            byte[] bArr = this.f38661a;
            int i11 = this.f38664d;
            this.f38664d = i11 + 1;
            j10 |= (r3 & Byte.MAX_VALUE) << i10;
            if ((bArr[i11] & 128) == 0) {
                return j10;
            }
        }
        throw new LJ("CodedInputStream encountered a malformed varint.");
    }

    public final int i() {
        if (this.f38664d == this.f38662b && !f(1)) {
            this.f38666f = 0;
            return 0;
        }
        int f10 = f();
        this.f38666f = f10;
        if ((f10 >>> 3) != 0) {
            return f10;
        }
        throw new LJ("Protocol message contained an invalid tag (zero).");
    }

    public final void j() {
        int i10 = this.f38662b + this.f38663c;
        this.f38662b = i10;
        int i11 = this.f38667g + i10;
        int i12 = this.f38668h;
        if (i11 <= i12) {
            this.f38663c = 0;
            return;
        }
        int i13 = i11 - i12;
        this.f38663c = i13;
        this.f38662b = i10 - i13;
    }

    public final byte[] c(int i10) {
        if (i10 <= 0) {
            if (i10 == 0) {
                return XI.f45650a;
            }
            throw new LJ("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int i11 = this.f38667g;
        int i12 = this.f38664d;
        int i13 = i11 + i12 + i10;
        int i14 = this.f38668h;
        if (i13 > i14) {
            e((i14 - i11) - i12);
            throw new LJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
        }
        if (i10 < 4096) {
            byte[] bArr = new byte[i10];
            int i15 = this.f38662b - i12;
            System.arraycopy(this.f38661a, i12, bArr, 0, i15);
            this.f38664d = this.f38662b;
            int i16 = i10 - i15;
            if (i16 > 0) {
                d(i16);
            }
            System.arraycopy(this.f38661a, 0, bArr, i15, i16);
            this.f38664d = i16;
            return bArr;
        }
        int i17 = this.f38662b;
        this.f38667g = i11 + i17;
        this.f38664d = 0;
        this.f38662b = 0;
        int i18 = i17 - i12;
        int i19 = i10 - i18;
        ArrayList arrayList = new ArrayList();
        while (i19 > 0) {
            int min = Math.min(i19, 4096);
            byte[] bArr2 = new byte[min];
            int i20 = 0;
            while (i20 < min) {
                InputStream inputStream = this.f38665e;
                int read = inputStream == null ? -1 : inputStream.read(bArr2, i20, min - i20);
                if (read != -1) {
                    this.f38667g += read;
                    i20 += read;
                } else {
                    throw new LJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
                }
            }
            i19 -= min;
            arrayList.add(bArr2);
        }
        byte[] bArr3 = new byte[i10];
        System.arraycopy(this.f38661a, i12, bArr3, 0, i18);
        int size = arrayList.size();
        int i21 = 0;
        while (i21 < size) {
            Object obj = arrayList.get(i21);
            i21++;
            byte[] bArr4 = (byte[]) obj;
            System.arraycopy(bArr4, 0, bArr3, i18, bArr4.length);
            i18 += bArr4.length;
        }
        return bArr3;
    }

    public final void d(int i10) {
        if (!f(i10)) {
            throw new LJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    public final void e(int i10) {
        int i11 = this.f38662b;
        int i12 = this.f38664d;
        int i13 = i11 - i12;
        if (i10 <= i13 && i10 >= 0) {
            this.f38664d = i12 + i10;
            return;
        }
        if (i10 >= 0) {
            int i14 = this.f38667g;
            int i15 = i14 + i12 + i10;
            int i16 = this.f38668h;
            if (i15 <= i16) {
                this.f38664d = i11;
                d(1);
                while (true) {
                    int i17 = i10 - i13;
                    int i18 = this.f38662b;
                    if (i17 > i18) {
                        i13 += i18;
                        this.f38664d = i18;
                        d(1);
                    } else {
                        this.f38664d = i17;
                        return;
                    }
                }
            } else {
                e((i16 - i14) - i12);
                throw new LJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
            }
        } else {
            throw new LJ("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
    }

    public final int b(int i10) {
        if (i10 >= 0) {
            int i11 = this.f38667g + this.f38664d + i10;
            int i12 = this.f38668h;
            if (i11 <= i12) {
                this.f38668h = i11;
                j();
                return i12;
            }
            throw new LJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
        }
        throw new LJ("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public final boolean f(int i10) {
        int i11 = this.f38664d;
        int i12 = i11 + i10;
        int i13 = this.f38662b;
        if (i12 > i13) {
            if (this.f38667g + i11 + i10 <= this.f38668h && this.f38665e != null) {
                if (i11 > 0) {
                    if (i13 > i11) {
                        byte[] bArr = this.f38661a;
                        System.arraycopy(bArr, i11, bArr, 0, i13 - i11);
                    }
                    this.f38667g += i11;
                    this.f38662b -= i11;
                    this.f38664d = 0;
                }
                InputStream inputStream = this.f38665e;
                byte[] bArr2 = this.f38661a;
                int i14 = this.f38662b;
                int read = inputStream.read(bArr2, i14, bArr2.length - i14);
                if (read == 0 || read < -1 || read > this.f38661a.length) {
                    StringBuilder sb2 = new StringBuilder(102);
                    sb2.append("InputStream#read(byte[]) returned invalid result: ");
                    sb2.append(read);
                    sb2.append("\nThe InputStream implementation is buggy.");
                    throw new IllegalStateException(sb2.toString());
                }
                if (read > 0) {
                    this.f38662b += read;
                    if ((this.f38667g + i10) - 67108864 <= 0) {
                        j();
                        if (this.f38662b >= i10) {
                            return true;
                        }
                        return f(i10);
                    }
                    throw new LJ("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
                }
            }
            return false;
        }
        StringBuilder sb3 = new StringBuilder(77);
        sb3.append("refillBuffer() called when ");
        sb3.append(i10);
        sb3.append(" bytes were already available in buffer");
        throw new IllegalStateException(sb3.toString());
    }

    public final O0 a(InterfaceC10201x50 interfaceC10201x50, C10503yv c10503yv) {
        int f10 = f();
        if (this.f38669i < 64) {
            int b10 = b(f10);
            this.f38669i++;
            O0 o02 = (O0) interfaceC10201x50.a(this, c10503yv);
            if (this.f38666f == 0) {
                this.f38669i--;
                this.f38668h = b10;
                j();
                return o02;
            }
            throw new LJ("Protocol message end-group tag did not match expected tag.");
        }
        throw new LJ("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    public final void a(int i10) {
        this.f38668h = i10;
        j();
    }

    public final int a() {
        int i10 = this.f38668h;
        if (i10 == Integer.MAX_VALUE) {
            return -1;
        }
        return i10 - (this.f38667g + this.f38664d);
    }
}
