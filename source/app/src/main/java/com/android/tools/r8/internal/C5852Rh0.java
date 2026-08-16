package com.android.tools.r8.internal;

import java.io.IOException;

public final class C5852Rh0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C5852Rh0 f43965c = new C5852Rh0();

    public static final C5736Ph0 f43966d = new C5736Ph0();

    public byte f43967b;

    public C5852Rh0(C5794Qh0 c5794Qh0) {
        super(c5794Qh0);
        this.f43967b = (byte) -1;
    }

    @Override
    public final C5794Qh0 toBuilder() {
        return this == f43965c ? new C5794Qh0() : new C5794Qh0().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return !(obj instanceof C5852Rh0) ? super.equals(obj) : this.unknownFields.equals(((C5852Rh0) obj).unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f43965c;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int serializedSize = this.unknownFields.getSerializedSize();
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
        int hashCode = this.unknownFields.hashCode() + ((AbstractC9967vj0.f53279i0.hashCode() + 779) * 29);
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53281j0.a(C5852Rh0.class, C5794Qh0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f43967b;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f43967b = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f43965c.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f43965c;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C5794Qh0((C7011dz) interfaceC7512gz);
    }

    public C5852Rh0() {
        this.f43967b = (byte) -1;
    }

    public C5852Rh0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this.f43967b = (byte) -1;
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 == 0 || !parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                        z10 = true;
                    }
                } catch (MJ e10) {
                    e10.f42272b = this;
                    throw e10;
                } catch (IOException e11) {
                    MJ mj2 = new MJ(e11);
                    mj2.f42272b = this;
                    throw mj2;
                }
            } finally {
                this.unknownFields = a10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
