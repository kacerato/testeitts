package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C9378s90 extends AbstractC6001Ty {

    public static final C9378s90 f52295l;

    public static final C9045q90 f52296m = new C9045q90();

    public final AbstractC8206l8 f52297c;

    public int f52298d;

    public List f52299e;

    public List f52300f;

    public List f52301g;

    public W90 f52302h;

    public C7605ha0 f52303i;

    public byte f52304j;

    public int f52305k;

    static {
        C9378s90 c9378s90 = new C9378s90();
        f52295l = c9378s90;
        List list = Collections.EMPTY_LIST;
        c9378s90.f52299e = list;
        c9378s90.f52300f = list;
        c9378s90.f52301g = list;
        c9378s90.f52302h = W90.f45318h;
        c9378s90.f52303i = C7605ha0.f48584f;
    }

    public C9378s90(C9211r90 c9211r90) {
        super(c9211r90);
        this.f52304j = (byte) -1;
        this.f52305k = -1;
        this.f52297c = c9211r90.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        C5943Sy c5943Sy = new C5943Sy(this);
        for (int i10 = 0; i10 < this.f52299e.size(); i10++) {
            c5264He.b(3, (O0) this.f52299e.get(i10));
        }
        for (int i11 = 0; i11 < this.f52300f.size(); i11++) {
            c5264He.b(4, (O0) this.f52300f.get(i11));
        }
        for (int i12 = 0; i12 < this.f52301g.size(); i12++) {
            c5264He.b(5, (O0) this.f52301g.get(i12));
        }
        if ((this.f52298d & 1) == 1) {
            c5264He.b(30, this.f52302h);
        }
        if ((this.f52298d & 2) == 2) {
            c5264He.b(32, this.f52303i);
        }
        c5943Sy.a(200, c5264He);
        c5264He.a(this.f52297c);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new C9211r90();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new C9211r90().a(this);
    }

    @Override
    public final O0 getDefaultInstanceForType() {
        return f52295l;
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f52304j;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int i10 = 0; i10 < this.f52299e.size(); i10++) {
            if (!((C8544n90) this.f52299e.get(i10)).isInitialized()) {
                this.f52304j = (byte) 0;
                return false;
            }
        }
        for (int i11 = 0; i11 < this.f52300f.size(); i11++) {
            if (!((C9879v90) this.f52300f.get(i11)).isInitialized()) {
                this.f52304j = (byte) 0;
                return false;
            }
        }
        for (int i12 = 0; i12 < this.f52301g.size(); i12++) {
            if (!((P90) this.f52301g.get(i12)).isInitialized()) {
                this.f52304j = (byte) 0;
                return false;
            }
        }
        if ((this.f52298d & 1) == 1 && !this.f52302h.isInitialized()) {
            this.f52304j = (byte) 0;
            return false;
        }
        if (d()) {
            this.f52304j = (byte) 1;
            return true;
        }
        this.f52304j = (byte) 0;
        return false;
    }

    public C9378s90() {
        this.f52304j = (byte) -1;
        this.f52305k = -1;
        this.f52297c = AbstractC8206l8.f49897b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v8 */
    public C9378s90(C4858Ae c4858Ae, C10503yv c10503yv) {
        this.f52304j = (byte) -1;
        this.f52305k = -1;
        List list = Collections.EMPTY_LIST;
        this.f52299e = list;
        this.f52300f = list;
        this.f52301g = list;
        this.f52302h = W90.f45318h;
        this.f52303i = C7605ha0.f48584f;
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        boolean z10 = false;
        char c10 = 0;
        while (!z10) {
            try {
                try {
                    int i10 = c4858Ae.i();
                    if (i10 != 0) {
                        if (i10 == 26) {
                            int i11 = (c10 == true ? 1 : 0) & 1;
                            c10 = c10;
                            if (i11 != 1) {
                                this.f52299e = new ArrayList();
                                c10 = (c10 == true ? 1 : 0) | 1;
                            }
                            this.f52299e.add(c4858Ae.a(C8544n90.f50523w, c10503yv));
                        } else if (i10 == 34) {
                            int i12 = (c10 == true ? 1 : 0) & 2;
                            c10 = c10;
                            if (i12 != 2) {
                                this.f52300f = new ArrayList();
                                c10 = (c10 == true ? 1 : 0) | 2;
                            }
                            this.f52300f.add(c4858Ae.a(C9879v90.f53026w, c10503yv));
                        } else if (i10 != 42) {
                            C7438ga0 c7438ga0 = null;
                            V90 v90 = null;
                            if (i10 == 242) {
                                if ((this.f52298d & 1) == 1) {
                                    W90 w90 = this.f52302h;
                                    w90.getClass();
                                    v90 = W90.a(w90);
                                }
                                W90 w902 = (W90) c4858Ae.a(W90.f45319i, c10503yv);
                                this.f52302h = w902;
                                if (v90 != null) {
                                    v90.a(w902);
                                    this.f52302h = v90.c();
                                }
                                this.f52298d |= 1;
                            } else if (i10 != 258) {
                                if (!a(c4858Ae, c5264He, c10503yv, i10)) {
                                }
                            } else {
                                if ((this.f52298d & 2) == 2) {
                                    C7605ha0 c7605ha0 = this.f52303i;
                                    c7605ha0.getClass();
                                    c7438ga0 = new C7438ga0().a(c7605ha0);
                                }
                                C7605ha0 c7605ha02 = (C7605ha0) c4858Ae.a(C7605ha0.f48585g, c10503yv);
                                this.f52303i = c7605ha02;
                                if (c7438ga0 != null) {
                                    c7438ga0.a(c7605ha02);
                                    this.f52303i = c7438ga0.c();
                                }
                                this.f52298d |= 2;
                            }
                        } else {
                            int i13 = (c10 == true ? 1 : 0) & 4;
                            c10 = c10;
                            if (i13 != 4) {
                                this.f52301g = new ArrayList();
                                c10 = (c10 == true ? 1 : 0) | 4;
                            }
                            this.f52301g.add(c4858Ae.a(P90.f43136q, c10503yv));
                        }
                    }
                    z10 = true;
                } catch (Throwable th2) {
                    if (((c10 == true ? 1 : 0) & 1) == 1) {
                        this.f52299e = Collections.unmodifiableList(this.f52299e);
                    }
                    if (((c10 == true ? 1 : 0) & 2) == 2) {
                        this.f52300f = Collections.unmodifiableList(this.f52300f);
                    }
                    if (((c10 == true ? 1 : 0) & 4) == 4) {
                        this.f52301g = Collections.unmodifiableList(this.f52301g);
                    }
                    try {
                        if (c5264He.f40814d != null) {
                            c5264He.a();
                        }
                    } catch (IOException unused) {
                    } catch (Throwable th3) {
                        this.f52297c = c7872j8.c();
                        throw th3;
                    }
                    this.f52297c = c7872j8.c();
                    this.f44631b.a();
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
        if (((c10 == true ? 1 : 0) & 1) == 1) {
            this.f52299e = Collections.unmodifiableList(this.f52299e);
        }
        if (((c10 == true ? 1 : 0) & 2) == 2) {
            this.f52300f = Collections.unmodifiableList(this.f52300f);
        }
        if (((c10 == true ? 1 : 0) & 4) == 4) {
            this.f52301g = Collections.unmodifiableList(this.f52301g);
        }
        try {
            if (c5264He.f40814d != null) {
                c5264He.a();
            }
        } catch (IOException unused2) {
        } catch (Throwable th4) {
            this.f52297c = c7872j8.c();
            throw th4;
        }
        this.f52297c = c7872j8.c();
        this.f44631b.a();
    }

    @Override
    public final int a() {
        int i10 = this.f52305k;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f52299e.size(); i12++) {
            i11 += C5264He.a(3, (O0) this.f52299e.get(i12));
        }
        for (int i13 = 0; i13 < this.f52300f.size(); i13++) {
            i11 += C5264He.a(4, (O0) this.f52300f.get(i13));
        }
        for (int i14 = 0; i14 < this.f52301g.size(); i14++) {
            i11 += C5264He.a(5, (O0) this.f52301g.get(i14));
        }
        if ((this.f52298d & 1) == 1) {
            i11 += C5264He.a(30, this.f52302h);
        }
        if ((this.f52298d & 2) == 2) {
            i11 += C5264He.a(32, this.f52303i);
        }
        int size = this.f52297c.size() + e() + i11;
        this.f52305k = size;
        return size;
    }
}
