package com.android.tools.r8.dex;

import com.android.tools.r8.ByteBufferProvider;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C7664hu;
import java.nio.ByteOrder;

public class C4324y {

    public static final boolean f35976c = true;

    public final ByteBufferProvider f35977a;

    public C4318s f35978b;

    public C4324y() {
        this(new C4323x());
    }

    public final int a(int i10, long j10) {
        boolean z10 = C7664hu.f48733a;
        int max = Math.max((72 - Long.numberOfLeadingZeros((j10 >> 63) ^ j10)) / 8, 1);
        if (!z10 && (max <= 0 || max > i10)) {
            throw new AssertionError();
        }
        for (int i11 = 0; i11 < max; i11++) {
            a((byte) j10);
            j10 >>= 8;
        }
        return max;
    }

    public final C4318s b(int i10) {
        C4318s c4318s = new C4318s(this.f35977a.acquireByteBuffer(i10));
        if (c4318s.a().hasArray()) {
            if (c4318s.b() >= i10) {
                if (c4318s.a().position() == 0) {
                    c4318s.a(ByteOrder.LITTLE_ENDIAN);
                    return c4318s;
                }
                throw new C5325If("Provided byte-buffer is required to start at position zero, but starts at " + c4318s.a().position() + ".");
            }
            throw new C5325If("Insufficient capacity of provided byte-buffer. Requested capacity " + i10 + ", actual capacity: " + c4318s.b());
        }
        throw new C5325If("Provided byte-buffer is required to have an array backing, but does not.");
    }

    public final void c(int i10) {
        if (this.f35978b.a().remaining() < i10) {
            C4318s b10 = b(Math.max(this.f35978b.b(), i10 * 2) + this.f35978b.b());
            System.arraycopy(this.f35978b.a().array(), 0, b10.a().array(), 0, this.f35978b.b());
            b10.c(this.f35978b.a().position());
            C4318s c4318s = this.f35978b;
            if (!f35976c && c4318s == null) {
                throw new AssertionError();
            }
            this.f35977a.releaseByteBuffer(c4318s.a());
            this.f35978b = b10;
        }
    }

    public final void d(int i10) {
        c(i10);
        C4318s c4318s = this.f35978b;
        c4318s.c(c4318s.a().position() + i10);
    }

    public final void e(int i10) {
        c(i10 - this.f35978b.a().position());
        this.f35978b.c(i10);
    }

    public final void f(int i10) {
        c(4);
        this.f35978b.a().putInt(i10);
    }

    public C4324y(ByteBufferProvider byteBufferProvider) {
        this.f35977a = byteBufferProvider;
        this.f35978b = b(262144);
    }

    public void a(byte b10) {
        c(1);
        this.f35978b.a().put(b10);
    }

    public void a(byte[] bArr) {
        c(bArr.length);
        this.f35978b.a().put(bArr);
    }

    public final int b(int i10, long j10) {
        boolean z10 = C7664hu.f48733a;
        int max = Math.max((71 - Long.numberOfLeadingZeros(j10)) / 8, 1);
        if (!z10 && (max <= 0 || max > i10)) {
            throw new AssertionError();
        }
        for (int i11 = 0; i11 < max; i11++) {
            a((byte) j10);
            j10 >>= 8;
        }
        return max;
    }

    public final void a(short s10) {
        c(2);
        this.f35978b.a().putShort(s10);
    }

    public int b() {
        return this.f35978b.a().position();
    }

    public final int a(int i10) {
        if (!f35976c && i10 <= 0) {
            throw new AssertionError();
        }
        int i11 = i10 - 1;
        int b10 = (~i11) & (b() + i11);
        c(b10 - b());
        this.f35978b.c(b10);
        return b10;
    }

    public byte[] a() {
        return this.f35978b.a().array();
    }
}
