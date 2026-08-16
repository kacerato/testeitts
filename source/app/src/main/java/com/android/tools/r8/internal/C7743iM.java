package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C7743iM extends AbstractC5827Qy implements InterfaceC8262lW {

    public int f48923c;

    public List f48924d;

    public List f48925e;

    public C7743iM() {
        List list = Collections.EMPTY_LIST;
        this.f48924d = list;
        this.f48925e = list;
    }

    @Override
    public final C7743iM a(C8576nM c8576nM) {
        if (c8576nM == C8576nM.f50930h) {
            return this;
        }
        if (!c8576nM.f50933c.isEmpty()) {
            if (this.f48924d.isEmpty()) {
                this.f48924d = c8576nM.f50933c;
                this.f48923c &= -2;
            } else {
                if ((this.f48923c & 1) != 1) {
                    this.f48924d = new ArrayList(this.f48924d);
                    this.f48923c |= 1;
                }
                this.f48924d.addAll(c8576nM.f50933c);
            }
        }
        if (!c8576nM.f50934d.isEmpty()) {
            if (this.f48925e.isEmpty()) {
                this.f48925e = c8576nM.f50934d;
                this.f48923c &= -3;
            } else {
                if ((this.f48923c & 2) != 2) {
                    this.f48925e = new ArrayList(this.f48925e);
                    this.f48923c |= 2;
                }
                this.f48925e.addAll(c8576nM.f50934d);
            }
        }
        this.f43766b = this.f43766b.a(c8576nM.f50932b);
        return this;
    }

    public final C8576nM c() {
        C8576nM c8576nM = new C8576nM(this);
        if ((this.f48923c & 1) == 1) {
            this.f48924d = Collections.unmodifiableList(this.f48924d);
            this.f48923c &= -2;
        }
        c8576nM.f50933c = this.f48924d;
        if ((this.f48923c & 2) == 2) {
            this.f48925e = Collections.unmodifiableList(this.f48925e);
            this.f48923c &= -3;
        }
        c8576nM.f50934d = this.f48925e;
        return c8576nM;
    }

    public final Object clone() {
        return new C7743iM().a(c());
    }

    @Override
    public final O0 a() {
        C8576nM c10 = c();
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
        C8576nM c8576nM = null;
        try {
            try {
                C8576nM.f50931i.getClass();
                a(new C8576nM(c4858Ae, c10503yv));
                return this;
            } catch (LJ e10) {
                C8576nM c8576nM2 = (C8576nM) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    c8576nM = c8576nM2;
                    if (c8576nM != null) {
                        a(c8576nM);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c8576nM != null) {
            }
            throw th;
        }
    }
}
