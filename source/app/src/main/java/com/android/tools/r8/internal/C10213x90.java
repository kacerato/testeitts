package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C10213x90 extends AbstractC5827Qy implements InterfaceC8262lW {

    public int f53702c;

    public List f53703d = Collections.EMPTY_LIST;

    @Override
    public final C10213x90 a(C90 c90) {
        if (c90 == C90.f39140f) {
            return this;
        }
        if (!c90.f39143c.isEmpty()) {
            if (this.f53703d.isEmpty()) {
                this.f53703d = c90.f39143c;
                this.f53702c &= -2;
            } else {
                if ((this.f53702c & 1) != 1) {
                    this.f53703d = new ArrayList(this.f53703d);
                    this.f53702c |= 1;
                }
                this.f53703d.addAll(c90.f39143c);
            }
        }
        this.f43766b = this.f43766b.a(c90.f39142b);
        return this;
    }

    public final C90 c() {
        C90 c90 = new C90(this);
        if ((this.f53702c & 1) == 1) {
            this.f53703d = Collections.unmodifiableList(this.f53703d);
            this.f53702c &= -2;
        }
        c90.f39143c = this.f53703d;
        return c90;
    }

    public final Object clone() {
        return new C10213x90().a(c());
    }

    @Override
    public final O0 a() {
        C90 c10 = c();
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
        C90 c90 = null;
        try {
            try {
                C90.f39141g.getClass();
                a(new C90(c4858Ae, c10503yv));
                return this;
            } catch (LJ e10) {
                C90 c902 = (C90) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    c90 = c902;
                    if (c90 != null) {
                        a(c90);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c90 != null) {
            }
            throw th;
        }
    }
}
