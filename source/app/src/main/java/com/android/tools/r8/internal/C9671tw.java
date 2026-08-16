package com.android.tools.r8.internal;

import java.util.List;
import org.objectweb.asm.Opcodes;

public final class C9671tw extends AbstractC6055Uw {

    public final Object f52732c;

    public List f52733d;

    public List f52734e;

    public List f52735f;

    public List f52736g;

    public List f52737h;

    public C9671tw(Object obj) {
        super(Opcodes.ASM9, null);
        this.f52732c = obj;
    }

    @Override
    public final void a() {
    }

    @Override
    public final Q2 a(String str, boolean z10) {
        J2 j22 = new J2(str);
        if (z10) {
            this.f52733d = AbstractC9839uw0.a(this.f52733d, j22);
            return j22;
        }
        this.f52734e = AbstractC9839uw0.a(this.f52734e, j22);
        return j22;
    }

    @Override
    public final Q2 a(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        C8498mu0 c8498mu0 = new C8498mu0(i10, c9666tu0, str);
        if (z10) {
            this.f52735f = AbstractC9839uw0.a(this.f52735f, c8498mu0);
            return c8498mu0;
        }
        this.f52736g = AbstractC9839uw0.a(this.f52736g, c8498mu0);
        return c8498mu0;
    }

    @Override
    public final void a(K4 k42) {
        this.f52737h = AbstractC9839uw0.a(this.f52737h, k42);
    }
}
