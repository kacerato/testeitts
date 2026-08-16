package com.android.tools.r8.internal;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class C4862Af0 implements J0 {

    public InterfaceC7512gz f38675a;

    public List f38676b;

    public boolean f38677c;

    public ArrayList f38678d;

    public boolean f38679e;

    public C10456yf0 f38680f;

    public C10289xf0 f38681g;

    public C10623zf0 f38682h;

    public C4862Af0(List list, boolean z10, InterfaceC7512gz interfaceC7512gz, boolean z11) {
        this.f38676b = list;
        this.f38677c = z10;
        this.f38675a = interfaceC7512gz;
        this.f38679e = z11;
    }

    public final K0 a(int i10, boolean z10) {
        ArrayList arrayList = this.f38678d;
        if (arrayList == null) {
            return (K0) this.f38676b.get(i10);
        }
        C5109Em0 c5109Em0 = (C5109Em0) arrayList.get(i10);
        if (c5109Em0 == null) {
            return (K0) this.f38676b.get(i10);
        }
        if (z10) {
            c5109Em0.f40016d = true;
            return c5109Em0.d();
        }
        return c5109Em0.d();
    }

    public final InterfaceC8596nW b(int i10) {
        ArrayList arrayList = this.f38678d;
        if (arrayList == null) {
            return (InterfaceC8596nW) this.f38676b.get(i10);
        }
        C5109Em0 c5109Em0 = (C5109Em0) arrayList.get(i10);
        if (c5109Em0 == null) {
            return (InterfaceC8596nW) this.f38676b.get(i10);
        }
        I0 i02 = c5109Em0.f40014b;
        return i02 != null ? i02 : c5109Em0.f40015c;
    }

    public final void c(int i10, AbstractC10181wz abstractC10181wz) {
        C5109Em0 c5109Em0;
        Charset charset = YI.f45964a;
        abstractC10181wz.getClass();
        e();
        this.f38676b.set(i10, abstractC10181wz);
        ArrayList arrayList = this.f38678d;
        if (arrayList != null && (c5109Em0 = (C5109Em0) arrayList.set(i10, null)) != null) {
            c5109Em0.f40013a = null;
        }
        j();
        i();
    }

    public final void d() {
        if (this.f38678d == null) {
            this.f38678d = new ArrayList(this.f38676b.size());
            for (int i10 = 0; i10 < this.f38676b.size(); i10++) {
                this.f38678d.add(null);
            }
        }
    }

    public final void e() {
        if (this.f38677c) {
            return;
        }
        this.f38676b = new ArrayList(this.f38676b);
        this.f38677c = true;
    }

    public final C10289xf0 f() {
        if (this.f38681g == null) {
            this.f38681g = new C10289xf0(this);
        }
        return this.f38681g;
    }

    public final C10456yf0 g() {
        if (this.f38680f == null) {
            this.f38680f = new C10456yf0(this);
        }
        return this.f38680f;
    }

    public final C10623zf0 h() {
        if (this.f38682h == null) {
            this.f38682h = new C10623zf0(this);
        }
        return this.f38682h;
    }

    public final void i() {
        C10456yf0 c10456yf0 = this.f38680f;
        if (c10456yf0 != null) {
            c10456yf0.a();
        }
        C10289xf0 c10289xf0 = this.f38681g;
        if (c10289xf0 != null) {
            c10289xf0.a();
        }
        C10623zf0 c10623zf0 = this.f38682h;
        if (c10623zf0 != null) {
            c10623zf0.a();
        }
    }

    public final void j() {
        InterfaceC7512gz interfaceC7512gz;
        if (!this.f38679e || (interfaceC7512gz = this.f38675a) == null) {
            return;
        }
        interfaceC7512gz.a();
        this.f38679e = false;
    }

    public final void b(int i10, AbstractC10181wz abstractC10181wz) {
        Charset charset = YI.f45964a;
        abstractC10181wz.getClass();
        e();
        this.f38676b.add(i10, abstractC10181wz);
        ArrayList arrayList = this.f38678d;
        if (arrayList != null) {
            arrayList.add(i10, null);
        }
        j();
        i();
    }

    public final I0 a(int i10) {
        d();
        C5109Em0 c5109Em0 = (C5109Em0) this.f38678d.get(i10);
        if (c5109Em0 == null) {
            C5109Em0 c5109Em02 = new C5109Em0((K0) this.f38676b.get(i10), this, this.f38679e);
            this.f38678d.set(i10, c5109Em02);
            c5109Em0 = c5109Em02;
        }
        return c5109Em0.c();
    }

    public final void c(int i10) {
        C5109Em0 c5109Em0;
        e();
        this.f38676b.remove(i10);
        ArrayList arrayList = this.f38678d;
        if (arrayList != null && (c5109Em0 = (C5109Em0) arrayList.remove(i10)) != null) {
            c5109Em0.f40013a = null;
        }
        j();
        i();
    }

    public final void a(K0 k02) {
        Charset charset = YI.f45964a;
        k02.getClass();
        e();
        this.f38676b.add(k02);
        ArrayList arrayList = this.f38678d;
        if (arrayList != null) {
            arrayList.add(null);
        }
        j();
        i();
    }

    public final List b() {
        this.f38679e = true;
        boolean z10 = this.f38677c;
        if (!z10 && this.f38678d == null) {
            return this.f38676b;
        }
        if (!z10) {
            for (int i10 = 0; i10 < this.f38676b.size(); i10++) {
                InterfaceC7262fW interfaceC7262fW = (InterfaceC7262fW) this.f38676b.get(i10);
                C5109Em0 c5109Em0 = (C5109Em0) this.f38678d.get(i10);
                if (c5109Em0 != null) {
                    c5109Em0.f40016d = true;
                    if (c5109Em0.d() != interfaceC7262fW) {
                    }
                }
            }
            return this.f38676b;
        }
        e();
        for (int i11 = 0; i11 < this.f38676b.size(); i11++) {
            this.f38676b.set(i11, a(i11, true));
        }
        List unmodifiableList = Collections.unmodifiableList(this.f38676b);
        this.f38676b = unmodifiableList;
        this.f38677c = false;
        return unmodifiableList;
    }

    public final void c() {
        this.f38676b = Collections.EMPTY_LIST;
        int i10 = 0;
        this.f38677c = false;
        ArrayList arrayList = this.f38678d;
        if (arrayList != null) {
            int size = arrayList.size();
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                C5109Em0 c5109Em0 = (C5109Em0) obj;
                if (c5109Em0 != null) {
                    c5109Em0.f40013a = null;
                }
            }
            this.f38678d = null;
        }
        j();
        i();
    }

    public final void a(Iterable iterable) {
        int i10;
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            K0 k02 = (K0) it.next();
            Charset charset = YI.f45964a;
            k02.getClass();
        }
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.isEmpty()) {
                return;
            } else {
                i10 = collection.size();
            }
        } else {
            i10 = -1;
        }
        e();
        if (i10 >= 0) {
            List list = this.f38676b;
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + i10);
            }
        }
        Iterator it2 = iterable.iterator();
        while (it2.hasNext()) {
            a((K0) it2.next());
        }
        j();
        i();
    }

    public final I0 a(AbstractC10181wz abstractC10181wz) {
        e();
        d();
        C5109Em0 c5109Em0 = new C5109Em0(abstractC10181wz, this, this.f38679e);
        this.f38676b.add(null);
        this.f38678d.add(c5109Em0);
        j();
        i();
        return c5109Em0.c();
    }

    public final I0 a(int i10, AbstractC10181wz abstractC10181wz) {
        e();
        d();
        C5109Em0 c5109Em0 = new C5109Em0(abstractC10181wz, this, this.f38679e);
        this.f38676b.add(i10, null);
        this.f38678d.add(i10, c5109Em0);
        j();
        i();
        return c5109Em0.c();
    }

    @Override
    public final void a() {
        j();
    }
}
