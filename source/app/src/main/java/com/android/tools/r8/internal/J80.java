package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class J80 extends AbstractC5827Qy implements InterfaceC8262lW {

    public int f41307c;

    public long f41309e;

    public float f41310f;

    public double f41311g;

    public int f41312h;

    public int f41313i;

    public int f41314j;

    public int f41317m;

    public int f41318n;

    public K80 f41308d = K80.BYTE;

    public O80 f41315k = O80.f42788h;

    public List f41316l = Collections.EMPTY_LIST;

    @Override
    public final J80 a(L80 l80) {
        O80 o80;
        if (l80 == L80.f41876q) {
            return this;
        }
        if ((l80.f41879c & 1) == 1) {
            K80 k80 = l80.f41880d;
            k80.getClass();
            this.f41307c = 1 | this.f41307c;
            this.f41308d = k80;
        }
        if ((l80.f41879c & 2) == 2) {
            a(l80.f41881e);
        }
        int i10 = l80.f41879c;
        if ((i10 & 4) == 4) {
            float f10 = l80.f41882f;
            this.f41307c = 4 | this.f41307c;
            this.f41310f = f10;
        }
        if ((i10 & 8) == 8) {
            double d10 = l80.f41883g;
            this.f41307c |= 8;
            this.f41311g = d10;
        }
        if ((i10 & 16) == 16) {
            int i11 = l80.f41884h;
            this.f41307c = 16 | this.f41307c;
            this.f41312h = i11;
        }
        if ((i10 & 32) == 32) {
            int i12 = l80.f41885i;
            this.f41307c = 32 | this.f41307c;
            this.f41313i = i12;
        }
        if ((i10 & 64) == 64) {
            int i13 = l80.f41886j;
            this.f41307c = 64 | this.f41307c;
            this.f41314j = i13;
        }
        if ((i10 & 128) == 128) {
            O80 o802 = l80.f41887k;
            if ((this.f41307c & 128) == 128 && (o80 = this.f41315k) != O80.f42788h) {
                this.f41315k = new N80().a(o80).a(o802).c();
            } else {
                this.f41315k = o802;
            }
            this.f41307c |= 128;
        }
        if (!l80.f41888l.isEmpty()) {
            if (this.f41316l.isEmpty()) {
                this.f41316l = l80.f41888l;
                this.f41307c &= -257;
            } else {
                if ((this.f41307c & 256) != 256) {
                    this.f41316l = new ArrayList(this.f41316l);
                    this.f41307c |= 256;
                }
                this.f41316l.addAll(l80.f41888l);
            }
        }
        int i14 = l80.f41879c;
        if ((i14 & 256) == 256) {
            int i15 = l80.f41889m;
            this.f41307c |= 512;
            this.f41317m = i15;
        }
        if ((i14 & 512) == 512) {
            int i16 = l80.f41890n;
            this.f41307c |= 1024;
            this.f41318n = i16;
        }
        this.f43766b = this.f43766b.a(l80.f41878b);
        return this;
    }

    public final L80 c() {
        L80 l80 = new L80(this);
        int i10 = this.f41307c;
        int i11 = (i10 & 1) != 1 ? 0 : 1;
        l80.f41880d = this.f41308d;
        if ((i10 & 2) == 2) {
            i11 |= 2;
        }
        l80.f41881e = this.f41309e;
        if ((i10 & 4) == 4) {
            i11 |= 4;
        }
        l80.f41882f = this.f41310f;
        if ((i10 & 8) == 8) {
            i11 |= 8;
        }
        l80.f41883g = this.f41311g;
        if ((i10 & 16) == 16) {
            i11 |= 16;
        }
        l80.f41884h = this.f41312h;
        if ((i10 & 32) == 32) {
            i11 |= 32;
        }
        l80.f41885i = this.f41313i;
        if ((i10 & 64) == 64) {
            i11 |= 64;
        }
        l80.f41886j = this.f41314j;
        if ((i10 & 128) == 128) {
            i11 |= 128;
        }
        l80.f41887k = this.f41315k;
        if ((i10 & 256) == 256) {
            this.f41316l = Collections.unmodifiableList(this.f41316l);
            this.f41307c &= -257;
        }
        l80.f41888l = this.f41316l;
        if ((i10 & 512) == 512) {
            i11 |= 256;
        }
        l80.f41889m = this.f41317m;
        if ((i10 & 1024) == 1024) {
            i11 |= 512;
        }
        l80.f41890n = this.f41318n;
        l80.f41879c = i11;
        return l80;
    }

    public final Object clone() {
        return new J80().a(c());
    }

    @Override
    public final O0 a() {
        L80 c10 = c();
        if (c10.isInitialized()) {
            return c10;
        }
        throw new C6834cv0();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x001b  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC5827Qy a(C4858Ae c4858Ae, C10503yv c10503yv) {
        L80 l80 = null;
        try {
            try {
                L80.f41877r.getClass();
                a(new L80(c4858Ae, c10503yv));
                return this;
            } catch (LJ e10) {
                L80 l802 = (L80) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    l80 = l802;
                    if (l80 != null) {
                        a(l80);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (l80 != null) {
            }
            throw th;
        }
    }

    public final void a(long j10) {
        this.f41307c |= 2;
        this.f41309e = j10;
    }
}
