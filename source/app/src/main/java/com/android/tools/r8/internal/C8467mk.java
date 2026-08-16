package com.android.tools.r8.internal;

import java.io.IOException;

public final class C8467mk extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C8467mk f50404f = new C8467mk();

    public static final C8133kk f50405g = new C8133kk();

    public int f50406b;

    public int f50407c;

    public int f50408d;

    public byte f50409e;

    public C8467mk(C8300lk c8300lk) {
        super(c8300lk);
        this.f50409e = (byte) -1;
    }

    @Override
    public final C8300lk toBuilder() {
        return this == f50404f ? new C8300lk() : new C8300lk().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8467mk)) {
            return super.equals(obj);
        }
        C8467mk c8467mk = (C8467mk) obj;
        int i10 = this.f50406b;
        int i11 = i10 & 1;
        boolean z10 = i11 != 0;
        int i12 = c8467mk.f50406b;
        if (z10 != ((i12 & 1) != 0)) {
            return false;
        }
        if (i11 != 0 && this.f50407c != c8467mk.f50407c) {
            return false;
        }
        int i13 = i10 & 2;
        if ((i13 != 0) != ((i12 & 2) != 0)) {
            return false;
        }
        return (i13 == 0 || this.f50408d == c8467mk.f50408d) && this.unknownFields.equals(c8467mk.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f50404f;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int a10 = (this.f50406b & 1) != 0 ? AbstractC5322Ie.a(1, this.f50407c) : 0;
        if ((this.f50406b & 2) != 0) {
            a10 += AbstractC5322Ie.a(2, this.f50408d);
        }
        int serializedSize = this.unknownFields.getSerializedSize() + a10;
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
        int hashCode = AbstractC10640zl.f54522q.hashCode() + 779;
        int i11 = this.f50406b;
        if ((i11 & 1) != 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + this.f50407c;
        }
        if ((i11 & 2) != 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 2, 53) + this.f50408d;
        }
        int hashCode2 = this.unknownFields.hashCode() + (hashCode * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54523r.a(C8467mk.class, C8300lk.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f50409e;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f50409e = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f50404f.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if ((this.f50406b & 1) != 0) {
            abstractC5322Ie.c(1, this.f50407c);
        }
        if ((this.f50406b & 2) != 0) {
            abstractC5322Ie.c(2, this.f50408d);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f50404f;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C8300lk((C7011dz) interfaceC7512gz);
    }

    public C8467mk() {
        this.f50409e = (byte) -1;
    }

    public C8467mk(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this.f50409e = (byte) -1;
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int s10 = abstractC4916Be.s();
                        if (s10 != 0) {
                            if (s10 == 8) {
                                this.f50406b |= 1;
                                this.f50407c = abstractC4916Be.j();
                            } else if (s10 != 16) {
                                if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                                }
                            } else {
                                this.f50406b |= 2;
                                this.f50408d = abstractC4916Be.j();
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
