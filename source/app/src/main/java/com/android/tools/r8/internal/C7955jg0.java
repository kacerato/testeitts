package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C7955jg0 extends AbstractC5161Fj0 implements InterfaceC4958By {

    public Iterator f49293c;

    public C10629zh0 f49294d;

    public Iterator f49295e;

    public C6085Vi0 f49296f;

    public Iterator f49297g;

    public int f49298h;

    public Object f49299i;

    public final C6795ci0 f49300j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7955jg0(C6795ci0 c6795ci0, InterfaceC7294fi interfaceC7294fi) {
        super(interfaceC7294fi);
        this.f49300j = c6795ci0;
    }

    @Override
    public final InterfaceC7294fi a(C8805ol0 c8805ol0, C8805ol0 c8805ol02) {
        C7955jg0 c7955jg0 = new C7955jg0(this.f49300j, c8805ol02);
        c7955jg0.f49299i = c8805ol0;
        return c7955jg0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0061  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0039 -> B:14:0x0046). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x004c -> B:5:0x005b). Please report as a decompilation issue!!! */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(Object obj) {
        C8805ol0 c8805ol0;
        Iterator it;
        EnumC7960ji enumC7960ji = EnumC7960ji.f49313b;
        int i10 = this.f49298h;
        if (i10 == 0) {
            AbstractC5277Hj0.a(obj);
            c8805ol0 = (C8805ol0) this.f49299i;
            it = this.f49300j.f47139c.iterator();
            if (it.hasNext()) {
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Iterator it2 = this.f49297g;
            C6085Vi0 c6085Vi0 = this.f49296f;
            Iterator it3 = this.f49295e;
            C10629zh0 c10629zh0 = this.f49294d;
            Iterator it4 = this.f49293c;
            C8805ol0 c8805ol02 = (C8805ol0) this.f49299i;
            AbstractC5277Hj0.a(obj);
            c8805ol0 = c8805ol02;
            if (!it2.hasNext()) {
                C6024Ug0 c6024Ug0 = (C6024Ug0) it2.next();
                GJ.b(c10629zh0, "resourcePackage");
                GJ.b(c6085Vi0, "resourceType");
                GJ.b(c6024Ug0, "resourceEntry");
                int a10 = AbstractC8122kg0.a(c10629zh0, c6085Vi0, c6024Ug0);
                String b10 = c10629zh0.b();
                GJ.b(b10, "resourcePackage.packageName");
                String str = c6085Vi0.f45132c;
                String str2 = str;
                if (str == 0) {
                    String c10 = ((AbstractC8373m8) str).c();
                    c6085Vi0.f45132c = c10;
                    str2 = c10;
                }
                GJ.b(str2, "resourceType.name");
                C8330lu c8330lu = new C8330lu(a10, b10, str2, c6024Ug0);
                this.f49299i = c8805ol0;
                this.f49293c = it4;
                this.f49294d = c10629zh0;
                this.f49295e = it3;
                this.f49296f = c6085Vi0;
                this.f49297g = it2;
                this.f49298h = 1;
                c8805ol0.f51341c = c8330lu;
                c8805ol0.f51340b = 3;
                c8805ol0.f51342d = this;
                return enumC7960ji;
            }
            it = it4;
            if (it3.hasNext()) {
                c6085Vi0 = (C6085Vi0) it3.next();
                it4 = it;
                it2 = c6085Vi0.f45133d.iterator();
                if (!it2.hasNext()) {
                }
            }
            if (it.hasNext()) {
                C10629zh0 c10629zh02 = (C10629zh0) it.next();
                it3 = c10629zh02.f54454d.iterator();
                c10629zh0 = c10629zh02;
                if (it3.hasNext()) {
                }
                if (it.hasNext()) {
                    return C7833iv0.f49115a;
                }
            }
        }
    }

    @Override
    public final Object a(Object obj, Object obj2) {
        C7955jg0 c7955jg0 = new C7955jg0(this.f49300j, (InterfaceC7294fi) obj2);
        c7955jg0.f49299i = (C8805ol0) obj;
        return c7955jg0.b(C7833iv0.f49115a);
    }
}
