package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class N80 extends AbstractC5827Qy implements InterfaceC8262lW {

    public int f42513c;

    public int f42514d;

    public List f42515e = Collections.EMPTY_LIST;

    @Override
    public final N80 a(O80 o80) {
        if (o80 == O80.f42788h) {
            return this;
        }
        if ((o80.f42791c & 1) == 1) {
            int i10 = o80.f42792d;
            this.f42513c = 1 | this.f42513c;
            this.f42514d = i10;
        }
        if (!o80.f42793e.isEmpty()) {
            if (this.f42515e.isEmpty()) {
                this.f42515e = o80.f42793e;
                this.f42513c &= -3;
            } else {
                if ((this.f42513c & 2) != 2) {
                    this.f42515e = new ArrayList(this.f42515e);
                    this.f42513c |= 2;
                }
                this.f42515e.addAll(o80.f42793e);
            }
        }
        this.f43766b = this.f43766b.a(o80.f42790b);
        return this;
    }

    public final O80 c() {
        O80 o80 = new O80(this);
        int i10 = this.f42513c;
        int i11 = (i10 & 1) != 1 ? 0 : 1;
        o80.f42792d = this.f42514d;
        if ((i10 & 2) == 2) {
            this.f42515e = Collections.unmodifiableList(this.f42515e);
            this.f42513c &= -3;
        }
        o80.f42793e = this.f42515e;
        o80.f42791c = i11;
        return o80;
    }

    public final Object clone() {
        return new N80().a(c());
    }

    @Override
    public final O0 a() {
        O80 c10 = c();
        if (c10.isInitialized()) {
            return c10;
        }
        throw new C6834cv0();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x001a  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC5827Qy a(C4858Ae c4858Ae, C10503yv c10503yv) {
        O80 o80 = null;
        try {
            try {
                O80.f42789i.getClass();
                a(F80.b(c4858Ae, c10503yv));
                return this;
            } catch (LJ e10) {
                O80 o802 = (O80) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    o80 = o802;
                    if (o80 != null) {
                        a(o80);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (o80 != null) {
            }
            throw th;
        }
    }
}
