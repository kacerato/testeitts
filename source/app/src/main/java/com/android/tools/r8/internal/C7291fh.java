package com.android.tools.r8.internal;

import java.io.IOException;

public final class C7291fh extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C7291fh f48039C = new C7291fh();

    public static final C5675Og f48040D = new C5675Og();

    public volatile String f48041A;

    public byte f48042B;

    public int f48043b;

    public int f48044c;

    public volatile String f48045d;

    public int f48046e;

    public int f48047f;

    public int f48048g;

    public int f48049h;

    public int f48050i;

    public int f48051j;

    public int f48052k;

    public int f48053l;

    public int f48054m;

    public int f48055n;

    public int f48056o;

    public int f48057p;

    public int f48058q;

    public int f48059r;

    public int f48060s;

    public int f48061t;

    public int f48062u;

    public int f48063v;

    public int f48064w;

    public int f48065x;

    public int f48066y;

    public int f48067z;

    public C7291fh(C5733Pg c5733Pg) {
        super(c5733Pg);
        this.f48042B = (byte) -1;
    }

    @Override
    public final C5733Pg toBuilder() {
        return this == f48039C ? new C5733Pg() : new C5733Pg().a(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7291fh)) {
            return super.equals(obj);
        }
        C7291fh c7291fh = (C7291fh) obj;
        if (this.f48043b != c7291fh.f48043b || this.f48044c != c7291fh.f48044c) {
            return false;
        }
        String str = this.f48045d;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f48045d = c10;
            str2 = c10;
        }
        Object obj2 = c7291fh.f48045d;
        Object obj3 = obj2;
        if (obj2 == null) {
            String c11 = ((AbstractC8373m8) obj2).c();
            c7291fh.f48045d = c11;
            obj3 = c11;
        }
        if (!str2.equals(obj3) || this.f48046e != c7291fh.f48046e || this.f48047f != c7291fh.f48047f || this.f48048g != c7291fh.f48048g || this.f48049h != c7291fh.f48049h || this.f48050i != c7291fh.f48050i || this.f48051j != c7291fh.f48051j || this.f48052k != c7291fh.f48052k || this.f48053l != c7291fh.f48053l || this.f48054m != c7291fh.f48054m || this.f48055n != c7291fh.f48055n || this.f48056o != c7291fh.f48056o || this.f48057p != c7291fh.f48057p || this.f48058q != c7291fh.f48058q || this.f48059r != c7291fh.f48059r || this.f48060s != c7291fh.f48060s || this.f48061t != c7291fh.f48061t || this.f48062u != c7291fh.f48062u || this.f48063v != c7291fh.f48063v || this.f48064w != c7291fh.f48064w || this.f48065x != c7291fh.f48065x || this.f48066y != c7291fh.f48066y || this.f48067z != c7291fh.f48067z) {
            return false;
        }
        String str3 = this.f48041A;
        String str4 = str3;
        if (str3 == 0) {
            String c12 = ((AbstractC8373m8) str3).c();
            this.f48041A = c12;
            str4 = c12;
        }
        Object obj4 = c7291fh.f48041A;
        Object obj5 = obj4;
        if (obj4 == null) {
            String c13 = ((AbstractC8373m8) obj4).c();
            c7291fh.f48041A = c13;
            obj5 = c13;
        }
        return str4.equals(obj5) && this.unknownFields.equals(c7291fh.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f48039C;
    }

    @Override
    public final int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        int i12 = this.f48043b;
        if (i12 != 0) {
            i10 = AbstractC5322Ie.c(i12) + AbstractC5322Ie.b(1);
        } else {
            i10 = 0;
        }
        int i13 = this.f48044c;
        if (i13 != 0) {
            i10 = AbstractC5559Mg.a(i13, AbstractC5322Ie.b(2), i10);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f48045d)) {
            i10 += AbstractC10181wz.computeStringSize(3, this.f48045d);
        }
        if (this.f48046e != EnumC6023Ug.f44823c.getNumber()) {
            i10 = AbstractC5502Lg.a(this.f48046e, AbstractC5322Ie.b(4), i10);
        }
        int i14 = this.f48047f;
        if (i14 != 0) {
            i10 = AbstractC5559Mg.a(i14, AbstractC5322Ie.b(5), i10);
        }
        int i15 = this.f48048g;
        if (i15 != 0) {
            i10 = AbstractC5559Mg.a(i15, AbstractC5322Ie.b(6), i10);
        }
        int i16 = this.f48049h;
        if (i16 != 0) {
            i10 = AbstractC5559Mg.a(i16, AbstractC5322Ie.b(7), i10);
        }
        int i17 = this.f48050i;
        if (i17 != 0) {
            i10 = AbstractC5559Mg.a(i17, AbstractC5322Ie.b(8), i10);
        }
        int i18 = this.f48051j;
        if (i18 != 0) {
            i10 = AbstractC5559Mg.a(i18, AbstractC5322Ie.b(9), i10);
        }
        if (this.f48052k != EnumC6308Zg.f46310c.getNumber()) {
            i10 = AbstractC5502Lg.a(this.f48052k, AbstractC5322Ie.b(10), i10);
        }
        if (this.f48053l != EnumC6251Yg.f46055c.getNumber()) {
            i10 = AbstractC5502Lg.a(this.f48053l, AbstractC5322Ie.b(11), i10);
        }
        if (this.f48054m != EnumC6458ah.f46577c.getNumber()) {
            i10 = AbstractC5502Lg.a(this.f48054m, AbstractC5322Ie.b(12), i10);
        }
        if (this.f48055n != EnumC7124eh.f47748c.getNumber()) {
            i10 = AbstractC5502Lg.a(this.f48055n, AbstractC5322Ie.b(13), i10);
        }
        if (this.f48056o != EnumC5849Rg.f43955c.getNumber()) {
            i10 = AbstractC5502Lg.a(this.f48056o, AbstractC5322Ie.b(14), i10);
        }
        if (this.f48057p != EnumC6194Xg.f45784c.getNumber()) {
            i10 = AbstractC5502Lg.a(this.f48057p, AbstractC5322Ie.b(15), i10);
        }
        if (this.f48058q != EnumC6958dh.f47455c.getNumber()) {
            i10 = AbstractC5502Lg.a(this.f48058q, AbstractC5322Ie.b(16), i10);
        }
        if (this.f48059r != EnumC6791ch.f47132c.getNumber()) {
            i10 = AbstractC5502Lg.a(this.f48059r, AbstractC5322Ie.b(17), i10);
        }
        int i19 = this.f48060s;
        if (i19 != 0) {
            i10 = AbstractC5559Mg.a(i19, AbstractC5322Ie.b(18), i10);
        }
        if (this.f48061t != EnumC6625bh.f46824c.getNumber()) {
            i10 = AbstractC5502Lg.a(this.f48061t, AbstractC5322Ie.b(19), i10);
        }
        if (this.f48062u != EnumC5965Tg.f44531c.getNumber()) {
            i10 = AbstractC5502Lg.a(this.f48062u, AbstractC5322Ie.b(20), i10);
        }
        if (this.f48063v != EnumC5907Sg.f44266c.getNumber()) {
            i10 = AbstractC5502Lg.a(this.f48063v, AbstractC5322Ie.b(21), i10);
        }
        if (this.f48064w != EnumC6080Vg.f45117c.getNumber()) {
            i10 = AbstractC5502Lg.a(this.f48064w, AbstractC5322Ie.b(22), i10);
        }
        if (this.f48065x != EnumC6137Wg.f45501c.getNumber()) {
            i10 = AbstractC5502Lg.a(this.f48065x, AbstractC5322Ie.b(23), i10);
        }
        int i20 = this.f48066y;
        if (i20 != 0) {
            i10 = AbstractC5559Mg.a(i20, AbstractC5322Ie.b(24), i10);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f48041A)) {
            i10 += AbstractC10181wz.computeStringSize(25, this.f48041A);
        }
        if (this.f48067z != EnumC5791Qg.f43683c.getNumber()) {
            i10 = AbstractC5502Lg.a(this.f48067z, AbstractC5322Ie.b(26), i10);
        }
        int serializedSize = this.unknownFields.getSerializedSize() + i10;
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override
    public final C9002pv0 getUnknownFields() {
        return this.unknownFields;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int a10 = AbstractC5386Jg.a(AbstractC5386Jg.a(AbstractC5444Kg.a(AbstractC7458gh.f48333a, 779, 37, 1, 53), this.f48043b, 37, 2, 53), this.f48044c, 37, 3, 53);
        String str = this.f48045d;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f48045d = c10;
            str2 = c10;
        }
        int a11 = AbstractC5386Jg.a(AbstractC5386Jg.a(AbstractC5386Jg.a(AbstractC5386Jg.a(AbstractC5386Jg.a(AbstractC5386Jg.a(AbstractC5386Jg.a(AbstractC5386Jg.a(AbstractC5386Jg.a(AbstractC5386Jg.a(AbstractC5386Jg.a(AbstractC5386Jg.a(AbstractC5386Jg.a(AbstractC5386Jg.a(AbstractC5386Jg.a(AbstractC5386Jg.a(AbstractC5386Jg.a(AbstractC5386Jg.a(AbstractC5386Jg.a(AbstractC5386Jg.a(AbstractC5386Jg.a(AbstractC5386Jg.a((((str2.hashCode() + a10) * 37) + 4) * 53, this.f48046e, 37, 5, 53), this.f48047f, 37, 6, 53), this.f48048g, 37, 7, 53), this.f48049h, 37, 8, 53), this.f48050i, 37, 9, 53), this.f48051j, 37, 10, 53), this.f48052k, 37, 11, 53), this.f48053l, 37, 12, 53), this.f48054m, 37, 13, 53), this.f48055n, 37, 14, 53), this.f48056o, 37, 15, 53), this.f48057p, 37, 16, 53), this.f48058q, 37, 17, 53), this.f48059r, 37, 18, 53), this.f48060s, 37, 19, 53), this.f48061t, 37, 20, 53), this.f48062u, 37, 21, 53), this.f48063v, 37, 22, 53), this.f48064w, 37, 23, 53), this.f48065x, 37, 24, 53), this.f48066y, 37, 26, 53), this.f48067z, 37, 25, 53);
        String str3 = this.f48041A;
        String str4 = str3;
        if (str3 == 0) {
            String c11 = ((AbstractC8373m8) str3).c();
            this.f48041A = c11;
            str4 = c11;
        }
        int hashCode = this.unknownFields.hashCode() + ((str4.hashCode() + a11) * 29);
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC7458gh.f48334b.a(C7291fh.class, C5733Pg.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f48042B;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f48042B = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f48039C.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        int i10 = this.f48043b;
        if (i10 != 0) {
            abstractC5322Ie.e(1, i10);
        }
        int i11 = this.f48044c;
        if (i11 != 0) {
            abstractC5322Ie.e(2, i11);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f48045d)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 3, this.f48045d);
        }
        if (this.f48046e != EnumC6023Ug.f44823c.getNumber()) {
            abstractC5322Ie.c(4, this.f48046e);
        }
        int i12 = this.f48047f;
        if (i12 != 0) {
            abstractC5322Ie.e(5, i12);
        }
        int i13 = this.f48048g;
        if (i13 != 0) {
            abstractC5322Ie.e(6, i13);
        }
        int i14 = this.f48049h;
        if (i14 != 0) {
            abstractC5322Ie.e(7, i14);
        }
        int i15 = this.f48050i;
        if (i15 != 0) {
            abstractC5322Ie.e(8, i15);
        }
        int i16 = this.f48051j;
        if (i16 != 0) {
            abstractC5322Ie.e(9, i16);
        }
        if (this.f48052k != EnumC6308Zg.f46310c.getNumber()) {
            abstractC5322Ie.c(10, this.f48052k);
        }
        if (this.f48053l != EnumC6251Yg.f46055c.getNumber()) {
            abstractC5322Ie.c(11, this.f48053l);
        }
        if (this.f48054m != EnumC6458ah.f46577c.getNumber()) {
            abstractC5322Ie.c(12, this.f48054m);
        }
        if (this.f48055n != EnumC7124eh.f47748c.getNumber()) {
            abstractC5322Ie.c(13, this.f48055n);
        }
        if (this.f48056o != EnumC5849Rg.f43955c.getNumber()) {
            abstractC5322Ie.c(14, this.f48056o);
        }
        if (this.f48057p != EnumC6194Xg.f45784c.getNumber()) {
            abstractC5322Ie.c(15, this.f48057p);
        }
        if (this.f48058q != EnumC6958dh.f47455c.getNumber()) {
            abstractC5322Ie.c(16, this.f48058q);
        }
        if (this.f48059r != EnumC6791ch.f47132c.getNumber()) {
            abstractC5322Ie.c(17, this.f48059r);
        }
        int i17 = this.f48060s;
        if (i17 != 0) {
            abstractC5322Ie.e(18, i17);
        }
        if (this.f48061t != EnumC6625bh.f46824c.getNumber()) {
            abstractC5322Ie.c(19, this.f48061t);
        }
        if (this.f48062u != EnumC5965Tg.f44531c.getNumber()) {
            abstractC5322Ie.c(20, this.f48062u);
        }
        if (this.f48063v != EnumC5907Sg.f44266c.getNumber()) {
            abstractC5322Ie.c(21, this.f48063v);
        }
        if (this.f48064w != EnumC6080Vg.f45117c.getNumber()) {
            abstractC5322Ie.c(22, this.f48064w);
        }
        if (this.f48065x != EnumC6137Wg.f45501c.getNumber()) {
            abstractC5322Ie.c(23, this.f48065x);
        }
        int i18 = this.f48066y;
        if (i18 != 0) {
            abstractC5322Ie.e(24, i18);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f48041A)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 25, this.f48041A);
        }
        if (this.f48067z != EnumC5791Qg.f43683c.getNumber()) {
            abstractC5322Ie.c(26, this.f48067z);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f48039C;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C5733Pg((C7011dz) interfaceC7512gz);
    }

    public C7291fh() {
        this.f48042B = (byte) -1;
        this.f48045d = "";
        this.f48046e = 0;
        this.f48052k = 0;
        this.f48053l = 0;
        this.f48054m = 0;
        this.f48055n = 0;
        this.f48056o = 0;
        this.f48057p = 0;
        this.f48058q = 0;
        this.f48059r = 0;
        this.f48061t = 0;
        this.f48062u = 0;
        this.f48063v = 0;
        this.f48064w = 0;
        this.f48065x = 0;
        this.f48067z = 0;
        this.f48041A = "";
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x000e. Please report as an issue. */
    public C7291fh(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this();
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    switch (s10) {
                        case 0:
                            z10 = true;
                        case 8:
                            this.f48043b = abstractC4916Be.t();
                        case 16:
                            this.f48044c = abstractC4916Be.t();
                        case 26:
                            this.f48045d = abstractC4916Be.r();
                        case 32:
                            this.f48046e = abstractC4916Be.f();
                        case 40:
                            this.f48047f = abstractC4916Be.t();
                        case 48:
                            this.f48048g = abstractC4916Be.t();
                        case 56:
                            this.f48049h = abstractC4916Be.t();
                        case 64:
                            this.f48050i = abstractC4916Be.t();
                        case 72:
                            this.f48051j = abstractC4916Be.t();
                        case 80:
                            this.f48052k = abstractC4916Be.f();
                        case 88:
                            this.f48053l = abstractC4916Be.f();
                        case 96:
                            this.f48054m = abstractC4916Be.f();
                        case 104:
                            this.f48055n = abstractC4916Be.f();
                        case 112:
                            this.f48056o = abstractC4916Be.f();
                        case 120:
                            this.f48057p = abstractC4916Be.f();
                        case 128:
                            this.f48058q = abstractC4916Be.f();
                        case 136:
                            this.f48059r = abstractC4916Be.f();
                        case 144:
                            this.f48060s = abstractC4916Be.t();
                        case 152:
                            this.f48061t = abstractC4916Be.f();
                        case 160:
                            this.f48062u = abstractC4916Be.f();
                        case 168:
                            this.f48063v = abstractC4916Be.f();
                        case 176:
                            this.f48064w = abstractC4916Be.f();
                        case 184:
                            this.f48065x = abstractC4916Be.f();
                        case 192:
                            this.f48066y = abstractC4916Be.t();
                        case 202:
                            this.f48041A = abstractC4916Be.r();
                        case 208:
                            this.f48067z = abstractC4916Be.f();
                        default:
                            if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                                z10 = true;
                            }
                    }
                } catch (MJ e10) {
                    e10.f42272b = this;
                    throw e10;
                } catch (IOException e11) {
                    MJ mj2 = new MJ(e11);
                    mj2.f42272b = this;
                    throw mj2;
                }
            } catch (Throwable th2) {
                this.unknownFields = a10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        this.unknownFields = a10.build();
        makeExtensionsImmutable();
    }
}
