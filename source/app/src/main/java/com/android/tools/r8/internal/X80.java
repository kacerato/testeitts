package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class X80 extends AbstractC5827Qy implements InterfaceC8262lW {

    public int f45627c;

    public List f45628d = Collections.EMPTY_LIST;

    @Override
    public final X80 a(Y80 y80) {
        if (y80 == Y80.f45937f) {
            return this;
        }
        if (!y80.f45940c.isEmpty()) {
            if (this.f45628d.isEmpty()) {
                this.f45628d = y80.f45940c;
                this.f45627c &= -2;
            } else {
                if ((this.f45627c & 1) != 1) {
                    this.f45628d = new ArrayList(this.f45628d);
                    this.f45627c |= 1;
                }
                this.f45628d.addAll(y80.f45940c);
            }
        }
        this.f43766b = this.f43766b.a(y80.f45939b);
        return this;
    }

    public final Y80 c() {
        Y80 y80 = new Y80(this);
        if ((this.f45627c & 1) == 1) {
            this.f45628d = Collections.unmodifiableList(this.f45628d);
            this.f45627c &= -2;
        }
        y80.f45940c = this.f45628d;
        return y80;
    }

    public final Object clone() {
        return new X80().a(c());
    }

    @Override
    public final O0 a() {
        Y80 c10 = c();
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
        Y80 y80 = null;
        try {
            try {
                Y80.f45938g.getClass();
                a(new Y80(c4858Ae, c10503yv));
                return this;
            } catch (LJ e10) {
                Y80 y802 = (Y80) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    y80 = y802;
                    if (y80 != null) {
                        a(y80);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (y80 != null) {
            }
            throw th;
        }
    }
}
