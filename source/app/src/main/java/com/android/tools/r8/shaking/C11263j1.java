package com.android.tools.r8.shaking;

public class C11263j1 extends AbstractC11398r1 {

    public boolean f57440k;

    public boolean f57441l;

    public boolean f57442m;

    public boolean f57443n;

    public boolean f57444o;

    public boolean f57445p;

    public boolean f57446q;

    public boolean f57447r;

    public C11263j1() {
    }

    @Override
    public final AbstractC11432t1 c() {
        return C11297l1.f57491t;
    }

    @Override
    public final AbstractC11432t1 d() {
        return C11297l1.f57490s;
    }

    @Override
    public C11297l1 b() {
        return new C11297l1(this);
    }

    public C11263j1 l() {
        C11263j1 c11263j1 = (C11263j1) h();
        c11263j1.f57440k = true;
        C11263j1 j10 = c11263j1.j();
        j10.f57441l = true;
        C11263j1 j11 = j10.j();
        j11.f57442m = true;
        C11263j1 j12 = j11.j();
        j12.f57443n = true;
        C11263j1 j13 = j12.j();
        j13.f57444o = true;
        C11263j1 j14 = j13.j();
        j14.f57445p = true;
        C11263j1 j15 = j14.j();
        j15.f57446q = true;
        C11263j1 j16 = j15.j();
        j16.f57447r = false;
        return j16.j();
    }

    @Override
    public final C11263j1 i() {
        C11263j1 c11263j1 = (C11263j1) super.i();
        c11263j1.f57440k = false;
        C11263j1 j10 = c11263j1.j();
        j10.f57441l = false;
        C11263j1 j11 = j10.j();
        j11.f57442m = false;
        C11263j1 j12 = j11.j();
        j12.f57443n = false;
        C11263j1 j13 = j12.j();
        j13.f57444o = true;
        C11263j1 j14 = j13.j();
        j14.f57445p = false;
        C11263j1 j15 = j14.j();
        j15.f57446q = false;
        C11263j1 j16 = j15.j();
        j16.f57447r = false;
        return j16.j();
    }

    @Override
    public C11263j1 j() {
        return this;
    }

    public C11263j1(C11297l1 c11297l1) {
        super(c11297l1);
        this.f57440k = c11297l1.f57493k;
        this.f57441l = c11297l1.f57494l;
        this.f57442m = c11297l1.f57495m;
        this.f57443n = c11297l1.f57496n;
        this.f57444o = c11297l1.f57497o;
        this.f57445p = c11297l1.f57498p;
        this.f57446q = c11297l1.f57499q;
        this.f57447r = c11297l1.f57500r;
    }

    @Override
    public final boolean a(C11297l1 c11297l1) {
        return super.a((AbstractC11432t1) c11297l1) && this.f57447r == c11297l1.f57500r && this.f57440k == c11297l1.f57493k && this.f57441l == c11297l1.f57494l && this.f57442m == c11297l1.f57495m && this.f57443n == c11297l1.f57496n && this.f57444o == c11297l1.f57497o && this.f57445p == c11297l1.f57498p && this.f57446q == c11297l1.f57499q;
    }

    @Override
    public final boolean b(AbstractC11432t1 abstractC11432t1) {
        return a((C11297l1) abstractC11432t1);
    }
}
