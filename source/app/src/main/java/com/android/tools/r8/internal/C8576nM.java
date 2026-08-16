package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C8576nM extends AbstractC6287Yy {

    public static final C8576nM f50930h;

    public static final C7576hM f50931i = new C7576hM();

    public final AbstractC8206l8 f50932b;

    public List f50933c;

    public List f50934d;

    public int f50935e;

    public byte f50936f;

    public int f50937g;

    static {
        C8576nM c8576nM = new C8576nM();
        f50930h = c8576nM;
        List list = Collections.EMPTY_LIST;
        c8576nM.f50933c = list;
        c8576nM.f50934d = list;
    }

    public C8576nM(C7743iM c7743iM) {
        super(0);
        this.f50935e = -1;
        this.f50936f = (byte) -1;
        this.f50937g = -1;
        this.f50932b = c7743iM.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        for (int i10 = 0; i10 < this.f50933c.size(); i10++) {
            c5264He.b(1, (O0) this.f50933c.get(i10));
        }
        if (this.f50934d.size() > 0) {
            c5264He.g(42);
            c5264He.g(this.f50935e);
        }
        for (int i11 = 0; i11 < this.f50934d.size(); i11++) {
            c5264He.d(((Integer) this.f50934d.get(i11)).intValue());
        }
        c5264He.a(this.f50932b);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new C7743iM();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new C7743iM().a(this);
    }

    @Override
    public final boolean isInitialized() {
        if (this.f50936f == 1) {
            return true;
        }
        this.f50936f = (byte) 1;
        return true;
    }

    public C8576nM() {
        this.f50935e = -1;
        this.f50936f = (byte) -1;
        this.f50937g = -1;
        this.f50932b = AbstractC8206l8.f49897b;
    }

    @Override
    public final int a() {
        int i10 = this.f50937g;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < this.f50933c.size(); i13++) {
            i12 += C5264He.a(1, (O0) this.f50933c.get(i13));
        }
        int i14 = 0;
        while (true) {
            if (i11 >= this.f50934d.size()) {
                break;
            }
            int intValue = ((Integer) this.f50934d.get(i11)).intValue();
            if (intValue >= 0) {
                r4 = C5264He.b(intValue);
            }
            i14 += r4;
            i11++;
        }
        int i15 = i12 + i14;
        if (!this.f50934d.isEmpty()) {
            i15 = i15 + 1 + (i14 >= 0 ? C5264He.b(i14) : 10);
        }
        this.f50935e = i14;
        int size = this.f50932b.size() + i15;
        this.f50937g = size;
        return size;
    }

    public C8576nM(C4858Ae c4858Ae, C10503yv c10503yv) {
        this.f50935e = -1;
        this.f50936f = (byte) -1;
        this.f50937g = -1;
        List list = Collections.EMPTY_LIST;
        this.f50933c = list;
        this.f50934d = list;
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        boolean z10 = false;
        int i10 = 0;
        while (!z10) {
            try {
                try {
                    int i11 = c4858Ae.i();
                    if (i11 != 0) {
                        if (i11 == 10) {
                            if ((i10 & 1) != 1) {
                                this.f50933c = new ArrayList();
                                i10 |= 1;
                            }
                            this.f50933c.add(c4858Ae.a(C8409mM.f50265o, c10503yv));
                        } else if (i11 == 40) {
                            if ((i10 & 2) != 2) {
                                this.f50934d = new ArrayList();
                                i10 |= 2;
                            }
                            this.f50934d.add(Integer.valueOf(c4858Ae.f()));
                        } else if (i11 != 42) {
                            if (!c4858Ae.a(i11, c5264He)) {
                            }
                        } else {
                            int b10 = c4858Ae.b(c4858Ae.f());
                            if ((i10 & 2) != 2 && c4858Ae.a() > 0) {
                                this.f50934d = new ArrayList();
                                i10 |= 2;
                            }
                            while (c4858Ae.a() > 0) {
                                this.f50934d.add(Integer.valueOf(c4858Ae.f()));
                            }
                            c4858Ae.f38668h = b10;
                            c4858Ae.j();
                        }
                    }
                    z10 = true;
                } catch (Throwable th2) {
                    if ((i10 & 1) == 1) {
                        this.f50933c = Collections.unmodifiableList(this.f50933c);
                    }
                    if ((i10 & 2) == 2) {
                        this.f50934d = Collections.unmodifiableList(this.f50934d);
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
            } catch (LJ e10) {
                e10.f41938b = this;
                throw e10;
            } catch (IOException e11) {
                LJ lj2 = new LJ(e11.getMessage());
                lj2.f41938b = this;
                throw lj2;
            }
        }
        if ((i10 & 1) == 1) {
            this.f50933c = Collections.unmodifiableList(this.f50933c);
        }
        if ((i10 & 2) == 2) {
            this.f50934d = Collections.unmodifiableList(this.f50934d);
        }
        try {
            if (c5264He.f40814d != null) {
                c5264He.a();
            }
        } catch (IOException unused2) {
        } finally {
            this.f50932b = c7872j8.c();
        }
    }
}
