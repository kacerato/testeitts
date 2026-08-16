package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.List;
import java.util.Map;

public abstract class AbstractC7844iz extends AbstractC10181wz implements InterfaceC8596nW {

    public final C5476Kw f49135b;

    public AbstractC7844iz() {
        this.f49135b = new C5476Kw();
    }

    @Override
    public final Map getAllFields() {
        Map a10;
        a10 = a(false);
        a10.putAll(this.f49135b.a());
        return Collections.unmodifiableMap(a10);
    }

    @Override
    public final Map getAllFieldsRaw() {
        Map a10;
        a10 = a(false);
        a10.putAll(this.f49135b.a());
        return Collections.unmodifiableMap(a10);
    }

    @Override
    public final Object getField(C5685Ol c5685Ol) {
        if (!c5685Ol.f43017c.e()) {
            return super.getField(c5685Ol);
        }
        if (c5685Ol.f43023i != getDescriptorForType()) {
            throw new IllegalArgumentException("FieldDescriptor does not match message type.");
        }
        Object a10 = this.f49135b.a((InterfaceC5360Iw) c5685Ol);
        return a10 == null ? c5685Ol.k() ? Collections.EMPTY_LIST : c5685Ol.f43022h.f42689b == EnumC5569Ml.f42387k ? C10163wt.a(c5685Ol.h()) : c5685Ol.e() : a10;
    }

    @Override
    public final Object getRepeatedField(C5685Ol c5685Ol, int i10) {
        if (!c5685Ol.f43017c.e()) {
            return super.getRepeatedField(c5685Ol, i10);
        }
        if (c5685Ol.f43023i != getDescriptorForType()) {
            throw new IllegalArgumentException("FieldDescriptor does not match message type.");
        }
        C5476Kw c5476Kw = this.f49135b;
        c5476Kw.getClass();
        if (!c5685Ol.k()) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object a10 = c5476Kw.a((InterfaceC5360Iw) c5685Ol);
        if (a10 != null) {
            return ((List) a10).get(i10);
        }
        throw new IndexOutOfBoundsException();
    }

    @Override
    public final int getRepeatedFieldCount(C5685Ol c5685Ol) {
        if (!c5685Ol.f43017c.e()) {
            return super.getRepeatedFieldCount(c5685Ol);
        }
        if (c5685Ol.f43023i != getDescriptorForType()) {
            throw new IllegalArgumentException("FieldDescriptor does not match message type.");
        }
        C5476Kw c5476Kw = this.f49135b;
        c5476Kw.getClass();
        if (!c5685Ol.k()) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object a10 = c5476Kw.a((InterfaceC5360Iw) c5685Ol);
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
        if (c5685Ol.f43023i == getDescriptorForType()) {
            return this.f49135b.a(c5685Ol);
        }
        throw new IllegalArgumentException("FieldDescriptor does not match message type.");
    }

    @Override
    public final void makeExtensionsImmutable() {
        this.f49135b.d();
    }

    @Override
    public final boolean parseUnknownField(AbstractC4916Be abstractC4916Be, C8167kv0 c8167kv0, C10670zv c10670zv, int i10) {
        abstractC4916Be.getClass();
        return AbstractC9263rW.a(abstractC4916Be, c8167kv0, c10670zv, getDescriptorForType(), new C8930pW(this.f49135b), i10);
    }

    @Override
    public final boolean parseUnknownFieldProto3(AbstractC4916Be abstractC4916Be, C8167kv0 c8167kv0, C10670zv c10670zv, int i10) {
        return parseUnknownField(abstractC4916Be, c8167kv0, c10670zv, i10);
    }

    public AbstractC7844iz(AbstractC7679hz abstractC7679hz) {
        super(abstractC7679hz);
        C5476Kw c5476Kw;
        C5302Hw c5302Hw = abstractC7679hz.f48749b;
        if (c5302Hw == null) {
            c5476Kw = C5476Kw.f41820d;
        } else if (c5302Hw.f40917a.isEmpty()) {
            c5476Kw = C5476Kw.f41820d;
        } else {
            c5302Hw.f40918b = false;
            C6093Vm0 c6093Vm0 = c5302Hw.f40917a;
            if (c5302Hw.f40919c) {
                c6093Vm0 = C5476Kw.a((AbstractC7810in0) c6093Vm0, false);
                for (int i10 = 0; i10 < c6093Vm0.f49057c.size(); i10++) {
                    Map.Entry entry = (Map.Entry) c6093Vm0.f49057c.get(i10);
                    entry.setValue(C5302Hw.a((InterfaceC5360Iw) entry.getKey(), entry.getValue()));
                }
                for (Map.Entry entry2 : c6093Vm0.i()) {
                    entry2.setValue(C5302Hw.a((InterfaceC5360Iw) entry2.getKey(), entry2.getValue()));
                }
            }
            c5476Kw = new C5476Kw(c6093Vm0);
            c5476Kw.f41823c = false;
        }
        this.f49135b = c5476Kw;
    }
}
