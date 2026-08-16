package com.android.tools.r8.internal;

import java.io.IOException;

public final class C5680Oi0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C5680Oi0 f42961f = new C5680Oi0();

    public static final C5564Mi0 f42962g = new C5564Mi0();

    public volatile String f42963b;

    public int f42964c;

    public int f42965d;

    public byte f42966e;

    public C5680Oi0(C5622Ni0 c5622Ni0) {
        super(c5622Ni0);
        this.f42966e = (byte) -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5680Oi0)) {
            return super.equals(obj);
        }
        C5680Oi0 c5680Oi0 = (C5680Oi0) obj;
        String str = this.f42963b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f42963b = c10;
            str2 = c10;
        }
        Object obj2 = c5680Oi0.f42963b;
        Object obj3 = obj2;
        if (obj2 == null) {
            String c11 = ((AbstractC8373m8) obj2).c();
            c5680Oi0.f42963b = c11;
            obj3 = c11;
        }
        return str2.equals(obj3) && this.f42964c == c5680Oi0.f42964c && this.f42965d == c5680Oi0.f42965d && this.unknownFields.equals(c5680Oi0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f42961f;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = !AbstractC10181wz.isStringEmpty(this.f42963b) ? AbstractC10181wz.computeStringSize(1, this.f42963b) : 0;
        int i11 = this.f42964c;
        if (i11 != 0) {
            computeStringSize = AbstractC5559Mg.a(i11, AbstractC5322Ie.b(2), computeStringSize);
        }
        int i12 = this.f42965d;
        if (i12 != 0) {
            computeStringSize = AbstractC5559Mg.a(i12, AbstractC5322Ie.b(3), computeStringSize);
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
        int a10 = AbstractC5444Kg.a(AbstractC9967vj0.f53267c0, 779, 37, 1, 53);
        String str = this.f42963b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f42963b = c10;
            str2 = c10;
        }
        int hashCode = this.unknownFields.hashCode() + ((AbstractC5386Jg.a((((str2.hashCode() + a10) * 37) + 2) * 53, this.f42964c, 37, 3, 53) + this.f42965d) * 29);
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53269d0.a(C5680Oi0.class, C5622Ni0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f42966e;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f42966e = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        f42961f.getClass();
        return new C5622Ni0();
    }

    @Override
    public final InterfaceC7095eW toBuilder() {
        return this == f42961f ? new C5622Ni0() : new C5622Ni0().a(this);
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if (!AbstractC10181wz.isStringEmpty(this.f42963b)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 1, this.f42963b);
        }
        int i10 = this.f42964c;
        if (i10 != 0) {
            abstractC5322Ie.e(2, i10);
        }
        int i11 = this.f42965d;
        if (i11 != 0) {
            abstractC5322Ie.e(3, i11);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f42961f;
    }

    public C5680Oi0() {
        this.f42966e = (byte) -1;
        this.f42963b = "";
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C5622Ni0((C7011dz) interfaceC7512gz);
    }

    @Override
    public final InterfaceC7928jW toBuilder() {
        return this == f42961f ? new C5622Ni0() : new C5622Ni0().a(this);
    }

    public C5680Oi0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
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
                                this.f42963b = abstractC4916Be.r();
                            } else if (s10 == 16) {
                                this.f42964c = abstractC4916Be.t();
                            } else if (s10 != 24) {
                                if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                                }
                            } else {
                                this.f42965d = abstractC4916Be.t();
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
