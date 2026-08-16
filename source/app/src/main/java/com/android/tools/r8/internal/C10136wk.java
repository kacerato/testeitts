package com.android.tools.r8.internal;

import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class C10136wk extends AbstractC7844iz {

    public static final C10136wk f53587g = new C10136wk();

    public static final C9802uk f53588h = new C9802uk();

    public int f53589c;

    public boolean f53590d;

    public List f53591e;

    public byte f53592f;

    public C10136wk(C9969vk c9969vk) {
        super(c9969vk);
        this.f53592f = (byte) -1;
    }

    @Override
    public final C9969vk toBuilder() {
        return this == f53587g ? new C9969vk() : new C9969vk().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C10136wk)) {
            return super.equals(obj);
        }
        C10136wk c10136wk = (C10136wk) obj;
        int i10 = this.f53589c & 1;
        if ((i10 != 0) != ((c10136wk.f53589c & 1) != 0)) {
            return false;
        }
        return (i10 == 0 || this.f53590d == c10136wk.f53590d) && this.f53591e.equals(c10136wk.f53591e) && this.unknownFields.equals(c10136wk.unknownFields) && this.f49135b.a().equals(c10136wk.f49135b.a());
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f53587g;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int b10 = (this.f53589c & 1) != 0 ? AbstractC5322Ie.b(1) + 1 : 0;
        for (int i11 = 0; i11 < this.f53591e.size(); i11++) {
            b10 += AbstractC5322Ie.a(999, (InterfaceC8095kW) this.f53591e.get(i11));
        }
        int serializedSize = this.unknownFields.getSerializedSize() + this.f49135b.b() + b10;
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
        int hashCode = AbstractC10640zl.f54492I.hashCode() + 779;
        if ((this.f53589c & 1) != 0) {
            int a10 = AbstractC9124qg0.a(hashCode, 37, 1, 53);
            boolean z10 = this.f53590d;
            Charset charset = YI.f45964a;
            hashCode = a10 + (z10 ? 1231 : 1237);
        }
        if (this.f53591e.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 999, 53) + this.f53591e.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + (K0.hashFields(hashCode, this.f49135b.a()) * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54493J.a(C10136wk.class, C9969vk.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f53592f;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int i10 = 0; i10 < this.f53591e.size(); i10++) {
            if (!((C10473yl) this.f53591e.get(i10)).isInitialized()) {
                this.f53592f = (byte) 0;
                return false;
            }
        }
        if (this.f49135b.c()) {
            this.f53592f = (byte) 1;
            return true;
        }
        this.f53592f = (byte) 0;
        return false;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f53587g.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        C5476Kw c5476Kw = this.f49135b;
        Iterator c9754uR = c5476Kw.f41823c ? new C9754uR(new C7310fn0(((C7644hn0) c5476Kw.f41821a.entrySet()).f48714b)) : new C7310fn0(((C7644hn0) c5476Kw.f41821a.entrySet()).f48714b);
        Map.Entry entry = c9754uR.hasNext() ? (Map.Entry) c9754uR.next() : null;
        if ((this.f53589c & 1) != 0) {
            abstractC5322Ie.a(1, this.f53590d);
        }
        for (int i10 = 0; i10 < this.f53591e.size(); i10++) {
            abstractC5322Ie.b(999, (InterfaceC8095kW) this.f53591e.get(i10));
        }
        while (entry != null && ((C5685Ol) entry.getKey()).f43017c.f39995d < 536870912) {
            C5476Kw.a((C5685Ol) entry.getKey(), entry.getValue(), abstractC5322Ie);
            entry = c9754uR.hasNext() ? (Map.Entry) c9754uR.next() : null;
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f53587g;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C9969vk((C7011dz) interfaceC7512gz);
    }

    public C10136wk() {
        this.f53592f = (byte) -1;
        this.f53591e = Collections.EMPTY_LIST;
    }
}
