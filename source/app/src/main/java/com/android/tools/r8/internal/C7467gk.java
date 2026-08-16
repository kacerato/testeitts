package com.android.tools.r8.internal;

import java.io.IOException;

public final class C7467gk extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C7467gk f48345f = new C7467gk();

    public static final C7133ek f48346g = new C7133ek();

    public int f48347b;

    public int f48348c;

    public int f48349d;

    public byte f48350e;

    public C7467gk(C7300fk c7300fk) {
        super(c7300fk);
        this.f48350e = (byte) -1;
    }

    @Override
    public final C7300fk toBuilder() {
        return this == f48345f ? new C7300fk() : new C7300fk().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7467gk)) {
            return super.equals(obj);
        }
        C7467gk c7467gk = (C7467gk) obj;
        int i10 = this.f48347b;
        int i11 = i10 & 1;
        boolean z10 = i11 != 0;
        int i12 = c7467gk.f48347b;
        if (z10 != ((i12 & 1) != 0)) {
            return false;
        }
        if (i11 != 0 && this.f48348c != c7467gk.f48348c) {
            return false;
        }
        int i13 = i10 & 2;
        if ((i13 != 0) != ((i12 & 2) != 0)) {
            return false;
        }
        return (i13 == 0 || this.f48349d == c7467gk.f48349d) && this.unknownFields.equals(c7467gk.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f48345f;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int a10 = (this.f48347b & 1) != 0 ? AbstractC5322Ie.a(1, this.f48348c) : 0;
        if ((this.f48347b & 2) != 0) {
            a10 += AbstractC5322Ie.a(2, this.f48349d);
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
        int hashCode = AbstractC10640zl.f54512g.hashCode() + 779;
        int i11 = this.f48347b;
        if ((i11 & 1) != 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + this.f48348c;
        }
        if ((i11 & 2) != 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 2, 53) + this.f48349d;
        }
        int hashCode2 = this.unknownFields.hashCode() + (hashCode * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54513h.a(C7467gk.class, C7300fk.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f48350e;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f48350e = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f48345f.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if ((this.f48347b & 1) != 0) {
            abstractC5322Ie.c(1, this.f48348c);
        }
        if ((this.f48347b & 2) != 0) {
            abstractC5322Ie.c(2, this.f48349d);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f48345f;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C7300fk((C7011dz) interfaceC7512gz);
    }

    public C7467gk() {
        this.f48350e = (byte) -1;
    }

    public C7467gk(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this.f48350e = (byte) -1;
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int s10 = abstractC4916Be.s();
                        if (s10 != 0) {
                            if (s10 == 8) {
                                this.f48347b |= 1;
                                this.f48348c = abstractC4916Be.j();
                            } else if (s10 != 16) {
                                if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                                }
                            } else {
                                this.f48347b |= 2;
                                this.f48349d = abstractC4916Be.j();
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
