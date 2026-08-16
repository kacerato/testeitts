package com.android.tools.r8.internal;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashMap;

public final class C5280Hl extends AbstractC5801Ql implements RI {

    public final C8634nk f40856b;

    public final String f40857c;

    public final C5743Pl f40858d;

    public final C5454Kl[] f40859e;

    public final C5454Kl[] f40860f;

    public final int f40861g;

    public HashMap f40862h = null;

    public ReferenceQueue f40863i = null;

    public C5280Hl(C8634nk c8634nk, C5743Pl c5743Pl, C4990Cl c4990Cl) {
        this.f40856b = c8634nk;
        this.f40857c = AbstractC6033Ul.a(c5743Pl, c4990Cl, c8634nk.getName());
        this.f40858d = c5743Pl;
        if (c8634nk.f51058d.size() == 0) {
            throw new C5164Fl(this, "Enums must contain at least one value.");
        }
        this.f40859e = new C5454Kl[c8634nk.f51058d.size()];
        int i10 = 0;
        for (int i11 = 0; i11 < c8634nk.f51058d.size(); i11++) {
            this.f40859e[i11] = new C5454Kl((C9635tk) c8634nk.f51058d.get(i11), c5743Pl, this, i11);
        }
        C5454Kl[] c5454KlArr = (C5454Kl[]) this.f40859e.clone();
        this.f40860f = c5454KlArr;
        Arrays.sort(c5454KlArr, C5454Kl.f41754f);
        for (int i12 = 1; i12 < c8634nk.f51058d.size(); i12++) {
            C5454Kl[] c5454KlArr2 = this.f40860f;
            C5454Kl c5454Kl = c5454KlArr2[i10];
            C5454Kl c5454Kl2 = c5454KlArr2[i12];
            if (c5454Kl.f41756c.f52682d != c5454Kl2.f41756c.f52682d) {
                i10++;
                c5454KlArr2[i10] = c5454Kl2;
            }
        }
        int i13 = i10 + 1;
        this.f40861g = i13;
        Arrays.fill(this.f40860f, i13, c8634nk.f51058d.size(), (Object) null);
        c5743Pl.f43363h.a(this);
    }

    @Override
    public final C5743Pl a() {
        return this.f40858d;
    }

    @Override
    public final String b() {
        return this.f40857c;
    }

    @Override
    public final String c() {
        return this.f40856b.getName();
    }

    @Override
    public final InterfaceC7262fW d() {
        return this.f40856b;
    }

    public final C5454Kl a(int i10) {
        C5454Kl[] c5454KlArr = this.f40860f;
        int i11 = this.f40861g - 1;
        int i12 = 0;
        while (i12 <= i11) {
            int i13 = (i12 + i11) / 2;
            C5454Kl c5454Kl = c5454KlArr[i13];
            int i14 = c5454Kl.f41756c.f52682d;
            if (i10 < i14) {
                i11 = i13 - 1;
            } else {
                if (i10 <= i14) {
                    return c5454Kl;
                }
                i12 = i13 + 1;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C5454Kl b(int i10) {
        C5454Kl c5454Kl;
        C5454Kl a10 = a(i10);
        if (a10 != null) {
            return a10;
        }
        synchronized (this) {
            try {
                if (this.f40863i == null) {
                    this.f40863i = new ReferenceQueue();
                    this.f40862h = new HashMap();
                } else {
                    while (true) {
                        C5222Gl c5222Gl = (C5222Gl) this.f40863i.poll();
                        if (c5222Gl == null) {
                            break;
                        }
                        this.f40862h.remove(Integer.valueOf(c5222Gl.f40580a));
                    }
                }
                WeakReference weakReference = (WeakReference) this.f40862h.get(Integer.valueOf(i10));
                c5454Kl = weakReference == null ? null : (C5454Kl) weakReference.get();
                if (c5454Kl == null) {
                    c5454Kl = new C5454Kl(this, Integer.valueOf(i10));
                    this.f40862h.put(Integer.valueOf(i10), new C5222Gl(i10, c5454Kl));
                }
            } finally {
            }
        }
        return c5454Kl;
    }
}
