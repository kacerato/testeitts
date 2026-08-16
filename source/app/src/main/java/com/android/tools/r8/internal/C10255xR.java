package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public final class C10255xR extends AbstractC9353s1 implements InterfaceC10589zR {

    public static final C10255xR f53759d;

    public final ArrayList f53760c;

    static {
        C10255xR c10255xR = new C10255xR(10);
        c10255xR.f52249b = false;
        f53759d = c10255xR;
    }

    public C10255xR(int i10) {
        this.f53760c = new ArrayList(i10);
    }

    @Override
    public final void a(AbstractC8373m8 abstractC8373m8) {
        a();
        this.f53760c.add(abstractC8373m8);
        this.modCount++;
    }

    @Override
    public final void add(int i10, Object obj) {
        a();
        this.f53760c.add(i10, (String) obj);
        this.modCount++;
    }

    @Override
    public final boolean addAll(Collection collection) {
        return addAll(this.f53760c.size(), collection);
    }

    @Override
    public final void clear() {
        a();
        this.f53760c.clear();
        this.modCount++;
    }

    @Override
    public final InterfaceC10589zR e() {
        return this.f52249b ? new C5243Gv0(this) : this;
    }

    @Override
    public final List f() {
        return Collections.unmodifiableList(this.f53760c);
    }

    @Override
    public final Object g(int i10) {
        return this.f53760c.get(i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final Object get(int i10) {
        E e10 = this.f53760c.get(i10);
        if (e10 instanceof String) {
            return (String) e10;
        }
        if (e10 instanceof AbstractC8373m8) {
            AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) e10;
            String c10 = abstractC8373m8.c();
            if (abstractC8373m8.a()) {
                this.f53760c.set(i10, c10);
            }
            return c10;
        }
        byte[] bArr = (byte[]) e10;
        String a10 = YI.a(bArr);
        if (AbstractC9672tw0.f52738a.b(bArr, 0, bArr.length) == 0) {
            this.f53760c.set(i10, a10);
        }
        return a10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final Object remove(int i10) {
        a();
        E remove = this.f53760c.remove(i10);
        this.modCount++;
        return remove instanceof String ? (String) remove : remove instanceof AbstractC8373m8 ? ((AbstractC8373m8) remove).c() : YI.a((byte[]) remove);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final Object set(int i10, Object obj) {
        a();
        E e10 = this.f53760c.set(i10, (String) obj);
        return e10 instanceof String ? (String) e10 : e10 instanceof AbstractC8373m8 ? ((AbstractC8373m8) e10).c() : YI.a((byte[]) e10);
    }

    @Override
    public final int size() {
        return this.f53760c.size();
    }

    @Override
    public final boolean addAll(int i10, Collection collection) {
        a();
        if (collection instanceof InterfaceC10589zR) {
            collection = ((InterfaceC10589zR) collection).f();
        }
        boolean addAll = this.f53760c.addAll(i10, collection);
        this.modCount++;
        return addAll;
    }

    public C10255xR(InterfaceC10589zR interfaceC10589zR) {
        this.f53760c = new ArrayList(interfaceC10589zR.size());
        addAll(interfaceC10589zR);
    }
}
