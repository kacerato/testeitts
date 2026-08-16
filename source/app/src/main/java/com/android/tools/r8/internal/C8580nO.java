package com.android.tools.r8.internal;

import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;

public final class C8580nO extends AbstractC7246fO {

    public final B50 f50940j;

    public final String f50941k;

    public final InterfaceC8413mO f50942l;

    public final CN f50943m;

    public final C6578bN f50944n;

    public final GN f50945o;

    public final C8914pO f50946p;

    public final RN f50947q;

    public C8580nO(B50 b50, InterfaceC8413mO interfaceC8413mO, Consumer consumer, String str) {
        super(b50);
        this.f50943m = new CN();
        this.f50944n = new C6578bN();
        GN gn2 = new GN();
        this.f50945o = gn2;
        this.f50946p = new C8914pO();
        this.f50940j = b50;
        this.f50941k = str;
        this.f50942l = interfaceC8413mO;
        consumer.accept(gn2);
        this.f50947q = new RN(b50);
        a((Object) str, "className");
    }

    public static void a(AbstractC10581zN abstractC10581zN) {
    }

    @Override
    public final C8914pO b() {
        return this.f50946p;
    }

    @Override
    public final boolean d() {
        return false;
    }

    @Override
    public final void a(Object obj, String str) {
        if (str.equals("description") && (obj instanceof String)) {
            this.f50945o.a((String) obj);
        } else {
            super.a(obj, str);
        }
    }

    @Override
    public final Q2 a(String str) {
        H50 b10 = this.f50940j.b(str);
        if (str.equals("preconditions")) {
            CN cn2 = this.f50943m;
            Objects.requireNonNull(cn2);
            return new C7413gO(b10, new C9713u91(cn2), this.f50946p);
        }
        if (str.equals("additionalTargets")) {
            return new C6413aO(b10, new InterfaceC8413mO() {
                @Override
                public final void accept(Object obj) {
                    C8580nO.this.a((C6744cN) obj);
                }
            }, this.f50946p);
        }
        RN rn2 = this.f50947q;
        new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8580nO.a((AbstractC10581zN) obj);
            }
        };
        Q2 a10 = rn2.a(str);
        return a10 != null ? a10 : super.a(str);
    }

    public final void a(C6744cN c6744cN) {
        C6578bN c6578bN = this.f50944n;
        Objects.requireNonNull(c6578bN);
        c6744cN.a(new C8768oY0(c6578bN));
    }

    public final void a(MM mm2) {
        WM a10;
        FO a11 = this.f50946p.a(mm2);
        if (a11.e()) {
            a10 = a11.a();
        } else {
            a10 = this.f50946p.a(a11.b().f41952b).a();
        }
        if (AbstractC9414sO.a(this.f50941k.replace('.', '/')).equals(a10.f45373b.f45976a.b())) {
            if (((CO) a10.f45373b.f45977b).f39212a.c()) {
                return;
            }
            B50 b50 = this.f50940j;
            throw AbstractC10449yd.a(b50, b50, "cannot define an 'extends' pattern.");
        }
        B50 b502 = this.f50940j;
        throw AbstractC10449yd.a(b502, b502, "must reference its class context " + this.f50941k);
    }

    @Override
    public final void a() {
        if (this.f47956e == null && this.f47958g.a()) {
            a(null, "Landroidx/annotation/keep/KeepItemKind;", "CLASS_AND_MEMBERS");
        }
        super.a();
        List<MM> list = this.f47959h;
        if (list != null && this.f47956e != null) {
            for (MM mm2 : list) {
                a(mm2);
                C6578bN c6578bN = this.f50944n;
                AbstractC10581zN abstractC10581zN = C10414yN.f54000c;
                RN rn2 = this.f50947q;
                if (rn2.a()) {
                    abstractC10581zN = rn2.c();
                }
                c6578bN.f46750a.add(new C10251xP(mm2, abstractC10581zN));
            }
            InterfaceC8413mO interfaceC8413mO = this.f50942l;
            CN cn2 = this.f50943m;
            cn2.f39203a = this.f50945o.a();
            cn2.f39204b = this.f50946p.f51511a.a();
            cn2.f39206d = this.f50944n.a();
            interfaceC8413mO.accept(cn2.a());
            return;
        }
        B50 b50 = this.f47954c;
        throw AbstractC10449yd.a(b50, b50, "Items not finalized. Missing call to visitEnd()");
    }
}
