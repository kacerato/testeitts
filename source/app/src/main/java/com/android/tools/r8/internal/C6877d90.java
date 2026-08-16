package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C6877d90 extends AbstractC6287Yy {

    public static final C6877d90 f47302j;

    public static final Z80 f47303k = new Z80();

    public final AbstractC8206l8 f47304b;

    public int f47305c;

    public EnumC6544b90 f47306d;

    public List f47307e;

    public C8043k90 f47308f;

    public EnumC6710c90 f47309g;

    public byte f47310h;

    public int f47311i;

    static {
        C6877d90 c6877d90 = new C6877d90();
        f47302j = c6877d90;
        c6877d90.f47306d = EnumC6544b90.RETURNS_CONSTANT;
        c6877d90.f47307e = Collections.EMPTY_LIST;
        c6877d90.f47308f = C8043k90.f49495m;
        c6877d90.f47309g = EnumC6710c90.AT_MOST_ONCE;
    }

    public C6877d90(C6377a90 c6377a90) {
        super(0);
        this.f47310h = (byte) -1;
        this.f47311i = -1;
        this.f47304b = c6377a90.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        if ((this.f47305c & 1) == 1) {
            int i10 = this.f47306d.f46716b;
            c5264He.b(1, 0);
            c5264He.d(i10);
        }
        for (int i11 = 0; i11 < this.f47307e.size(); i11++) {
            c5264He.b(2, (O0) this.f47307e.get(i11));
        }
        if ((this.f47305c & 2) == 2) {
            c5264He.b(3, this.f47308f);
        }
        if ((this.f47305c & 4) == 4) {
            int i12 = this.f47309g.f46992b;
            c5264He.b(4, 0);
            c5264He.d(i12);
        }
        c5264He.a(this.f47304b);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new C6377a90();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new C6377a90().a(this);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f47310h;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int i10 = 0; i10 < this.f47307e.size(); i10++) {
            if (!((C8043k90) this.f47307e.get(i10)).isInitialized()) {
                this.f47310h = (byte) 0;
                return false;
            }
        }
        if ((this.f47305c & 2) != 2 || this.f47308f.isInitialized()) {
            this.f47310h = (byte) 1;
            return true;
        }
        this.f47310h = (byte) 0;
        return false;
    }

    public C6877d90() {
        this.f47310h = (byte) -1;
        this.f47311i = -1;
        this.f47304b = AbstractC8206l8.f49897b;
    }

    public C6877d90(C4858Ae c4858Ae, C10503yv c10503yv) {
        this.f47310h = (byte) -1;
        this.f47311i = -1;
        this.f47306d = EnumC6544b90.RETURNS_CONSTANT;
        this.f47307e = Collections.EMPTY_LIST;
        this.f47308f = C8043k90.f49495m;
        this.f47309g = EnumC6710c90.AT_MOST_ONCE;
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        boolean z10 = false;
        char c10 = 0;
        while (!z10) {
            try {
                try {
                    int i10 = c4858Ae.i();
                    if (i10 != 0) {
                        EnumC6710c90 enumC6710c90 = null;
                        EnumC6544b90 enumC6544b90 = null;
                        C7711i90 c7711i90 = null;
                        if (i10 == 8) {
                            int f10 = c4858Ae.f();
                            if (f10 == 0) {
                                enumC6544b90 = EnumC6544b90.RETURNS_CONSTANT;
                            } else if (f10 == 1) {
                                enumC6544b90 = EnumC6544b90.CALLS;
                            } else if (f10 == 2) {
                                enumC6544b90 = EnumC6544b90.RETURNS_NOT_NULL;
                            }
                            if (enumC6544b90 == null) {
                                c5264He.g(i10);
                                c5264He.g(f10);
                            } else {
                                this.f47305c |= 1;
                                this.f47306d = enumC6544b90;
                            }
                        } else if (i10 == 18) {
                            int i11 = (c10 == true ? 1 : 0) & 2;
                            c10 = c10;
                            if (i11 != 2) {
                                this.f47307e = new ArrayList();
                                c10 = 2;
                            }
                            this.f47307e.add(c4858Ae.a(C8043k90.f49496n, c10503yv));
                        } else if (i10 == 26) {
                            if ((this.f47305c & 2) == 2) {
                                C8043k90 c8043k90 = this.f47308f;
                                c8043k90.getClass();
                                c7711i90 = new C7711i90().a(c8043k90);
                            }
                            C8043k90 c8043k902 = (C8043k90) c4858Ae.a(C8043k90.f49496n, c10503yv);
                            this.f47308f = c8043k902;
                            if (c7711i90 != null) {
                                c7711i90.a(c8043k902);
                                this.f47308f = c7711i90.c();
                            }
                            this.f47305c |= 2;
                        } else if (i10 != 32) {
                            if (!c4858Ae.a(i10, c5264He)) {
                            }
                        } else {
                            int f11 = c4858Ae.f();
                            if (f11 == 0) {
                                enumC6710c90 = EnumC6710c90.AT_MOST_ONCE;
                            } else if (f11 == 1) {
                                enumC6710c90 = EnumC6710c90.EXACTLY_ONCE;
                            } else if (f11 == 2) {
                                enumC6710c90 = EnumC6710c90.AT_LEAST_ONCE;
                            }
                            if (enumC6710c90 == null) {
                                c5264He.g(i10);
                                c5264He.g(f11);
                            } else {
                                this.f47305c |= 4;
                                this.f47309g = enumC6710c90;
                            }
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
                if (((c10 == true ? 1 : 0) & 2) == 2) {
                    this.f47307e = Collections.unmodifiableList(this.f47307e);
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
        if (((c10 == true ? 1 : 0) & 2) == 2) {
            this.f47307e = Collections.unmodifiableList(this.f47307e);
        }
        try {
            if (c5264He.f40814d != null) {
                c5264He.a();
            }
        } catch (IOException unused2) {
        } finally {
            this.f47304b = c7872j8.c();
        }
    }

    @Override
    public final int a() {
        int i10 = this.f47311i;
        if (i10 != -1) {
            return i10;
        }
        int a10 = (this.f47305c & 1) == 1 ? C5264He.a(this.f47306d.f46716b) + C5264He.c(1) : 0;
        for (int i11 = 0; i11 < this.f47307e.size(); i11++) {
            a10 += C5264He.a(2, (O0) this.f47307e.get(i11));
        }
        if ((this.f47305c & 2) == 2) {
            a10 += C5264He.a(3, this.f47308f);
        }
        if ((this.f47305c & 4) == 4) {
            a10 += C5264He.a(this.f47309g.f46992b) + C5264He.c(4);
        }
        int size = this.f47304b.size() + a10;
        this.f47311i = size;
        return size;
    }
}
