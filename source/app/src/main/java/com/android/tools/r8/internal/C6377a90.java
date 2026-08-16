package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C6377a90 extends AbstractC5827Qy implements InterfaceC8262lW {

    public int f46430c;

    public EnumC6544b90 f46431d = EnumC6544b90.RETURNS_CONSTANT;

    public List f46432e = Collections.EMPTY_LIST;

    public C8043k90 f46433f = C8043k90.f49495m;

    public EnumC6710c90 f46434g = EnumC6710c90.AT_MOST_ONCE;

    @Override
    public final C6377a90 a(C6877d90 c6877d90) {
        C8043k90 c8043k90;
        if (c6877d90 == C6877d90.f47302j) {
            return this;
        }
        if ((c6877d90.f47305c & 1) == 1) {
            EnumC6544b90 enumC6544b90 = c6877d90.f47306d;
            enumC6544b90.getClass();
            this.f46430c = 1 | this.f46430c;
            this.f46431d = enumC6544b90;
        }
        if (!c6877d90.f47307e.isEmpty()) {
            if (this.f46432e.isEmpty()) {
                this.f46432e = c6877d90.f47307e;
                this.f46430c &= -3;
            } else {
                if ((this.f46430c & 2) != 2) {
                    this.f46432e = new ArrayList(this.f46432e);
                    this.f46430c |= 2;
                }
                this.f46432e.addAll(c6877d90.f47307e);
            }
        }
        if ((c6877d90.f47305c & 2) == 2) {
            C8043k90 c8043k902 = c6877d90.f47308f;
            if ((this.f46430c & 4) == 4 && (c8043k90 = this.f46433f) != C8043k90.f49495m) {
                this.f46433f = new C7711i90().a(c8043k90).a(c8043k902).c();
            } else {
                this.f46433f = c8043k902;
            }
            this.f46430c |= 4;
        }
        if ((c6877d90.f47305c & 4) == 4) {
            EnumC6710c90 enumC6710c90 = c6877d90.f47309g;
            enumC6710c90.getClass();
            this.f46430c |= 8;
            this.f46434g = enumC6710c90;
        }
        this.f43766b = this.f43766b.a(c6877d90.f47304b);
        return this;
    }

    public final C6877d90 c() {
        C6877d90 c6877d90 = new C6877d90(this);
        int i10 = this.f46430c;
        int i11 = (i10 & 1) != 1 ? 0 : 1;
        c6877d90.f47306d = this.f46431d;
        if ((i10 & 2) == 2) {
            this.f46432e = Collections.unmodifiableList(this.f46432e);
            this.f46430c &= -3;
        }
        c6877d90.f47307e = this.f46432e;
        if ((i10 & 4) == 4) {
            i11 |= 2;
        }
        c6877d90.f47308f = this.f46433f;
        if ((i10 & 8) == 8) {
            i11 |= 4;
        }
        c6877d90.f47309g = this.f46434g;
        c6877d90.f47305c = i11;
        return c6877d90;
    }

    public final Object clone() {
        return new C6377a90().a(c());
    }

    @Override
    public final O0 a() {
        C6877d90 c10 = c();
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
        C6877d90 c6877d90 = null;
        try {
            try {
                C6877d90.f47303k.getClass();
                a(new C6877d90(c4858Ae, c10503yv));
                return this;
            } catch (LJ e10) {
                C6877d90 c6877d902 = (C6877d90) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    c6877d90 = c6877d902;
                    if (c6877d90 != null) {
                        a(c6877d90);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c6877d90 != null) {
            }
            throw th;
        }
    }
}
