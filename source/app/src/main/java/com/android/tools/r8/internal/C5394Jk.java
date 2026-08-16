package com.android.tools.r8.internal;

import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class C5394Jk extends AbstractC7844iz {

    public static final C5394Jk f41478l = new C5394Jk();

    public static final C5162Fk f41479m = new C5162Fk();

    public int f41480c;

    public int f41481d;

    public boolean f41482e;

    public int f41483f;

    public boolean f41484g;

    public boolean f41485h;

    public boolean f41486i;

    public List f41487j;

    public byte f41488k;

    public C5394Jk(C5220Gk c5220Gk) {
        super(c5220Gk);
        this.f41488k = (byte) -1;
    }

    public final boolean a() {
        return (this.f41480c & 2) != 0;
    }

    @Override
    public final C5220Gk toBuilder() {
        return this == f41478l ? new C5220Gk() : new C5220Gk().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5394Jk)) {
            return super.equals(obj);
        }
        C5394Jk c5394Jk = (C5394Jk) obj;
        int i10 = this.f41480c & 1;
        if ((i10 != 0) != ((c5394Jk.f41480c & 1) != 0)) {
            return false;
        }
        if ((i10 != 0 && this.f41481d != c5394Jk.f41481d) || a() != c5394Jk.a()) {
            return false;
        }
        if (a() && this.f41482e != c5394Jk.f41482e) {
            return false;
        }
        int i11 = this.f41480c;
        int i12 = i11 & 4;
        boolean z10 = i12 != 0;
        int i13 = c5394Jk.f41480c;
        if (z10 != ((i13 & 4) != 0)) {
            return false;
        }
        if (i12 != 0 && this.f41483f != c5394Jk.f41483f) {
            return false;
        }
        int i14 = i11 & 8;
        if ((i14 != 0) != ((i13 & 8) != 0)) {
            return false;
        }
        if (i14 != 0 && this.f41484g != c5394Jk.f41484g) {
            return false;
        }
        int i15 = i11 & 16;
        if ((i15 != 0) != ((i13 & 16) != 0)) {
            return false;
        }
        if (i15 != 0 && this.f41485h != c5394Jk.f41485h) {
            return false;
        }
        int i16 = i11 & 32;
        if ((i16 != 0) != ((i13 & 32) != 0)) {
            return false;
        }
        return (i16 == 0 || this.f41486i == c5394Jk.f41486i) && this.f41487j.equals(c5394Jk.f41487j) && this.unknownFields.equals(c5394Jk.unknownFields) && this.f49135b.a().equals(c5394Jk.f49135b.a());
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f41478l;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int a10 = (this.f41480c & 1) != 0 ? AbstractC5322Ie.a(this.f41481d) + AbstractC5322Ie.b(1) : 0;
        if ((this.f41480c & 2) != 0) {
            a10 = AbstractC8292lh0.a(2, 1, a10);
        }
        if ((this.f41480c & 16) != 0) {
            a10 = AbstractC8292lh0.a(3, 1, a10);
        }
        if ((this.f41480c & 8) != 0) {
            a10 = AbstractC8292lh0.a(5, 1, a10);
        }
        if ((this.f41480c & 4) != 0) {
            a10 = AbstractC5502Lg.a(this.f41483f, AbstractC5322Ie.b(6), a10);
        }
        if ((this.f41480c & 32) != 0) {
            a10 = AbstractC8292lh0.a(10, 1, a10);
        }
        for (int i11 = 0; i11 < this.f41487j.size(); i11++) {
            a10 += AbstractC5322Ie.a(999, (InterfaceC8095kW) this.f41487j.get(i11));
        }
        int serializedSize = this.unknownFields.getSerializedSize() + this.f49135b.b() + a10;
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
        int hashCode = AbstractC10640zl.f54486C.hashCode() + 779;
        if ((this.f41480c & 1) != 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + this.f41481d;
        }
        if (a()) {
            int a10 = AbstractC9124qg0.a(hashCode, 37, 2, 53);
            boolean z10 = this.f41482e;
            Charset charset = YI.f45964a;
            hashCode = a10 + (z10 ? 1231 : 1237);
        }
        int i11 = this.f41480c;
        if ((i11 & 4) != 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 6, 53) + this.f41483f;
        }
        if ((i11 & 8) != 0) {
            int a11 = AbstractC9124qg0.a(hashCode, 37, 5, 53);
            boolean z11 = this.f41484g;
            Charset charset2 = YI.f45964a;
            hashCode = a11 + (z11 ? 1231 : 1237);
        }
        if ((i11 & 16) != 0) {
            int a12 = AbstractC9124qg0.a(hashCode, 37, 3, 53);
            boolean z12 = this.f41485h;
            Charset charset3 = YI.f45964a;
            hashCode = a12 + (z12 ? 1231 : 1237);
        }
        if ((i11 & 32) != 0) {
            int a13 = AbstractC9124qg0.a(hashCode, 37, 10, 53);
            boolean z13 = this.f41486i;
            Charset charset4 = YI.f45964a;
            hashCode = a13 + (z13 ? 1231 : 1237);
        }
        if (this.f41487j.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 999, 53) + this.f41487j.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + (K0.hashFields(hashCode, this.f49135b.a()) * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54487D.a(C5394Jk.class, C5220Gk.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f41488k;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int i10 = 0; i10 < this.f41487j.size(); i10++) {
            if (!((C10473yl) this.f41487j.get(i10)).isInitialized()) {
                this.f41488k = (byte) 0;
                return false;
            }
        }
        if (this.f49135b.c()) {
            this.f41488k = (byte) 1;
            return true;
        }
        this.f41488k = (byte) 0;
        return false;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f41478l.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        C5476Kw c5476Kw = this.f49135b;
        Iterator c9754uR = c5476Kw.f41823c ? new C9754uR(new C7310fn0(((C7644hn0) c5476Kw.f41821a.entrySet()).f48714b)) : new C7310fn0(((C7644hn0) c5476Kw.f41821a.entrySet()).f48714b);
        Map.Entry entry = c9754uR.hasNext() ? (Map.Entry) c9754uR.next() : null;
        if ((this.f41480c & 1) != 0) {
            abstractC5322Ie.c(1, this.f41481d);
        }
        if ((this.f41480c & 2) != 0) {
            abstractC5322Ie.a(2, this.f41482e);
        }
        if ((this.f41480c & 16) != 0) {
            abstractC5322Ie.a(3, this.f41485h);
        }
        if ((this.f41480c & 8) != 0) {
            abstractC5322Ie.a(5, this.f41484g);
        }
        if ((this.f41480c & 4) != 0) {
            abstractC5322Ie.c(6, this.f41483f);
        }
        if ((this.f41480c & 32) != 0) {
            abstractC5322Ie.a(10, this.f41486i);
        }
        for (int i10 = 0; i10 < this.f41487j.size(); i10++) {
            abstractC5322Ie.b(999, (InterfaceC8095kW) this.f41487j.get(i10));
        }
        while (entry != null && ((C5685Ol) entry.getKey()).f43017c.f39995d < 536870912) {
            C5476Kw.a((C5685Ol) entry.getKey(), entry.getValue(), abstractC5322Ie);
            entry = c9754uR.hasNext() ? (Map.Entry) c9754uR.next() : null;
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f41478l;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C5220Gk((C7011dz) interfaceC7512gz);
    }

    public C5394Jk() {
        this.f41488k = (byte) -1;
        this.f41481d = 0;
        this.f41483f = 0;
        this.f41487j = Collections.EMPTY_LIST;
    }
}
