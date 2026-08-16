package com.android.tools.r8.internal;

import java.io.IOException;

public final class C9293rh0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C9293rh0 f52100f = new C9293rh0();

    public static final C8960ph0 f52101g = new C8960ph0();

    public volatile String f52102b;

    public C7295fi0 f52103c;

    public volatile String f52104d;

    public byte f52105e;

    public C9293rh0(C9127qh0 c9127qh0) {
        super(c9127qh0);
        this.f52105e = (byte) -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C9293rh0)) {
            return super.equals(obj);
        }
        C9293rh0 c9293rh0 = (C9293rh0) obj;
        String str = this.f52102b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f52102b = c10;
            str2 = c10;
        }
        Object obj2 = c9293rh0.f52102b;
        Object obj3 = obj2;
        if (obj2 == null) {
            String c11 = ((AbstractC8373m8) obj2).c();
            c9293rh0.f52102b = c11;
            obj3 = c11;
        }
        if (!str2.equals(obj3)) {
            return false;
        }
        C7295fi0 c7295fi0 = this.f52103c;
        boolean z10 = c7295fi0 != null;
        C7295fi0 c7295fi02 = c9293rh0.f52103c;
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
        String str3 = this.f52104d;
        String str4 = str3;
        if (str3 == 0) {
            String c12 = ((AbstractC8373m8) str3).c();
            this.f52104d = c12;
            str4 = c12;
        }
        Object obj4 = c9293rh0.f52104d;
        Object obj5 = obj4;
        if (obj4 == null) {
            String c13 = ((AbstractC8373m8) obj4).c();
            c9293rh0.f52104d = c13;
            obj5 = c13;
        }
        return str4.equals(obj5) && this.unknownFields.equals(c9293rh0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f52100f;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = !AbstractC10181wz.isStringEmpty(this.f52102b) ? AbstractC10181wz.computeStringSize(1, this.f52102b) : 0;
        C7295fi0 c7295fi0 = this.f52103c;
        if (c7295fi0 != null) {
            computeStringSize += AbstractC5322Ie.a(2, c7295fi0);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f52104d)) {
            computeStringSize += AbstractC10181wz.computeStringSize(3, this.f52104d);
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
        int a10 = AbstractC5444Kg.a(AbstractC9967vj0.f53310y, 779, 37, 1, 53);
        String str = this.f52102b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f52102b = c10;
            str2 = c10;
        }
        int hashCode = str2.hashCode() + a10;
        C7295fi0 c7295fi0 = this.f52103c;
        if (c7295fi0 != null) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 2, 53) + c7295fi0.hashCode();
        }
        int a11 = AbstractC9124qg0.a(hashCode, 37, 3, 53);
        String str3 = this.f52104d;
        String str4 = str3;
        if (str3 == 0) {
            String c11 = ((AbstractC8373m8) str3).c();
            this.f52104d = c11;
            str4 = c11;
        }
        int hashCode2 = this.unknownFields.hashCode() + ((str4.hashCode() + a11) * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53312z.a(C9293rh0.class, C9127qh0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f52105e;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f52105e = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        f52100f.getClass();
        return new C9127qh0();
    }

    @Override
    public final InterfaceC7095eW toBuilder() {
        return this == f52100f ? new C9127qh0() : new C9127qh0().a(this);
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if (!AbstractC10181wz.isStringEmpty(this.f52102b)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 1, this.f52102b);
        }
        C7295fi0 c7295fi0 = this.f52103c;
        if (c7295fi0 != null) {
            abstractC5322Ie.b(2, c7295fi0);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f52104d)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 3, this.f52104d);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f52100f;
    }

    public C9293rh0() {
        this.f52105e = (byte) -1;
        this.f52102b = "";
        this.f52104d = "";
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C9127qh0((C7011dz) interfaceC7512gz);
    }

    @Override
    public final InterfaceC7928jW toBuilder() {
        return this == f52100f ? new C9127qh0() : new C9127qh0().a(this);
    }

    public C9293rh0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
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
                                this.f52102b = abstractC4916Be.r();
                            } else if (s10 == 18) {
                                C7295fi0 c7295fi0 = this.f52103c;
                                C7128ei0 builder = c7295fi0 != null ? c7295fi0.toBuilder() : null;
                                C7295fi0 c7295fi02 = (C7295fi0) abstractC4916Be.a(C7295fi0.f48070f, c10670zv);
                                this.f52103c = c7295fi02;
                                if (builder != null) {
                                    builder.a(c7295fi02);
                                    this.f52103c = builder.m1181buildPartial();
                                }
                            } else if (s10 != 26) {
                                if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                                }
                            } else {
                                this.f52104d = abstractC4916Be.r();
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
