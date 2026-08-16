package com.android.tools.r8.internal;

import java.io.UnsupportedEncodingException;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

public final class C10088wR extends AbstractList implements InterfaceC10422yR, RandomAccess {

    public static final C5185Fv0 f53502c = new C5185Fv0(new C10088wR());

    public final ArrayList f53503b;

    public C10088wR() {
        this.f53503b = new ArrayList();
    }

    @Override
    public final void a(ET et) {
        this.f53503b.add(et);
        this.modCount++;
    }

    @Override
    public final void add(int i10, Object obj) {
        this.f53503b.add(i10, (String) obj);
        this.modCount++;
    }

    @Override
    public final boolean addAll(Collection collection) {
        return addAll(this.f53503b.size(), collection);
    }

    @Override
    public final AbstractC8206l8 b(int i10) {
        AbstractC8206l8 et;
        Object obj = this.f53503b.get(i10);
        if (obj instanceof AbstractC8206l8) {
            et = (AbstractC8206l8) obj;
        } else if (obj instanceof String) {
            et = AbstractC8206l8.a((String) obj);
        } else {
            byte[] bArr = (byte[]) obj;
            int length = bArr.length;
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, 0, bArr2, 0, length);
            et = new ET(bArr2);
        }
        if (et != obj) {
            this.f53503b.set(i10, et);
        }
        return et;
    }

    @Override
    public final void clear() {
        this.f53503b.clear();
        this.modCount++;
    }

    @Override
    public final C5185Fv0 e() {
        return new C5185Fv0(this);
    }

    @Override
    public final List f() {
        return Collections.unmodifiableList(this.f53503b);
    }

    @Override
    public final Object get(int i10) {
        Object obj = this.f53503b.get(i10);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof AbstractC8206l8) {
            AbstractC8206l8 abstractC8206l8 = (AbstractC8206l8) obj;
            String i11 = abstractC8206l8.i();
            if (abstractC8206l8.c()) {
                this.f53503b.set(i10, i11);
            }
            return i11;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = XI.f45650a;
        try {
            String str = new String(bArr, "UTF-8");
            if (AbstractC9505sw0.a(bArr, 0, bArr.length) == 0) {
                this.f53503b.set(i10, str);
            }
            return str;
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException("UTF-8 not supported?", e10);
        }
    }

    @Override
    public final Object remove(int i10) {
        Object remove = this.f53503b.remove(i10);
        this.modCount++;
        if (remove instanceof String) {
            return (String) remove;
        }
        if (remove instanceof AbstractC8206l8) {
            return ((AbstractC8206l8) remove).i();
        }
        byte[] bArr = (byte[]) remove;
        byte[] bArr2 = XI.f45650a;
        try {
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException("UTF-8 not supported?", e10);
        }
    }

    @Override
    public final Object set(int i10, Object obj) {
        Object obj2 = this.f53503b.set(i10, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (obj2 instanceof AbstractC8206l8) {
            return ((AbstractC8206l8) obj2).i();
        }
        byte[] bArr = (byte[]) obj2;
        byte[] bArr2 = XI.f45650a;
        try {
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException("UTF-8 not supported?", e10);
        }
    }

    @Override
    public final int size() {
        return this.f53503b.size();
    }

    public C10088wR(InterfaceC10422yR interfaceC10422yR) {
        this.f53503b = new ArrayList(interfaceC10422yR.size());
        addAll(interfaceC10422yR);
    }

    @Override
    public final boolean addAll(int i10, Collection collection) {
        if (collection instanceof InterfaceC10422yR) {
            collection = ((InterfaceC10422yR) collection).f();
        }
        boolean addAll = this.f53503b.addAll(i10, collection);
        this.modCount++;
        return addAll;
    }
}
