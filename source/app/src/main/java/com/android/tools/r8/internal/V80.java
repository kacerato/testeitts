package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class V80 extends AbstractC6001Ty {

    public static final V80 f44973j;

    public static final T80 f44974k = new T80();

    public final AbstractC8206l8 f44975c;

    public int f44976d;

    public int f44977e;

    public List f44978f;

    public List f44979g;

    public byte f44980h;

    public int f44981i;

    static {
        V80 v80 = new V80();
        f44973j = v80;
        v80.f44977e = 6;
        List list = Collections.EMPTY_LIST;
        v80.f44978f = list;
        v80.f44979g = list;
    }

    public V80(U80 u80) {
        super(u80);
        this.f44980h = (byte) -1;
        this.f44981i = -1;
        this.f44975c = u80.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        C5943Sy c5943Sy = new C5943Sy(this);
        if ((this.f44976d & 1) == 1) {
            int i10 = this.f44977e;
            c5264He.b(1, 0);
            c5264He.d(i10);
        }
        for (int i11 = 0; i11 < this.f44978f.size(); i11++) {
            c5264He.b(2, (O0) this.f44978f.get(i11));
        }
        for (int i12 = 0; i12 < this.f44979g.size(); i12++) {
            int intValue = ((Integer) this.f44979g.get(i12)).intValue();
            c5264He.b(31, 0);
            c5264He.d(intValue);
        }
        c5943Sy.a(19000, c5264He);
        c5264He.a(this.f44975c);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new U80();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new U80().a(this);
    }

    @Override
    public final O0 getDefaultInstanceForType() {
        return f44973j;
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f44980h;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int i10 = 0; i10 < this.f44978f.size(); i10++) {
            if (!((Z90) this.f44978f.get(i10)).isInitialized()) {
                this.f44980h = (byte) 0;
                return false;
            }
        }
        if (d()) {
            this.f44980h = (byte) 1;
            return true;
        }
        this.f44980h = (byte) 0;
        return false;
    }

    public V80() {
        this.f44980h = (byte) -1;
        this.f44981i = -1;
        this.f44975c = AbstractC8206l8.f49897b;
    }

    public V80(C4858Ae c4858Ae, C10503yv c10503yv) {
        this.f44980h = (byte) -1;
        this.f44981i = -1;
        this.f44977e = 6;
        List list = Collections.EMPTY_LIST;
        this.f44978f = list;
        this.f44979g = list;
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        boolean z10 = false;
        int i10 = 0;
        while (!z10) {
            try {
                try {
                    try {
                        int i11 = c4858Ae.i();
                        if (i11 != 0) {
                            if (i11 == 8) {
                                this.f44976d |= 1;
                                this.f44977e = c4858Ae.f();
                            } else if (i11 == 18) {
                                if ((i10 & 2) != 2) {
                                    this.f44978f = new ArrayList();
                                    i10 |= 2;
                                }
                                this.f44978f.add(c4858Ae.a(Z90.f46174n, c10503yv));
                            } else if (i11 == 248) {
                                if ((i10 & 4) != 4) {
                                    this.f44979g = new ArrayList();
                                    i10 |= 4;
                                }
                                this.f44979g.add(Integer.valueOf(c4858Ae.f()));
                            } else if (i11 != 250) {
                                if (!a(c4858Ae, c5264He, c10503yv, i11)) {
                                }
                            } else {
                                int b10 = c4858Ae.b(c4858Ae.f());
                                if ((i10 & 4) != 4 && c4858Ae.a() > 0) {
                                    this.f44979g = new ArrayList();
                                    i10 |= 4;
                                }
                                while (c4858Ae.a() > 0) {
                                    this.f44979g.add(Integer.valueOf(c4858Ae.f()));
                                }
                                c4858Ae.f38668h = b10;
                                c4858Ae.j();
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
                if ((i10 & 2) == 2) {
                    this.f44978f = Collections.unmodifiableList(this.f44978f);
                }
                if ((i10 & 4) == 4) {
                    this.f44979g = Collections.unmodifiableList(this.f44979g);
                }
                try {
                    if (c5264He.f40814d != null) {
                        c5264He.a();
                    }
                } catch (IOException unused) {
                } catch (Throwable th3) {
                    this.f44975c = c7872j8.c();
                    throw th3;
                }
                this.f44975c = c7872j8.c();
                this.f44631b.a();
                throw th2;
            }
        }
        if ((i10 & 2) == 2) {
            this.f44978f = Collections.unmodifiableList(this.f44978f);
        }
        if ((i10 & 4) == 4) {
            this.f44979g = Collections.unmodifiableList(this.f44979g);
        }
        try {
            if (c5264He.f40814d != null) {
                c5264He.a();
            }
        } catch (IOException unused2) {
        } catch (Throwable th4) {
            this.f44975c = c7872j8.c();
            throw th4;
        }
        this.f44975c = c7872j8.c();
        this.f44631b.a();
    }

    @Override
    public final int a() {
        int i10 = this.f44981i;
        if (i10 != -1) {
            return i10;
        }
        int a10 = (this.f44976d & 1) == 1 ? C5264He.a(1, this.f44977e) : 0;
        for (int i11 = 0; i11 < this.f44978f.size(); i11++) {
            a10 += C5264He.a(2, (O0) this.f44978f.get(i11));
        }
        int i12 = 0;
        for (int i13 = 0; i13 < this.f44979g.size(); i13++) {
            int intValue = ((Integer) this.f44979g.get(i13)).intValue();
            i12 += intValue >= 0 ? C5264He.b(intValue) : 10;
        }
        int size = this.f44975c.size() + e() + (this.f44979g.size() * 2) + a10 + i12;
        this.f44981i = size;
        return size;
    }
}
