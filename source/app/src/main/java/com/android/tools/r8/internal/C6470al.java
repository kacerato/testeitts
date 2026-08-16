package com.android.tools.r8.internal;

import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class C6470al extends AbstractC7844iz {

    public static final C6470al f46617h = new C6470al();

    public static final C6202Xk f46618i = new C6202Xk();

    public int f46619c;

    public boolean f46620d;

    public int f46621e;

    public List f46622f;

    public byte f46623g;

    public C6470al(C6259Yk c6259Yk) {
        super(c6259Yk);
        this.f46623g = (byte) -1;
    }

    @Override
    public final C6259Yk toBuilder() {
        return this == f46617h ? new C6259Yk() : new C6259Yk().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C6470al)) {
            return super.equals(obj);
        }
        C6470al c6470al = (C6470al) obj;
        int i10 = this.f46619c;
        int i11 = i10 & 1;
        boolean z10 = i11 != 0;
        int i12 = c6470al.f46619c;
        if (z10 != ((i12 & 1) != 0)) {
            return false;
        }
        if (i11 != 0 && this.f46620d != c6470al.f46620d) {
            return false;
        }
        int i13 = i10 & 2;
        if ((i13 != 0) != ((i12 & 2) != 0)) {
            return false;
        }
        return (i13 == 0 || this.f46621e == c6470al.f46621e) && this.f46622f.equals(c6470al.f46622f) && this.unknownFields.equals(c6470al.unknownFields) && this.f49135b.a().equals(c6470al.f49135b.a());
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f46617h;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int b10 = (this.f46619c & 1) != 0 ? AbstractC5322Ie.b(33) + 1 : 0;
        if ((this.f46619c & 2) != 0) {
            b10 = AbstractC5502Lg.a(this.f46621e, AbstractC5322Ie.b(34), b10);
        }
        for (int i11 = 0; i11 < this.f46622f.size(); i11++) {
            b10 += AbstractC5322Ie.a(999, (InterfaceC8095kW) this.f46622f.get(i11));
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
        int hashCode = AbstractC10640zl.f54496M.hashCode() + 779;
        int i11 = this.f46619c;
        if ((i11 & 1) != 0) {
            int a10 = AbstractC9124qg0.a(hashCode, 37, 33, 53);
            boolean z10 = this.f46620d;
            Charset charset = YI.f45964a;
            hashCode = a10 + (z10 ? 1231 : 1237);
        }
        if ((i11 & 2) != 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 34, 53) + this.f46621e;
        }
        if (this.f46622f.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 999, 53) + this.f46622f.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + (K0.hashFields(hashCode, this.f49135b.a()) * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54497N.a(C6470al.class, C6259Yk.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f46623g;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int i10 = 0; i10 < this.f46622f.size(); i10++) {
            if (!((C10473yl) this.f46622f.get(i10)).isInitialized()) {
                this.f46623g = (byte) 0;
                return false;
            }
        }
        if (this.f49135b.c()) {
            this.f46623g = (byte) 1;
            return true;
        }
        this.f46623g = (byte) 0;
        return false;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f46617h.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        C5476Kw c5476Kw = this.f49135b;
        Iterator c9754uR = c5476Kw.f41823c ? new C9754uR(new C7310fn0(((C7644hn0) c5476Kw.f41821a.entrySet()).f48714b)) : new C7310fn0(((C7644hn0) c5476Kw.f41821a.entrySet()).f48714b);
        Map.Entry entry = c9754uR.hasNext() ? (Map.Entry) c9754uR.next() : null;
        if ((this.f46619c & 1) != 0) {
            abstractC5322Ie.a(33, this.f46620d);
        }
        if ((this.f46619c & 2) != 0) {
            abstractC5322Ie.c(34, this.f46621e);
        }
        for (int i10 = 0; i10 < this.f46622f.size(); i10++) {
            abstractC5322Ie.b(999, (InterfaceC8095kW) this.f46622f.get(i10));
        }
        while (entry != null && ((C5685Ol) entry.getKey()).f43017c.f39995d < 536870912) {
            C5476Kw.a((C5685Ol) entry.getKey(), entry.getValue(), abstractC5322Ie);
            entry = c9754uR.hasNext() ? (Map.Entry) c9754uR.next() : null;
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f46617h;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C6259Yk((C7011dz) interfaceC7512gz);
    }

    public C6470al() {
        this.f46623g = (byte) -1;
        this.f46621e = 0;
        this.f46622f = Collections.EMPTY_LIST;
    }
}
