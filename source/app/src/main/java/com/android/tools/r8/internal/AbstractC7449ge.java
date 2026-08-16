package com.android.tools.r8.internal;

import org.objectweb.asm.Opcodes;

public abstract class AbstractC7449ge {

    public final int f48323a = Opcodes.ASM9;

    public final C4971Cd f48324b;

    public AbstractC7449ge(C4971Cd c4971Cd) {
        this.f48324b = c4971Cd;
    }

    public void a() {
    }

    public void b(String str) {
        if (this.f48323a >= 458752) {
            C4971Cd c4971Cd = this.f48324b;
            if (c4971Cd != null) {
                c4971Cd.f39280i = AbstractC9839uw0.a(c4971Cd.f39280i, str);
                return;
            }
            return;
        }
        throw new UnsupportedOperationException("NestMember requires ASM7");
    }

    public void c(String str) {
        if (this.f48323a < 589824) {
            throw new UnsupportedOperationException("PermittedSubclasses requires ASM9");
        }
        C4971Cd c4971Cd = this.f48324b;
        if (c4971Cd != null) {
            c4971Cd.f39281j = AbstractC9839uw0.a(c4971Cd.f39281j, str);
        }
    }

    public void a(String str, String str2) {
    }

    public void a(String str, String str2, String str3) {
    }

    public void a(int i10, int i11, String str, String str2, String str3, String[] strArr) {
        if (this.f48323a < 524288 && (65536 & i11) != 0) {
            throw new UnsupportedOperationException("Records requires ASM8");
        }
        if (this.f48324b != null) {
            AbstractC9839uw0.a(strArr);
        }
    }

    public AbstractC7611hc0 b(String str, String str2, String str3) {
        if (this.f48323a >= 524288) {
            C4971Cd c4971Cd = this.f48324b;
            if (c4971Cd != null) {
                return c4971Cd.b(str, str2, str3);
            }
            return null;
        }
        throw new UnsupportedOperationException("Record requires ASM8");
    }

    public TX a(int i10, String str, String str2) {
        if (this.f48323a >= 393216) {
            if (this.f48324b != null) {
                return new PX();
            }
            return null;
        }
        throw new UnsupportedOperationException("Module requires ASM6");
    }

    public void a(String str) {
        if (this.f48323a < 458752) {
            throw new UnsupportedOperationException("NestHost requires ASM7");
        }
    }

    public Q2 a(String str, boolean z10) {
        C4971Cd c4971Cd = this.f48324b;
        if (c4971Cd != null) {
            return c4971Cd.a(str, z10);
        }
        return null;
    }

    public Q2 a(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        if (this.f48323a >= 327680) {
            C4971Cd c4971Cd = this.f48324b;
            if (c4971Cd != null) {
                return c4971Cd.a(i10, c9666tu0, str, z10);
            }
            return null;
        }
        throw new UnsupportedOperationException("TypeAnnotation requires ASM5");
    }

    public void a(K4 k42) {
        C4971Cd c4971Cd = this.f48324b;
        if (c4971Cd != null) {
            c4971Cd.f39278g = AbstractC9839uw0.a(c4971Cd.f39278g, k42);
        }
    }

    public void a(int i10, String str, String str2, String str3) {
        C4971Cd c4971Cd = this.f48324b;
        if (c4971Cd != null) {
            c4971Cd.f39279h.add(new LD());
        }
    }

    public AbstractC6055Uw a(int i10, String str, String str2, String str3, Object obj) {
        C4971Cd c4971Cd = this.f48324b;
        if (c4971Cd == null) {
            return null;
        }
        C9671tw c9671tw = new C9671tw(obj);
        c4971Cd.f39283l.add(c9671tw);
        return c9671tw;
    }

    public DX a(int i10, String str, String str2, String str3, String[] strArr) {
        C4971Cd c4971Cd = this.f48324b;
        if (c4971Cd != null) {
            return c4971Cd.a(i10, str, str2, str3, strArr);
        }
        return null;
    }
}
