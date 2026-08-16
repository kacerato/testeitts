package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;

public final class C6379aA extends AbstractC8928pV implements InterfaceC7200f6, Serializable {

    public final C7045eA f46435b;

    public C6379aA(C7045eA c7045eA) {
        this.f46435b = c7045eA;
    }

    @Override
    public final void clear() {
        this.f46435b.clear();
    }

    @Override
    public final boolean containsKey(Object obj) {
        return this.f46435b.containsValue(obj);
    }

    @Override
    public final Iterator e() {
        return new C6232Xz(this);
    }

    @Override
    public final InterfaceC7200f6 f() {
        return this.f46435b;
    }

    @Override
    public final void forEach(final BiConsumer biConsumer) {
        biConsumer.getClass();
        this.f46435b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                BiConsumer.this.accept(obj2, obj);
            }
        });
    }

    @Override
    public final Object get(Object obj) {
        C6118Vz b10 = this.f46435b.b(AbstractC9047qA.a(obj), obj);
        if (b10 == null) {
            return null;
        }
        return b10.getKey();
    }

    @Override
    public final Set o() {
        return new C6346Zz(this);
    }

    @Override
    public final Object put(Object obj, Object obj2) {
        return C7045eA.a(this.f46435b, obj, obj2, false);
    }

    @Override
    public final Object remove(Object obj) {
        C6118Vz b10 = this.f46435b.b(AbstractC9047qA.a(obj), obj);
        if (b10 == null) {
            return null;
        }
        this.f46435b.a(b10);
        b10.f45247i = null;
        b10.f45246h = null;
        return b10.f46190b;
    }

    @Override
    public final void replaceAll(BiFunction biFunction) {
        biFunction.getClass();
        C7045eA c7045eA = this.f46435b;
        c7045eA.clear();
        for (C6118Vz c6118Vz = c7045eA.f47618d; c6118Vz != null; c6118Vz = c6118Vz.f45246h) {
            Object obj = c6118Vz.f46191c;
            C7045eA.a(this.f46435b, obj, biFunction.apply(obj, c6118Vz.f46190b), false);
        }
    }

    @Override
    public final int size() {
        return this.f46435b.f47620f;
    }

    @Override
    public final Collection values() {
        C7045eA c7045eA = this.f46435b;
        c7045eA.getClass();
        return new C6879dA(c7045eA);
    }
}
