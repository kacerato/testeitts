package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C8409mM extends AbstractC6287Yy {

    public static final C8409mM f50264n;

    public static final C7908jM f50265o = new C7908jM();

    public final AbstractC8206l8 f50266b;

    public int f50267c;

    public int f50268d;

    public int f50269e;

    public Object f50270f;

    public EnumC8242lM f50271g;

    public List f50272h;

    public int f50273i;

    public List f50274j;

    public int f50275k;

    public byte f50276l;

    public int f50277m;

    static {
        C8409mM c8409mM = new C8409mM();
        f50264n = c8409mM;
        c8409mM.f50268d = 1;
        c8409mM.f50269e = 0;
        c8409mM.f50270f = "";
        c8409mM.f50271g = EnumC8242lM.f49954c;
        List list = Collections.EMPTY_LIST;
        c8409mM.f50272h = list;
        c8409mM.f50274j = list;
    }

    public C8409mM(C8075kM c8075kM) {
        super(0);
        this.f50273i = -1;
        this.f50275k = -1;
        this.f50276l = (byte) -1;
        this.f50277m = -1;
        this.f50266b = c8075kM.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        AbstractC8206l8 abstractC8206l8;
        a();
        if ((this.f50267c & 1) == 1) {
            int i10 = this.f50268d;
            c5264He.b(1, 0);
            c5264He.d(i10);
        }
        if ((this.f50267c & 2) == 2) {
            int i11 = this.f50269e;
            c5264He.b(2, 0);
            c5264He.d(i11);
        }
        if ((this.f50267c & 8) == 8) {
            int i12 = this.f50271g.f49957b;
            c5264He.b(3, 0);
            c5264He.d(i12);
        }
        if (this.f50272h.size() > 0) {
            c5264He.g(34);
            c5264He.g(this.f50273i);
        }
        for (int i13 = 0; i13 < this.f50272h.size(); i13++) {
            c5264He.d(((Integer) this.f50272h.get(i13)).intValue());
        }
        if (this.f50274j.size() > 0) {
            c5264He.g(42);
            c5264He.g(this.f50275k);
        }
        for (int i14 = 0; i14 < this.f50274j.size(); i14++) {
            c5264He.d(((Integer) this.f50274j.get(i14)).intValue());
        }
        if ((this.f50267c & 4) == 4) {
            Object obj = this.f50270f;
            if (obj instanceof String) {
                abstractC8206l8 = AbstractC8206l8.a((String) obj);
                this.f50270f = abstractC8206l8;
            } else {
                abstractC8206l8 = (AbstractC8206l8) obj;
            }
            c5264He.a(6, abstractC8206l8);
        }
        c5264He.a(this.f50266b);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new C8075kM();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new C8075kM().a(this);
    }

    @Override
    public final boolean isInitialized() {
        if (this.f50276l == 1) {
            return true;
        }
        this.f50276l = (byte) 1;
        return true;
    }

    public C8409mM() {
        this.f50273i = -1;
        this.f50275k = -1;
        this.f50276l = (byte) -1;
        this.f50277m = -1;
        this.f50266b = AbstractC8206l8.f49897b;
    }

    public C8409mM(C4858Ae c4858Ae) {
        EnumC8242lM enumC8242lM;
        this.f50273i = -1;
        this.f50275k = -1;
        this.f50276l = (byte) -1;
        this.f50277m = -1;
        this.f50268d = 1;
        boolean z10 = false;
        this.f50269e = 0;
        this.f50270f = "";
        this.f50271g = EnumC8242lM.f49954c;
        List list = Collections.EMPTY_LIST;
        this.f50272h = list;
        this.f50274j = list;
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        int i10 = 0;
        while (!z10) {
            try {
                try {
                    int i11 = c4858Ae.i();
                    if (i11 != 0) {
                        if (i11 == 8) {
                            this.f50267c |= 1;
                            this.f50268d = c4858Ae.f();
                        } else if (i11 == 16) {
                            this.f50267c |= 2;
                            this.f50269e = c4858Ae.f();
                        } else if (i11 == 24) {
                            int f10 = c4858Ae.f();
                            if (f10 == 0) {
                                enumC8242lM = EnumC8242lM.f49954c;
                            } else if (f10 != 1) {
                                enumC8242lM = f10 != 2 ? null : EnumC8242lM.f49956e;
                            } else {
                                enumC8242lM = EnumC8242lM.f49955d;
                            }
                            if (enumC8242lM == null) {
                                c5264He.g(i11);
                                c5264He.g(f10);
                            } else {
                                this.f50267c |= 8;
                                this.f50271g = enumC8242lM;
                            }
                        } else if (i11 == 32) {
                            if ((i10 & 16) != 16) {
                                this.f50272h = new ArrayList();
                                i10 |= 16;
                            }
                            this.f50272h.add(Integer.valueOf(c4858Ae.f()));
                        } else if (i11 == 34) {
                            int b10 = c4858Ae.b(c4858Ae.f());
                            if ((i10 & 16) != 16 && c4858Ae.a() > 0) {
                                this.f50272h = new ArrayList();
                                i10 |= 16;
                            }
                            while (c4858Ae.a() > 0) {
                                this.f50272h.add(Integer.valueOf(c4858Ae.f()));
                            }
                            c4858Ae.f38668h = b10;
                            c4858Ae.j();
                        } else if (i11 == 40) {
                            if ((i10 & 32) != 32) {
                                this.f50274j = new ArrayList();
                                i10 |= 32;
                            }
                            this.f50274j.add(Integer.valueOf(c4858Ae.f()));
                        } else if (i11 == 42) {
                            int b11 = c4858Ae.b(c4858Ae.f());
                            if ((i10 & 32) != 32 && c4858Ae.a() > 0) {
                                this.f50274j = new ArrayList();
                                i10 |= 32;
                            }
                            while (c4858Ae.a() > 0) {
                                this.f50274j.add(Integer.valueOf(c4858Ae.f()));
                            }
                            c4858Ae.f38668h = b11;
                            c4858Ae.j();
                        } else if (i11 != 50) {
                            if (!c4858Ae.a(i11, c5264He)) {
                            }
                        } else {
                            ET b12 = c4858Ae.b();
                            this.f50267c |= 4;
                            this.f50270f = b12;
                        }
                    }
                    z10 = true;
                } catch (Throwable th2) {
                    if ((i10 & 16) == 16) {
                        this.f50272h = Collections.unmodifiableList(this.f50272h);
                    }
                    if ((i10 & 32) == 32) {
                        this.f50274j = Collections.unmodifiableList(this.f50274j);
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
        if ((i10 & 16) == 16) {
            this.f50272h = Collections.unmodifiableList(this.f50272h);
        }
        if ((i10 & 32) == 32) {
            this.f50274j = Collections.unmodifiableList(this.f50274j);
        }
        try {
            if (c5264He.f40814d != null) {
                c5264He.a();
            }
        } catch (IOException unused2) {
        } finally {
            this.f50266b = c7872j8.c();
        }
    }

    @Override
    public final int a() {
        AbstractC8206l8 abstractC8206l8;
        int i10 = this.f50277m;
        if (i10 != -1) {
            return i10;
        }
        int a10 = (this.f50267c & 1) == 1 ? C5264He.a(1, this.f50268d) : 0;
        if ((this.f50267c & 2) == 2) {
            a10 += C5264He.a(2, this.f50269e);
        }
        if ((this.f50267c & 8) == 8) {
            a10 += C5264He.a(this.f50271g.f49957b) + C5264He.c(3);
        }
        int i11 = 0;
        int i12 = 0;
        while (true) {
            if (i11 >= this.f50272h.size()) {
                break;
            }
            int intValue = ((Integer) this.f50272h.get(i11)).intValue();
            if (intValue >= 0) {
                r5 = C5264He.b(intValue);
            }
            i12 += r5;
            i11++;
        }
        int i13 = a10 + i12;
        if (!this.f50272h.isEmpty()) {
            i13 = i13 + 1 + (i12 >= 0 ? C5264He.b(i12) : 10);
        }
        this.f50273i = i12;
        int i14 = 0;
        for (int i15 = 0; i15 < this.f50274j.size(); i15++) {
            int intValue2 = ((Integer) this.f50274j.get(i15)).intValue();
            i14 += intValue2 >= 0 ? C5264He.b(intValue2) : 10;
        }
        int i16 = i13 + i14;
        if (!this.f50274j.isEmpty()) {
            i16 = i16 + 1 + (i14 >= 0 ? C5264He.b(i14) : 10);
        }
        this.f50275k = i14;
        if ((this.f50267c & 4) == 4) {
            Object obj = this.f50270f;
            if (obj instanceof String) {
                abstractC8206l8 = AbstractC8206l8.a((String) obj);
                this.f50270f = abstractC8206l8;
            } else {
                abstractC8206l8 = (AbstractC8206l8) obj;
            }
            i16 += abstractC8206l8.size() + C5264He.b(abstractC8206l8.size()) + C5264He.c(6);
        }
        int size = this.f50266b.size() + i16;
        this.f50277m = size;
        return size;
    }
}
