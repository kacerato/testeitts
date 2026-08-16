package com.android.tools.r8.internal;

import java.io.IOException;

public final class C8298lj0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C8298lj0 f50075i = new C8298lj0();

    public static final C7964jj0 f50076j = new C7964jj0();

    public volatile String f50077b;

    public volatile String f50078c;

    public volatile String f50079d;

    public C7795ii0 f50080e;

    public int f50081f;

    public C7626hh0 f50082g;

    public byte f50083h;

    public C8298lj0(C8131kj0 c8131kj0) {
        super(c8131kj0);
        this.f50083h = (byte) -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String a() {
        String str = this.f50079d;
        if (str != 0) {
            return str;
        }
        String c10 = ((AbstractC8373m8) str).c();
        this.f50079d = c10;
        return c10;
    }

    public final boolean b() {
        return this.f50082g != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8298lj0)) {
            return super.equals(obj);
        }
        C8298lj0 c8298lj0 = (C8298lj0) obj;
        String str = this.f50077b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f50077b = c10;
            str2 = c10;
        }
        Object obj2 = c8298lj0.f50077b;
        Object obj3 = obj2;
        if (obj2 == null) {
            String c11 = ((AbstractC8373m8) obj2).c();
            c8298lj0.f50077b = c11;
            obj3 = c11;
        }
        if (!str2.equals(obj3) || !getName().equals(c8298lj0.getName()) || !a().equals(c8298lj0.a())) {
            return false;
        }
        C7795ii0 c7795ii0 = this.f50080e;
        boolean z10 = c7795ii0 != null;
        C7795ii0 c7795ii02 = c8298lj0.f50080e;
        if (z10 != (c7795ii02 != null)) {
            return false;
        }
        if (c7795ii0 != null) {
            if (c7795ii02 == null) {
                c7795ii02 = C7795ii0.f49025e;
            }
            if (!c7795ii0.equals(c7795ii02)) {
                return false;
            }
        }
        if (this.f50081f != c8298lj0.f50081f || b() != c8298lj0.b()) {
            return false;
        }
        if (b()) {
            C7626hh0 c7626hh0 = this.f50082g;
            if (c7626hh0 == null) {
                c7626hh0 = C7626hh0.f48676e;
            }
            C7626hh0 c7626hh02 = c8298lj0.f50082g;
            if (c7626hh02 == null) {
                c7626hh02 = C7626hh0.f48676e;
            }
            if (!c7626hh0.equals(c7626hh02)) {
                return false;
            }
        }
        return this.unknownFields.equals(c8298lj0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f50075i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String getName() {
        String str = this.f50078c;
        if (str != 0) {
            return str;
        }
        String c10 = ((AbstractC8373m8) str).c();
        this.f50078c = c10;
        return c10;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = !AbstractC10181wz.isStringEmpty(this.f50077b) ? AbstractC10181wz.computeStringSize(1, this.f50077b) : 0;
        if (!AbstractC10181wz.isStringEmpty(this.f50078c)) {
            computeStringSize += AbstractC10181wz.computeStringSize(2, this.f50078c);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f50079d)) {
            computeStringSize += AbstractC10181wz.computeStringSize(3, this.f50079d);
        }
        C7795ii0 c7795ii0 = this.f50080e;
        if (c7795ii0 != null) {
            computeStringSize += AbstractC5322Ie.a(4, c7795ii0);
        }
        int i11 = this.f50081f;
        if (i11 != 0) {
            computeStringSize = AbstractC5559Mg.a(i11, AbstractC5322Ie.b(5), computeStringSize);
        }
        C7626hh0 c7626hh0 = this.f50082g;
        if (c7626hh0 != null) {
            computeStringSize += AbstractC5322Ie.a(6, c7626hh0);
        }
        int serializedSize = this.unknownFields.getSerializedSize() + computeStringSize;
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override
    public final C9002pv0 getUnknownFields() {
        return this.unknownFields;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int a10 = AbstractC5444Kg.a(AbstractC9967vj0.f53236M0, 779, 37, 1, 53);
        String str = this.f50077b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f50077b = c10;
            str2 = c10;
        }
        int hashCode = a().hashCode() + ((((getName().hashCode() + ((((str2.hashCode() + a10) * 37) + 2) * 53)) * 37) + 3) * 53);
        C7795ii0 c7795ii0 = this.f50080e;
        if (c7795ii0 != null) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 4, 53) + c7795ii0.hashCode();
        }
        int a11 = AbstractC9124qg0.a(hashCode, 37, 5, 53) + this.f50081f;
        if (b()) {
            int a12 = AbstractC9124qg0.a(a11, 37, 6, 53);
            C7626hh0 c7626hh0 = this.f50082g;
            if (c7626hh0 == null) {
                c7626hh0 = C7626hh0.f48676e;
            }
            a11 = a12 + c7626hh0.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + (a11 * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53238N0.a(C8298lj0.class, C8131kj0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f50083h;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f50083h = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        f50075i.getClass();
        return new C8131kj0();
    }

    @Override
    public final InterfaceC7095eW toBuilder() {
        return this == f50075i ? new C8131kj0() : new C8131kj0().a(this);
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if (!AbstractC10181wz.isStringEmpty(this.f50077b)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 1, this.f50077b);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f50078c)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 2, this.f50078c);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f50079d)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 3, this.f50079d);
        }
        C7795ii0 c7795ii0 = this.f50080e;
        if (c7795ii0 != null) {
            abstractC5322Ie.b(4, c7795ii0);
        }
        int i10 = this.f50081f;
        if (i10 != 0) {
            abstractC5322Ie.e(5, i10);
        }
        C7626hh0 c7626hh0 = this.f50082g;
        if (c7626hh0 != null) {
            abstractC5322Ie.b(6, c7626hh0);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f50075i;
    }

    public C8298lj0() {
        this.f50083h = (byte) -1;
        this.f50077b = "";
        this.f50078c = "";
        this.f50079d = "";
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C8131kj0((C7011dz) interfaceC7512gz);
    }

    @Override
    public final InterfaceC7928jW toBuilder() {
        return this == f50075i ? new C8131kj0() : new C8131kj0().a(this);
    }

    public C8298lj0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this();
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int s10 = abstractC4916Be.s();
                        if (s10 != 0) {
                            if (s10 == 10) {
                                this.f50077b = abstractC4916Be.r();
                            } else if (s10 == 18) {
                                this.f50078c = abstractC4916Be.r();
                            } else if (s10 != 26) {
                                if (s10 == 34) {
                                    C7795ii0 c7795ii0 = this.f50080e;
                                    C7629hi0 builder = c7795ii0 != null ? c7795ii0.toBuilder() : null;
                                    C7795ii0 c7795ii02 = (C7795ii0) abstractC4916Be.a(C7795ii0.f49026f, c10670zv);
                                    this.f50080e = c7795ii02;
                                    if (builder != null) {
                                        builder.a(c7795ii02);
                                        this.f50080e = builder.m1181buildPartial();
                                    }
                                } else if (s10 == 40) {
                                    this.f50081f = abstractC4916Be.t();
                                } else if (s10 != 50) {
                                    if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                                    }
                                } else {
                                    C7626hh0 c7626hh0 = this.f50082g;
                                    C7459gh0 builder2 = c7626hh0 != null ? c7626hh0.toBuilder() : null;
                                    C7626hh0 c7626hh02 = (C7626hh0) abstractC4916Be.a(C7626hh0.f48677f, c10670zv);
                                    this.f50082g = c7626hh02;
                                    if (builder2 != null) {
                                        builder2.a(c7626hh02);
                                        this.f50082g = builder2.m1181buildPartial();
                                    }
                                }
                            } else {
                                this.f50079d = abstractC4916Be.r();
                            }
                        }
                        z10 = true;
                    } catch (IOException e10) {
                        MJ mj2 = new MJ(e10);
                        mj2.f42272b = this;
                        throw mj2;
                    }
                } catch (MJ e11) {
                    e11.f42272b = this;
                    throw e11;
                }
            } catch (Throwable th2) {
                this.unknownFields = a10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        this.unknownFields = a10.build();
        makeExtensionsImmutable();
    }
}
