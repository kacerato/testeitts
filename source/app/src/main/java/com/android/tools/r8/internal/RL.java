package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import w2.C15883c;

public final class RL extends AbstractC6287Yy {

    public static final RL f43865m;

    public static final PL f43866n = new PL();

    public final AbstractC8206l8 f43867b;

    public int f43868c;

    public List f43869d;

    public List f43870e;

    public InterfaceC10422yR f43871f;

    public F90 f43872g;

    public C90 f43873h;

    public List f43874i;

    public List f43875j;

    public byte f43876k;

    public int f43877l;

    static {
        RL rl2 = new RL();
        f43865m = rl2;
        List list = Collections.EMPTY_LIST;
        rl2.f43869d = list;
        rl2.f43870e = list;
        rl2.f43871f = C10088wR.f53502c;
        rl2.f43872g = F90.f40120f;
        rl2.f43873h = C90.f39140f;
        rl2.f43874i = list;
        rl2.f43875j = list;
    }

    public RL(QL ql2) {
        super(0);
        this.f43876k = (byte) -1;
        this.f43877l = -1;
        this.f43867b = ql2.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        for (int i10 = 0; i10 < this.f43869d.size(); i10++) {
            c5264He.b(1, (O0) this.f43869d.get(i10));
        }
        for (int i11 = 0; i11 < this.f43870e.size(); i11++) {
            c5264He.b(2, (O0) this.f43870e.get(i11));
        }
        for (int i12 = 0; i12 < this.f43871f.size(); i12++) {
            c5264He.a(3, this.f43871f.b(i12));
        }
        if ((this.f43868c & 1) == 1) {
            c5264He.b(4, this.f43872g);
        }
        if ((this.f43868c & 2) == 2) {
            c5264He.b(5, this.f43873h);
        }
        for (int i13 = 0; i13 < this.f43874i.size(); i13++) {
            c5264He.b(6, (O0) this.f43874i.get(i13));
        }
        for (int i14 = 0; i14 < this.f43875j.size(); i14++) {
            c5264He.b(16, (O0) this.f43875j.get(i14));
        }
        c5264He.a(this.f43867b);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new QL();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new QL().a(this);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f43876k;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int i10 = 0; i10 < this.f43869d.size(); i10++) {
            if (!((UL) this.f43869d.get(i10)).isInitialized()) {
                this.f43876k = (byte) 0;
                return false;
            }
        }
        for (int i11 = 0; i11 < this.f43870e.size(); i11++) {
            if (!((UL) this.f43870e.get(i11)).isInitialized()) {
                this.f43876k = (byte) 0;
                return false;
            }
        }
        if ((this.f43868c & 2) == 2 && !this.f43873h.isInitialized()) {
            this.f43876k = (byte) 0;
            return false;
        }
        for (int i12 = 0; i12 < this.f43874i.size(); i12++) {
            if (!((O80) this.f43874i.get(i12)).isInitialized()) {
                this.f43876k = (byte) 0;
                return false;
            }
        }
        for (int i13 = 0; i13 < this.f43875j.size(); i13++) {
            if (!((S80) this.f43875j.get(i13)).isInitialized()) {
                this.f43876k = (byte) 0;
                return false;
            }
        }
        this.f43876k = (byte) 1;
        return true;
    }

    public RL() {
        this.f43876k = (byte) -1;
        this.f43877l = -1;
        this.f43867b = AbstractC8206l8.f49897b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v8 */
    public RL(C4858Ae c4858Ae, C10503yv c10503yv) {
        this.f43876k = (byte) -1;
        this.f43877l = -1;
        List list = Collections.EMPTY_LIST;
        this.f43869d = list;
        this.f43870e = list;
        this.f43871f = C10088wR.f53502c;
        this.f43872g = F90.f40120f;
        this.f43873h = C90.f39140f;
        this.f43874i = list;
        this.f43875j = list;
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        boolean z10 = false;
        char c10 = 0;
        while (!z10) {
            try {
                try {
                    try {
                        int i10 = c4858Ae.i();
                        if (i10 != 0) {
                            if (i10 == 10) {
                                int i11 = (c10 == true ? 1 : 0) & 1;
                                c10 = c10;
                                if (i11 != 1) {
                                    this.f43869d = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | 1;
                                }
                                this.f43869d.add(c4858Ae.a(UL.f44726q, c10503yv));
                            } else if (i10 == 18) {
                                int i12 = (c10 == true ? 1 : 0) & 2;
                                c10 = c10;
                                if (i12 != 2) {
                                    this.f43870e = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | 2;
                                }
                                this.f43870e.add(c4858Ae.a(UL.f44726q, c10503yv));
                            } else if (i10 != 26) {
                                C10213x90 c10213x90 = null;
                                E90 e90 = null;
                                if (i10 == 34) {
                                    if ((this.f43868c & 1) == 1) {
                                        F90 f90 = this.f43872g;
                                        f90.getClass();
                                        e90 = new E90().a(f90);
                                    }
                                    F90 f902 = (F90) c4858Ae.a(F90.f40121g, c10503yv);
                                    this.f43872g = f902;
                                    if (e90 != null) {
                                        e90.a(f902);
                                        this.f43872g = e90.c();
                                    }
                                    this.f43868c |= 1;
                                } else if (i10 == 42) {
                                    if ((this.f43868c & 2) == 2) {
                                        C90 c90 = this.f43873h;
                                        c90.getClass();
                                        c10213x90 = new C10213x90().a(c90);
                                    }
                                    C90 c902 = (C90) c4858Ae.a(C90.f39141g, c10503yv);
                                    this.f43873h = c902;
                                    if (c10213x90 != null) {
                                        c10213x90.a(c902);
                                        this.f43873h = c10213x90.c();
                                    }
                                    this.f43868c |= 2;
                                } else if (i10 == 50) {
                                    int i13 = (c10 == true ? 1 : 0) & 32;
                                    c10 = c10;
                                    if (i13 != 32) {
                                        this.f43874i = new ArrayList();
                                        c10 = (c10 == true ? 1 : 0) | C15883c.f126249O;
                                    }
                                    this.f43874i.add(c4858Ae.a(O80.f42789i, c10503yv));
                                } else if (i10 != 130) {
                                    if (!c4858Ae.a(i10, c5264He)) {
                                    }
                                } else {
                                    int i14 = (c10 == true ? 1 : 0) & 64;
                                    c10 = c10;
                                    if (i14 != 64) {
                                        this.f43875j = new ArrayList();
                                        c10 = (c10 == true ? 1 : 0) | '@';
                                    }
                                    this.f43875j.add(c4858Ae.a(S80.f44100L, c10503yv));
                                }
                            } else {
                                ET b10 = c4858Ae.b();
                                int i15 = (c10 == true ? 1 : 0) & 4;
                                c10 = c10;
                                if (i15 != 4) {
                                    this.f43871f = new C10088wR();
                                    c10 = (c10 == true ? 1 : 0) | 4;
                                }
                                this.f43871f.a(b10);
                            }
                        }
                        z10 = true;
                    } catch (IOException e10) {
                        LJ lj2 = new LJ(e10.getMessage());
                        lj2.f41938b = this;
                        throw lj2;
                    }
                } catch (LJ e11) {
                    e11.f41938b = this;
                    throw e11;
                }
            } catch (Throwable th2) {
                if (((c10 == true ? 1 : 0) & 1) == 1) {
                    this.f43869d = Collections.unmodifiableList(this.f43869d);
                }
                if (((c10 == true ? 1 : 0) & 2) == 2) {
                    this.f43870e = Collections.unmodifiableList(this.f43870e);
                }
                if (((c10 == true ? 1 : 0) & 4) == 4) {
                    this.f43871f = this.f43871f.e();
                }
                if (((c10 == true ? 1 : 0) & 32) == 32) {
                    this.f43874i = Collections.unmodifiableList(this.f43874i);
                }
                if (((c10 == true ? 1 : 0) & 64) == 64) {
                    this.f43875j = Collections.unmodifiableList(this.f43875j);
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
        if (((c10 == true ? 1 : 0) & 1) == 1) {
            this.f43869d = Collections.unmodifiableList(this.f43869d);
        }
        if (((c10 == true ? 1 : 0) & 2) == 2) {
            this.f43870e = Collections.unmodifiableList(this.f43870e);
        }
        if (((c10 == true ? 1 : 0) & 4) == 4) {
            this.f43871f = this.f43871f.e();
        }
        if (((c10 == true ? 1 : 0) & 32) == 32) {
            this.f43874i = Collections.unmodifiableList(this.f43874i);
        }
        if (((c10 == true ? 1 : 0) & 64) == 64) {
            this.f43875j = Collections.unmodifiableList(this.f43875j);
        }
        try {
            if (c5264He.f40814d != null) {
                c5264He.a();
            }
        } catch (IOException unused2) {
        } finally {
            this.f43867b = c7872j8.c();
        }
    }

    @Override
    public final int a() {
        int i10 = this.f43877l;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f43869d.size(); i12++) {
            i11 += C5264He.a(1, (O0) this.f43869d.get(i12));
        }
        for (int i13 = 0; i13 < this.f43870e.size(); i13++) {
            i11 += C5264He.a(2, (O0) this.f43870e.get(i13));
        }
        int i14 = 0;
        for (int i15 = 0; i15 < this.f43871f.size(); i15++) {
            AbstractC8206l8 b10 = this.f43871f.b(i15);
            i14 += b10.size() + C5264He.b(b10.size());
        }
        int size = this.f43871f.size() + i11 + i14;
        if ((this.f43868c & 1) == 1) {
            size += C5264He.a(4, this.f43872g);
        }
        if ((this.f43868c & 2) == 2) {
            size += C5264He.a(5, this.f43873h);
        }
        for (int i16 = 0; i16 < this.f43874i.size(); i16++) {
            size += C5264He.a(6, (O0) this.f43874i.get(i16));
        }
        for (int i17 = 0; i17 < this.f43875j.size(); i17++) {
            size += C5264He.a(16, (O0) this.f43875j.get(i17));
        }
        int size2 = this.f43867b.size() + size;
        this.f43877l = size2;
        return size2;
    }
}
