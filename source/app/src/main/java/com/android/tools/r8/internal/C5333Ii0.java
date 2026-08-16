package com.android.tools.r8.internal;

import java.io.IOException;

public final class C5333Ii0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C5333Ii0 f41181f = new C5333Ii0();

    public static final C5217Gi0 f41182g = new C5217Gi0();

    public C7295fi0 f41183b;

    public volatile String f41184c;

    public C6311Zh0 f41185d;

    public byte f41186e;

    public C5333Ii0(C5275Hi0 c5275Hi0) {
        super(c5275Hi0);
        this.f41186e = (byte) -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5333Ii0)) {
            return super.equals(obj);
        }
        C5333Ii0 c5333Ii0 = (C5333Ii0) obj;
        C7295fi0 c7295fi0 = this.f41183b;
        boolean z10 = c7295fi0 != null;
        C7295fi0 c7295fi02 = c5333Ii0.f41183b;
        if (z10 != (c7295fi02 != null)) {
            return false;
        }
        if (c7295fi0 != null) {
            if (c7295fi02 == null) {
                c7295fi02 = C7295fi0.f48069e;
            }
            if (!c7295fi0.equals(c7295fi02)) {
                return false;
            }
        }
        String str = this.f41184c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f41184c = c10;
            str2 = c10;
        }
        Object obj2 = c5333Ii0.f41184c;
        Object obj3 = obj2;
        if (obj2 == null) {
            String c11 = ((AbstractC8373m8) obj2).c();
            c5333Ii0.f41184c = c11;
            obj3 = c11;
        }
        if (!str2.equals(obj3)) {
            return false;
        }
        C6311Zh0 c6311Zh0 = this.f41185d;
        boolean z11 = c6311Zh0 != null;
        C6311Zh0 c6311Zh02 = c5333Ii0.f41185d;
        if (z11 != (c6311Zh02 != null)) {
            return false;
        }
        if (c6311Zh0 != null) {
            if (c6311Zh02 == null) {
                c6311Zh02 = C6311Zh0.f46320j;
            }
            if (!c6311Zh0.equals(c6311Zh02)) {
                return false;
            }
        }
        return this.unknownFields.equals(c5333Ii0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f41181f;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        C7295fi0 c7295fi0 = this.f41183b;
        int a10 = c7295fi0 != null ? AbstractC5322Ie.a(1, c7295fi0) : 0;
        if (!AbstractC10181wz.isStringEmpty(this.f41184c)) {
            a10 += AbstractC10181wz.computeStringSize(2, this.f41184c);
        }
        C6311Zh0 c6311Zh0 = this.f41185d;
        if (c6311Zh0 != null) {
            a10 += AbstractC5322Ie.a(3, c6311Zh0);
        }
        int serializedSize = this.unknownFields.getSerializedSize() + a10;
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
        int hashCode = AbstractC9967vj0.f53307w0.hashCode() + 779;
        C7295fi0 c7295fi0 = this.f41183b;
        if (c7295fi0 != null) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + c7295fi0.hashCode();
        }
        int a10 = AbstractC9124qg0.a(hashCode, 37, 2, 53);
        String str = this.f41184c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f41184c = c10;
            str2 = c10;
        }
        int hashCode2 = str2.hashCode() + a10;
        C6311Zh0 c6311Zh0 = this.f41185d;
        if (c6311Zh0 != null) {
            hashCode2 = AbstractC9124qg0.a(hashCode2, 37, 3, 53) + c6311Zh0.hashCode();
        }
        int hashCode3 = this.unknownFields.hashCode() + (hashCode2 * 29);
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53309x0.a(C5333Ii0.class, C5275Hi0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f41186e;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f41186e = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        f41181f.getClass();
        return new C5275Hi0();
    }

    @Override
    public final InterfaceC7095eW toBuilder() {
        return this == f41181f ? new C5275Hi0() : new C5275Hi0().a(this);
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        C7295fi0 c7295fi0 = this.f41183b;
        if (c7295fi0 != null) {
            abstractC5322Ie.b(1, c7295fi0);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f41184c)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 2, this.f41184c);
        }
        C6311Zh0 c6311Zh0 = this.f41185d;
        if (c6311Zh0 != null) {
            abstractC5322Ie.b(3, c6311Zh0);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f41181f;
    }

    public C5333Ii0() {
        this.f41186e = (byte) -1;
        this.f41184c = "";
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C5275Hi0((C7011dz) interfaceC7512gz);
    }

    @Override
    public final InterfaceC7928jW toBuilder() {
        return this == f41181f ? new C5275Hi0() : new C5275Hi0().a(this);
    }

    public C5333Ii0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
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
                                C7295fi0 c7295fi0 = this.f41183b;
                                C7128ei0 builder = c7295fi0 != null ? c7295fi0.toBuilder() : null;
                                C7295fi0 c7295fi02 = (C7295fi0) abstractC4916Be.a(C7295fi0.f48070f, c10670zv);
                                this.f41183b = c7295fi02;
                                if (builder != null) {
                                    builder.a(c7295fi02);
                                    this.f41183b = builder.m1181buildPartial();
                                }
                            } else if (s10 == 18) {
                                this.f41184c = abstractC4916Be.r();
                            } else if (s10 != 26) {
                                if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                                }
                            } else {
                                C6311Zh0 c6311Zh0 = this.f41185d;
                                C6197Xh0 builder2 = c6311Zh0 != null ? c6311Zh0.toBuilder() : null;
                                C6311Zh0 c6311Zh02 = (C6311Zh0) abstractC4916Be.a(C6311Zh0.f46321k, c10670zv);
                                this.f41185d = c6311Zh02;
                                if (builder2 != null) {
                                    builder2.a(c6311Zh02);
                                    this.f41185d = builder2.m1181buildPartial();
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
