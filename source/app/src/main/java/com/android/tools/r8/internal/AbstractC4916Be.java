package com.android.tools.r8.internal;

import java.io.InputStream;

public abstract class AbstractC4916Be {

    public int f38961a;

    public C4974Ce f38962b;

    public static long a(long j10) {
        return (-(j10 & 1)) ^ (j10 >>> 1);
    }

    public static int b(int i10) {
        return (-(i10 & 1)) ^ (i10 >>> 1);
    }

    public abstract InterfaceC8095kW a(InterfaceC10535z50 interfaceC10535z50, C10670zv c10670zv);

    public abstract void a(int i10);

    public abstract void a(int i10, InterfaceC7928jW interfaceC7928jW, C10670zv c10670zv);

    public abstract void a(InterfaceC7095eW interfaceC7095eW, C10670zv c10670zv);

    public abstract int b();

    public abstract void c(int i10);

    public abstract boolean c();

    public abstract int d(int i10);

    public abstract C7707i8 d();

    public abstract double e();

    public abstract boolean e(int i10);

    public abstract int f();

    public abstract int g();

    public abstract long h();

    public abstract float i();

    public abstract int j();

    public abstract long k();

    public abstract int l();

    public abstract int m();

    public abstract long n();

    public abstract int o();

    public abstract long p();

    public abstract String q();

    public abstract String r();

    public abstract int s();

    public abstract int t();

    public abstract long u();

    public static C10285xe a(byte[] bArr, int i10, int i11, boolean z10) {
        C10285xe c10285xe = new C10285xe(bArr, i10, i11, z10);
        try {
            c10285xe.d(i11);
            return c10285xe;
        } catch (MJ e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public final void a() {
        if (this.f38961a >= 100) {
            throw new MJ("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
    }

    public static int a(int i10, InputStream inputStream) {
        if ((i10 & 128) == 0) {
            return i10;
        }
        int i11 = i10 & 127;
        int i12 = 7;
        while (i12 < 32) {
            int read = inputStream.read();
            if (read == -1) {
                throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            i11 |= (read & 127) << i12;
            if ((read & 128) == 0) {
                return i11;
            }
            i12 += 7;
        }
        while (i12 < 64) {
            int read2 = inputStream.read();
            if (read2 == -1) {
                throw new MJ("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            if ((read2 & 128) == 0) {
                return i11;
            }
            i12 += 7;
        }
        throw new MJ("CodedInputStream encountered a malformed varint.");
    }
}
