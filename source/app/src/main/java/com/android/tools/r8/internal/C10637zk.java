package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class C10637zk extends AbstractC7844iz {

    public static final C10637zk f54477e = new C10637zk();

    public static final C10303xk f54478f = new C10303xk();

    public List f54479c;

    public byte f54480d;

    public C10637zk(C10470yk c10470yk) {
        super(c10470yk);
        this.f54480d = (byte) -1;
    }

    @Override
    public final C10470yk toBuilder() {
        return this == f54477e ? new C10470yk() : new C10470yk().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C10637zk)) {
            return super.equals(obj);
        }
        C10637zk c10637zk = (C10637zk) obj;
        return this.f54479c.equals(c10637zk.f54479c) && this.unknownFields.equals(c10637zk.unknownFields) && this.f49135b.a().equals(c10637zk.f49135b.a());
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f54477e;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f54479c.size(); i12++) {
            i11 += AbstractC5322Ie.a(999, (InterfaceC8095kW) this.f54479c.get(i12));
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
        int hashCode = AbstractC10640zl.f54514i.hashCode() + 779;
        if (this.f54479c.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 999, 53) + this.f54479c.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + (K0.hashFields(hashCode, this.f49135b.a()) * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54515j.a(C10637zk.class, C10470yk.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f54480d;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int i10 = 0; i10 < this.f54479c.size(); i10++) {
            if (!((C10473yl) this.f54479c.get(i10)).isInitialized()) {
                this.f54480d = (byte) 0;
                return false;
            }
        }
        if (this.f49135b.c()) {
            this.f54480d = (byte) 1;
            return true;
        }
        this.f54480d = (byte) 0;
        return false;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f54477e.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        C5476Kw c5476Kw = this.f49135b;
        Iterator c9754uR = c5476Kw.f41823c ? new C9754uR(new C7310fn0(((C7644hn0) c5476Kw.f41821a.entrySet()).f48714b)) : new C7310fn0(((C7644hn0) c5476Kw.f41821a.entrySet()).f48714b);
        Map.Entry entry = c9754uR.hasNext() ? (Map.Entry) c9754uR.next() : null;
        for (int i10 = 0; i10 < this.f54479c.size(); i10++) {
            abstractC5322Ie.b(999, (InterfaceC8095kW) this.f54479c.get(i10));
        }
        while (entry != null && ((C5685Ol) entry.getKey()).f43017c.f39995d < 536870912) {
            C5476Kw.a((C5685Ol) entry.getKey(), entry.getValue(), abstractC5322Ie);
            entry = c9754uR.hasNext() ? (Map.Entry) c9754uR.next() : null;
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f54477e;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C10470yk((C7011dz) interfaceC7512gz);
    }

    public C10637zk() {
        this.f54480d = (byte) -1;
        this.f54479c = Collections.EMPTY_LIST;
    }
}
