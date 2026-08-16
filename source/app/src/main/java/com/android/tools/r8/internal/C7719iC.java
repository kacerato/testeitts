package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class C7719iC extends P5 implements InterfaceC10259xT, Serializable {

    public final transient AbstractC8552nC f48872f;

    public final transient int f48873g;

    public C7719iC(int i10, AbstractC8552nC abstractC8552nC) {
        this.f48872f = abstractC8552nC;
        this.f48873g = i10;
    }

    @Override
    public final Collection a() {
        Collection collection = this.f44052b;
        if (collection == null) {
            collection = new C10388yC(this);
            this.f44052b = collection;
        }
        return (XB) collection;
    }

    @Override
    public final Map c() {
        throw new AssertionError((Object) "should never be called");
    }

    @Override
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean containsKey(Object obj) {
        return this.f48872f.containsKey(obj);
    }

    @Override
    public final Set d() {
        throw new AssertionError((Object) "unreachable");
    }

    @Override
    public final LY e() {
        return new C10555zC(this);
    }

    @Override
    public final LY f() {
        return (EC) super.f();
    }

    @Override
    public AbstractC8552nC b() {
        return this.f48872f;
    }

    @Override
    public final List get(Object obj) {
        AbstractC7552hC abstractC7552hC = (AbstractC7552hC) this.f48872f.get(obj);
        if (abstractC7552hC != null) {
            return abstractC7552hC;
        }
        int i10 = AbstractC7552hC.f48487c;
        return C6190Xe0.f45779e;
    }

    @Override
    public final Set keySet() {
        return this.f48872f.keySet();
    }

    @Override
    public final int size() {
        return this.f48873g;
    }
}
