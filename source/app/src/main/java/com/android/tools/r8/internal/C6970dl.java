package com.android.tools.r8.internal;

import java.io.Serializable;

public final class C6970dl extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C6970dl f47493f = new C6970dl();

    public static final C6637bl f47494g = new C6637bl();

    public int f47495b;

    public volatile Serializable f47496c;

    public C7470gl f47497d;

    public byte f47498e;

    public C6970dl(C6803cl c6803cl) {
        super(c6803cl);
        this.f47498e = (byte) -1;
    }

    public final boolean a() {
        return (this.f47495b & 2) != 0;
    }

    @Override
    public final C6803cl toBuilder() {
        return this == f47493f ? new C6803cl() : new C6803cl().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C6970dl)) {
            return super.equals(obj);
        }
        C6970dl c6970dl = (C6970dl) obj;
        int i10 = this.f47495b & 1;
        if ((i10 != 0) != ((c6970dl.f47495b & 1) != 0)) {
            return false;
        }
        if ((i10 != 0 && !getName().equals(c6970dl.getName())) || a() != c6970dl.a()) {
            return false;
        }
        if (a()) {
            C7470gl c7470gl = this.f47497d;
            if (c7470gl == null) {
                c7470gl = C7470gl.f48353e;
            }
            C7470gl c7470gl2 = c6970dl.f47497d;
            if (c7470gl2 == null) {
                c7470gl2 = C7470gl.f48353e;
            }
            if (!c7470gl.equals(c7470gl2)) {
                return false;
            }
        }
        return this.unknownFields.equals(c6970dl.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f47493f;
    }

    public final String getName() {
        Serializable serializable = this.f47496c;
        if (serializable instanceof String) {
            return (String) serializable;
        }
        AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
        String c10 = abstractC8373m8.c();
        if (abstractC8373m8.a()) {
            this.f47496c = c10;
        }
        return c10;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = (this.f47495b & 1) != 0 ? AbstractC10181wz.computeStringSize(1, this.f47496c) : 0;
        if ((this.f47495b & 2) != 0) {
            C7470gl c7470gl = this.f47497d;
            if (c7470gl == null) {
                c7470gl = C7470gl.f48353e;
            }
            computeStringSize += AbstractC5322Ie.a(2, c7470gl);
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
        int hashCode = AbstractC10640zl.f54518m.hashCode() + 779;
        if ((this.f47495b & 1) != 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + getName().hashCode();
        }
        if (a()) {
            int a10 = AbstractC9124qg0.a(hashCode, 37, 2, 53);
            C7470gl c7470gl = this.f47497d;
            if (c7470gl == null) {
                c7470gl = C7470gl.f48353e;
            }
            hashCode = a10 + c7470gl.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + (hashCode * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54519n.a(C6970dl.class, C6803cl.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f47498e;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        if (a()) {
            C7470gl c7470gl = this.f47497d;
            if (c7470gl == null) {
                c7470gl = C7470gl.f48353e;
            }
            if (!c7470gl.isInitialized()) {
                this.f47498e = (byte) 0;
                return false;
            }
        }
        this.f47498e = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f47493f.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if ((this.f47495b & 1) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 1, this.f47496c);
        }
        if ((this.f47495b & 2) != 0) {
            C7470gl c7470gl = this.f47497d;
            if (c7470gl == null) {
                c7470gl = C7470gl.f48353e;
            }
            abstractC5322Ie.b(2, c7470gl);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f47493f;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C6803cl((C7011dz) interfaceC7512gz);
    }

    public C6970dl() {
        this.f47498e = (byte) -1;
        this.f47496c = "";
    }
}
