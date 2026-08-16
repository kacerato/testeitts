package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class C7470gl extends AbstractC7844iz {

    public static final C7470gl f48353e = new C7470gl();

    public static final C7136el f48354f = new C7136el();

    public List f48355c;

    public byte f48356d;

    public C7470gl(C7303fl c7303fl) {
        super(c7303fl);
        this.f48356d = (byte) -1;
    }

    @Override
    public final C7303fl toBuilder() {
        return this == f48353e ? new C7303fl() : new C7303fl().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7470gl)) {
            return super.equals(obj);
        }
        C7470gl c7470gl = (C7470gl) obj;
        return this.f48355c.equals(c7470gl.f48355c) && this.unknownFields.equals(c7470gl.unknownFields) && this.f49135b.a().equals(c7470gl.f49135b.a());
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f48353e;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f48355c.size(); i12++) {
            i11 += AbstractC5322Ie.a(999, (InterfaceC8095kW) this.f48355c.get(i12));
        }
        int serializedSize = this.unknownFields.getSerializedSize() + this.f49135b.b() + i11;
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override
    public final C9002pv0 getUnknownFields() {
        return this.unknownFields;
    }

    @Override
    public final int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = AbstractC10640zl.f54488E.hashCode() + 779;
        if (this.f48355c.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 999, 53) + this.f48355c.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + (K0.hashFields(hashCode, this.f49135b.a()) * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54489F.a(C7470gl.class, C7303fl.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f48356d;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int i10 = 0; i10 < this.f48355c.size(); i10++) {
            if (!((C10473yl) this.f48355c.get(i10)).isInitialized()) {
                this.f48356d = (byte) 0;
                return false;
            }
        }
        if (this.f49135b.c()) {
            this.f48356d = (byte) 1;
            return true;
        }
        this.f48356d = (byte) 0;
        return false;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f48353e.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        C5476Kw c5476Kw = this.f49135b;
        Iterator c9754uR = c5476Kw.f41823c ? new C9754uR(new C7310fn0(((C7644hn0) c5476Kw.f41821a.entrySet()).f48714b)) : new C7310fn0(((C7644hn0) c5476Kw.f41821a.entrySet()).f48714b);
        Map.Entry entry = c9754uR.hasNext() ? (Map.Entry) c9754uR.next() : null;
        for (int i10 = 0; i10 < this.f48355c.size(); i10++) {
            abstractC5322Ie.b(999, (InterfaceC8095kW) this.f48355c.get(i10));
        }
        while (entry != null && ((C5685Ol) entry.getKey()).f43017c.f39995d < 536870912) {
            C5476Kw.a((C5685Ol) entry.getKey(), entry.getValue(), abstractC5322Ie);
            entry = c9754uR.hasNext() ? (Map.Entry) c9754uR.next() : null;
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f48353e;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C7303fl((C7011dz) interfaceC7512gz);
    }

    public C7470gl() {
        this.f48356d = (byte) -1;
        this.f48355c = Collections.EMPTY_LIST;
    }
}
