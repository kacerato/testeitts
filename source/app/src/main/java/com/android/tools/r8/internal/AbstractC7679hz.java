package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class AbstractC7679hz extends AbstractC7345fz implements InterfaceC8596nW {

    public C5302Hw f48749b;

    public AbstractC7679hz() {
        super(null);
    }

    public final void a(AbstractC7844iz abstractC7844iz) {
        if (abstractC7844iz.f49135b != null) {
            b();
            C5302Hw c5302Hw = this.f48749b;
            C5476Kw c5476Kw = abstractC7844iz.f49135b;
            c5302Hw.a();
            for (int i10 = 0; i10 < c5476Kw.f41821a.f49057c.size(); i10++) {
                c5302Hw.a((Map.Entry) c5476Kw.f41821a.f49057c.get(i10));
            }
            Iterator it = c5476Kw.f41821a.i().iterator();
            while (it.hasNext()) {
                c5302Hw.a((Map.Entry) it.next());
            }
            onChanged();
        }
    }

    public final AbstractC7679hz b(C5685Ol c5685Ol, Object obj) {
        if (c5685Ol.f43017c.e()) {
            a(c5685Ol);
            b();
            this.f48749b.a(c5685Ol, obj);
            onChanged();
            return this;
        }
        C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).a(this, obj);
        return this;
    }

    public final boolean c() {
        C5302Hw c5302Hw = this.f48749b;
        if (c5302Hw == null) {
            return true;
        }
        for (int i10 = 0; i10 < c5302Hw.f40917a.f49057c.size(); i10++) {
            if (!C5476Kw.b((Map.Entry) c5302Hw.f40917a.f49057c.get(i10))) {
                return false;
            }
        }
        Iterator it = c5302Hw.f40917a.i().iterator();
        while (it.hasNext()) {
            if (!C5476Kw.b((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.Map] */
    @Override
    public final Map getAllFields() {
        Map a10;
        a10 = a();
        C5302Hw c5302Hw = this.f48749b;
        if (c5302Hw != null) {
            C6093Vm0 c6093Vm0 = c5302Hw.f40917a;
            boolean z10 = c6093Vm0.f49059e;
            C6093Vm0 c6093Vm02 = c6093Vm0;
            if (!z10) {
                c6093Vm02 = Collections.unmodifiableMap(c6093Vm0);
            }
            a10.putAll(c6093Vm02);
        }
        return Collections.unmodifiableMap(a10);
    }

    @Override
    public final Object getField(C5685Ol c5685Ol) {
        if (!c5685Ol.f43017c.e()) {
            return super.getField(c5685Ol);
        }
        a(c5685Ol);
        C5302Hw c5302Hw = this.f48749b;
        Object a10 = c5302Hw == null ? null : C5302Hw.a((InterfaceC5360Iw) c5685Ol, c5302Hw.f40917a.get(c5685Ol));
        return a10 == null ? c5685Ol.f43022h.f42689b == EnumC5569Ml.f42387k ? C10163wt.a(c5685Ol.h()) : c5685Ol.e() : a10;
    }

    @Override
    public final InterfaceC7095eW getFieldBuilder(C5685Ol c5685Ol) {
        if (!c5685Ol.f43017c.e()) {
            return super.getFieldBuilder(c5685Ol);
        }
        a(c5685Ol);
        if (c5685Ol.f43022h.f42689b != EnumC5569Ml.f42387k) {
            throw new UnsupportedOperationException("getFieldBuilder() called on a non-Message type.");
        }
        b();
        Object obj = this.f48749b.f40917a.get(c5685Ol);
        if (obj == null) {
            C9996vt c9996vt = new C9996vt(c5685Ol.h());
            this.f48749b.a(c5685Ol, (Object) c9996vt);
            onChanged();
            return c9996vt;
        }
        if (obj instanceof InterfaceC7095eW) {
            return (InterfaceC7095eW) obj;
        }
        if (!(obj instanceof InterfaceC7262fW)) {
            throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
        }
        InterfaceC7095eW builder = ((InterfaceC7262fW) obj).toBuilder();
        this.f48749b.a(c5685Ol, (Object) builder);
        onChanged();
        return builder;
    }

    @Override
    public final Object getRepeatedField(C5685Ol c5685Ol, int i10) {
        if (!c5685Ol.f43017c.e()) {
            return super.getRepeatedField(c5685Ol, i10);
        }
        a(c5685Ol);
        C5302Hw c5302Hw = this.f48749b;
        if (c5302Hw == null) {
            throw new IndexOutOfBoundsException();
        }
        if (c5302Hw.f40919c) {
            c5302Hw.a();
        }
        if (!c5685Ol.k()) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object obj = c5302Hw.f40917a.get(c5685Ol);
        if (obj == null) {
            throw new IndexOutOfBoundsException();
        }
        Object obj2 = ((List) obj).get(i10);
        return obj2 instanceof InterfaceC7928jW ? ((InterfaceC7928jW) obj2).build() : obj2;
    }

    @Override
    public final InterfaceC7095eW getRepeatedFieldBuilder(C5685Ol c5685Ol, int i10) {
        if (!c5685Ol.f43017c.e()) {
            return super.getRepeatedFieldBuilder(c5685Ol, i10);
        }
        a(c5685Ol);
        b();
        if (c5685Ol.f43022h.f42689b != EnumC5569Ml.f42387k) {
            throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
        }
        C5302Hw c5302Hw = this.f48749b;
        c5302Hw.getClass();
        if (!c5685Ol.k()) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object obj = c5302Hw.f40917a.get(c5685Ol);
        if (obj == null) {
            throw new IndexOutOfBoundsException();
        }
        Object obj2 = ((List) obj).get(i10);
        if (obj2 instanceof InterfaceC7095eW) {
            return (InterfaceC7095eW) obj2;
        }
        if (!(obj2 instanceof InterfaceC7262fW)) {
            throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
        }
        InterfaceC7095eW builder = ((InterfaceC7262fW) obj2).toBuilder();
        C5302Hw c5302Hw2 = this.f48749b;
        c5302Hw2.a();
        if (!c5685Ol.k()) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        c5302Hw2.f40919c = c5302Hw2.f40919c || builder != null;
        Object a10 = C5302Hw.a((InterfaceC5360Iw) c5685Ol, c5302Hw2.f40917a.get(c5685Ol));
        if (a10 == null) {
            throw new IndexOutOfBoundsException();
        }
        C5302Hw.b(c5685Ol, builder);
        ((List) a10).set(i10, builder);
        onChanged();
        return builder;
    }

    @Override
    public final int getRepeatedFieldCount(C5685Ol c5685Ol) {
        if (!c5685Ol.f43017c.e()) {
            return super.getRepeatedFieldCount(c5685Ol);
        }
        a(c5685Ol);
        C5302Hw c5302Hw = this.f48749b;
        if (c5302Hw == null) {
            return 0;
        }
        if (!c5685Ol.k()) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object a10 = C5302Hw.a((InterfaceC5360Iw) c5685Ol, c5302Hw.f40917a.get(c5685Ol));
        if (a10 == null) {
            return 0;
        }
        return ((List) a10).size();
    }

    @Override
    public final boolean hasField(C5685Ol c5685Ol) {
        if (!c5685Ol.f43017c.e()) {
            return super.hasField(c5685Ol);
        }
        a(c5685Ol);
        C5302Hw c5302Hw = this.f48749b;
        if (c5302Hw == null) {
            return false;
        }
        if (c5685Ol.k()) {
            throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
        }
        return c5302Hw.f40917a.get(c5685Ol) != null;
    }

    @Override
    public final InterfaceC7095eW newBuilderForField(C5685Ol c5685Ol) {
        return c5685Ol.f43017c.e() ? new C9996vt(c5685Ol.h()) : super.newBuilderForField(c5685Ol);
    }

    public AbstractC7679hz(InterfaceC7512gz interfaceC7512gz) {
        super(interfaceC7512gz);
    }

    public final void b() {
        if (this.f48749b == null) {
            C5476Kw c5476Kw = C5476Kw.f41820d;
            this.f48749b = new C5302Hw();
        }
    }

    public final AbstractC7679hz a(C5685Ol c5685Ol, Object obj) {
        Collection collection;
        if (c5685Ol.f43017c.e()) {
            a(c5685Ol);
            b();
            C5302Hw c5302Hw = this.f48749b;
            c5302Hw.a();
            if (c5685Ol.k()) {
                c5302Hw.f40919c = c5302Hw.f40919c || (obj instanceof InterfaceC7928jW);
                C5302Hw.b(c5685Ol, obj);
                Object a10 = C5302Hw.a((InterfaceC5360Iw) c5685Ol, c5302Hw.f40917a.get(c5685Ol));
                if (a10 == null) {
                    collection = new ArrayList();
                    c5302Hw.f40917a.a(c5685Ol, collection);
                } else {
                    collection = (List) a10;
                }
                collection.add(obj);
                onChanged();
                return this;
            }
            throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
        }
        C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).b(this, obj);
        return this;
    }

    public final void a(C5685Ol c5685Ol) {
        if (c5685Ol.f43023i != getDescriptorForType()) {
            throw new IllegalArgumentException("FieldDescriptor does not match message type.");
        }
    }
}
