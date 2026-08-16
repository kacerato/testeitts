package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class UL extends AbstractC6287Yy {

    public static final UL f44725p;

    public static final SL f44726q = new SL();

    public final AbstractC8206l8 f44727b;

    public int f44728c;

    public Object f44729d;

    public InterfaceC10422yR f44730e;

    public List f44731f;

    public int f44732g;

    public InterfaceC10422yR f44733h;

    public InterfaceC10422yR f44734i;

    public List f44735j;

    public int f44736k;

    public List f44737l;

    public int f44738m;

    public byte f44739n;

    public int f44740o;

    static {
        UL ul2 = new UL();
        f44725p = ul2;
        ul2.f44729d = "";
        C5185Fv0 c5185Fv0 = C10088wR.f53502c;
        ul2.f44730e = c5185Fv0;
        List list = Collections.EMPTY_LIST;
        ul2.f44731f = list;
        ul2.f44733h = c5185Fv0;
        ul2.f44734i = c5185Fv0;
        ul2.f44735j = list;
        ul2.f44737l = list;
    }

    public UL(TL tl2) {
        super(0);
        this.f44732g = -1;
        this.f44736k = -1;
        this.f44738m = -1;
        this.f44739n = (byte) -1;
        this.f44740o = -1;
        this.f44727b = tl2.f43766b;
    }

    @Override
    public final void a(C5264He c5264He) {
        AbstractC8206l8 abstractC8206l8;
        a();
        if ((this.f44728c & 1) == 1) {
            Object obj = this.f44729d;
            if (obj instanceof String) {
                abstractC8206l8 = AbstractC8206l8.a((String) obj);
                this.f44729d = abstractC8206l8;
            } else {
                abstractC8206l8 = (AbstractC8206l8) obj;
            }
            c5264He.a(1, abstractC8206l8);
        }
        for (int i10 = 0; i10 < this.f44730e.size(); i10++) {
            c5264He.a(2, this.f44730e.b(i10));
        }
        if (this.f44731f.size() > 0) {
            c5264He.g(26);
            c5264He.g(this.f44732g);
        }
        for (int i11 = 0; i11 < this.f44731f.size(); i11++) {
            c5264He.d(((Integer) this.f44731f.get(i11)).intValue());
        }
        for (int i12 = 0; i12 < this.f44733h.size(); i12++) {
            c5264He.a(4, this.f44733h.b(i12));
        }
        for (int i13 = 0; i13 < this.f44734i.size(); i13++) {
            c5264He.a(5, this.f44734i.b(i13));
        }
        if (this.f44737l.size() > 0) {
            c5264He.g(50);
            c5264He.g(this.f44738m);
        }
        for (int i14 = 0; i14 < this.f44737l.size(); i14++) {
            c5264He.d(((Integer) this.f44737l.get(i14)).intValue());
        }
        if (this.f44735j.size() > 0) {
            c5264He.g(58);
            c5264He.g(this.f44736k);
        }
        for (int i15 = 0; i15 < this.f44735j.size(); i15++) {
            c5264He.d(((Integer) this.f44735j.get(i15)).intValue());
        }
        c5264He.a(this.f44727b);
    }

    @Override
    public final AbstractC5827Qy b() {
        return new TL();
    }

    @Override
    public final AbstractC5827Qy c() {
        return new TL().a(this);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f44739n;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        if ((this.f44728c & 1) == 1) {
            this.f44739n = (byte) 1;
            return true;
        }
        this.f44739n = (byte) 0;
        return false;
    }

    public UL() {
        this.f44732g = -1;
        this.f44736k = -1;
        this.f44738m = -1;
        this.f44739n = (byte) -1;
        this.f44740o = -1;
        this.f44727b = AbstractC8206l8.f49897b;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0041. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean] */
    public UL(C4858Ae c4858Ae) {
        this.f44732g = -1;
        this.f44736k = -1;
        this.f44738m = -1;
        this.f44739n = (byte) -1;
        this.f44740o = -1;
        this.f44729d = "";
        C5185Fv0 c5185Fv0 = C10088wR.f53502c;
        this.f44730e = c5185Fv0;
        List list = Collections.EMPTY_LIST;
        this.f44731f = list;
        this.f44733h = c5185Fv0;
        this.f44734i = c5185Fv0;
        this.f44735j = list;
        this.f44737l = list;
        C7872j8 c7872j8 = new C7872j8();
        C5264He c5264He = new C5264He(c7872j8, new byte[1]);
        boolean z10 = false;
        int i10 = 0;
        while (true) {
            ?? r52 = 2;
            if (!z10) {
                try {
                    try {
                        int i11 = c4858Ae.i();
                        switch (i11) {
                            case 0:
                                z10 = true;
                            case 10:
                                ET b10 = c4858Ae.b();
                                this.f44728c |= 1;
                                this.f44729d = b10;
                            case 18:
                                ET b11 = c4858Ae.b();
                                if ((i10 & 2) != 2) {
                                    this.f44730e = new C10088wR();
                                    i10 |= 2;
                                }
                                this.f44730e.a(b11);
                            case 24:
                                if ((i10 & 4) != 4) {
                                    this.f44731f = new ArrayList();
                                    i10 |= 4;
                                }
                                this.f44731f.add(Integer.valueOf(c4858Ae.f()));
                            case 26:
                                int b12 = c4858Ae.b(c4858Ae.f());
                                if ((i10 & 4) != 4 && c4858Ae.a() > 0) {
                                    this.f44731f = new ArrayList();
                                    i10 |= 4;
                                }
                                while (c4858Ae.a() > 0) {
                                    this.f44731f.add(Integer.valueOf(c4858Ae.f()));
                                }
                                c4858Ae.f38668h = b12;
                                c4858Ae.j();
                                break;
                            case 34:
                                ET b13 = c4858Ae.b();
                                if ((i10 & 8) != 8) {
                                    this.f44733h = new C10088wR();
                                    i10 |= 8;
                                }
                                this.f44733h.a(b13);
                            case 42:
                                ET b14 = c4858Ae.b();
                                if ((i10 & 16) != 16) {
                                    this.f44734i = new C10088wR();
                                    i10 |= 16;
                                }
                                this.f44734i.a(b14);
                            case 48:
                                if ((i10 & 64) != 64) {
                                    this.f44737l = new ArrayList();
                                    i10 |= 64;
                                }
                                this.f44737l.add(Integer.valueOf(c4858Ae.f()));
                            case 50:
                                int b15 = c4858Ae.b(c4858Ae.f());
                                if ((i10 & 64) != 64 && c4858Ae.a() > 0) {
                                    this.f44737l = new ArrayList();
                                    i10 |= 64;
                                }
                                while (c4858Ae.a() > 0) {
                                    this.f44737l.add(Integer.valueOf(c4858Ae.f()));
                                }
                                c4858Ae.f38668h = b15;
                                c4858Ae.j();
                                break;
                            case 56:
                                if ((i10 & 32) != 32) {
                                    this.f44735j = new ArrayList();
                                    i10 |= 32;
                                }
                                this.f44735j.add(Integer.valueOf(c4858Ae.f()));
                            case 58:
                                int b16 = c4858Ae.b(c4858Ae.f());
                                if ((i10 & 32) != 32 && c4858Ae.a() > 0) {
                                    this.f44735j = new ArrayList();
                                    i10 |= 32;
                                }
                                while (c4858Ae.a() > 0) {
                                    this.f44735j.add(Integer.valueOf(c4858Ae.f()));
                                }
                                c4858Ae.f38668h = b16;
                                c4858Ae.j();
                                break;
                            default:
                                r52 = c4858Ae.a(i11, c5264He);
                                if (r52 == 0) {
                                    z10 = true;
                                }
                        }
                    } catch (Throwable th2) {
                        if ((i10 & 2) == r52) {
                            this.f44730e = this.f44730e.e();
                        }
                        if ((i10 & 4) == 4) {
                            this.f44731f = Collections.unmodifiableList(this.f44731f);
                        }
                        if ((i10 & 8) == 8) {
                            this.f44733h = this.f44733h.e();
                        }
                        if ((i10 & 16) == 16) {
                            this.f44734i = this.f44734i.e();
                        }
                        if ((i10 & 64) == 64) {
                            this.f44737l = Collections.unmodifiableList(this.f44737l);
                        }
                        if ((i10 & 32) == 32) {
                            this.f44735j = Collections.unmodifiableList(this.f44735j);
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
            } else {
                if ((i10 & 2) == 2) {
                    this.f44730e = this.f44730e.e();
                }
                if ((i10 & 4) == 4) {
                    this.f44731f = Collections.unmodifiableList(this.f44731f);
                }
                if ((i10 & 8) == 8) {
                    this.f44733h = this.f44733h.e();
                }
                if ((i10 & 16) == 16) {
                    this.f44734i = this.f44734i.e();
                }
                if ((i10 & 64) == 64) {
                    this.f44737l = Collections.unmodifiableList(this.f44737l);
                }
                if ((i10 & 32) == 32) {
                    this.f44735j = Collections.unmodifiableList(this.f44735j);
                }
                try {
                    if (c5264He.f40814d != null) {
                        c5264He.a();
                    }
                    return;
                } catch (IOException unused2) {
                    return;
                } finally {
                    this.f44727b = c7872j8.c();
                }
            }
        }
    }

    @Override
    public final int a() {
        int i10;
        AbstractC8206l8 abstractC8206l8;
        int i11 = this.f44740o;
        if (i11 != -1) {
            return i11;
        }
        if ((this.f44728c & 1) == 1) {
            Object obj = this.f44729d;
            if (obj instanceof String) {
                abstractC8206l8 = AbstractC8206l8.a((String) obj);
                this.f44729d = abstractC8206l8;
            } else {
                abstractC8206l8 = (AbstractC8206l8) obj;
            }
            i10 = abstractC8206l8.size() + C5264He.b(abstractC8206l8.size()) + C5264He.c(1);
        } else {
            i10 = 0;
        }
        int i12 = 0;
        for (int i13 = 0; i13 < this.f44730e.size(); i13++) {
            AbstractC8206l8 b10 = this.f44730e.b(i13);
            i12 += b10.size() + C5264He.b(b10.size());
        }
        int size = this.f44730e.size() + i10 + i12;
        int i14 = 0;
        int i15 = 0;
        while (true) {
            if (i14 >= this.f44731f.size()) {
                break;
            }
            int intValue = ((Integer) this.f44731f.get(i14)).intValue();
            if (intValue >= 0) {
                r5 = C5264He.b(intValue);
            }
            i15 += r5;
            i14++;
        }
        int i16 = size + i15;
        if (!this.f44731f.isEmpty()) {
            i16 = i16 + 1 + (i15 >= 0 ? C5264He.b(i15) : 10);
        }
        this.f44732g = i15;
        int i17 = 0;
        for (int i18 = 0; i18 < this.f44733h.size(); i18++) {
            AbstractC8206l8 b11 = this.f44733h.b(i18);
            i17 += b11.size() + C5264He.b(b11.size());
        }
        int size2 = this.f44733h.size() + i16 + i17;
        int i19 = 0;
        for (int i20 = 0; i20 < this.f44734i.size(); i20++) {
            AbstractC8206l8 b12 = this.f44734i.b(i20);
            i19 += b12.size() + C5264He.b(b12.size());
        }
        int size3 = this.f44734i.size() + size2 + i19;
        int i21 = 0;
        for (int i22 = 0; i22 < this.f44737l.size(); i22++) {
            int intValue2 = ((Integer) this.f44737l.get(i22)).intValue();
            i21 += intValue2 >= 0 ? C5264He.b(intValue2) : 10;
        }
        int i23 = size3 + i21;
        if (!this.f44737l.isEmpty()) {
            i23 = i23 + 1 + (i21 >= 0 ? C5264He.b(i21) : 10);
        }
        this.f44738m = i21;
        int i24 = 0;
        for (int i25 = 0; i25 < this.f44735j.size(); i25++) {
            int intValue3 = ((Integer) this.f44735j.get(i25)).intValue();
            i24 += intValue3 >= 0 ? C5264He.b(intValue3) : 10;
        }
        int i26 = i23 + i24;
        if (!this.f44735j.isEmpty()) {
            i26 = i26 + 1 + (i24 >= 0 ? C5264He.b(i24) : 10);
        }
        this.f44736k = i24;
        int size4 = this.f44727b.size() + i26;
        this.f44740o = size4;
        return size4;
    }
}
