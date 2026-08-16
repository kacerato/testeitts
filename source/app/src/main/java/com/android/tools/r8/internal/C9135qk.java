package com.android.tools.r8.internal;

import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class C9135qk extends AbstractC7844iz {

    public static final C9135qk f51867h = new C9135qk();

    public static final C8801ok f51868i = new C8801ok();

    public int f51869c;

    public boolean f51870d;

    public boolean f51871e;

    public List f51872f;

    public byte f51873g;

    public C9135qk(C8968pk c8968pk) {
        super(c8968pk);
        this.f51873g = (byte) -1;
    }

    @Override
    public final C8968pk toBuilder() {
        return this == f51867h ? new C8968pk() : new C8968pk().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C9135qk)) {
            return super.equals(obj);
        }
        C9135qk c9135qk = (C9135qk) obj;
        int i10 = this.f51869c;
        int i11 = i10 & 1;
        boolean z10 = i11 != 0;
        int i12 = c9135qk.f51869c;
        if (z10 != ((i12 & 1) != 0)) {
            return false;
        }
        if (i11 != 0 && this.f51870d != c9135qk.f51870d) {
            return false;
        }
        int i13 = i10 & 2;
        if ((i13 != 0) != ((i12 & 2) != 0)) {
            return false;
        }
        return (i13 == 0 || this.f51871e == c9135qk.f51871e) && this.f51872f.equals(c9135qk.f51872f) && this.unknownFields.equals(c9135qk.unknownFields) && this.f49135b.a().equals(c9135qk.f49135b.a());
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f51867h;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int b10 = (this.f51869c & 1) != 0 ? AbstractC5322Ie.b(2) + 1 : 0;
        if ((2 & this.f51869c) != 0) {
            b10 = AbstractC8292lh0.a(3, 1, b10);
        }
        for (int i11 = 0; i11 < this.f51872f.size(); i11++) {
            b10 += AbstractC5322Ie.a(999, (InterfaceC8095kW) this.f51872f.get(i11));
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
        int hashCode = AbstractC10640zl.f54490G.hashCode() + 779;
        int i11 = this.f51869c;
        if ((i11 & 1) != 0) {
            int a10 = AbstractC9124qg0.a(hashCode, 37, 2, 53);
            boolean z10 = this.f51870d;
            Charset charset = YI.f45964a;
            hashCode = a10 + (z10 ? 1231 : 1237);
        }
        if ((i11 & 2) != 0) {
            int a11 = AbstractC9124qg0.a(hashCode, 37, 3, 53);
            boolean z11 = this.f51871e;
            Charset charset2 = YI.f45964a;
            hashCode = a11 + (z11 ? 1231 : 1237);
        }
        if (this.f51872f.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 999, 53) + this.f51872f.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + (K0.hashFields(hashCode, this.f49135b.a()) * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54491H.a(C9135qk.class, C8968pk.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f51873g;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int i10 = 0; i10 < this.f51872f.size(); i10++) {
            if (!((C10473yl) this.f51872f.get(i10)).isInitialized()) {
                this.f51873g = (byte) 0;
                return false;
            }
        }
        if (this.f49135b.c()) {
            this.f51873g = (byte) 1;
            return true;
        }
        this.f51873g = (byte) 0;
        return false;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f51867h.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        C5476Kw c5476Kw = this.f49135b;
        Iterator c9754uR = c5476Kw.f41823c ? new C9754uR(new C7310fn0(((C7644hn0) c5476Kw.f41821a.entrySet()).f48714b)) : new C7310fn0(((C7644hn0) c5476Kw.f41821a.entrySet()).f48714b);
        Map.Entry entry = c9754uR.hasNext() ? (Map.Entry) c9754uR.next() : null;
        if ((this.f51869c & 1) != 0) {
            abstractC5322Ie.a(2, this.f51870d);
        }
        if ((this.f51869c & 2) != 0) {
            abstractC5322Ie.a(3, this.f51871e);
        }
        for (int i10 = 0; i10 < this.f51872f.size(); i10++) {
            abstractC5322Ie.b(999, (InterfaceC8095kW) this.f51872f.get(i10));
        }
        while (entry != null && ((C5685Ol) entry.getKey()).f43017c.f39995d < 536870912) {
            C5476Kw.a((C5685Ol) entry.getKey(), entry.getValue(), abstractC5322Ie);
            entry = c9754uR.hasNext() ? (Map.Entry) c9754uR.next() : null;
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f51867h;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C8968pk((C7011dz) interfaceC7512gz);
    }

    public C9135qk() {
        this.f51873g = (byte) -1;
        this.f51872f = Collections.EMPTY_LIST;
    }
}
