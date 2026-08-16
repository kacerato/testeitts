package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C7711i90 extends AbstractC5827Qy implements InterfaceC8262lW {

    public int f48856c;

    public int f48857d;

    public int f48858e;

    public EnumC7876j90 f48859f = EnumC7876j90.TRUE;

    public M90 f48860g = M90.f42196u;

    public int f48861h;

    public List f48862i;

    public List f48863j;

    public C7711i90() {
        List list = Collections.EMPTY_LIST;
        this.f48862i = list;
        this.f48863j = list;
    }

    @Override
    public final C7711i90 a(C8043k90 c8043k90) {
        M90 m90;
        if (c8043k90 == C8043k90.f49495m) {
            return this;
        }
        int i10 = c8043k90.f49498c;
        if ((i10 & 1) == 1) {
            int i11 = c8043k90.f49499d;
            this.f48856c = 1 | this.f48856c;
            this.f48857d = i11;
        }
        if ((i10 & 2) == 2) {
            int i12 = c8043k90.f49500e;
            this.f48856c = 2 | this.f48856c;
            this.f48858e = i12;
        }
        if ((i10 & 4) == 4) {
            EnumC7876j90 enumC7876j90 = c8043k90.f49501f;
            enumC7876j90.getClass();
            this.f48856c = 4 | this.f48856c;
            this.f48859f = enumC7876j90;
        }
        if ((c8043k90.f49498c & 8) == 8) {
            M90 m902 = c8043k90.f49502g;
            if ((this.f48856c & 8) == 8 && (m90 = this.f48860g) != M90.f42196u) {
                this.f48860g = M90.a(m90).a(m902).d();
            } else {
                this.f48860g = m902;
            }
            this.f48856c |= 8;
        }
        if ((c8043k90.f49498c & 16) == 16) {
            int i13 = c8043k90.f49503h;
            this.f48856c = 16 | this.f48856c;
            this.f48861h = i13;
        }
        if (!c8043k90.f49504i.isEmpty()) {
            if (this.f48862i.isEmpty()) {
                this.f48862i = c8043k90.f49504i;
                this.f48856c &= -33;
            } else {
                if ((this.f48856c & 32) != 32) {
                    this.f48862i = new ArrayList(this.f48862i);
                    this.f48856c |= 32;
                }
                this.f48862i.addAll(c8043k90.f49504i);
            }
        }
        if (!c8043k90.f49505j.isEmpty()) {
            if (this.f48863j.isEmpty()) {
                this.f48863j = c8043k90.f49505j;
                this.f48856c &= -65;
            } else {
                if ((this.f48856c & 64) != 64) {
                    this.f48863j = new ArrayList(this.f48863j);
                    this.f48856c |= 64;
                }
                this.f48863j.addAll(c8043k90.f49505j);
            }
        }
        this.f43766b = this.f43766b.a(c8043k90.f49497b);
        return this;
    }

    public final C8043k90 c() {
        C8043k90 c8043k90 = new C8043k90(this);
        int i10 = this.f48856c;
        int i11 = (i10 & 1) != 1 ? 0 : 1;
        c8043k90.f49499d = this.f48857d;
        if ((i10 & 2) == 2) {
            i11 |= 2;
        }
        c8043k90.f49500e = this.f48858e;
        if ((i10 & 4) == 4) {
            i11 |= 4;
        }
        c8043k90.f49501f = this.f48859f;
        if ((i10 & 8) == 8) {
            i11 |= 8;
        }
        c8043k90.f49502g = this.f48860g;
        if ((i10 & 16) == 16) {
            i11 |= 16;
        }
        c8043k90.f49503h = this.f48861h;
        if ((i10 & 32) == 32) {
            this.f48862i = Collections.unmodifiableList(this.f48862i);
            this.f48856c &= -33;
        }
        c8043k90.f49504i = this.f48862i;
        if ((this.f48856c & 64) == 64) {
            this.f48863j = Collections.unmodifiableList(this.f48863j);
            this.f48856c &= -65;
        }
        c8043k90.f49505j = this.f48863j;
        c8043k90.f49498c = i11;
        return c8043k90;
    }

    public final Object clone() {
        return new C7711i90().a(c());
    }

    @Override
    public final O0 a() {
        C8043k90 c10 = c();
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
        C8043k90 c8043k90 = null;
        try {
            try {
                C8043k90.f49496n.getClass();
                a(new C8043k90(c4858Ae, c10503yv));
                return this;
            } catch (LJ e10) {
                C8043k90 c8043k902 = (C8043k90) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    c8043k90 = c8043k902;
                    if (c8043k90 != null) {
                        a(c8043k90);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c8043k90 != null) {
            }
            throw th;
        }
    }
}
