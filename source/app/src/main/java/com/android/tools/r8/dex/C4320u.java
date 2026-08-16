package com.android.tools.r8.dex;

import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.Z0;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.BR;
import java.nio.ByteBuffer;
import java.util.Arrays;

public class C4320u {

    public final C4766w5 f35965a;

    public final AbstractC5308Hz f35966b;

    public final AbstractC5308Hz f35967c;

    public final Z0 f35968d;

    public ByteBuffer f35969e;

    public C4320u(Z0 z02, C4766w5 c4766w5, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        this.f35968d = z02;
        this.f35965a = c4766w5;
        this.f35966b = abstractC5308Hz;
        this.f35967c = abstractC5308Hz2;
        this.f35969e = ByteBuffer.allocate(z02.h0());
    }

    public byte[] a() {
        this.f35968d.a(this, this.f35965a, this.f35966b, this.f35967c);
        return Arrays.copyOf(this.f35969e.array(), this.f35969e.position());
    }

    public final void b(int i10) {
        a(1);
        this.f35969e.put((byte) i10);
    }

    public final void c(int i10) {
        byte[] b10 = BR.b(i10);
        a(b10.length);
        this.f35969e.put(b10, 0, b10.length);
    }

    public final void a(int i10) {
        if (this.f35969e.remaining() < i10) {
            ByteBuffer allocate = ByteBuffer.allocate(this.f35969e.capacity() * 2);
            allocate.put(this.f35969e.array(), 0, this.f35969e.position());
            this.f35969e = allocate;
        }
    }
}
