package com.android.tools.r8.internal;

import sun.misc.Unsafe;

public final class C6225Xv0 extends AbstractC6504aw0 {
    public C6225Xv0(Unsafe unsafe) {
        super(unsafe);
    }

    @Override
    public final byte a(Object obj, long j10) {
        if (AbstractC6671bw0.f46900h) {
            return AbstractC6671bw0.a(obj, j10);
        }
        return AbstractC6671bw0.b(obj, j10);
    }

    @Override
    public final boolean b() {
        return false;
    }

    @Override
    public final void a(Object obj, long j10, byte b10) {
        if (AbstractC6671bw0.f46900h) {
            AbstractC6671bw0.a(obj, j10, b10);
        } else {
            AbstractC6671bw0.b(obj, j10, b10);
        }
    }

    @Override
    public final byte a(long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void a(long j10, byte[] bArr, long j11) {
        throw new UnsupportedOperationException();
    }
}
