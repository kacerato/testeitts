package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class U80 extends AbstractC5885Ry {

    public int f44679e;

    public int f44680f = 6;

    public List f44681g;

    public List f44682h;

    public U80() {
        List list = Collections.EMPTY_LIST;
        this.f44681g = list;
        this.f44682h = list;
    }

    @Override
    public final U80 a(V80 v80) {
        if (v80 == V80.f44973j) {
            return this;
        }
        if ((v80.f44976d & 1) == 1) {
            int i10 = v80.f44977e;
            this.f44679e = 1 | this.f44679e;
            this.f44680f = i10;
        }
        if (!v80.f44978f.isEmpty()) {
            if (this.f44681g.isEmpty()) {
                this.f44681g = v80.f44978f;
                this.f44679e &= -3;
            } else {
                if ((this.f44679e & 2) != 2) {
                    this.f44681g = new ArrayList(this.f44681g);
                    this.f44679e |= 2;
                }
                this.f44681g.addAll(v80.f44978f);
            }
        }
        if (!v80.f44979g.isEmpty()) {
            if (this.f44682h.isEmpty()) {
                this.f44682h = v80.f44979g;
                this.f44679e &= -5;
            } else {
                if ((this.f44679e & 4) != 4) {
                    this.f44682h = new ArrayList(this.f44682h);
                    this.f44679e |= 4;
                }
                this.f44682h.addAll(v80.f44979g);
            }
        }
        a((AbstractC6001Ty) v80);
        this.f43766b = this.f43766b.a(v80.f44975c);
        return this;
    }

    @Override
    public final AbstractC6287Yy b() {
        return V80.f44973j;
    }

    public final V80 c() {
        V80 v80 = new V80(this);
        int i10 = this.f44679e;
        int i11 = (i10 & 1) != 1 ? 0 : 1;
        v80.f44977e = this.f44680f;
        if ((i10 & 2) == 2) {
            this.f44681g = Collections.unmodifiableList(this.f44681g);
            this.f44679e &= -3;
        }
        v80.f44978f = this.f44681g;
        if ((this.f44679e & 4) == 4) {
            this.f44682h = Collections.unmodifiableList(this.f44682h);
            this.f44679e &= -5;
        }
        v80.f44979g = this.f44682h;
        v80.f44976d = i11;
        return v80;
    }

    public final Object clone() {
        return new U80().a(c());
    }

    @Override
    public final O0 a() {
        V80 c10 = c();
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
        V80 v80 = null;
        try {
            try {
                V80.f44974k.getClass();
                a(new V80(c4858Ae, c10503yv));
                return this;
            } catch (LJ e10) {
                V80 v802 = (V80) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    v80 = v802;
                    if (v80 != null) {
                        a(v80);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (v80 != null) {
            }
            throw th;
        }
    }
}
