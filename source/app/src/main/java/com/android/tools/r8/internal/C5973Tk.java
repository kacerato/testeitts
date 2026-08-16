package com.android.tools.r8.internal;

import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class C5973Tk extends AbstractC7844iz {

    public static final C5973Tk f44563j = new C5973Tk();

    public static final C5857Rk f44564k = new C5857Rk();

    public int f44565c;

    public boolean f44566d;

    public boolean f44567e;

    public boolean f44568f;

    public boolean f44569g;

    public List f44570h;

    public byte f44571i;

    public C5973Tk(C5915Sk c5915Sk) {
        super(c5915Sk);
        this.f44571i = (byte) -1;
    }

    @Override
    public final C5915Sk toBuilder() {
        return this == f44563j ? new C5915Sk() : new C5915Sk().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5973Tk)) {
            return super.equals(obj);
        }
        C5973Tk c5973Tk = (C5973Tk) obj;
        int i10 = this.f44565c;
        int i11 = i10 & 1;
        boolean z10 = i11 != 0;
        int i12 = c5973Tk.f44565c;
        if (z10 != ((i12 & 1) != 0)) {
            return false;
        }
        if (i11 != 0 && this.f44566d != c5973Tk.f44566d) {
            return false;
        }
        int i13 = i10 & 2;
        if ((i13 != 0) != ((i12 & 2) != 0)) {
            return false;
        }
        if (i13 != 0 && this.f44567e != c5973Tk.f44567e) {
            return false;
        }
        int i14 = i10 & 4;
        if ((i14 != 0) != ((i12 & 4) != 0)) {
            return false;
        }
        if (i14 != 0 && this.f44568f != c5973Tk.f44568f) {
            return false;
        }
        int i15 = i10 & 8;
        if ((i15 != 0) != ((i12 & 8) != 0)) {
            return false;
        }
        return (i15 == 0 || this.f44569g == c5973Tk.f44569g) && this.f44570h.equals(c5973Tk.f44570h) && this.unknownFields.equals(c5973Tk.unknownFields) && this.f49135b.a().equals(c5973Tk.f49135b.a());
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f44563j;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int b10 = (this.f44565c & 1) != 0 ? AbstractC5322Ie.b(1) + 1 : 0;
        if ((this.f44565c & 2) != 0) {
            b10 = AbstractC8292lh0.a(2, 1, b10);
        }
        if ((this.f44565c & 4) != 0) {
            b10 = AbstractC8292lh0.a(3, 1, b10);
        }
        if ((this.f44565c & 8) != 0) {
            b10 = AbstractC8292lh0.a(7, 1, b10);
        }
        for (int i11 = 0; i11 < this.f44570h.size(); i11++) {
            b10 += AbstractC5322Ie.a(999, (InterfaceC8095kW) this.f44570h.get(i11));
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
        int hashCode = AbstractC10640zl.f54484A.hashCode() + 779;
        int i11 = this.f44565c;
        if ((i11 & 1) != 0) {
            int a10 = AbstractC9124qg0.a(hashCode, 37, 1, 53);
            boolean z10 = this.f44566d;
            Charset charset = YI.f45964a;
            hashCode = a10 + (z10 ? 1231 : 1237);
        }
        if ((i11 & 2) != 0) {
            int a11 = AbstractC9124qg0.a(hashCode, 37, 2, 53);
            boolean z11 = this.f44567e;
            Charset charset2 = YI.f45964a;
            hashCode = a11 + (z11 ? 1231 : 1237);
        }
        if ((i11 & 4) != 0) {
            int a12 = AbstractC9124qg0.a(hashCode, 37, 3, 53);
            boolean z12 = this.f44568f;
            Charset charset3 = YI.f45964a;
            hashCode = a12 + (z12 ? 1231 : 1237);
        }
        if ((i11 & 8) != 0) {
            int a13 = AbstractC9124qg0.a(hashCode, 37, 7, 53);
            boolean z13 = this.f44569g;
            Charset charset4 = YI.f45964a;
            hashCode = a13 + (z13 ? 1231 : 1237);
        }
        if (this.f44570h.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 999, 53) + this.f44570h.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + (K0.hashFields(hashCode, this.f49135b.a()) * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54485B.a(C5973Tk.class, C5915Sk.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f44571i;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int i10 = 0; i10 < this.f44570h.size(); i10++) {
            if (!((C10473yl) this.f44570h.get(i10)).isInitialized()) {
                this.f44571i = (byte) 0;
                return false;
            }
        }
        if (this.f49135b.c()) {
            this.f44571i = (byte) 1;
            return true;
        }
        this.f44571i = (byte) 0;
        return false;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f44563j.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        C5476Kw c5476Kw = this.f49135b;
        Iterator c9754uR = c5476Kw.f41823c ? new C9754uR(new C7310fn0(((C7644hn0) c5476Kw.f41821a.entrySet()).f48714b)) : new C7310fn0(((C7644hn0) c5476Kw.f41821a.entrySet()).f48714b);
        Map.Entry entry = c9754uR.hasNext() ? (Map.Entry) c9754uR.next() : null;
        if ((this.f44565c & 1) != 0) {
            abstractC5322Ie.a(1, this.f44566d);
        }
        if ((this.f44565c & 2) != 0) {
            abstractC5322Ie.a(2, this.f44567e);
        }
        if ((this.f44565c & 4) != 0) {
            abstractC5322Ie.a(3, this.f44568f);
        }
        if ((this.f44565c & 8) != 0) {
            abstractC5322Ie.a(7, this.f44569g);
        }
        for (int i10 = 0; i10 < this.f44570h.size(); i10++) {
            abstractC5322Ie.b(999, (InterfaceC8095kW) this.f44570h.get(i10));
        }
        while (entry != null && ((C5685Ol) entry.getKey()).f43017c.f39995d < 536870912) {
            C5476Kw.a((C5685Ol) entry.getKey(), entry.getValue(), abstractC5322Ie);
            entry = c9754uR.hasNext() ? (Map.Entry) c9754uR.next() : null;
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f44563j;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C5915Sk((C7011dz) interfaceC7512gz);
    }

    public C5973Tk() {
        this.f44571i = (byte) -1;
        this.f44570h = Collections.EMPTY_LIST;
    }
}
