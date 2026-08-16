package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

public final class C10163wt extends K0 {

    public final C4990Cl f53632b;

    public final C5476Kw f53633c;

    public final C5685Ol[] f53634d;

    public final C9002pv0 f53635e;

    public int f53636f = -1;

    public C10163wt(C4990Cl c4990Cl, C5476Kw c5476Kw, C5685Ol[] c5685OlArr, C9002pv0 c9002pv0) {
        this.f53632b = c4990Cl;
        this.f53633c = c5476Kw;
        this.f53634d = c5685OlArr;
        this.f53635e = c9002pv0;
    }

    public static C10163wt a(C4990Cl c4990Cl) {
        return new C10163wt(c4990Cl, C5476Kw.f41820d, new C5685Ol[c4990Cl.f39339b.f48698i.size()], C9002pv0.f51665c);
    }

    @Override
    public final Map getAllFields() {
        return this.f53633c.a();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return a(this.f53632b);
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return this.f53632b;
    }

    @Override
    public final Object getField(C5685Ol c5685Ol) {
        if (c5685Ol.f43023i != this.f53632b) {
            throw new IllegalArgumentException("FieldDescriptor does not match message type.");
        }
        Object a10 = this.f53633c.a((InterfaceC5360Iw) c5685Ol);
        return a10 == null ? c5685Ol.k() ? Collections.EMPTY_LIST : c5685Ol.f43022h.f42689b == EnumC5569Ml.f42387k ? a(c5685Ol.h()) : c5685Ol.e() : a10;
    }

    @Override
    public final int getSerializedSize() {
        int serializedSize;
        int i10 = this.f53636f;
        if (i10 != -1) {
            return i10;
        }
        if (this.f53632b.f().f44566d) {
            C5476Kw c5476Kw = this.f53633c;
            int i11 = 0;
            for (int i12 = 0; i12 < c5476Kw.f41821a.f49057c.size(); i12++) {
                i11 += C5476Kw.a((Map.Entry) c5476Kw.f41821a.f49057c.get(i12));
            }
            Iterator it = c5476Kw.f41821a.i().iterator();
            while (it.hasNext()) {
                i11 += C5476Kw.a((Map.Entry) it.next());
            }
            int i13 = 0;
            for (Map.Entry entry : this.f53635e.f51666b.entrySet()) {
                C8501mv0 c8501mv0 = (C8501mv0) entry.getValue();
                int intValue = ((Integer) entry.getKey()).intValue();
                Iterator it2 = c8501mv0.f50460d.iterator();
                int i14 = 0;
                while (it2.hasNext()) {
                    i14 += AbstractC5322Ie.a(3, (AbstractC8373m8) it2.next()) + AbstractC5559Mg.a(intValue, AbstractC5322Ie.b(2), AbstractC5322Ie.b(1) * 2);
                }
                i13 += i14;
            }
            serializedSize = i11 + i13;
        } else {
            serializedSize = this.f53635e.getSerializedSize() + this.f53633c.b();
        }
        this.f53636f = serializedSize;
        return serializedSize;
    }

    @Override
    public final C9002pv0 getUnknownFields() {
        return this.f53635e;
    }

    @Override
    public final boolean hasField(C5685Ol c5685Ol) {
        if (c5685Ol.f43023i == this.f53632b) {
            return this.f53633c.a(c5685Ol);
        }
        throw new IllegalArgumentException("FieldDescriptor does not match message type.");
    }

    @Override
    public final boolean isInitialized() {
        return a(this.f53632b, this.f53633c);
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return new C9996vt(this.f53632b);
    }

    @Override
    public final InterfaceC7095eW toBuilder() {
        return new C9996vt(this.f53632b).mergeFrom(this);
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        int i10 = 0;
        if (!this.f53632b.f().f44566d) {
            C5476Kw c5476Kw = this.f53633c;
            while (i10 < c5476Kw.f41821a.f49057c.size()) {
                Map.Entry entry = (Map.Entry) c5476Kw.f41821a.f49057c.get(i10);
                C5476Kw.a((InterfaceC5360Iw) entry.getKey(), entry.getValue(), abstractC5322Ie);
                i10++;
            }
            for (Map.Entry entry2 : c5476Kw.f41821a.i()) {
                C5476Kw.a((InterfaceC5360Iw) entry2.getKey(), entry2.getValue(), abstractC5322Ie);
            }
            this.f53635e.writeTo(abstractC5322Ie);
            return;
        }
        C5476Kw c5476Kw2 = this.f53633c;
        while (i10 < c5476Kw2.f41821a.f49057c.size()) {
            C5476Kw.a((Map.Entry) c5476Kw2.f41821a.f49057c.get(i10), abstractC5322Ie);
            i10++;
        }
        Iterator it = c5476Kw2.f41821a.i().iterator();
        while (it.hasNext()) {
            C5476Kw.a((Map.Entry) it.next(), abstractC5322Ie);
        }
        for (Map.Entry entry3 : this.f53635e.f51666b.entrySet()) {
            C8501mv0 c8501mv0 = (C8501mv0) entry3.getValue();
            int intValue = ((Integer) entry3.getKey()).intValue();
            Iterator it2 = c8501mv0.f50460d.iterator();
            while (it2.hasNext()) {
                abstractC5322Ie.c(intValue, (AbstractC8373m8) it2.next());
            }
        }
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return a(this.f53632b);
    }

    @Override
    public final InterfaceC7928jW toBuilder() {
        return new C9996vt(this.f53632b).mergeFrom(this);
    }

    public static boolean a(C4990Cl c4990Cl, C5476Kw c5476Kw) {
        for (C5685Ol c5685Ol : Collections.unmodifiableList(Arrays.asList(c4990Cl.f39344g))) {
            EnumC4988Ck a10 = EnumC4988Ck.a(c5685Ol.f43017c.f39996e);
            if (a10 == null) {
                a10 = EnumC4988Ck.f39333c;
            }
            if (a10 == EnumC4988Ck.f39334d && !c5476Kw.a(c5685Ol)) {
                return false;
            }
        }
        return c5476Kw.c();
    }
}
