package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C90 extends AbstractC6287Yy {

    public static final C90 f39140f;

    public static final C10046w90 f39141g = new C10046w90();

    public final AbstractC8206l8 f39142b;

    public List f39143c;

    public byte f39144d;

    public int f39145e;

    static {
        C90 c90 = new C90();
        f39140f = c90;
        c90.f39143c = Collections.EMPTY_LIST;
    }

    public C90(C10213x90 c10213x90) {
        super(0);
        this.f39144d = (byte) -1;
        this.f39145e = -1;
        this.f39142b = c10213x90.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        for (int i10 = 0; i10 < this.f39143c.size(); i10++) {
            c5264He.b(1, (O0) this.f39143c.get(i10));
        }
        c5264He.a(this.f39142b);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new C10213x90();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new C10213x90().a(this);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f39144d;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int i10 = 0; i10 < this.f39143c.size(); i10++) {
            if (!((B90) this.f39143c.get(i10)).isInitialized()) {
                this.f39144d = (byte) 0;
                return false;
            }
        }
        this.f39144d = (byte) 1;
        return true;
    }

    @Override
    public final int a() {
        int i10 = this.f39145e;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f39143c.size(); i12++) {
            i11 += C5264He.a(1, (O0) this.f39143c.get(i12));
        }
        int size = this.f39142b.size() + i11;
        this.f39145e = size;
        return size;
    }

    public C90() {
        this.f39144d = (byte) -1;
        this.f39145e = -1;
        this.f39142b = AbstractC8206l8.f49897b;
    }

    public C90(C4858Ae c4858Ae, C10503yv c10503yv) {
        this.f39144d = (byte) -1;
        this.f39145e = -1;
        this.f39143c = Collections.EMPTY_LIST;
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int i10 = c4858Ae.i();
                    if (i10 != 0) {
                        if (i10 != 10) {
                            if (!c4858Ae.a(i10, c5264He)) {
                            }
                        } else {
                            if (!z11) {
                                this.f39143c = new ArrayList();
                                z11 = true;
                            }
                            this.f39143c.add(c4858Ae.a(B90.f38835j, c10503yv));
                        }
                    }
                    z10 = true;
                } catch (LJ e10) {
                    e10.f41938b = this;
                    throw e10;
                } catch (IOException e11) {
                    LJ lj2 = new LJ(e11.getMessage());
                    lj2.f41938b = this;
                    throw lj2;
                }
            } catch (Throwable th2) {
                if (z11) {
                    this.f39143c = Collections.unmodifiableList(this.f39143c);
                }
                try {
                    if (c5264He.f40814d != null) {
                        c5264He.a();
                    }
                } catch (IOException unused) {
                } catch (Throwable th3) {
                    throw th3;
                }
                throw th2;
            }
        }
        if (z11) {
            this.f39143c = Collections.unmodifiableList(this.f39143c);
        }
        try {
            if (c5264He.f40814d != null) {
                c5264He.a();
            }
        } catch (IOException unused2) {
        } finally {
            this.f39142b = c7872j8.c();
        }
    }
}
