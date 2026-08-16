package com.android.tools.r8.internal;

import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C8747oO extends R2 {

    public final B50 f51228c;

    public final InterfaceC8413mO f51229d;

    public final LO f51230e;

    public final CN f51231f;

    public final GN f51232g;

    public final C8914pO f51233h;

    public final C6578bN f51234i;

    public WN f51235j;

    public final RN f51236k;

    public C8747oO(B50 b50, InterfaceC8413mO interfaceC8413mO, Consumer consumer, Function function) {
        super(b50);
        this.f51231f = new CN();
        GN gn2 = new GN();
        this.f51232g = gn2;
        C8914pO c8914pO = new C8914pO();
        this.f51233h = c8914pO;
        this.f51234i = new C6578bN();
        this.f51235j = WN.f45376c;
        this.f51228c = b50;
        this.f51229d = interfaceC8413mO;
        this.f51230e = (LO) function.apply(c8914pO);
        consumer.accept(gn2);
        this.f51236k = new RN(b50);
    }

    public static void a(AbstractC10581zN abstractC10581zN) {
    }

    @Override
    public final void a(String str, String str2, String str3) {
        WN wn2;
        if (!"Landroidx/annotation/keep/KeepItemKind;".equals(str2) && !"Lcom/android/tools/r8/keepanno/annotations/KeepItemKind;".equals(str2)) {
            super.a(str, str2, str3);
            throw null;
        }
        str3.getClass();
        char c10 = '\uffff';
        switch (str3.hashCode()) {
            case -1617584468:
                if (str3.equals("ONLY_FIELDS")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1090345114:
                if (str3.equals("ONLY_MEMBERS")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1083692545:
                if (str3.equals("ONLY_METHODS")) {
                    c10 = 2;
                    break;
                }
                break;
            case -581820918:
                if (str3.equals("CLASS_AND_MEMBERS")) {
                    c10 = 3;
                    break;
                }
                break;
            case -575168349:
                if (str3.equals("CLASS_AND_METHODS")) {
                    c10 = 4;
                    break;
                }
                break;
            case 199934856:
                if (str3.equals("CLASS_AND_FIELDS")) {
                    c10 = 5;
                    break;
                }
                break;
            case 1884797701:
                if (str3.equals("ONLY_CLASS")) {
                    c10 = 6;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                wn2 = WN.f45378e;
                break;
            case 1:
                wn2 = WN.f45376c;
                break;
            case 2:
                wn2 = WN.f45377d;
                break;
            case 3:
                wn2 = WN.f45379f;
                break;
            case 4:
                wn2 = WN.f45380g;
                break;
            case 5:
                wn2 = WN.f45381h;
                break;
            case 6:
                wn2 = WN.f45375b;
                break;
            default:
                wn2 = null;
                break;
        }
        if (wn2 != null) {
            this.f51235j = wn2;
        } else {
            super.a(str, str2, str3);
            throw null;
        }
    }

    @Override
    public final void a(Object obj, String str) {
        if (str.equals("description") && (obj instanceof String)) {
            this.f51232g.a((String) obj);
        } else {
            super.a(obj, str);
            throw null;
        }
    }

    @Override
    public final Q2 a(String str) {
        H50 b10 = this.f51228c.b(str);
        if (str.equals("preconditions")) {
            CN cn2 = this.f51231f;
            Objects.requireNonNull(cn2);
            return new C7413gO(b10, new C9713u91(cn2), this.f51233h);
        }
        if (str.equals("additionalTargets")) {
            return new C6413aO(b10, new InterfaceC8413mO() {
                @Override
                public final void accept(Object obj) {
                    C8747oO.this.a((C6744cN) obj);
                }
            }, this.f51233h);
        }
        RN rn2 = this.f51236k;
        new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8747oO.a((AbstractC10581zN) obj);
            }
        };
        Q2 a10 = rn2.a(str);
        if (a10 != null) {
            return a10;
        }
        super.a(str);
        throw null;
    }

    public final void a(C6744cN c6744cN) {
        C6578bN c6578bN = this.f51234i;
        Objects.requireNonNull(c6578bN);
        c6744cN.a(new C8768oY0(c6578bN));
    }

    @Override
    public final void a() {
        if (!this.f51235j.equals(WN.f45375b)) {
            LO lo = this.f51230e;
            lo.getClass();
            C8914pO c8914pO = this.f51233h;
            c8914pO.f51511a.getClass();
            PM pm2 = new PM("MEMBER");
            c8914pO.f51511a.a(pm2, lo);
            JO jo = new JO(pm2);
            if (this.f51235j.a()) {
                C6578bN c6578bN = this.f51234i;
                C10414yN c10414yN = C10414yN.f54000c;
                UM um2 = lo.f41952b;
                if (um2 != null) {
                    c6578bN.f46750a.add(new C10251xP(um2, c10414yN));
                } else {
                    throw new FN("Target must define an item pattern");
                }
            }
            a(lo.f41953c);
            C6578bN c6578bN2 = this.f51234i;
            AbstractC10581zN abstractC10581zN = C10414yN.f54000c;
            RN rn2 = this.f51236k;
            if (rn2.a()) {
                abstractC10581zN = rn2.c();
            }
            c6578bN2.f46750a.add(new C10251xP(jo, abstractC10581zN));
            InterfaceC8413mO interfaceC8413mO = this.f51229d;
            CN cn2 = this.f51231f;
            cn2.f39203a = this.f51232g.a();
            cn2.f39204b = this.f51233h.f51511a.a();
            cn2.f39206d = this.f51234i.a();
            interfaceC8413mO.accept(cn2.a());
            return;
        }
        B50 b50 = this.f51228c;
        throw AbstractC10449yd.a(b50, b50, "kind must include its member");
    }

    public final void a(OO oo) {
        if (!oo.g()) {
            if (oo.h()) {
                WN wn2 = this.f51235j;
                if (!wn2.equals(WN.f45376c) && !wn2.equals(WN.f45377d) && !wn2.equals(WN.f45379f) && !wn2.equals(WN.f45380g)) {
                    B50 b50 = this.f51228c;
                    throw AbstractC10449yd.a(b50, b50, "Kind " + ((Object) this.f51235j) + " cannot be use when annotating a method");
                }
            }
            if (oo.f()) {
                WN wn3 = this.f51235j;
                if (wn3.equals(WN.f45376c) || wn3.equals(WN.f45378e) || wn3.equals(WN.f45379f) || wn3.equals(WN.f45381h)) {
                    return;
                }
                B50 b502 = this.f51228c;
                throw AbstractC10449yd.a(b502, b502, "Kind " + ((Object) this.f51235j) + " cannot be use when annotating a field");
            }
            return;
        }
        B50 b503 = this.f51228c;
        throw AbstractC10449yd.a(b503, b503, "Unexpected general pattern for context.");
    }
}
