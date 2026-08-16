package com.android.tools.r8.internal;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class C9996vt extends I0 {

    public final C4990Cl f53362b;

    public final C5685Ol[] f53364d;

    public C5476Kw f53363c = new C5476Kw();

    public C9002pv0 f53365e = C9002pv0.f51665c;

    public C9996vt(C4990Cl c4990Cl) {
        this.f53362b = c4990Cl;
        this.f53364d = new C5685Ol[c4990Cl.f39339b.f48698i.size()];
    }

    @Override
    public final C9996vt mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C10163wt) {
            C10163wt c10163wt = (C10163wt) interfaceC7262fW;
            if (c10163wt.f53632b == this.f53362b) {
                C5476Kw c5476Kw = this.f53363c;
                if (c5476Kw.f41822b) {
                    this.f53363c = c5476Kw.m720clone();
                }
                this.f53363c.a(c10163wt.f53633c);
                C9002pv0 c9002pv0 = c10163wt.f53635e;
                C9002pv0 c9002pv02 = this.f53365e;
                C9002pv0 c9002pv03 = C9002pv0.f51665c;
                this.f53365e = new C8167kv0().a(c9002pv02).a(c9002pv0).build();
                int i10 = 0;
                while (true) {
                    C5685Ol[] c5685OlArr = this.f53364d;
                    if (i10 >= c5685OlArr.length) {
                        return this;
                    }
                    C5685Ol c5685Ol = c5685OlArr[i10];
                    if (c5685Ol == null) {
                        c5685OlArr[i10] = c10163wt.f53634d[i10];
                    } else {
                        C5685Ol c5685Ol2 = c10163wt.f53634d[i10];
                        if (c5685Ol2 != null && c5685Ol != c5685Ol2) {
                            C5476Kw c5476Kw2 = this.f53363c;
                            c5476Kw2.f41821a.remove(c5685Ol);
                            if (c5476Kw2.f41821a.isEmpty()) {
                                c5476Kw2.f41823c = false;
                            }
                            this.f53364d[i10] = c10163wt.f53634d[i10];
                        }
                    }
                    i10++;
                }
            } else {
                throw new IllegalArgumentException("mergeFrom(Message) can only merge messages of the same type.");
            }
        } else {
            return (C9996vt) mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        Collection collection;
        if (c5685Ol.f43023i != this.f53362b) {
            throw new IllegalArgumentException("FieldDescriptor does not match message type.");
        }
        C5476Kw c5476Kw = this.f53363c;
        if (c5476Kw.f41822b) {
            this.f53363c = c5476Kw.m720clone();
        }
        C5476Kw c5476Kw2 = this.f53363c;
        c5476Kw2.getClass();
        if (!c5685Ol.k()) {
            throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
        }
        C5476Kw.c(c5685Ol, obj);
        Object a10 = c5476Kw2.a((InterfaceC5360Iw) c5685Ol);
        if (a10 == null) {
            collection = new ArrayList();
            c5476Kw2.f41821a.a(c5685Ol, collection);
        } else {
            collection = (List) a10;
        }
        collection.add(obj);
        return this;
    }

    @Override
    public final InterfaceC7262fW build() {
        if (C10163wt.a(this.f53362b, this.f53363c)) {
            return m1181buildPartial();
        }
        C4990Cl c4990Cl = this.f53362b;
        C5476Kw c5476Kw = this.f53363c;
        C5685Ol[] c5685OlArr = this.f53364d;
        throw I0.newUninitializedMessageException((InterfaceC7262fW) new C10163wt(c4990Cl, c5476Kw, (C5685Ol[]) Arrays.copyOf(c5685OlArr, c5685OlArr.length), this.f53365e));
    }

    public final Object clone() {
        C9996vt c9996vt = new C9996vt(this.f53362b);
        c9996vt.f53363c.a(this.f53363c);
        C9002pv0 c9002pv0 = this.f53365e;
        C9002pv0 c9002pv02 = c9996vt.f53365e;
        C9002pv0 c9002pv03 = C9002pv0.f51665c;
        c9996vt.f53365e = new C8167kv0().a(c9002pv02).a(c9002pv0).build();
        C5685Ol[] c5685OlArr = this.f53364d;
        System.arraycopy(c5685OlArr, 0, c9996vt.f53364d, 0, c5685OlArr.length);
        return c9996vt;
    }

    @Override
    public final Map getAllFields() {
        return this.f53363c.a();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C10163wt.a(this.f53362b);
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return this.f53362b;
    }

    @Override
    public final Object getField(C5685Ol c5685Ol) {
        if (c5685Ol.f43023i != this.f53362b) {
            throw new IllegalArgumentException("FieldDescriptor does not match message type.");
        }
        Object a10 = this.f53363c.a((InterfaceC5360Iw) c5685Ol);
        return a10 == null ? c5685Ol.k() ? Collections.EMPTY_LIST : c5685Ol.f43022h.f42689b == EnumC5569Ml.f42387k ? C10163wt.a(c5685Ol.h()) : c5685Ol.e() : a10;
    }

    @Override
    public final C9002pv0 getUnknownFields() {
        return this.f53365e;
    }

    @Override
    public final boolean hasField(C5685Ol c5685Ol) {
        if (c5685Ol.f43023i == this.f53362b) {
            return this.f53363c.a(c5685Ol);
        }
        throw new IllegalArgumentException("FieldDescriptor does not match message type.");
    }

    @Override
    public final boolean isInitialized() {
        return C10163wt.a(this.f53362b, this.f53363c);
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        C9002pv0 c9002pv02 = this.f53365e;
        C9002pv0 c9002pv03 = C9002pv0.f51665c;
        this.f53365e = new C8167kv0().a(c9002pv02).a(c9002pv0).build();
        return this;
    }

    @Override
    public final InterfaceC7095eW newBuilderForField(C5685Ol c5685Ol) {
        if (c5685Ol.f43023i != this.f53362b) {
            throw new IllegalArgumentException("FieldDescriptor does not match message type.");
        }
        if (c5685Ol.f43022h.f42689b == EnumC5569Ml.f42387k) {
            return new C9996vt(c5685Ol.h());
        }
        throw new IllegalArgumentException("newBuilderForField is only valid for fields with message type.");
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        if (c5685Ol.f43023i != this.f53362b) {
            throw new IllegalArgumentException("FieldDescriptor does not match message type.");
        }
        C5476Kw c5476Kw = this.f53363c;
        if (c5476Kw.f41822b) {
            this.f53363c = c5476Kw.m720clone();
        }
        if (c5685Ol.f43022h == EnumC5627Nl.f42687g) {
            if (c5685Ol.k()) {
                for (Object obj2 : (List) obj) {
                    Charset charset = YI.f45964a;
                    obj2.getClass();
                    if (!(obj2 instanceof C5454Kl)) {
                        throw new IllegalArgumentException("DynamicMessage should use EnumValueDescriptor to set Enum Value.");
                    }
                }
            } else {
                Charset charset2 = YI.f45964a;
                obj.getClass();
                if (!(obj instanceof C5454Kl)) {
                    throw new IllegalArgumentException("DynamicMessage should use EnumValueDescriptor to set Enum Value.");
                }
            }
        }
        C5917Sl c5917Sl = c5685Ol.f43025k;
        if (c5917Sl != null) {
            int i10 = c5917Sl.f44302b;
            C5685Ol c5685Ol2 = this.f53364d[i10];
            if (c5685Ol2 != null && c5685Ol2 != c5685Ol) {
                C5476Kw c5476Kw2 = this.f53363c;
                c5476Kw2.f41821a.remove(c5685Ol2);
                if (c5476Kw2.f41821a.isEmpty()) {
                    c5476Kw2.f41823c = false;
                }
            }
            this.f53364d[i10] = c5685Ol;
        } else if (c5685Ol.f43019e.e() == 3 && !c5685Ol.k() && c5685Ol.f43022h.f42689b != EnumC5569Ml.f42387k && obj.equals(c5685Ol.e())) {
            C5476Kw c5476Kw3 = this.f53363c;
            c5476Kw3.f41821a.remove(c5685Ol);
            if (c5476Kw3.f41821a.isEmpty()) {
                c5476Kw3.f41823c = false;
            }
            return this;
        }
        this.f53363c.b(c5685Ol, obj);
        return this;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        this.f53365e = c9002pv0;
        return this;
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C10163wt.a(this.f53362b);
    }

    @Override
    public final InterfaceC8095kW build() {
        if (C10163wt.a(this.f53362b, this.f53363c)) {
            return m1181buildPartial();
        }
        C4990Cl c4990Cl = this.f53362b;
        C5476Kw c5476Kw = this.f53363c;
        C5685Ol[] c5685OlArr = this.f53364d;
        throw I0.newUninitializedMessageException((InterfaceC7262fW) new C10163wt(c4990Cl, c5476Kw, (C5685Ol[]) Arrays.copyOf(c5685OlArr, c5685OlArr.length), this.f53365e));
    }

    @Override
    public final C10163wt m1181buildPartial() {
        if (this.f53362b.f().f44569g) {
            for (C5685Ol c5685Ol : Collections.unmodifiableList(Arrays.asList(this.f53362b.f39344g))) {
                EnumC4988Ck a10 = EnumC4988Ck.a(c5685Ol.f43017c.f39996e);
                if (a10 == null) {
                    a10 = EnumC4988Ck.f39333c;
                }
                if (a10 == EnumC4988Ck.f39333c && !this.f53363c.a(c5685Ol)) {
                    if (c5685Ol.f43022h.f42689b == EnumC5569Ml.f42387k) {
                        this.f53363c.b(c5685Ol, C10163wt.a(c5685Ol.h()));
                    } else {
                        this.f53363c.b(c5685Ol, c5685Ol.e());
                    }
                }
            }
        }
        this.f53363c.d();
        C4990Cl c4990Cl = this.f53362b;
        C5476Kw c5476Kw = this.f53363c;
        C5685Ol[] c5685OlArr = this.f53364d;
        return new C10163wt(c4990Cl, c5476Kw, (C5685Ol[]) Arrays.copyOf(c5685OlArr, c5685OlArr.length), this.f53365e);
    }
}
