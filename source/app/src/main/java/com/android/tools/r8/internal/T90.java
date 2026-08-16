package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class T90 extends AbstractC6001Ty {

    public static final T90 f44400n;

    public static final Q90 f44401o = new Q90();

    public final AbstractC8206l8 f44402c;

    public int f44403d;

    public int f44404e;

    public int f44405f;

    public boolean f44406g;

    public S90 f44407h;

    public List f44408i;

    public List f44409j;

    public int f44410k;

    public byte f44411l;

    public int f44412m;

    static {
        T90 t90 = new T90();
        f44400n = t90;
        t90.f44404e = 0;
        t90.f44405f = 0;
        t90.f44406g = false;
        t90.f44407h = S90.INV;
        List list = Collections.EMPTY_LIST;
        t90.f44408i = list;
        t90.f44409j = list;
    }

    public T90(R90 r90) {
        super(r90);
        this.f44410k = -1;
        this.f44411l = (byte) -1;
        this.f44412m = -1;
        this.f44402c = r90.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        C5943Sy c5943Sy = new C5943Sy(this);
        if ((this.f44403d & 1) == 1) {
            int i10 = this.f44404e;
            c5264He.b(1, 0);
            c5264He.d(i10);
        }
        if ((this.f44403d & 2) == 2) {
            int i11 = this.f44405f;
            c5264He.b(2, 0);
            c5264He.d(i11);
        }
        if ((this.f44403d & 4) == 4) {
            boolean z10 = this.f44406g;
            c5264He.b(3, 0);
            c5264He.e(z10 ? 1 : 0);
        }
        if ((this.f44403d & 8) == 8) {
            int i12 = this.f44407h.f44142b;
            c5264He.b(4, 0);
            c5264He.d(i12);
        }
        for (int i13 = 0; i13 < this.f44408i.size(); i13++) {
            c5264He.b(5, (O0) this.f44408i.get(i13));
        }
        if (this.f44409j.size() > 0) {
            c5264He.g(50);
            c5264He.g(this.f44410k);
        }
        for (int i14 = 0; i14 < this.f44409j.size(); i14++) {
            c5264He.d(((Integer) this.f44409j.get(i14)).intValue());
        }
        c5943Sy.a(1000, c5264He);
        c5264He.a(this.f44402c);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new R90();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new R90().a(this);
    }

    @Override
    public final O0 getDefaultInstanceForType() {
        return f44400n;
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f44411l;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        int i10 = this.f44403d;
        if ((i10 & 1) != 1) {
            this.f44411l = (byte) 0;
            return false;
        }
        if ((i10 & 2) != 2) {
            this.f44411l = (byte) 0;
            return false;
        }
        for (int i11 = 0; i11 < this.f44408i.size(); i11++) {
            if (!((M90) this.f44408i.get(i11)).isInitialized()) {
                this.f44411l = (byte) 0;
                return false;
            }
        }
        if (d()) {
            this.f44411l = (byte) 1;
            return true;
        }
        this.f44411l = (byte) 0;
        return false;
    }

    public T90() {
        this.f44410k = -1;
        this.f44411l = (byte) -1;
        this.f44412m = -1;
        this.f44402c = AbstractC8206l8.f49897b;
    }

    public T90(C4858Ae c4858Ae, C10503yv c10503yv) {
        S90 s90;
        this.f44410k = -1;
        this.f44411l = (byte) -1;
        this.f44412m = -1;
        this.f44404e = 0;
        this.f44405f = 0;
        this.f44406g = false;
        this.f44407h = S90.INV;
        List list = Collections.EMPTY_LIST;
        this.f44408i = list;
        this.f44409j = list;
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        boolean z10 = false;
        int i10 = 0;
        while (!z10) {
            try {
                try {
                    int i11 = c4858Ae.i();
                    if (i11 != 0) {
                        if (i11 == 8) {
                            this.f44403d |= 1;
                            this.f44404e = c4858Ae.f();
                        } else if (i11 == 16) {
                            this.f44403d |= 2;
                            this.f44405f = c4858Ae.f();
                        } else if (i11 == 24) {
                            this.f44403d |= 4;
                            this.f44406g = c4858Ae.g() != 0;
                        } else if (i11 == 32) {
                            int f10 = c4858Ae.f();
                            if (f10 == 0) {
                                s90 = S90.IN;
                            } else if (f10 != 1) {
                                s90 = f10 != 2 ? null : S90.INV;
                            } else {
                                s90 = S90.OUT;
                            }
                            if (s90 == null) {
                                c5264He.g(i11);
                                c5264He.g(f10);
                            } else {
                                this.f44403d |= 8;
                                this.f44407h = s90;
                            }
                        } else if (i11 == 42) {
                            if ((i10 & 16) != 16) {
                                this.f44408i = new ArrayList();
                                i10 |= 16;
                            }
                            this.f44408i.add(c4858Ae.a(M90.f42197v, c10503yv));
                        } else if (i11 == 48) {
                            if ((i10 & 32) != 32) {
                                this.f44409j = new ArrayList();
                                i10 |= 32;
                            }
                            this.f44409j.add(Integer.valueOf(c4858Ae.f()));
                        } else if (i11 != 50) {
                            if (!a(c4858Ae, c5264He, c10503yv, i11)) {
                            }
                        } else {
                            int b10 = c4858Ae.b(c4858Ae.f());
                            if ((i10 & 32) != 32 && c4858Ae.a() > 0) {
                                this.f44409j = new ArrayList();
                                i10 |= 32;
                            }
                            while (c4858Ae.a() > 0) {
                                this.f44409j.add(Integer.valueOf(c4858Ae.f()));
                            }
                            c4858Ae.f38668h = b10;
                            c4858Ae.j();
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
                if ((i10 & 16) == 16) {
                    this.f44408i = Collections.unmodifiableList(this.f44408i);
                }
                if ((i10 & 32) == 32) {
                    this.f44409j = Collections.unmodifiableList(this.f44409j);
                }
                try {
                    if (c5264He.f40814d != null) {
                        c5264He.a();
                    }
                } catch (IOException unused) {
                } catch (Throwable th3) {
                    this.f44402c = c7872j8.c();
                    throw th3;
                }
                this.f44402c = c7872j8.c();
                this.f44631b.a();
                throw th2;
            }
        }
        if ((i10 & 16) == 16) {
            this.f44408i = Collections.unmodifiableList(this.f44408i);
        }
        if ((i10 & 32) == 32) {
            this.f44409j = Collections.unmodifiableList(this.f44409j);
        }
        try {
            if (c5264He.f40814d != null) {
                c5264He.a();
            }
        } catch (IOException unused2) {
        } catch (Throwable th4) {
            this.f44402c = c7872j8.c();
            throw th4;
        }
        this.f44402c = c7872j8.c();
        this.f44631b.a();
    }

    @Override
    public final int a() {
        int i10 = this.f44412m;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        int a10 = (this.f44403d & 1) == 1 ? C5264He.a(1, this.f44404e) : 0;
        if ((this.f44403d & 2) == 2) {
            a10 += C5264He.a(2, this.f44405f);
        }
        if ((this.f44403d & 4) == 4) {
            a10 += C5264He.c(3) + 1;
        }
        if ((this.f44403d & 8) == 8) {
            a10 += C5264He.a(this.f44407h.f44142b) + C5264He.c(4);
        }
        for (int i12 = 0; i12 < this.f44408i.size(); i12++) {
            a10 += C5264He.a(5, (O0) this.f44408i.get(i12));
        }
        int i13 = 0;
        while (true) {
            if (i11 >= this.f44409j.size()) {
                break;
            }
            int intValue = ((Integer) this.f44409j.get(i11)).intValue();
            if (intValue >= 0) {
                r4 = C5264He.b(intValue);
            }
            i13 += r4;
            i11++;
        }
        int i14 = a10 + i13;
        if (!this.f44409j.isEmpty()) {
            i14 = i14 + 1 + (i13 >= 0 ? C5264He.b(i13) : 10);
        }
        this.f44410k = i13;
        int size = this.f44402c.size() + e() + i14;
        this.f44412m = size;
        return size;
    }
}
