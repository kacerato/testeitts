package com.android.tools.r8.internal;

import java.io.IOException;

public final class C7795ii0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C7795ii0 f49025e = new C7795ii0();

    public static final C7462gi0 f49026f = new C7462gi0();

    public int f49027b;

    public int f49028c;

    public byte f49029d;

    public C7795ii0(C7629hi0 c7629hi0) {
        super(c7629hi0);
        this.f49029d = (byte) -1;
    }

    @Override
    public final C7629hi0 toBuilder() {
        return this == f49025e ? new C7629hi0() : new C7629hi0().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7795ii0)) {
            return super.equals(obj);
        }
        C7795ii0 c7795ii0 = (C7795ii0) obj;
        return this.f49027b == c7795ii0.f49027b && this.f49028c == c7795ii0.f49028c && this.unknownFields.equals(c7795ii0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f49025e;
    }

    @Override
    public final int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        int i12 = this.f49027b;
        if (i12 != 0) {
            i10 = AbstractC5322Ie.c(i12) + AbstractC5322Ie.b(1);
        } else {
            i10 = 0;
        }
        int i13 = this.f49028c;
        if (i13 != 0) {
            i10 = AbstractC5559Mg.a(i13, AbstractC5322Ie.b(2), i10);
        }
        int serializedSize = this.unknownFields.getSerializedSize() + i10;
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
        int hashCode = this.unknownFields.hashCode() + ((AbstractC5386Jg.a(AbstractC5444Kg.a(AbstractC9967vj0.f53266c, 779, 37, 1, 53), this.f49027b, 37, 2, 53) + this.f49028c) * 29);
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53268d.a(C7795ii0.class, C7629hi0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f49029d;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f49029d = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f49025e.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        int i10 = this.f49027b;
        if (i10 != 0) {
            abstractC5322Ie.e(1, i10);
        }
        int i11 = this.f49028c;
        if (i11 != 0) {
            abstractC5322Ie.e(2, i11);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f49025e;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C7629hi0((C7011dz) interfaceC7512gz);
    }

    public C7795ii0() {
        this.f49029d = (byte) -1;
    }

    public C7795ii0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this.f49029d = (byte) -1;
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int s10 = abstractC4916Be.s();
                        if (s10 != 0) {
                            if (s10 == 8) {
                                this.f49027b = abstractC4916Be.t();
                            } else if (s10 != 16) {
                                if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                                }
                            } else {
                                this.f49028c = abstractC4916Be.t();
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
