package com.android.tools.r8.shaking;

public abstract class AbstractC11398r1 {

    public final AbstractC11432t1 f57752a;

    public boolean f57753b;

    public boolean f57754c;

    public boolean f57755d;

    public boolean f57756e;

    public boolean f57757f;

    public boolean f57758g;

    public boolean f57759h;

    public C11162d1 f57760i;

    public C11162d1 f57761j;

    public AbstractC11398r1() {
    }

    public AbstractC11432t1 a() {
        AbstractC11432t1 abstractC11432t1 = this.f57752a;
        if (abstractC11432t1 != null) {
            if (a(abstractC11432t1)) {
                return this.f57752a;
            }
            if (a(d())) {
                return d();
            }
            if (a(c())) {
                return c();
            }
        }
        return b();
    }

    public abstract AbstractC11432t1 b();

    public abstract boolean b(AbstractC11432t1 abstractC11432t1);

    public abstract AbstractC11432t1 c();

    public abstract AbstractC11432t1 d();

    public boolean e() {
        return this.f57755d;
    }

    public boolean f() {
        return this.f57756e;
    }

    public boolean g() {
        return this.f57757f;
    }

    public final AbstractC11398r1 h() {
        this.f57753b = true;
        j();
        this.f57754c = true;
        j();
        C11196f1 c11196f1 = C11196f1.f57267c;
        this.f57760i = new C11162d1(c11196f1);
        j();
        this.f57761j = new C11162d1(c11196f1);
        j();
        this.f57755d = true;
        j();
        this.f57756e = true;
        j();
        this.f57757f = true;
        j();
        this.f57758g = true;
        j();
        this.f57759h = false;
        j();
        return j();
    }

    public AbstractC11398r1 i() {
        this.f57753b = false;
        j();
        this.f57754c = false;
        j();
        C11196f1 c11196f1 = C11196f1.f57268d;
        this.f57760i = new C11162d1(c11196f1);
        j();
        this.f57761j = new C11162d1(c11196f1);
        j();
        this.f57755d = false;
        j();
        this.f57756e = false;
        j();
        this.f57757f = false;
        j();
        this.f57758g = false;
        j();
        this.f57759h = false;
        j();
        return j();
    }

    public abstract AbstractC11398r1 j();

    public AbstractC11398r1(AbstractC11432t1 abstractC11432t1) {
        this.f57752a = abstractC11432t1;
        this.f57753b = abstractC11432t1.f57831a;
        this.f57754c = abstractC11432t1.f57832b;
        this.f57755d = abstractC11432t1.f57833c;
        this.f57756e = abstractC11432t1.f57834d;
        this.f57757f = abstractC11432t1.f57835e;
        this.f57758g = abstractC11432t1.f57836f;
        this.f57759h = abstractC11432t1.f57837g;
        this.f57760i = abstractC11432t1.f57838h.c();
        this.f57761j = abstractC11432t1.f57839i.c();
    }

    public boolean a(AbstractC11432t1 abstractC11432t1) {
        return this.f57753b == abstractC11432t1.f57831a && this.f57754c == abstractC11432t1.f57832b && e() == abstractC11432t1.f57833c && f() == abstractC11432t1.f57834d && g() == abstractC11432t1.f57835e && this.f57758g == abstractC11432t1.f57836f && this.f57759h == abstractC11432t1.f57837g && this.f57760i.a(abstractC11432t1.f57838h) && this.f57761j.a(abstractC11432t1.f57839i);
    }
}
