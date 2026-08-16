package com.android.tools.r8.internal;

import java.io.IOException;
import java.nio.charset.Charset;

public final class C6632bj0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C6632bj0 f46846e = new C6632bj0();

    public static final C6313Zi0 f46847f = new C6313Zi0();

    public long f46848b;

    public long f46849c;

    public byte f46850d;

    public C6632bj0(C6465aj0 c6465aj0) {
        super(c6465aj0);
        this.f46850d = (byte) -1;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C6632bj0)) {
            return super.equals(obj);
        }
        C6632bj0 c6632bj0 = (C6632bj0) obj;
        return this.f46848b == c6632bj0.f46848b && this.f46849c == c6632bj0.f46849c && this.unknownFields.equals(c6632bj0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f46846e;
    }

    @Override
    public final int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        long j10 = this.f46848b;
        if (j10 != 0) {
            i10 = AbstractC5322Ie.a(j10) + AbstractC5322Ie.b(1);
        } else {
            i10 = 0;
        }
        long j11 = this.f46849c;
        if (j11 != 0) {
            i10 += AbstractC5322Ie.a(j11) + AbstractC5322Ie.b(2);
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
        int a10 = AbstractC5444Kg.a(AbstractC9967vj0.f53256W0, 779, 37, 1, 53);
        long j10 = this.f46848b;
        Charset charset = YI.f45964a;
        int a11 = AbstractC5386Jg.a(a10, (int) (j10 ^ (j10 >>> 32)), 37, 2, 53);
        long j11 = this.f46849c;
        int hashCode = this.unknownFields.hashCode() + ((a11 + ((int) (j11 ^ (j11 >>> 32)))) * 29);
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53258X0.a(C6632bj0.class, C6465aj0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f46850d;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f46850d = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        f46846e.getClass();
        return new C6465aj0();
    }

    @Override
    public final InterfaceC7095eW toBuilder() {
        return this == f46846e ? new C6465aj0() : new C6465aj0().a(this);
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        long j10 = this.f46848b;
        if (j10 != 0) {
            abstractC5322Ie.b(1, j10);
        }
        long j11 = this.f46849c;
        if (j11 != 0) {
            abstractC5322Ie.b(2, j11);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f46846e;
    }

    public C6632bj0() {
        this.f46850d = (byte) -1;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C6465aj0((C7011dz) interfaceC7512gz);
    }

    @Override
    public final InterfaceC7928jW toBuilder() {
        return this == f46846e ? new C6465aj0() : new C6465aj0().a(this);
    }

    public C6632bj0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this.f46850d = (byte) -1;
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int s10 = abstractC4916Be.s();
                        if (s10 != 0) {
                            if (s10 == 8) {
                                this.f46848b = abstractC4916Be.u();
                            } else if (s10 != 16) {
                                if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                                }
                            } else {
                                this.f46849c = abstractC4916Be.u();
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
