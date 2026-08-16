package com.android.tools.r8.internal;

import java.io.IOException;

public final class C9299rj0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C9299rj0 f52116f = new C9299rj0();

    public static final C8966pj0 f52117g = new C8966pj0();

    public volatile String f52118b;

    public volatile String f52119c;

    public C7795ii0 f52120d;

    public byte f52121e;

    public C9299rj0(C9133qj0 c9133qj0) {
        super(c9133qj0);
        this.f52121e = (byte) -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C9299rj0)) {
            return super.equals(obj);
        }
        C9299rj0 c9299rj0 = (C9299rj0) obj;
        String str = this.f52118b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f52118b = c10;
            str2 = c10;
        }
        Object obj2 = c9299rj0.f52118b;
        Object obj3 = obj2;
        if (obj2 == null) {
            String c11 = ((AbstractC8373m8) obj2).c();
            c9299rj0.f52118b = c11;
            obj3 = c11;
        }
        if (!str2.equals(obj3)) {
            return false;
        }
        String str3 = this.f52119c;
        String str4 = str3;
        if (str3 == 0) {
            String c12 = ((AbstractC8373m8) str3).c();
            this.f52119c = c12;
            str4 = c12;
        }
        Object obj4 = c9299rj0.f52119c;
        Object obj5 = obj4;
        if (obj4 == null) {
            String c13 = ((AbstractC8373m8) obj4).c();
            c9299rj0.f52119c = c13;
            obj5 = c13;
        }
        if (!str4.equals(obj5)) {
            return false;
        }
        C7795ii0 c7795ii0 = this.f52120d;
        boolean z10 = c7795ii0 != null;
        C7795ii0 c7795ii02 = c9299rj0.f52120d;
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
        return this.unknownFields.equals(c9299rj0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f52116f;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = !AbstractC10181wz.isStringEmpty(this.f52118b) ? AbstractC10181wz.computeStringSize(1, this.f52118b) : 0;
        if (!AbstractC10181wz.isStringEmpty(this.f52119c)) {
            computeStringSize += AbstractC10181wz.computeStringSize(2, this.f52119c);
        }
        C7795ii0 c7795ii0 = this.f52120d;
        if (c7795ii0 != null) {
            computeStringSize += AbstractC5322Ie.a(3, c7795ii0);
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
        int a10 = AbstractC5444Kg.a(AbstractC9967vj0.f53232K0, 779, 37, 1, 53);
        String str = this.f52118b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f52118b = c10;
            str2 = c10;
        }
        int hashCode = (((str2.hashCode() + a10) * 37) + 2) * 53;
        String str3 = this.f52119c;
        String str4 = str3;
        if (str3 == 0) {
            String c11 = ((AbstractC8373m8) str3).c();
            this.f52119c = c11;
            str4 = c11;
        }
        int hashCode2 = str4.hashCode() + hashCode;
        C7795ii0 c7795ii0 = this.f52120d;
        if (c7795ii0 != null) {
            hashCode2 = AbstractC9124qg0.a(hashCode2, 37, 3, 53) + c7795ii0.hashCode();
        }
        int hashCode3 = this.unknownFields.hashCode() + (hashCode2 * 29);
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53234L0.a(C9299rj0.class, C9133qj0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f52121e;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f52121e = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        f52116f.getClass();
        return new C9133qj0();
    }

    @Override
    public final InterfaceC7095eW toBuilder() {
        return this == f52116f ? new C9133qj0() : new C9133qj0().a(this);
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if (!AbstractC10181wz.isStringEmpty(this.f52118b)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 1, this.f52118b);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f52119c)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 2, this.f52119c);
        }
        C7795ii0 c7795ii0 = this.f52120d;
        if (c7795ii0 != null) {
            abstractC5322Ie.b(3, c7795ii0);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f52116f;
    }

    public C9299rj0() {
        this.f52121e = (byte) -1;
        this.f52118b = "";
        this.f52119c = "";
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C9133qj0((C7011dz) interfaceC7512gz);
    }

    @Override
    public final InterfaceC7928jW toBuilder() {
        return this == f52116f ? new C9133qj0() : new C9133qj0().a(this);
    }

    public C9299rj0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
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
                                this.f52118b = abstractC4916Be.r();
                            } else if (s10 == 18) {
                                this.f52119c = abstractC4916Be.r();
                            } else if (s10 != 26) {
                                if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                                }
                            } else {
                                C7795ii0 c7795ii0 = this.f52120d;
                                C7629hi0 builder = c7795ii0 != null ? c7795ii0.toBuilder() : null;
                                C7795ii0 c7795ii02 = (C7795ii0) abstractC4916Be.a(C7795ii0.f49026f, c10670zv);
                                this.f52120d = c7795ii02;
                                if (builder != null) {
                                    builder.a(c7795ii02);
                                    this.f52120d = builder.m1181buildPartial();
                                }
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
