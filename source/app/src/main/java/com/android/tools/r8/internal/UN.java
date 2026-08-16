package com.android.tools.r8.internal;

import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;

public final class UN extends AbstractC7246fO {

    public static final boolean f44742q = true;

    public final B50 f44743j;

    public final String f44744k;

    public final InterfaceC8413mO f44745l;

    public final CN f44746m;

    public final C6578bN f44747n;

    public final GN f44748o;

    public final C8914pO f44749p;

    public UN(B50 b50, InterfaceC8413mO interfaceC8413mO, Consumer consumer, String str) {
        super(b50);
        this.f44746m = new CN();
        this.f44747n = new C6578bN();
        GN gn2 = new GN();
        this.f44748o = gn2;
        this.f44749p = new C8914pO();
        this.f44743j = b50;
        this.f44744k = str;
        this.f44745l = interfaceC8413mO;
        consumer.accept(gn2);
        a((Object) str, "className");
        a(null, "Landroidx/annotation/keep/KeepItemKind;", "CLASS_AND_MEMBERS");
    }

    @Override
    public final void a(Object obj, String str) {
        if (str.equals("description") && (obj instanceof String)) {
            this.f44748o.a((String) obj);
        } else {
            super.a(obj, str);
        }
    }

    @Override
    public final C8914pO b() {
        return this.f44749p;
    }

    @Override
    public final Q2 a(String str) {
        if (str.equals("additionalTargets")) {
            return new C6413aO(this.f44743j.b(str), new InterfaceC8413mO() {
                @Override
                public final void accept(Object obj) {
                    UN.this.a((C6744cN) obj);
                }
            }, this.f44749p);
        }
        return super.a(str);
    }

    public final void a(C6744cN c6744cN) {
        C6578bN c6578bN = this.f44747n;
        Objects.requireNonNull(c6578bN);
        c6744cN.a(new C8768oY0(c6578bN));
    }

    @Override
    public final void a() {
        if (!this.f47956e.equals(WN.f45375b) && !this.f47958g.a()) {
            Q2 a10 = a("memberAccess");
            a10.a(null, "Landroidx/annotation/keep/MemberAccessFlags;", "PUBLIC");
            a10.a(null, "Landroidx/annotation/keep/MemberAccessFlags;", "PROTECTED");
        }
        super.a();
        C9913vN c9913vN = C9913vN.f53081c;
        AbstractC10581zN abstractC10581zN = c9913vN;
        if (System.getProperty("com.android.tools.r8.keepanno.unkeepInvisibleAnnotationsInKeepForApi") != null) {
            HashSet hashSet = new HashSet();
            for (AbstractC9245rN abstractC9245rN : c9913vN.f53082b) {
                if (abstractC9245rN == C6911dN.f47384c) {
                    hashSet.add(C6911dN.f47385d);
                } else {
                    if (!f44742q && abstractC9245rN == C6911dN.f47386e) {
                        throw new AssertionError();
                    }
                    hashSet.add(abstractC9245rN);
                }
            }
            abstractC10581zN = new C10247xN(hashSet);
        }
        List<MM> list = this.f47959h;
        if (list != null && this.f47956e != null) {
            for (MM mm2 : list) {
                FO a11 = this.f44749p.a(mm2);
                WM a12 = a11.a();
                if (a12 == null) {
                    if (!f44742q && a11.b() == null) {
                        throw new AssertionError();
                    }
                    a12 = this.f44749p.a(a11.b().f41952b).a();
                }
                if (AbstractC9414sO.a(this.f44744k.replace('.', '/')).equals(a12.f45373b.f45976a.b())) {
                    if (((CO) a12.f45373b.f45977b).f39212a.c()) {
                        C6578bN c6578bN = this.f44747n;
                        C10414yN c10414yN = C10414yN.f54000c;
                        c6578bN.f46750a.add(new C10251xP(mm2, abstractC10581zN));
                    } else {
                        B50 b50 = this.f44743j;
                        throw AbstractC10449yd.a(b50, b50, "cannot define an 'extends' pattern.");
                    }
                } else {
                    B50 b502 = this.f44743j;
                    throw AbstractC10449yd.a(b502, b502, "must reference its class context " + this.f44744k);
                }
            }
            InterfaceC8413mO interfaceC8413mO = this.f44745l;
            CN cn2 = this.f44746m;
            cn2.f39203a = this.f44748o.a();
            cn2.f39204b = this.f44749p.f51511a.a();
            cn2.f39206d = this.f44747n.a();
            interfaceC8413mO.accept(cn2.a());
            return;
        }
        B50 b503 = this.f47954c;
        throw AbstractC10449yd.a(b503, b503, "Items not finalized. Missing call to visitEnd()");
    }
}
