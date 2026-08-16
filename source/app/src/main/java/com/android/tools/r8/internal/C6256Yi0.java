package com.android.tools.r8.internal;

import java.io.IOException;

public final class C6256Yi0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C6256Yi0 f46066d = new C6256Yi0();

    public static final C6142Wi0 f46067e = new C6142Wi0();

    public int f46068b;

    public byte f46069c;

    public C6256Yi0(C6199Xi0 c6199Xi0) {
        super(c6199Xi0);
        this.f46069c = (byte) -1;
    }

    @Override
    public final C6199Xi0 toBuilder() {
        return this == f46066d ? new C6199Xi0() : new C6199Xi0().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C6256Yi0)) {
            return super.equals(obj);
        }
        C6256Yi0 c6256Yi0 = (C6256Yi0) obj;
        return this.f46068b == c6256Yi0.f46068b && this.unknownFields.equals(c6256Yi0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f46066d;
    }

    @Override
    public final int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        int i12 = this.f46068b;
        if (i12 != 0) {
            i10 = AbstractC5322Ie.c(i12) + AbstractC5322Ie.b(1);
        } else {
            i10 = 0;
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
        int hashCode = this.unknownFields.hashCode() + ((AbstractC5444Kg.a(AbstractC9967vj0.f53294q, 779, 37, 1, 53) + this.f46068b) * 29);
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53296r.a(C6256Yi0.class, C6199Xi0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f46069c;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f46069c = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f46066d.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        int i10 = this.f46068b;
        if (i10 != 0) {
            abstractC5322Ie.e(1, i10);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f46066d;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C6199Xi0((C7011dz) interfaceC7512gz);
    }

    public C6256Yi0() {
        this.f46069c = (byte) -1;
    }

    public C6256Yi0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this.f46069c = (byte) -1;
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 != 8) {
                            if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                            }
                        } else {
                            this.f46068b = abstractC4916Be.t();
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
