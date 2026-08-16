package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import w2.C15883c;

public final class C8043k90 extends AbstractC6287Yy {

    public static final C8043k90 f49495m;

    public static final C7544h90 f49496n = new C7544h90();

    public final AbstractC8206l8 f49497b;

    public int f49498c;

    public int f49499d;

    public int f49500e;

    public EnumC7876j90 f49501f;

    public M90 f49502g;

    public int f49503h;

    public List f49504i;

    public List f49505j;

    public byte f49506k;

    public int f49507l;

    static {
        C8043k90 c8043k90 = new C8043k90();
        f49495m = c8043k90;
        c8043k90.f49499d = 0;
        c8043k90.f49500e = 0;
        c8043k90.f49501f = EnumC7876j90.TRUE;
        c8043k90.f49502g = M90.f42196u;
        c8043k90.f49503h = 0;
        List list = Collections.EMPTY_LIST;
        c8043k90.f49504i = list;
        c8043k90.f49505j = list;
    }

    public C8043k90(C7711i90 c7711i90) {
        super(0);
        this.f49506k = (byte) -1;
        this.f49507l = -1;
        this.f49497b = c7711i90.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        if ((this.f49498c & 1) == 1) {
            int i10 = this.f49499d;
            c5264He.b(1, 0);
            c5264He.d(i10);
        }
        if ((this.f49498c & 2) == 2) {
            int i11 = this.f49500e;
            c5264He.b(2, 0);
            c5264He.d(i11);
        }
        if ((this.f49498c & 4) == 4) {
            int i12 = this.f49501f.f49179b;
            c5264He.b(3, 0);
            c5264He.d(i12);
        }
        if ((this.f49498c & 8) == 8) {
            c5264He.b(4, this.f49502g);
        }
        if ((this.f49498c & 16) == 16) {
            int i13 = this.f49503h;
            c5264He.b(5, 0);
            c5264He.d(i13);
        }
        for (int i14 = 0; i14 < this.f49504i.size(); i14++) {
            c5264He.b(6, (O0) this.f49504i.get(i14));
        }
        for (int i15 = 0; i15 < this.f49505j.size(); i15++) {
            c5264He.b(7, (O0) this.f49505j.get(i15));
        }
        c5264He.a(this.f49497b);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new C7711i90();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new C7711i90().a(this);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f49506k;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        if ((this.f49498c & 8) == 8 && !this.f49502g.isInitialized()) {
            this.f49506k = (byte) 0;
            return false;
        }
        for (int i10 = 0; i10 < this.f49504i.size(); i10++) {
            if (!((C8043k90) this.f49504i.get(i10)).isInitialized()) {
                this.f49506k = (byte) 0;
                return false;
            }
        }
        for (int i11 = 0; i11 < this.f49505j.size(); i11++) {
            if (!((C8043k90) this.f49505j.get(i11)).isInitialized()) {
                this.f49506k = (byte) 0;
                return false;
            }
        }
        this.f49506k = (byte) 1;
        return true;
    }

    public C8043k90() {
        this.f49506k = (byte) -1;
        this.f49507l = -1;
        this.f49497b = AbstractC8206l8.f49897b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ed A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00e5 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C8043k90(C4858Ae c4858Ae, C10503yv c10503yv) {
        EnumC7876j90 enumC7876j90;
        this.f49506k = (byte) -1;
        this.f49507l = -1;
        boolean z10 = false;
        this.f49499d = 0;
        this.f49500e = 0;
        this.f49501f = EnumC7876j90.TRUE;
        this.f49502g = M90.f42196u;
        this.f49503h = 0;
        List list = Collections.EMPTY_LIST;
        this.f49504i = list;
        this.f49505j = list;
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        char c10 = 0;
        while (!z10) {
            try {
                try {
                    int i10 = c4858Ae.i();
                    if (i10 != 0) {
                        if (i10 == 8) {
                            this.f49498c |= 1;
                            this.f49499d = c4858Ae.f();
                        } else if (i10 != 16) {
                            L90 l90 = null;
                            EnumC7876j90 enumC7876j902 = null;
                            if (i10 == 24) {
                                int f10 = c4858Ae.f();
                                if (f10 == 0) {
                                    enumC7876j90 = EnumC7876j90.TRUE;
                                } else if (f10 == 1) {
                                    enumC7876j90 = EnumC7876j90.FALSE;
                                } else if (f10 == 2) {
                                    enumC7876j90 = EnumC7876j90.NULL;
                                } else if (enumC7876j902 != null) {
                                    c5264He.g(i10);
                                    c5264He.g(f10);
                                } else {
                                    this.f49498c |= 4;
                                    this.f49501f = enumC7876j902;
                                }
                                enumC7876j902 = enumC7876j90;
                                if (enumC7876j902 != null) {
                                }
                            } else if (i10 == 34) {
                                if ((this.f49498c & 8) == 8) {
                                    M90 m90 = this.f49502g;
                                    m90.getClass();
                                    l90 = M90.a(m90);
                                }
                                M90 m902 = (M90) c4858Ae.a(M90.f42197v, c10503yv);
                                this.f49502g = m902;
                                if (l90 != null) {
                                    l90.a(m902);
                                    this.f49502g = l90.d();
                                }
                                this.f49498c |= 8;
                            } else if (i10 == 40) {
                                this.f49498c |= 16;
                                this.f49503h = c4858Ae.f();
                            } else if (i10 == 50) {
                                int i11 = (c10 == true ? 1 : 0) & 32;
                                c10 = c10;
                                if (i11 != 32) {
                                    this.f49504i = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | C15883c.f126249O;
                                }
                                this.f49504i.add(c4858Ae.a(f49496n, c10503yv));
                            } else if (i10 != 58) {
                                if (!c4858Ae.a(i10, c5264He)) {
                                }
                            } else {
                                int i12 = (c10 == true ? 1 : 0) & 64;
                                c10 = c10;
                                if (i12 != 64) {
                                    this.f49505j = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | '@';
                                }
                                this.f49505j.add(c4858Ae.a(f49496n, c10503yv));
                            }
                        } else {
                            this.f49498c |= 2;
                            this.f49500e = c4858Ae.f();
                        }
                    }
                    z10 = true;
                } catch (Throwable th2) {
                    if (((c10 == true ? 1 : 0) & 32) == 32) {
                        this.f49504i = Collections.unmodifiableList(this.f49504i);
                    }
                    if (((c10 == true ? 1 : 0) & 64) == 64) {
                        this.f49505j = Collections.unmodifiableList(this.f49505j);
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
        if (((c10 == true ? 1 : 0) & 32) == 32) {
            this.f49504i = Collections.unmodifiableList(this.f49504i);
        }
        if (((c10 == true ? 1 : 0) & 64) == 64) {
            this.f49505j = Collections.unmodifiableList(this.f49505j);
        }
        try {
            if (c5264He.f40814d != null) {
                c5264He.a();
            }
        } catch (IOException unused2) {
        } finally {
            this.f49497b = c7872j8.c();
        }
    }

    @Override
    public final int a() {
        int i10 = this.f49507l;
        if (i10 != -1) {
            return i10;
        }
        int a10 = (this.f49498c & 1) == 1 ? C5264He.a(1, this.f49499d) : 0;
        if ((this.f49498c & 2) == 2) {
            a10 += C5264He.a(2, this.f49500e);
        }
        if ((this.f49498c & 4) == 4) {
            a10 += C5264He.a(this.f49501f.f49179b) + C5264He.c(3);
        }
        if ((this.f49498c & 8) == 8) {
            a10 += C5264He.a(4, this.f49502g);
        }
        if ((this.f49498c & 16) == 16) {
            a10 += C5264He.a(5, this.f49503h);
        }
        for (int i11 = 0; i11 < this.f49504i.size(); i11++) {
            a10 += C5264He.a(6, (O0) this.f49504i.get(i11));
        }
        for (int i12 = 0; i12 < this.f49505j.size(); i12++) {
            a10 += C5264He.a(7, (O0) this.f49505j.get(i12));
        }
        int size = this.f49497b.size() + a10;
        this.f49507l = size;
        return size;
    }
}
