package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;

public final class C7634hk extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C7634hk f48689n = new C7634hk();

    public static final C6314Zj f48690o = new C6314Zj();

    public int f48691b;

    public volatile Serializable f48692c;

    public List f48693d;

    public List f48694e;

    public List f48695f;

    public List f48696g;

    public List f48697h;

    public List f48698i;

    public C5973Tk f48699j;

    public List f48700k;

    public InterfaceC10589zR f48701l;

    public byte f48702m;

    public C7634hk(C6467ak c6467ak) {
        super(c6467ak);
        this.f48702m = (byte) -1;
    }

    public final boolean a() {
        return (this.f48691b & 2) != 0;
    }

    @Override
    public final C6467ak toBuilder() {
        return this == f48689n ? new C6467ak() : new C6467ak().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7634hk)) {
            return super.equals(obj);
        }
        C7634hk c7634hk = (C7634hk) obj;
        int i10 = this.f48691b & 1;
        if ((i10 != 0) != ((c7634hk.f48691b & 1) != 0)) {
            return false;
        }
        if ((i10 != 0 && !getName().equals(c7634hk.getName())) || !this.f48693d.equals(c7634hk.f48693d) || !this.f48694e.equals(c7634hk.f48694e) || !this.f48695f.equals(c7634hk.f48695f) || !this.f48696g.equals(c7634hk.f48696g) || !this.f48697h.equals(c7634hk.f48697h) || !this.f48698i.equals(c7634hk.f48698i) || a() != c7634hk.a()) {
            return false;
        }
        if (a()) {
            C5973Tk c5973Tk = this.f48699j;
            if (c5973Tk == null) {
                c5973Tk = C5973Tk.f44563j;
            }
            C5973Tk c5973Tk2 = c7634hk.f48699j;
            if (c5973Tk2 == null) {
                c5973Tk2 = C5973Tk.f44563j;
            }
            if (!c5973Tk.equals(c5973Tk2)) {
                return false;
            }
        }
        return this.f48700k.equals(c7634hk.f48700k) && this.f48701l.equals(c7634hk.f48701l) && this.unknownFields.equals(c7634hk.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f48689n;
    }

    public final String getName() {
        Serializable serializable = this.f48692c;
        if (serializable instanceof String) {
            return (String) serializable;
        }
        AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
        String c10 = abstractC8373m8.c();
        if (abstractC8373m8.a()) {
            this.f48692c = c10;
        }
        return c10;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = (this.f48691b & 1) != 0 ? AbstractC10181wz.computeStringSize(1, this.f48692c) : 0;
        for (int i11 = 0; i11 < this.f48693d.size(); i11++) {
            computeStringSize += AbstractC5322Ie.a(2, (InterfaceC8095kW) this.f48693d.get(i11));
        }
        for (int i12 = 0; i12 < this.f48695f.size(); i12++) {
            computeStringSize += AbstractC5322Ie.a(3, (InterfaceC8095kW) this.f48695f.get(i12));
        }
        for (int i13 = 0; i13 < this.f48696g.size(); i13++) {
            computeStringSize += AbstractC5322Ie.a(4, (InterfaceC8095kW) this.f48696g.get(i13));
        }
        for (int i14 = 0; i14 < this.f48697h.size(); i14++) {
            computeStringSize += AbstractC5322Ie.a(5, (InterfaceC8095kW) this.f48697h.get(i14));
        }
        for (int i15 = 0; i15 < this.f48694e.size(); i15++) {
            computeStringSize += AbstractC5322Ie.a(6, (InterfaceC8095kW) this.f48694e.get(i15));
        }
        if ((this.f48691b & 2) != 0) {
            C5973Tk c5973Tk = this.f48699j;
            if (c5973Tk == null) {
                c5973Tk = C5973Tk.f44563j;
            }
            computeStringSize += AbstractC5322Ie.a(7, c5973Tk);
        }
        for (int i16 = 0; i16 < this.f48698i.size(); i16++) {
            computeStringSize += AbstractC5322Ie.a(8, (InterfaceC8095kW) this.f48698i.get(i16));
        }
        for (int i17 = 0; i17 < this.f48700k.size(); i17++) {
            computeStringSize += AbstractC5322Ie.a(9, (InterfaceC8095kW) this.f48700k.get(i17));
        }
        int i18 = 0;
        for (int i19 = 0; i19 < this.f48701l.size(); i19++) {
            i18 += AbstractC10181wz.computeStringSizeNoTag(this.f48701l.g(i19));
        }
        int serializedSize = this.unknownFields.getSerializedSize() + this.f48701l.size() + computeStringSize + i18;
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
        int hashCode = AbstractC10640zl.f54508c.hashCode() + 779;
        if ((this.f48691b & 1) != 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + getName().hashCode();
        }
        if (this.f48693d.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 2, 53) + this.f48693d.hashCode();
        }
        if (this.f48694e.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 6, 53) + this.f48694e.hashCode();
        }
        if (this.f48695f.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 3, 53) + this.f48695f.hashCode();
        }
        if (this.f48696g.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 4, 53) + this.f48696g.hashCode();
        }
        if (this.f48697h.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 5, 53) + this.f48697h.hashCode();
        }
        if (this.f48698i.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 8, 53) + this.f48698i.hashCode();
        }
        if (a()) {
            int a10 = AbstractC9124qg0.a(hashCode, 37, 7, 53);
            C5973Tk c5973Tk = this.f48699j;
            if (c5973Tk == null) {
                c5973Tk = C5973Tk.f44563j;
            }
            hashCode = a10 + c5973Tk.hashCode();
        }
        if (this.f48700k.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 9, 53) + this.f48700k.hashCode();
        }
        if (this.f48701l.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 10, 53) + this.f48701l.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + (hashCode * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54509d.a(C7634hk.class, C6467ak.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f48702m;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int i10 = 0; i10 < this.f48693d.size(); i10++) {
            if (!((C5104Ek) this.f48693d.get(i10)).isInitialized()) {
                this.f48702m = (byte) 0;
                return false;
            }
        }
        for (int i11 = 0; i11 < this.f48694e.size(); i11++) {
            if (!((C5104Ek) this.f48694e.get(i11)).isInitialized()) {
                this.f48702m = (byte) 0;
                return false;
            }
        }
        for (int i12 = 0; i12 < this.f48695f.size(); i12++) {
            if (!((C7634hk) this.f48695f.get(i12)).isInitialized()) {
                this.f48702m = (byte) 0;
                return false;
            }
        }
        for (int i13 = 0; i13 < this.f48696g.size(); i13++) {
            if (!((C8634nk) this.f48696g.get(i13)).isInitialized()) {
                this.f48702m = (byte) 0;
                return false;
            }
        }
        for (int i14 = 0; i14 < this.f48697h.size(); i14++) {
            if (!((C6967dk) this.f48697h.get(i14)).isInitialized()) {
                this.f48702m = (byte) 0;
                return false;
            }
        }
        for (int i15 = 0; i15 < this.f48698i.size(); i15++) {
            if (!((C6970dl) this.f48698i.get(i15)).isInitialized()) {
                this.f48702m = (byte) 0;
                return false;
            }
        }
        if (a()) {
            C5973Tk c5973Tk = this.f48699j;
            if (c5973Tk == null) {
                c5973Tk = C5973Tk.f44563j;
            }
            if (!c5973Tk.isInitialized()) {
                this.f48702m = (byte) 0;
                return false;
            }
        }
        this.f48702m = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f48689n.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if ((this.f48691b & 1) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 1, this.f48692c);
        }
        for (int i10 = 0; i10 < this.f48693d.size(); i10++) {
            abstractC5322Ie.b(2, (InterfaceC8095kW) this.f48693d.get(i10));
        }
        for (int i11 = 0; i11 < this.f48695f.size(); i11++) {
            abstractC5322Ie.b(3, (InterfaceC8095kW) this.f48695f.get(i11));
        }
        for (int i12 = 0; i12 < this.f48696g.size(); i12++) {
            abstractC5322Ie.b(4, (InterfaceC8095kW) this.f48696g.get(i12));
        }
        for (int i13 = 0; i13 < this.f48697h.size(); i13++) {
            abstractC5322Ie.b(5, (InterfaceC8095kW) this.f48697h.get(i13));
        }
        for (int i14 = 0; i14 < this.f48694e.size(); i14++) {
            abstractC5322Ie.b(6, (InterfaceC8095kW) this.f48694e.get(i14));
        }
        if ((this.f48691b & 2) != 0) {
            C5973Tk c5973Tk = this.f48699j;
            if (c5973Tk == null) {
                c5973Tk = C5973Tk.f44563j;
            }
            abstractC5322Ie.b(7, c5973Tk);
        }
        for (int i15 = 0; i15 < this.f48698i.size(); i15++) {
            abstractC5322Ie.b(8, (InterfaceC8095kW) this.f48698i.get(i15));
        }
        for (int i16 = 0; i16 < this.f48700k.size(); i16++) {
            abstractC5322Ie.b(9, (InterfaceC8095kW) this.f48700k.get(i16));
        }
        for (int i17 = 0; i17 < this.f48701l.size(); i17++) {
            AbstractC10181wz.writeString(abstractC5322Ie, 10, this.f48701l.g(i17));
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f48689n;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C6467ak((C7011dz) interfaceC7512gz);
    }

    public C7634hk() {
        this.f48702m = (byte) -1;
        this.f48692c = "";
        List list = Collections.EMPTY_LIST;
        this.f48693d = list;
        this.f48694e = list;
        this.f48695f = list;
        this.f48696g = list;
        this.f48697h = list;
        this.f48698i = list;
        this.f48700k = list;
        this.f48701l = C10255xR.f53759d;
    }
}
