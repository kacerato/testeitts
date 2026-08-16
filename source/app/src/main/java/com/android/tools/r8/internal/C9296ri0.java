package com.android.tools.r8.internal;

import java.io.IOException;

public final class C9296ri0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C9296ri0 f52111d = new C9296ri0();

    public static final C8963pi0 f52112e = new C8963pi0();

    public AbstractC8373m8 f52113b;

    public byte f52114c;

    public C9296ri0(C9130qi0 c9130qi0) {
        super(c9130qi0);
        this.f52114c = (byte) -1;
    }

    @Override
    public final C9130qi0 toBuilder() {
        return this == f52111d ? new C9130qi0() : new C9130qi0().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C9296ri0)) {
            return super.equals(obj);
        }
        C9296ri0 c9296ri0 = (C9296ri0) obj;
        return this.f52113b.equals(c9296ri0.f52113b) && this.unknownFields.equals(c9296ri0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f52111d;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int serializedSize = this.unknownFields.getSerializedSize() + (this.f52113b.size() == 0 ? 0 : AbstractC5322Ie.a(1, this.f52113b));
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
        int hashCode = this.unknownFields.hashCode() + ((this.f52113b.hashCode() + AbstractC5444Kg.a(AbstractC9967vj0.f53262a, 779, 37, 1, 53)) * 29);
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53264b.a(C9296ri0.class, C9130qi0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f52114c;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f52114c = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f52111d.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if (this.f52113b.size() != 0) {
            abstractC5322Ie.b(1, this.f52113b);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f52111d;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C9130qi0((C7011dz) interfaceC7512gz);
    }

    public C9296ri0() {
        this.f52114c = (byte) -1;
        this.f52113b = AbstractC8373m8.f50204c;
    }

    public C9296ri0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this();
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 != 10) {
                            if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                            }
                        } else {
                            this.f52113b = abstractC4916Be.d();
                        }
                    }
                    z10 = true;
                } catch (MJ e10) {
                    e10.f42272b = this;
                    throw e10;
                } catch (IOException e11) {
                    MJ mj2 = new MJ(e11);
                    mj2.f42272b = this;
                    throw mj2;
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
