package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class R90 extends AbstractC5885Ry {

    public int f43821e;

    public int f43822f;

    public int f43823g;

    public boolean f43824h;

    public S90 f43825i = S90.INV;

    public List f43826j;

    public List f43827k;

    public R90() {
        List list = Collections.EMPTY_LIST;
        this.f43826j = list;
        this.f43827k = list;
    }

    @Override
    public final R90 a(T90 t90) {
        if (t90 == T90.f44400n) {
            return this;
        }
        int i10 = t90.f44403d;
        if ((i10 & 1) == 1) {
            int i11 = t90.f44404e;
            this.f43821e = 1 | this.f43821e;
            this.f43822f = i11;
        }
        if ((i10 & 2) == 2) {
            int i12 = t90.f44405f;
            this.f43821e = 2 | this.f43821e;
            this.f43823g = i12;
        }
        if ((i10 & 4) == 4) {
            boolean z10 = t90.f44406g;
            this.f43821e = 4 | this.f43821e;
            this.f43824h = z10;
        }
        if ((i10 & 8) == 8) {
            S90 s90 = t90.f44407h;
            s90.getClass();
            this.f43821e = 8 | this.f43821e;
            this.f43825i = s90;
        }
        if (!t90.f44408i.isEmpty()) {
            if (this.f43826j.isEmpty()) {
                this.f43826j = t90.f44408i;
                this.f43821e &= -17;
            } else {
                if ((this.f43821e & 16) != 16) {
                    this.f43826j = new ArrayList(this.f43826j);
                    this.f43821e |= 16;
                }
                this.f43826j.addAll(t90.f44408i);
            }
        }
        if (!t90.f44409j.isEmpty()) {
            if (this.f43827k.isEmpty()) {
                this.f43827k = t90.f44409j;
                this.f43821e &= -33;
            } else {
                if ((this.f43821e & 32) != 32) {
                    this.f43827k = new ArrayList(this.f43827k);
                    this.f43821e |= 32;
                }
                this.f43827k.addAll(t90.f44409j);
            }
        }
        a((AbstractC6001Ty) t90);
        this.f43766b = this.f43766b.a(t90.f44402c);
        return this;
    }

    @Override
    public final AbstractC6287Yy b() {
        return T90.f44400n;
    }

    public final T90 c() {
        T90 t90 = new T90(this);
        int i10 = this.f43821e;
        int i11 = (i10 & 1) != 1 ? 0 : 1;
        t90.f44404e = this.f43822f;
        if ((i10 & 2) == 2) {
            i11 |= 2;
        }
        t90.f44405f = this.f43823g;
        if ((i10 & 4) == 4) {
            i11 |= 4;
        }
        t90.f44406g = this.f43824h;
        if ((i10 & 8) == 8) {
            i11 |= 8;
        }
        t90.f44407h = this.f43825i;
        if ((i10 & 16) == 16) {
            this.f43826j = Collections.unmodifiableList(this.f43826j);
            this.f43821e &= -17;
        }
        t90.f44408i = this.f43826j;
        if ((this.f43821e & 32) == 32) {
            this.f43827k = Collections.unmodifiableList(this.f43827k);
            this.f43821e &= -33;
        }
        t90.f44409j = this.f43827k;
        t90.f44403d = i11;
        return t90;
    }

    public final Object clone() {
        return new R90().a(c());
    }

    @Override
    public final O0 a() {
        T90 c10 = c();
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
        T90 t90 = null;
        try {
            try {
                T90.f44401o.getClass();
                a(new T90(c4858Ae, c10503yv));
                return this;
            } catch (LJ e10) {
                T90 t902 = (T90) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    t90 = t902;
                    if (t90 != null) {
                        a(t90);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (t90 != null) {
            }
            throw th;
        }
    }
}
