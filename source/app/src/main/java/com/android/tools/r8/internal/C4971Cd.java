package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.List;
import org.objectweb.asm.Opcodes;

public final class C4971Cd extends AbstractC7449ge {

    public List f39274c;

    public List f39275d;

    public List f39276e;

    public List f39277f;

    public List f39278g;

    public final ArrayList f39279h;

    public List f39280i;

    public List f39281j;

    public List f39282k;

    public final ArrayList f39283l;

    public final ArrayList f39284m;

    public C4971Cd() {
        super(null);
        new ArrayList();
        this.f39279h = new ArrayList();
        this.f39283l = new ArrayList();
        this.f39284m = new ArrayList();
    }

    @Override
    public final void a() {
    }

    @Override
    public final void b(String str) {
        this.f39280i = AbstractC9839uw0.a(this.f39280i, str);
    }

    @Override
    public final void c(String str) {
        this.f39281j = AbstractC9839uw0.a(this.f39281j, str);
    }

    @Override
    public final void a(String str) {
    }

    @Override
    public final AbstractC7611hc0 b(String str, String str2, String str3) {
        C7444gc0 c7444gc0 = new C7444gc0();
        this.f39282k = AbstractC9839uw0.a(this.f39282k, c7444gc0);
        return c7444gc0;
    }

    @Override
    public final void a(String str, String str2) {
    }

    @Override
    public final void a(String str, String str2, String str3) {
    }

    @Override
    public final void a(int i10, int i11, String str, String str2, String str3, String[] strArr) {
        AbstractC9839uw0.a(strArr);
    }

    @Override
    public final TX a(int i10, String str, String str2) {
        return new PX();
    }

    @Override
    public final Q2 a(String str, boolean z10) {
        J2 j22 = new J2(str);
        if (z10) {
            this.f39274c = AbstractC9839uw0.a(this.f39274c, j22);
            return j22;
        }
        this.f39275d = AbstractC9839uw0.a(this.f39275d, j22);
        return j22;
    }

    @Override
    public final Q2 a(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        C8498mu0 c8498mu0 = new C8498mu0(i10, c9666tu0, str);
        if (z10) {
            this.f39276e = AbstractC9839uw0.a(this.f39276e, c8498mu0);
            return c8498mu0;
        }
        this.f39277f = AbstractC9839uw0.a(this.f39277f, c8498mu0);
        return c8498mu0;
    }

    @Override
    public final void a(K4 k42) {
        this.f39278g = AbstractC9839uw0.a(this.f39278g, k42);
    }

    @Override
    public final void a(int i10, String str, String str2, String str3) {
        this.f39279h.add(new LD());
    }

    @Override
    public final AbstractC6055Uw a(int i10, String str, String str2, String str3, Object obj) {
        C9671tw c9671tw = new C9671tw(obj);
        this.f39283l.add(c9671tw);
        return c9671tw;
    }

    @Override
    public final DX a(int i10, String str, String str2, String str3, String[] strArr) {
        QW qw = new QW(Opcodes.ASM9, i10, str, str2, strArr);
        this.f39284m.add(qw);
        return qw;
    }
}
