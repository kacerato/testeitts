package com.android.tools.r8.internal;

import java.io.IOException;

public final class C7409gM extends AbstractC6287Yy {

    public static final C7409gM f48236k;

    public static final C7075eM f48237l = new C7075eM();

    public final AbstractC8206l8 f48238b;

    public int f48239c;

    public C6409aM f48240d;

    public C6909dM f48241e;

    public C6909dM f48242f;

    public C6909dM f48243g;

    public C6909dM f48244h;

    public byte f48245i;

    public int f48246j;

    static {
        C7409gM c7409gM = new C7409gM();
        f48236k = c7409gM;
        c7409gM.f48240d = C6409aM.f46493h;
        C6909dM c6909dM = C6909dM.f47376h;
        c7409gM.f48241e = c6909dM;
        c7409gM.f48242f = c6909dM;
        c7409gM.f48243g = c6909dM;
        c7409gM.f48244h = c6909dM;
    }

    public C7409gM(C7242fM c7242fM) {
        super(0);
        this.f48245i = (byte) -1;
        this.f48246j = -1;
        this.f48238b = c7242fM.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        a();
        if ((this.f48239c & 1) == 1) {
            c5264He.b(1, this.f48240d);
        }
        if ((this.f48239c & 2) == 2) {
            c5264He.b(2, this.f48241e);
        }
        if ((this.f48239c & 4) == 4) {
            c5264He.b(3, this.f48242f);
        }
        if ((this.f48239c & 8) == 8) {
            c5264He.b(4, this.f48243g);
        }
        if ((this.f48239c & 16) == 16) {
            c5264He.b(5, this.f48244h);
        }
        c5264He.a(this.f48238b);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new C7242fM();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new C7242fM().a(this);
    }

    @Override
    public final boolean isInitialized() {
        if (this.f48245i == 1) {
            return true;
        }
        this.f48245i = (byte) 1;
        return true;
    }

    public C7409gM() {
        this.f48245i = (byte) -1;
        this.f48246j = -1;
        this.f48238b = AbstractC8206l8.f49897b;
    }

    public C7409gM(C4858Ae c4858Ae, C10503yv c10503yv) {
        this.f48245i = (byte) -1;
        this.f48246j = -1;
        this.f48240d = C6409aM.f46493h;
        C6909dM c6909dM = C6909dM.f47376h;
        this.f48241e = c6909dM;
        this.f48242f = c6909dM;
        this.f48243g = c6909dM;
        this.f48244h = c6909dM;
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int i10 = c4858Ae.i();
                    if (i10 != 0) {
                        C6742cM c6742cM = null;
                        ZL zl2 = null;
                        C6742cM c6742cM2 = null;
                        C6742cM c6742cM3 = null;
                        C6742cM c6742cM4 = null;
                        if (i10 == 10) {
                            if ((this.f48239c & 1) == 1) {
                                C6409aM c6409aM = this.f48240d;
                                c6409aM.getClass();
                                zl2 = new ZL().a(c6409aM);
                            }
                            C6409aM c6409aM2 = (C6409aM) c4858Ae.a(C6409aM.f46494i, c10503yv);
                            this.f48240d = c6409aM2;
                            if (zl2 != null) {
                                zl2.a(c6409aM2);
                                this.f48240d = zl2.c();
                            }
                            this.f48239c |= 1;
                        } else if (i10 == 18) {
                            if ((this.f48239c & 2) == 2) {
                                C6909dM c6909dM2 = this.f48241e;
                                c6909dM2.getClass();
                                c6742cM2 = C6909dM.a(c6909dM2);
                            }
                            C6909dM c6909dM3 = (C6909dM) c4858Ae.a(C6909dM.f47377i, c10503yv);
                            this.f48241e = c6909dM3;
                            if (c6742cM2 != null) {
                                c6742cM2.a(c6909dM3);
                                this.f48241e = c6742cM2.c();
                            }
                            this.f48239c |= 2;
                        } else if (i10 == 26) {
                            if ((this.f48239c & 4) == 4) {
                                C6909dM c6909dM4 = this.f48242f;
                                c6909dM4.getClass();
                                c6742cM3 = C6909dM.a(c6909dM4);
                            }
                            C6909dM c6909dM5 = (C6909dM) c4858Ae.a(C6909dM.f47377i, c10503yv);
                            this.f48242f = c6909dM5;
                            if (c6742cM3 != null) {
                                c6742cM3.a(c6909dM5);
                                this.f48242f = c6742cM3.c();
                            }
                            this.f48239c |= 4;
                        } else if (i10 == 34) {
                            if ((this.f48239c & 8) == 8) {
                                C6909dM c6909dM6 = this.f48243g;
                                c6909dM6.getClass();
                                c6742cM4 = C6909dM.a(c6909dM6);
                            }
                            C6909dM c6909dM7 = (C6909dM) c4858Ae.a(C6909dM.f47377i, c10503yv);
                            this.f48243g = c6909dM7;
                            if (c6742cM4 != null) {
                                c6742cM4.a(c6909dM7);
                                this.f48243g = c6742cM4.c();
                            }
                            this.f48239c |= 8;
                        } else if (i10 != 42) {
                            if (!c4858Ae.a(i10, c5264He)) {
                            }
                        } else {
                            if ((this.f48239c & 16) == 16) {
                                C6909dM c6909dM8 = this.f48244h;
                                c6909dM8.getClass();
                                c6742cM = C6909dM.a(c6909dM8);
                            }
                            C6909dM c6909dM9 = (C6909dM) c4858Ae.a(C6909dM.f47377i, c10503yv);
                            this.f48244h = c6909dM9;
                            if (c6742cM != null) {
                                c6742cM.a(c6909dM9);
                                this.f48244h = c6742cM.c();
                            }
                            this.f48239c |= 16;
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
        try {
            if (c5264He.f40814d != null) {
                c5264He.a();
            }
        } catch (IOException unused2) {
        } finally {
            this.f48238b = c7872j8.c();
        }
    }

    @Override
    public final int a() {
        int i10 = this.f48246j;
        if (i10 != -1) {
            return i10;
        }
        int a10 = (this.f48239c & 1) == 1 ? C5264He.a(1, this.f48240d) : 0;
        if ((this.f48239c & 2) == 2) {
            a10 += C5264He.a(2, this.f48241e);
        }
        if ((this.f48239c & 4) == 4) {
            a10 += C5264He.a(3, this.f48242f);
        }
        if ((this.f48239c & 8) == 8) {
            a10 += C5264He.a(4, this.f48243g);
        }
        if ((this.f48239c & 16) == 16) {
            a10 += C5264He.a(5, this.f48244h);
        }
        int size = this.f48238b.size() + a10;
        this.f48246j = size;
        return size;
    }
}
