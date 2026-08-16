package com.android.tools.r8.internal;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public abstract class AbstractC8181l extends F {

    public final ByteBuffer f49857a = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);

    @Override
    public final InterfaceC8212lA a(byte b10) {
        C7429gW c7429gW = (C7429gW) this;
        c7429gW.b();
        c7429gW.f48270b.update(b10);
        return this;
    }

    public final AbstractC8181l b(int i10) {
        try {
            byte[] array = this.f49857a.array();
            C7429gW c7429gW = (C7429gW) this;
            c7429gW.b();
            c7429gW.f48270b.update(array, 0, i10);
            return this;
        } finally {
            this.f49857a.clear();
        }
    }

    @Override
    public final InterfaceC8212lA a(byte[] bArr, int i10, int i11) {
        U60.a(i10, i10 + i11, bArr.length);
        C7429gW c7429gW = (C7429gW) this;
        c7429gW.b();
        c7429gW.f48270b.update(bArr, i10, i11);
        return this;
    }

    @Override
    public final InterfaceC8212lA a(int i10) {
        this.f49857a.putInt(i10);
        return b(4);
    }

    @Override
    public final InterfaceC8212lA a(long j10) {
        this.f49857a.putLong(j10);
        return b(8);
    }

    @Override
    public final InterfaceC8212lA a(byte[] bArr) {
        bArr.getClass();
        int length = bArr.length;
        C7429gW c7429gW = (C7429gW) this;
        c7429gW.b();
        c7429gW.f48270b.update(bArr, 0, length);
        return this;
    }
}
