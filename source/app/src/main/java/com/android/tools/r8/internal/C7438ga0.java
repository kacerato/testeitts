package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C7438ga0 extends AbstractC5827Qy implements InterfaceC8262lW {

    public int f48289c;

    public List f48290d = Collections.EMPTY_LIST;

    @Override
    public final C7438ga0 a(C7605ha0 c7605ha0) {
        if (c7605ha0 == C7605ha0.f48584f) {
            return this;
        }
        if (!c7605ha0.f48587c.isEmpty()) {
            if (this.f48290d.isEmpty()) {
                this.f48290d = c7605ha0.f48587c;
                this.f48289c &= -2;
            } else {
                if ((this.f48289c & 1) != 1) {
                    this.f48290d = new ArrayList(this.f48290d);
                    this.f48289c |= 1;
                }
                this.f48290d.addAll(c7605ha0.f48587c);
            }
        }
        this.f43766b = this.f43766b.a(c7605ha0.f48586b);
        return this;
    }

    public final C7605ha0 c() {
        C7605ha0 c7605ha0 = new C7605ha0(this);
        if ((this.f48289c & 1) == 1) {
            this.f48290d = Collections.unmodifiableList(this.f48290d);
            this.f48289c &= -2;
        }
        c7605ha0.f48587c = this.f48290d;
        return c7605ha0;
    }

    public final Object clone() {
        return new C7438ga0().a(c());
    }

    @Override
    public final O0 a() {
        C7605ha0 c10 = c();
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
        C7605ha0 c7605ha0 = null;
        try {
            try {
                C7605ha0.f48585g.getClass();
                a(new C7605ha0(c4858Ae, c10503yv));
                return this;
            } catch (LJ e10) {
                C7605ha0 c7605ha02 = (C7605ha0) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    c7605ha0 = c7605ha02;
                    if (c7605ha0 != null) {
                        a(c7605ha0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c7605ha0 != null) {
            }
            throw th;
        }
    }
}
