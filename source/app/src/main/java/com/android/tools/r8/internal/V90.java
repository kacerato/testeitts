package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class V90 extends AbstractC5827Qy implements InterfaceC8262lW {

    public int f44985c;

    public List f44986d = Collections.EMPTY_LIST;

    public int f44987e = -1;

    @Override
    public final V90 a(W90 w90) {
        if (w90 == W90.f45318h) {
            return this;
        }
        if (!w90.f45322d.isEmpty()) {
            if (this.f44986d.isEmpty()) {
                this.f44986d = w90.f45322d;
                this.f44985c &= -2;
            } else {
                if ((this.f44985c & 1) != 1) {
                    this.f44986d = new ArrayList(this.f44986d);
                    this.f44985c |= 1;
                }
                this.f44986d.addAll(w90.f45322d);
            }
        }
        if ((w90.f45321c & 1) == 1) {
            int i10 = w90.f45323e;
            this.f44985c |= 2;
            this.f44987e = i10;
        }
        this.f43766b = this.f43766b.a(w90.f45320b);
        return this;
    }

    public final W90 c() {
        W90 w90 = new W90(this);
        int i10 = this.f44985c;
        if ((i10 & 1) == 1) {
            this.f44986d = Collections.unmodifiableList(this.f44986d);
            this.f44985c &= -2;
        }
        w90.f45322d = this.f44986d;
        int i11 = (i10 & 2) != 2 ? 0 : 1;
        w90.f45323e = this.f44987e;
        w90.f45321c = i11;
        return w90;
    }

    public final Object clone() {
        return new V90().a(c());
    }

    @Override
    public final O0 a() {
        W90 c10 = c();
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
        W90 w90 = null;
        try {
            try {
                W90.f45319i.getClass();
                a(new W90(c4858Ae, c10503yv));
                return this;
            } catch (LJ e10) {
                W90 w902 = (W90) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    w90 = w902;
                    if (w90 != null) {
                        a(w90);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (w90 != null) {
            }
            throw th;
        }
    }
}
