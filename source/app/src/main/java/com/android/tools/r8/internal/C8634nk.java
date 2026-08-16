package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;

public final class C8634nk extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C8634nk f51054i = new C8634nk();

    public static final C7800ik f51055j = new C7800ik();

    public int f51056b;

    public volatile Serializable f51057c;

    public List f51058d;

    public C9135qk f51059e;

    public List f51060f;

    public InterfaceC10589zR f51061g;

    public byte f51062h;

    public C8634nk(C7966jk c7966jk) {
        super(c7966jk);
        this.f51062h = (byte) -1;
    }

    public final boolean a() {
        return (this.f51056b & 2) != 0;
    }

    @Override
    public final C7966jk toBuilder() {
        return this == f51054i ? new C7966jk() : new C7966jk().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8634nk)) {
            return super.equals(obj);
        }
        C8634nk c8634nk = (C8634nk) obj;
        int i10 = this.f51056b & 1;
        if ((i10 != 0) != ((c8634nk.f51056b & 1) != 0)) {
            return false;
        }
        if ((i10 != 0 && !getName().equals(c8634nk.getName())) || !this.f51058d.equals(c8634nk.f51058d) || a() != c8634nk.a()) {
            return false;
        }
        if (a()) {
            C9135qk c9135qk = this.f51059e;
            if (c9135qk == null) {
                c9135qk = C9135qk.f51867h;
            }
            C9135qk c9135qk2 = c8634nk.f51059e;
            if (c9135qk2 == null) {
                c9135qk2 = C9135qk.f51867h;
            }
            if (!c9135qk.equals(c9135qk2)) {
                return false;
            }
        }
        return this.f51060f.equals(c8634nk.f51060f) && this.f51061g.equals(c8634nk.f51061g) && this.unknownFields.equals(c8634nk.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f51054i;
    }

    public final String getName() {
        Serializable serializable = this.f51057c;
        if (serializable instanceof String) {
            return (String) serializable;
        }
        AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
        String c10 = abstractC8373m8.c();
        if (abstractC8373m8.a()) {
            this.f51057c = c10;
        }
        return c10;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = (this.f51056b & 1) != 0 ? AbstractC10181wz.computeStringSize(1, this.f51057c) : 0;
        for (int i11 = 0; i11 < this.f51058d.size(); i11++) {
            computeStringSize += AbstractC5322Ie.a(2, (InterfaceC8095kW) this.f51058d.get(i11));
        }
        if ((this.f51056b & 2) != 0) {
            C9135qk c9135qk = this.f51059e;
            if (c9135qk == null) {
                c9135qk = C9135qk.f51867h;
            }
            computeStringSize += AbstractC5322Ie.a(3, c9135qk);
        }
        for (int i12 = 0; i12 < this.f51060f.size(); i12++) {
            computeStringSize += AbstractC5322Ie.a(4, (InterfaceC8095kW) this.f51060f.get(i12));
        }
        int i13 = 0;
        for (int i14 = 0; i14 < this.f51061g.size(); i14++) {
            i13 += AbstractC10181wz.computeStringSizeNoTag(this.f51061g.g(i14));
        }
        int serializedSize = this.unknownFields.getSerializedSize() + this.f51061g.size() + computeStringSize + i13;
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
        int hashCode = AbstractC10640zl.f54520o.hashCode() + 779;
        if ((this.f51056b & 1) != 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + getName().hashCode();
        }
        if (this.f51058d.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 2, 53) + this.f51058d.hashCode();
        }
        if (a()) {
            int a10 = AbstractC9124qg0.a(hashCode, 37, 3, 53);
            C9135qk c9135qk = this.f51059e;
            if (c9135qk == null) {
                c9135qk = C9135qk.f51867h;
            }
            hashCode = a10 + c9135qk.hashCode();
        }
        if (this.f51060f.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 4, 53) + this.f51060f.hashCode();
        }
        if (this.f51061g.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 5, 53) + this.f51061g.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + (hashCode * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54521p.a(C8634nk.class, C7966jk.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f51062h;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int i10 = 0; i10 < this.f51058d.size(); i10++) {
            if (!((C9635tk) this.f51058d.get(i10)).isInitialized()) {
                this.f51062h = (byte) 0;
                return false;
            }
        }
        if (a()) {
            C9135qk c9135qk = this.f51059e;
            if (c9135qk == null) {
                c9135qk = C9135qk.f51867h;
            }
            if (!c9135qk.isInitialized()) {
                this.f51062h = (byte) 0;
                return false;
            }
        }
        this.f51062h = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f51054i.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if ((this.f51056b & 1) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 1, this.f51057c);
        }
        for (int i10 = 0; i10 < this.f51058d.size(); i10++) {
            abstractC5322Ie.b(2, (InterfaceC8095kW) this.f51058d.get(i10));
        }
        if ((this.f51056b & 2) != 0) {
            C9135qk c9135qk = this.f51059e;
            if (c9135qk == null) {
                c9135qk = C9135qk.f51867h;
            }
            abstractC5322Ie.b(3, c9135qk);
        }
        for (int i11 = 0; i11 < this.f51060f.size(); i11++) {
            abstractC5322Ie.b(4, (InterfaceC8095kW) this.f51060f.get(i11));
        }
        for (int i12 = 0; i12 < this.f51061g.size(); i12++) {
            AbstractC10181wz.writeString(abstractC5322Ie, 5, this.f51061g.g(i12));
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f51054i;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C7966jk((C7011dz) interfaceC7512gz);
    }

    public C8634nk() {
        this.f51062h = (byte) -1;
        this.f51057c = "";
        List list = Collections.EMPTY_LIST;
        this.f51058d = list;
        this.f51060f = list;
        this.f51061g = C10255xR.f53759d;
    }
}
