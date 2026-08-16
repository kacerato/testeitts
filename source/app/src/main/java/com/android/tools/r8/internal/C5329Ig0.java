package com.android.tools.r8.internal;

import java.io.IOException;
import java.nio.charset.Charset;

public final class C5329Ig0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C5329Ig0 f41166d = new C5329Ig0();

    public static final C5213Gg0 f41167e = new C5213Gg0();

    public boolean f41168b;

    public byte f41169c;

    public C5329Ig0(C5271Hg0 c5271Hg0) {
        super(c5271Hg0);
        this.f41169c = (byte) -1;
    }

    @Override
    public final C5271Hg0 toBuilder() {
        return this == f41166d ? new C5271Hg0() : new C5271Hg0().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5329Ig0)) {
            return super.equals(obj);
        }
        C5329Ig0 c5329Ig0 = (C5329Ig0) obj;
        return this.f41168b == c5329Ig0.f41168b && this.unknownFields.equals(c5329Ig0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f41166d;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int serializedSize = this.unknownFields.getSerializedSize() + (this.f41168b ? AbstractC5322Ie.b(1) + 1 : 0);
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
        int a10 = AbstractC5444Kg.a(AbstractC9967vj0.f53243Q, 779, 37, 1, 53);
        boolean z10 = this.f41168b;
        Charset charset = YI.f45964a;
        int hashCode = this.unknownFields.hashCode() + ((a10 + (z10 ? 1231 : 1237)) * 29);
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53245R.a(C5329Ig0.class, C5271Hg0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f41169c;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f41169c = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f41166d.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        boolean z10 = this.f41168b;
        if (z10) {
            abstractC5322Ie.a(1, z10);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f41166d;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C5271Hg0((C7011dz) interfaceC7512gz);
    }

    public C5329Ig0() {
        this.f41169c = (byte) -1;
    }

    public C5329Ig0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this.f41169c = (byte) -1;
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
                            this.f41168b = abstractC4916Be.c();
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
