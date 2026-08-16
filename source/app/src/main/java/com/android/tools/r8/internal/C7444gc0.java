package com.android.tools.r8.internal;

import java.util.List;
import org.objectweb.asm.Opcodes;

public final class C7444gc0 extends AbstractC7611hc0 {

    public List f48301b;

    public List f48302c;

    public List f48303d;

    public List f48304e;

    public List f48305f;

    public C7444gc0() {
        super(Opcodes.ASM9, null);
    }

    @Override
    public final void a() {
    }

    @Override
    public final Q2 a(String str, boolean z10) {
        J2 j22 = new J2(str);
        if (z10) {
            this.f48301b = AbstractC9839uw0.a(this.f48301b, j22);
            return j22;
        }
        this.f48302c = AbstractC9839uw0.a(this.f48302c, j22);
        return j22;
    }

    @Override
    public final Q2 a(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        C8498mu0 c8498mu0 = new C8498mu0(i10, c9666tu0, str);
        if (z10) {
            this.f48303d = AbstractC9839uw0.a(this.f48303d, c8498mu0);
            return c8498mu0;
        }
        this.f48304e = AbstractC9839uw0.a(this.f48304e, c8498mu0);
        return c8498mu0;
    }

    @Override
    public final void a(K4 k42) {
        this.f48305f = AbstractC9839uw0.a(this.f48305f, k42);
    }
}
