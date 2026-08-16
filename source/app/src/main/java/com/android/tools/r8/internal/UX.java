package com.android.tools.r8.internal;

import org.objectweb.asm.Opcodes;

public final class UX extends TX {

    public final C7988jr0 f44774b;

    public final int f44775c;

    public final int f44776d;

    public final int f44777e;

    public int f44778f;

    public final C8874p8 f44779g;

    public int f44780h;

    public final C8874p8 f44781i;

    public int f44782j;

    public final C8874p8 f44783k;

    public int f44784l;

    public final C8874p8 f44785m;

    public int f44786n;

    public final C8874p8 f44787o;

    public int f44788p;

    public final C8874p8 f44789q;

    public int f44790r;

    public UX(C7988jr0 c7988jr0, int i10, int i11, int i12) {
        super(Opcodes.ASM9, null);
        this.f44774b = c7988jr0;
        this.f44775c = i10;
        this.f44776d = i11;
        this.f44777e = i12;
        this.f44779g = new C8874p8();
        this.f44781i = new C8874p8();
        this.f44783k = new C8874p8();
        this.f44785m = new C8874p8();
        this.f44787o = new C8874p8();
        this.f44789q = new C8874p8();
    }

    @Override
    public final void a() {
    }

    @Override
    public final void b(String str) {
        this.f44789q.d(this.f44774b.a(20, str).f48722a);
        this.f44788p++;
    }

    @Override
    public final void c(String str) {
        this.f44785m.d(this.f44774b.a(7, str).f48722a);
        this.f44784l++;
    }

    @Override
    public final void a(String str) {
        this.f44790r = this.f44774b.a(7, str).f48722a;
    }

    @Override
    public final void a(int i10, String str, String str2) {
        this.f44779g.d(this.f44774b.a(19, str).f48722a).d(i10).d(str2 == null ? 0 : this.f44774b.a(str2));
        this.f44778f++;
    }

    @Override
    public final void b(int i10, String str, String... strArr) {
        this.f44783k.d(this.f44774b.a(20, str).f48722a).d(i10);
        if (strArr == null) {
            this.f44783k.d(0);
        } else {
            this.f44783k.d(strArr.length);
            for (String str2 : strArr) {
                this.f44783k.d(this.f44774b.a(19, str2).f48722a);
            }
        }
        this.f44782j++;
    }

    @Override
    public final void a(int i10, String str, String... strArr) {
        this.f44781i.d(this.f44774b.a(20, str).f48722a).d(i10);
        if (strArr == null) {
            this.f44781i.d(0);
        } else {
            this.f44781i.d(strArr.length);
            for (String str2 : strArr) {
                this.f44781i.d(this.f44774b.a(19, str2).f48722a);
            }
        }
        this.f44780h++;
    }

    @Override
    public final void a(String str, String... strArr) {
        this.f44787o.d(this.f44774b.a(7, str).f48722a);
        this.f44787o.d(strArr.length);
        for (String str2 : strArr) {
            this.f44787o.d(this.f44774b.a(7, str2).f48722a);
        }
        this.f44786n++;
    }
}
