package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C9211r90 extends AbstractC5885Ry {

    public int f51992e;

    public List f51993f;

    public List f51994g;

    public List f51995h;

    public W90 f51996i;

    public C7605ha0 f51997j;

    public C9211r90() {
        List list = Collections.EMPTY_LIST;
        this.f51993f = list;
        this.f51994g = list;
        this.f51995h = list;
        this.f51996i = W90.f45318h;
        this.f51997j = C7605ha0.f48584f;
    }

    @Override
    public final C9211r90 a(C9378s90 c9378s90) {
        C7605ha0 c7605ha0;
        W90 w90;
        if (c9378s90 == C9378s90.f52295l) {
            return this;
        }
        if (!c9378s90.f52299e.isEmpty()) {
            if (this.f51993f.isEmpty()) {
                this.f51993f = c9378s90.f52299e;
                this.f51992e &= -2;
            } else {
                if ((this.f51992e & 1) != 1) {
                    this.f51993f = new ArrayList(this.f51993f);
                    this.f51992e |= 1;
                }
                this.f51993f.addAll(c9378s90.f52299e);
            }
        }
        if (!c9378s90.f52300f.isEmpty()) {
            if (this.f51994g.isEmpty()) {
                this.f51994g = c9378s90.f52300f;
                this.f51992e &= -3;
            } else {
                if ((this.f51992e & 2) != 2) {
                    this.f51994g = new ArrayList(this.f51994g);
                    this.f51992e |= 2;
                }
                this.f51994g.addAll(c9378s90.f52300f);
            }
        }
        if (!c9378s90.f52301g.isEmpty()) {
            if (this.f51995h.isEmpty()) {
                this.f51995h = c9378s90.f52301g;
                this.f51992e &= -5;
            } else {
                if ((this.f51992e & 4) != 4) {
                    this.f51995h = new ArrayList(this.f51995h);
                    this.f51992e |= 4;
                }
                this.f51995h.addAll(c9378s90.f52301g);
            }
        }
        if ((c9378s90.f52298d & 1) == 1) {
            W90 w902 = c9378s90.f52302h;
            if ((this.f51992e & 8) == 8 && (w90 = this.f51996i) != W90.f45318h) {
                this.f51996i = W90.a(w90).a(w902).c();
            } else {
                this.f51996i = w902;
            }
            this.f51992e |= 8;
        }
        if ((c9378s90.f52298d & 2) == 2) {
            C7605ha0 c7605ha02 = c9378s90.f52303i;
            if ((this.f51992e & 16) == 16 && (c7605ha0 = this.f51997j) != C7605ha0.f48584f) {
                this.f51997j = new C7438ga0().a(c7605ha0).a(c7605ha02).c();
            } else {
                this.f51997j = c7605ha02;
            }
            this.f51992e |= 16;
        }
        a((AbstractC6001Ty) c9378s90);
        this.f43766b = this.f43766b.a(c9378s90.f52297c);
        return this;
    }

    @Override
    public final AbstractC6287Yy b() {
        return C9378s90.f52295l;
    }

    public final C9378s90 c() {
        C9378s90 c9378s90 = new C9378s90(this);
        int i10 = this.f51992e;
        if ((i10 & 1) == 1) {
            this.f51993f = Collections.unmodifiableList(this.f51993f);
            this.f51992e &= -2;
        }
        c9378s90.f52299e = this.f51993f;
        if ((this.f51992e & 2) == 2) {
            this.f51994g = Collections.unmodifiableList(this.f51994g);
            this.f51992e &= -3;
        }
        c9378s90.f52300f = this.f51994g;
        if ((this.f51992e & 4) == 4) {
            this.f51995h = Collections.unmodifiableList(this.f51995h);
            this.f51992e &= -5;
        }
        c9378s90.f52301g = this.f51995h;
        int i11 = (i10 & 8) != 8 ? 0 : 1;
        c9378s90.f52302h = this.f51996i;
        if ((i10 & 16) == 16) {
            i11 |= 2;
        }
        c9378s90.f52303i = this.f51997j;
        c9378s90.f52298d = i11;
        return c9378s90;
    }

    public final Object clone() {
        return new C9211r90().a(c());
    }

    @Override
    public final O0 a() {
        C9378s90 c10 = c();
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
        C9378s90 c9378s90 = null;
        try {
            try {
                C9378s90.f52296m.getClass();
                a(new C9378s90(c4858Ae, c10503yv));
                return this;
            } catch (LJ e10) {
                C9378s90 c9378s902 = (C9378s90) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    c9378s90 = c9378s902;
                    if (c9378s90 != null) {
                        a(c9378s90);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c9378s90 != null) {
            }
            throw th;
        }
    }
}
