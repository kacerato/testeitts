package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;

public final class C7969jl extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C7969jl f49333g = new C7969jl();

    public static final C7637hl f49334h = new C7637hl();

    public int f49335b;

    public volatile Serializable f49336c;

    public List f49337d;

    public C8470ml f49338e;

    public byte f49339f;

    public C7969jl(C7803il c7803il) {
        super(c7803il);
        this.f49339f = (byte) -1;
    }

    public final boolean a() {
        return (this.f49335b & 2) != 0;
    }

    @Override
    public final C7803il toBuilder() {
        return this == f49333g ? new C7803il() : new C7803il().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7969jl)) {
            return super.equals(obj);
        }
        C7969jl c7969jl = (C7969jl) obj;
        int i10 = this.f49335b & 1;
        if ((i10 != 0) != ((c7969jl.f49335b & 1) != 0)) {
            return false;
        }
        if ((i10 != 0 && !getName().equals(c7969jl.getName())) || !this.f49337d.equals(c7969jl.f49337d) || a() != c7969jl.a()) {
            return false;
        }
        if (a()) {
            C8470ml c8470ml = this.f49338e;
            if (c8470ml == null) {
                c8470ml = C8470ml.f50412g;
            }
            C8470ml c8470ml2 = c7969jl.f49338e;
            if (c8470ml2 == null) {
                c8470ml2 = C8470ml.f50412g;
            }
            if (!c8470ml.equals(c8470ml2)) {
                return false;
            }
        }
        return this.unknownFields.equals(c7969jl.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f49333g;
    }

    public final String getName() {
        Serializable serializable = this.f49336c;
        if (serializable instanceof String) {
            return (String) serializable;
        }
        AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
        String c10 = abstractC8373m8.c();
        if (abstractC8373m8.a()) {
            this.f49336c = c10;
        }
        return c10;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = (this.f49335b & 1) != 0 ? AbstractC10181wz.computeStringSize(1, this.f49336c) : 0;
        for (int i11 = 0; i11 < this.f49337d.size(); i11++) {
            computeStringSize += AbstractC5322Ie.a(2, (InterfaceC8095kW) this.f49337d.get(i11));
        }
        if ((this.f49335b & 2) != 0) {
            C8470ml c8470ml = this.f49338e;
            if (c8470ml == null) {
                c8470ml = C8470ml.f50412g;
            }
            computeStringSize += AbstractC5322Ie.a(3, c8470ml);
        }
        int serializedSize = this.unknownFields.getSerializedSize() + computeStringSize;
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
        int hashCode = AbstractC10640zl.f54526u.hashCode() + 779;
        if ((this.f49335b & 1) != 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + getName().hashCode();
        }
        if (this.f49337d.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 2, 53) + this.f49337d.hashCode();
        }
        if (a()) {
            int a10 = AbstractC9124qg0.a(hashCode, 37, 3, 53);
            C8470ml c8470ml = this.f49338e;
            if (c8470ml == null) {
                c8470ml = C8470ml.f50412g;
            }
            hashCode = a10 + c8470ml.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + (hashCode * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54527v.a(C7969jl.class, C7803il.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f49339f;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int i10 = 0; i10 < this.f49337d.size(); i10++) {
            if (!((C6145Wk) this.f49337d.get(i10)).isInitialized()) {
                this.f49339f = (byte) 0;
                return false;
            }
        }
        if (a()) {
            C8470ml c8470ml = this.f49338e;
            if (c8470ml == null) {
                c8470ml = C8470ml.f50412g;
            }
            if (!c8470ml.isInitialized()) {
                this.f49339f = (byte) 0;
                return false;
            }
        }
        this.f49339f = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f49333g.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if ((this.f49335b & 1) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 1, this.f49336c);
        }
        for (int i10 = 0; i10 < this.f49337d.size(); i10++) {
            abstractC5322Ie.b(2, (InterfaceC8095kW) this.f49337d.get(i10));
        }
        if ((this.f49335b & 2) != 0) {
            C8470ml c8470ml = this.f49338e;
            if (c8470ml == null) {
                c8470ml = C8470ml.f50412g;
            }
            abstractC5322Ie.b(3, c8470ml);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f49333g;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C7803il((C7011dz) interfaceC7512gz);
    }

    public C7969jl() {
        this.f49339f = (byte) -1;
        this.f49336c = "";
        this.f49337d = Collections.EMPTY_LIST;
    }
}
