package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;
import java.util.logging.Logger;

public final class C5567Mk extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C5567Mk f42360p = new C5567Mk();

    public static final C5452Kk f42361q = new C5452Kk();

    public int f42362b;

    public volatile Serializable f42363c;

    public volatile Serializable f42364d;

    public InterfaceC10589zR f42365e;

    public TI f42366f;

    public TI f42367g;

    public List f42368h;

    public List f42369i;

    public List f42370j;

    public List f42371k;

    public C5799Qk f42372l;

    public C9471sl f42373m;

    public volatile Serializable f42374n;

    public byte f42375o;

    public C5567Mk(C5510Lk c5510Lk) {
        super(c5510Lk);
        this.f42375o = (byte) -1;
    }

    public final String a() {
        Serializable serializable = this.f42364d;
        if (serializable instanceof String) {
            return (String) serializable;
        }
        AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
        String c10 = abstractC8373m8.c();
        if (abstractC8373m8.a()) {
            this.f42364d = c10;
        }
        return c10;
    }

    public final boolean b() {
        return (this.f42362b & 4) != 0;
    }

    @Override
    public final C5510Lk toBuilder() {
        return this == f42360p ? new C5510Lk() : new C5510Lk().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5567Mk)) {
            return super.equals(obj);
        }
        C5567Mk c5567Mk = (C5567Mk) obj;
        int i10 = this.f42362b & 1;
        if ((i10 != 0) != ((c5567Mk.f42362b & 1) != 0)) {
            return false;
        }
        if (i10 != 0 && !getName().equals(c5567Mk.getName())) {
            return false;
        }
        int i11 = this.f42362b & 2;
        if ((i11 != 0) != ((c5567Mk.f42362b & 2) != 0)) {
            return false;
        }
        if ((i11 != 0 && !a().equals(c5567Mk.a())) || !this.f42365e.equals(c5567Mk.f42365e)) {
            return false;
        }
        if (!((DH) this.f42366f).equals(c5567Mk.f42366f)) {
            return false;
        }
        if (!((DH) this.f42367g).equals(c5567Mk.f42367g) || !this.f42368h.equals(c5567Mk.f42368h) || !this.f42369i.equals(c5567Mk.f42369i) || !this.f42370j.equals(c5567Mk.f42370j) || !this.f42371k.equals(c5567Mk.f42371k) || b() != c5567Mk.b()) {
            return false;
        }
        if (b()) {
            C5799Qk c5799Qk = this.f42372l;
            if (c5799Qk == null) {
                c5799Qk = C5799Qk.f43701z;
            }
            C5799Qk c5799Qk2 = c5567Mk.f42372l;
            if (c5799Qk2 == null) {
                c5799Qk2 = C5799Qk.f43701z;
            }
            if (!c5799Qk.equals(c5799Qk2)) {
                return false;
            }
        }
        int i12 = this.f42362b & 8;
        if ((i12 != 0) != ((c5567Mk.f42362b & 8) != 0)) {
            return false;
        }
        if (i12 != 0) {
            C9471sl c9471sl = this.f42373m;
            if (c9471sl == null) {
                c9471sl = C9471sl.f52446d;
            }
            C9471sl c9471sl2 = c5567Mk.f42373m;
            if (c9471sl2 == null) {
                c9471sl2 = C9471sl.f52446d;
            }
            if (!c9471sl.equals(c9471sl2)) {
                return false;
            }
        }
        int i13 = this.f42362b & 16;
        if ((i13 != 0) != ((c5567Mk.f42362b & 16) != 0)) {
            return false;
        }
        if (i13 != 0) {
            Serializable serializable = this.f42374n;
            if (serializable instanceof String) {
                str = (String) serializable;
            } else {
                AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
                String c10 = abstractC8373m8.c();
                if (abstractC8373m8.a()) {
                    this.f42374n = c10;
                }
                str = c10;
            }
            Serializable serializable2 = c5567Mk.f42374n;
            if (serializable2 instanceof String) {
                str2 = (String) serializable2;
            } else {
                AbstractC8373m8 abstractC8373m82 = (AbstractC8373m8) serializable2;
                String c11 = abstractC8373m82.c();
                if (abstractC8373m82.a()) {
                    c5567Mk.f42374n = c11;
                }
                str2 = c11;
            }
            if (!str.equals(str2)) {
                return false;
            }
        }
        return this.unknownFields.equals(c5567Mk.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f42360p;
    }

    public final String getName() {
        Serializable serializable = this.f42363c;
        if (serializable instanceof String) {
            return (String) serializable;
        }
        AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
        String c10 = abstractC8373m8.c();
        if (abstractC8373m8.a()) {
            this.f42363c = c10;
        }
        return c10;
    }

    @Override
    public final int getSerializedSize() {
        int i10;
        int i11;
        int i12;
        int i13 = this.memoizedSize;
        if (i13 != -1) {
            return i13;
        }
        int i14 = 0;
        int computeStringSize = (this.f42362b & 1) != 0 ? AbstractC10181wz.computeStringSize(1, this.f42363c) : 0;
        if ((this.f42362b & 2) != 0) {
            computeStringSize += AbstractC10181wz.computeStringSize(2, this.f42364d);
        }
        int i15 = 0;
        for (int i16 = 0; i16 < this.f42365e.size(); i16++) {
            i15 += AbstractC10181wz.computeStringSizeNoTag(this.f42365e.g(i16));
        }
        int size = this.f42365e.size() + computeStringSize + i15;
        for (int i17 = 0; i17 < this.f42368h.size(); i17++) {
            size += AbstractC5322Ie.a(4, (InterfaceC8095kW) this.f42368h.get(i17));
        }
        for (int i18 = 0; i18 < this.f42369i.size(); i18++) {
            size += AbstractC5322Ie.a(5, (InterfaceC8095kW) this.f42369i.get(i18));
        }
        for (int i19 = 0; i19 < this.f42370j.size(); i19++) {
            size += AbstractC5322Ie.a(6, (InterfaceC8095kW) this.f42370j.get(i19));
        }
        for (int i20 = 0; i20 < this.f42371k.size(); i20++) {
            size += AbstractC5322Ie.a(7, (InterfaceC8095kW) this.f42371k.get(i20));
        }
        if ((this.f42362b & 4) != 0) {
            C5799Qk c5799Qk = this.f42372l;
            if (c5799Qk == null) {
                c5799Qk = C5799Qk.f43701z;
            }
            size += AbstractC5322Ie.a(8, c5799Qk);
        }
        if ((this.f42362b & 8) != 0) {
            C9471sl c9471sl = this.f42373m;
            if (c9471sl == null) {
                c9471sl = C9471sl.f52446d;
            }
            size += AbstractC5322Ie.a(9, c9471sl);
        }
        int i21 = 0;
        int i22 = 0;
        while (true) {
            DH dh2 = (DH) this.f42366f;
            i10 = dh2.f39486d;
            int i23 = 10;
            if (i21 >= i10) {
                break;
            }
            dh2.k(i21);
            int i24 = dh2.f39485c[i21];
            if (i24 >= 0) {
                i23 = AbstractC5322Ie.c(i24);
            } else {
                Logger logger = AbstractC5322Ie.f41156a;
            }
            i22 += i23;
            i21++;
        }
        int i25 = size + i22 + i10;
        int i26 = 0;
        while (true) {
            DH dh3 = (DH) this.f42367g;
            i11 = dh3.f39486d;
            if (i14 >= i11) {
                break;
            }
            dh3.k(i14);
            int i27 = dh3.f39485c[i14];
            if (i27 >= 0) {
                i12 = AbstractC5322Ie.c(i27);
            } else {
                Logger logger2 = AbstractC5322Ie.f41156a;
                i12 = 10;
            }
            i26 += i12;
            i14++;
        }
        int i28 = i25 + i26 + i11;
        if ((this.f42362b & 16) != 0) {
            i28 += AbstractC10181wz.computeStringSize(12, this.f42374n);
        }
        int serializedSize = this.unknownFields.getSerializedSize() + i28;
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override
    public final C9002pv0 getUnknownFields() {
        return this.unknownFields;
    }

    @Override
    public final int hashCode() {
        String str;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = AbstractC10640zl.f54506a.hashCode() + 779;
        if ((this.f42362b & 1) != 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + getName().hashCode();
        }
        if ((this.f42362b & 2) != 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 2, 53) + a().hashCode();
        }
        if (this.f42365e.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 3, 53) + this.f42365e.hashCode();
        }
        DH dh2 = (DH) this.f42366f;
        if (dh2.f39486d > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 10, 53) + dh2.hashCode();
        }
        DH dh3 = (DH) this.f42367g;
        if (dh3.f39486d > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 11, 53) + dh3.hashCode();
        }
        if (this.f42368h.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 4, 53) + this.f42368h.hashCode();
        }
        if (this.f42369i.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 5, 53) + this.f42369i.hashCode();
        }
        if (this.f42370j.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 6, 53) + this.f42370j.hashCode();
        }
        if (this.f42371k.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 7, 53) + this.f42371k.hashCode();
        }
        if (b()) {
            int a10 = AbstractC9124qg0.a(hashCode, 37, 8, 53);
            C5799Qk c5799Qk = this.f42372l;
            if (c5799Qk == null) {
                c5799Qk = C5799Qk.f43701z;
            }
            hashCode = a10 + c5799Qk.hashCode();
        }
        if ((this.f42362b & 8) != 0) {
            int a11 = AbstractC9124qg0.a(hashCode, 37, 9, 53);
            C9471sl c9471sl = this.f42373m;
            if (c9471sl == null) {
                c9471sl = C9471sl.f52446d;
            }
            hashCode = a11 + c9471sl.hashCode();
        }
        if ((this.f42362b & 16) != 0) {
            int a12 = AbstractC9124qg0.a(hashCode, 37, 12, 53);
            Serializable serializable = this.f42374n;
            if (serializable instanceof String) {
                str = (String) serializable;
            } else {
                AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
                String c10 = abstractC8373m8.c();
                if (abstractC8373m8.a()) {
                    this.f42374n = c10;
                }
                str = c10;
            }
            hashCode = a12 + str.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + (hashCode * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54507b.a(C5567Mk.class, C5510Lk.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f42375o;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int i10 = 0; i10 < this.f42368h.size(); i10++) {
            if (!((C7634hk) this.f42368h.get(i10)).isInitialized()) {
                this.f42375o = (byte) 0;
                return false;
            }
        }
        for (int i11 = 0; i11 < this.f42369i.size(); i11++) {
            if (!((C8634nk) this.f42369i.get(i11)).isInitialized()) {
                this.f42375o = (byte) 0;
                return false;
            }
        }
        for (int i12 = 0; i12 < this.f42370j.size(); i12++) {
            if (!((C7969jl) this.f42370j.get(i12)).isInitialized()) {
                this.f42375o = (byte) 0;
                return false;
            }
        }
        for (int i13 = 0; i13 < this.f42371k.size(); i13++) {
            if (!((C5104Ek) this.f42371k.get(i13)).isInitialized()) {
                this.f42375o = (byte) 0;
                return false;
            }
        }
        if (b()) {
            C5799Qk c5799Qk = this.f42372l;
            if (c5799Qk == null) {
                c5799Qk = C5799Qk.f43701z;
            }
            if (!c5799Qk.isInitialized()) {
                this.f42375o = (byte) 0;
                return false;
            }
        }
        this.f42375o = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f42360p.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if ((this.f42362b & 1) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 1, this.f42363c);
        }
        if ((this.f42362b & 2) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 2, this.f42364d);
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.f42365e.size(); i11++) {
            AbstractC10181wz.writeString(abstractC5322Ie, 3, this.f42365e.g(i11));
        }
        for (int i12 = 0; i12 < this.f42368h.size(); i12++) {
            abstractC5322Ie.b(4, (InterfaceC8095kW) this.f42368h.get(i12));
        }
        for (int i13 = 0; i13 < this.f42369i.size(); i13++) {
            abstractC5322Ie.b(5, (InterfaceC8095kW) this.f42369i.get(i13));
        }
        for (int i14 = 0; i14 < this.f42370j.size(); i14++) {
            abstractC5322Ie.b(6, (InterfaceC8095kW) this.f42370j.get(i14));
        }
        for (int i15 = 0; i15 < this.f42371k.size(); i15++) {
            abstractC5322Ie.b(7, (InterfaceC8095kW) this.f42371k.get(i15));
        }
        if ((this.f42362b & 4) != 0) {
            C5799Qk c5799Qk = this.f42372l;
            if (c5799Qk == null) {
                c5799Qk = C5799Qk.f43701z;
            }
            abstractC5322Ie.b(8, c5799Qk);
        }
        if ((this.f42362b & 8) != 0) {
            C9471sl c9471sl = this.f42373m;
            if (c9471sl == null) {
                c9471sl = C9471sl.f52446d;
            }
            abstractC5322Ie.b(9, c9471sl);
        }
        int i16 = 0;
        while (true) {
            DH dh2 = (DH) this.f42366f;
            if (i16 >= dh2.f39486d) {
                break;
            }
            dh2.k(i16);
            abstractC5322Ie.c(10, dh2.f39485c[i16]);
            i16++;
        }
        while (true) {
            DH dh3 = (DH) this.f42367g;
            if (i10 >= dh3.f39486d) {
                break;
            }
            dh3.k(i10);
            abstractC5322Ie.c(11, dh3.f39485c[i10]);
            i10++;
        }
        if ((this.f42362b & 16) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 12, this.f42374n);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f42360p;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C5510Lk((C7011dz) interfaceC7512gz);
    }

    public C5567Mk() {
        this.f42375o = (byte) -1;
        this.f42363c = "";
        this.f42364d = "";
        this.f42365e = C10255xR.f53759d;
        this.f42366f = AbstractC10181wz.emptyIntList();
        this.f42367g = AbstractC10181wz.emptyIntList();
        List list = Collections.EMPTY_LIST;
        this.f42368h = list;
        this.f42369i = list;
        this.f42370j = list;
        this.f42371k = list;
        this.f42374n = "";
    }
}
