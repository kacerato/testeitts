package com.android.tools.r8.internal;

import org.eclipse.jdt.internal.compiler.util.JRTUtil;

public final class C9778uc extends TX {

    public final boolean f52888b;

    public final C9611tc f52889c;

    public final C9611tc f52890d;

    public final C9611tc f52891e;

    public final C9611tc f52892f;

    public final C9611tc f52893g;

    public int f52894h;

    public boolean f52895i;

    public C9778uc(int i10, TX tx, boolean z10) {
        super(i10, tx);
        this.f52889c = new C9611tc("Modules requires");
        this.f52890d = new C9611tc("Module exports");
        this.f52891e = new C9611tc("Module opens");
        this.f52892f = new C9611tc("Module uses");
        this.f52893g = new C9611tc("Module provides");
        this.f52888b = z10;
    }

    @Override
    public final void a(String str) {
        C9444sc.b(53, str, "module main class");
        TX tx = this.f44496a;
        if (tx != null) {
            tx.a(str);
        }
    }

    @Override
    public final void b(String str) {
        C9444sc.b(53, str, "module package");
        TX tx = this.f44496a;
        if (tx != null) {
            tx.b(str);
        }
    }

    @Override
    public final void c(String str) {
        b();
        C9444sc.b(53, str, "service");
        this.f52892f.a(str);
        TX tx = this.f44496a;
        if (tx != null) {
            tx.c(str);
        }
    }

    @Override
    public final void a(int i10, String str, String str2) {
        b();
        AbstractC8443mc.b(53, str, "required module");
        this.f52889c.a(str);
        AbstractC8443mc.a(i10, 36960);
        if (this.f52894h >= 54 && str.equals(JRTUtil.JAVA_BASE) && (i10 & 96) != 0) {
            throw new IllegalArgumentException(HC.a(i10, "Invalid access flags: ", " java.base can not be declared ACC_TRANSITIVE or ACC_STATIC_PHASE"));
        }
        TX tx = this.f44496a;
        if (tx != null) {
            tx.a(i10, str, str2);
        }
    }

    @Override
    public final void b(int i10, String str, String... strArr) {
        b();
        if (!this.f52888b) {
            C9444sc.b(53, str, "package name");
            this.f52891e.a(str);
            AbstractC8443mc.a(i10, 36864);
            if (strArr != null) {
                for (String str2 : strArr) {
                    AbstractC8443mc.b(53, str2, "module open to");
                }
            }
            TX tx = this.f44496a;
            if (tx != null) {
                tx.b(i10, str, strArr);
                return;
            }
            return;
        }
        throw new UnsupportedOperationException("An open module can not use open directive");
    }

    public final void b() {
        if (this.f52895i) {
            throw new IllegalStateException("Cannot call a visit method after visitEnd has been called");
        }
    }

    @Override
    public final void a(int i10, String str, String... strArr) {
        b();
        C9444sc.b(53, str, "package name");
        this.f52890d.a(str);
        AbstractC8443mc.a(i10, 36864);
        if (strArr != null) {
            for (String str2 : strArr) {
                AbstractC8443mc.b(53, str2, "module export to");
            }
        }
        TX tx = this.f44496a;
        if (tx != null) {
            tx.a(i10, str, strArr);
        }
    }

    @Override
    public final void a(String str, String... strArr) {
        b();
        C9444sc.b(53, str, "service");
        this.f52893g.a(str);
        if (strArr.length != 0) {
            for (String str2 : strArr) {
                C9444sc.b(53, str2, "provider");
            }
            TX tx = this.f44496a;
            if (tx != null) {
                tx.a(str, strArr);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Providers cannot be null or empty");
    }

    @Override
    public final void a() {
        b();
        this.f52895i = true;
        TX tx = this.f44496a;
        if (tx != null) {
            tx.a();
        }
    }
}
