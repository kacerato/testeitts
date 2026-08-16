package com.android.tools.r8.internal;

import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class C8470ml extends AbstractC7844iz {

    public static final C8470ml f50412g = new C8470ml();

    public static final C8136kl f50413h = new C8136kl();

    public int f50414c;

    public boolean f50415d;

    public List f50416e;

    public byte f50417f;

    public C8470ml(C8303ll c8303ll) {
        super(c8303ll);
        this.f50417f = (byte) -1;
    }

    @Override
    public final C8303ll toBuilder() {
        return this == f50412g ? new C8303ll() : new C8303ll().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8470ml)) {
            return super.equals(obj);
        }
        C8470ml c8470ml = (C8470ml) obj;
        int i10 = this.f50414c & 1;
        if ((i10 != 0) != ((c8470ml.f50414c & 1) != 0)) {
            return false;
        }
        return (i10 == 0 || this.f50415d == c8470ml.f50415d) && this.f50416e.equals(c8470ml.f50416e) && this.unknownFields.equals(c8470ml.unknownFields) && this.f49135b.a().equals(c8470ml.f49135b.a());
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f50412g;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int b10 = (this.f50414c & 1) != 0 ? AbstractC5322Ie.b(33) + 1 : 0;
        for (int i11 = 0; i11 < this.f50416e.size(); i11++) {
            b10 += AbstractC5322Ie.a(999, (InterfaceC8095kW) this.f50416e.get(i11));
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
        int hashCode = AbstractC10640zl.f54494K.hashCode() + 779;
        if ((this.f50414c & 1) != 0) {
            int a10 = AbstractC9124qg0.a(hashCode, 37, 33, 53);
            boolean z10 = this.f50415d;
            Charset charset = YI.f45964a;
            hashCode = a10 + (z10 ? 1231 : 1237);
        }
        if (this.f50416e.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 999, 53) + this.f50416e.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + (K0.hashFields(hashCode, this.f49135b.a()) * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54495L.a(C8470ml.class, C8303ll.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f50417f;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int i10 = 0; i10 < this.f50416e.size(); i10++) {
            if (!((C10473yl) this.f50416e.get(i10)).isInitialized()) {
                this.f50417f = (byte) 0;
                return false;
            }
        }
        if (this.f49135b.c()) {
            this.f50417f = (byte) 1;
            return true;
        }
        this.f50417f = (byte) 0;
        return false;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f50412g.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        C5476Kw c5476Kw = this.f49135b;
        Iterator c9754uR = c5476Kw.f41823c ? new C9754uR(new C7310fn0(((C7644hn0) c5476Kw.f41821a.entrySet()).f48714b)) : new C7310fn0(((C7644hn0) c5476Kw.f41821a.entrySet()).f48714b);
        Map.Entry entry = c9754uR.hasNext() ? (Map.Entry) c9754uR.next() : null;
        if ((this.f50414c & 1) != 0) {
            abstractC5322Ie.a(33, this.f50415d);
        }
        for (int i10 = 0; i10 < this.f50416e.size(); i10++) {
            abstractC5322Ie.b(999, (InterfaceC8095kW) this.f50416e.get(i10));
        }
        while (entry != null && ((C5685Ol) entry.getKey()).f43017c.f39995d < 536870912) {
            C5476Kw.a((C5685Ol) entry.getKey(), entry.getValue(), abstractC5322Ie);
            entry = c9754uR.hasNext() ? (Map.Entry) c9754uR.next() : null;
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f50412g;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C8303ll((C7011dz) interfaceC7512gz);
    }

    public C8470ml() {
        this.f50417f = (byte) -1;
        this.f50416e = Collections.EMPTY_LIST;
    }
}
