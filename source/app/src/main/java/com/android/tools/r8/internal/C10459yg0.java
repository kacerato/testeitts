package com.android.tools.r8.internal;

import java.io.IOException;

public final class C10459yg0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C10459yg0 f54104f = new C10459yg0();

    public static final C10125wg0 f54105g = new C10125wg0();

    public C7295fi0 f54106b;

    public volatile String f54107c;

    public C7626hh0 f54108d;

    public byte f54109e;

    public C10459yg0(C10292xg0 c10292xg0) {
        super(c10292xg0);
        this.f54109e = (byte) -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C10459yg0)) {
            return super.equals(obj);
        }
        C10459yg0 c10459yg0 = (C10459yg0) obj;
        C7295fi0 c7295fi0 = this.f54106b;
        boolean z10 = c7295fi0 != null;
        C7295fi0 c7295fi02 = c10459yg0.f54106b;
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
        String str = this.f54107c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f54107c = c10;
            str2 = c10;
        }
        Object obj2 = c10459yg0.f54107c;
        Object obj3 = obj2;
        if (obj2 == null) {
            String c11 = ((AbstractC8373m8) obj2).c();
            c10459yg0.f54107c = c11;
            obj3 = c11;
        }
        if (!str2.equals(obj3)) {
            return false;
        }
        C7626hh0 c7626hh0 = this.f54108d;
        boolean z11 = c7626hh0 != null;
        C7626hh0 c7626hh02 = c10459yg0.f54108d;
        if (z11 != (c7626hh02 != null)) {
            return false;
        }
        if (c7626hh0 != null) {
            if (c7626hh02 == null) {
                c7626hh02 = C7626hh0.f48676e;
            }
            if (!c7626hh0.equals(c7626hh02)) {
                return false;
            }
        }
        return this.unknownFields.equals(c10459yg0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f54104f;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        C7295fi0 c7295fi0 = this.f54106b;
        int a10 = c7295fi0 != null ? AbstractC5322Ie.a(1, c7295fi0) : 0;
        if (!AbstractC10181wz.isStringEmpty(this.f54107c)) {
            a10 += AbstractC10181wz.computeStringSize(2, this.f54107c);
        }
        C7626hh0 c7626hh0 = this.f54108d;
        if (c7626hh0 != null) {
            a10 += AbstractC5322Ie.a(3, c7626hh0);
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
        int hashCode = AbstractC9967vj0.f53212A0.hashCode() + 779;
        C7295fi0 c7295fi0 = this.f54106b;
        if (c7295fi0 != null) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + c7295fi0.hashCode();
        }
        int a10 = AbstractC9124qg0.a(hashCode, 37, 2, 53);
        String str = this.f54107c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f54107c = c10;
            str2 = c10;
        }
        int hashCode2 = str2.hashCode() + a10;
        C7626hh0 c7626hh0 = this.f54108d;
        if (c7626hh0 != null) {
            hashCode2 = AbstractC9124qg0.a(hashCode2, 37, 3, 53) + c7626hh0.hashCode();
        }
        int hashCode3 = this.unknownFields.hashCode() + (hashCode2 * 29);
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53214B0.a(C10459yg0.class, C10292xg0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f54109e;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f54109e = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        f54104f.getClass();
        return new C10292xg0();
    }

    @Override
    public final InterfaceC7095eW toBuilder() {
        return this == f54104f ? new C10292xg0() : new C10292xg0().a(this);
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        C7295fi0 c7295fi0 = this.f54106b;
        if (c7295fi0 != null) {
            abstractC5322Ie.b(1, c7295fi0);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f54107c)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 2, this.f54107c);
        }
        C7626hh0 c7626hh0 = this.f54108d;
        if (c7626hh0 != null) {
            abstractC5322Ie.b(3, c7626hh0);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f54104f;
    }

    public C10459yg0() {
        this.f54109e = (byte) -1;
        this.f54107c = "";
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C10292xg0((C7011dz) interfaceC7512gz);
    }

    @Override
    public final InterfaceC7928jW toBuilder() {
        return this == f54104f ? new C10292xg0() : new C10292xg0().a(this);
    }

    public C10459yg0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
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
                                C7295fi0 c7295fi0 = this.f54106b;
                                C7128ei0 builder = c7295fi0 != null ? c7295fi0.toBuilder() : null;
                                C7295fi0 c7295fi02 = (C7295fi0) abstractC4916Be.a(C7295fi0.f48070f, c10670zv);
                                this.f54106b = c7295fi02;
                                if (builder != null) {
                                    builder.a(c7295fi02);
                                    this.f54106b = builder.m1181buildPartial();
                                }
                            } else if (s10 == 18) {
                                this.f54107c = abstractC4916Be.r();
                            } else if (s10 != 26) {
                                if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                                }
                            } else {
                                C7626hh0 c7626hh0 = this.f54108d;
                                C7459gh0 builder2 = c7626hh0 != null ? c7626hh0.toBuilder() : null;
                                C7626hh0 c7626hh02 = (C7626hh0) abstractC4916Be.a(C7626hh0.f48677f, c10670zv);
                                this.f54108d = c7626hh02;
                                if (builder2 != null) {
                                    builder2.a(c7626hh02);
                                    this.f54108d = builder2.m1181buildPartial();
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
