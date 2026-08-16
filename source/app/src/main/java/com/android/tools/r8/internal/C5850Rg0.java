package com.android.tools.r8.internal;

import java.io.IOException;

public final class C5850Rg0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C5850Rg0 f43958e = new C5850Rg0();

    public static final C5734Pg0 f43959f = new C5734Pg0();

    public C4983Ch0 f43960b;

    public volatile String f43961c;

    public byte f43962d;

    public C5850Rg0(C5792Qg0 c5792Qg0) {
        super(c5792Qg0);
        this.f43962d = (byte) -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5850Rg0)) {
            return super.equals(obj);
        }
        C5850Rg0 c5850Rg0 = (C5850Rg0) obj;
        C4983Ch0 c4983Ch0 = this.f43960b;
        boolean z10 = c4983Ch0 != null;
        C4983Ch0 c4983Ch02 = c5850Rg0.f43960b;
        if (z10 != (c4983Ch02 != null)) {
            return false;
        }
        if (c4983Ch0 != null) {
            if (c4983Ch02 == null) {
                c4983Ch02 = C4983Ch0.f39315d;
            }
            if (!c4983Ch0.equals(c4983Ch02)) {
                return false;
            }
        }
        String str = this.f43961c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f43961c = c10;
            str2 = c10;
        }
        Object obj2 = c5850Rg0.f43961c;
        Object obj3 = obj2;
        if (obj2 == null) {
            String c11 = ((AbstractC8373m8) obj2).c();
            c5850Rg0.f43961c = c11;
            obj3 = c11;
        }
        return str2.equals(obj3) && this.unknownFields.equals(c5850Rg0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f43958e;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        C4983Ch0 c4983Ch0 = this.f43960b;
        int a10 = c4983Ch0 != null ? AbstractC5322Ie.a(1, c4983Ch0) : 0;
        if (!AbstractC10181wz.isStringEmpty(this.f43961c)) {
            a10 += AbstractC10181wz.computeStringSize(2, this.f43961c);
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
        int hashCode = AbstractC9967vj0.f53278i.hashCode() + 779;
        C4983Ch0 c4983Ch0 = this.f43960b;
        if (c4983Ch0 != null) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + c4983Ch0.hashCode();
        }
        int a10 = AbstractC9124qg0.a(hashCode, 37, 2, 53);
        String str = this.f43961c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f43961c = c10;
            str2 = c10;
        }
        int hashCode2 = this.unknownFields.hashCode() + ((str2.hashCode() + a10) * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53280j.a(C5850Rg0.class, C5792Qg0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f43962d;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f43962d = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        f43958e.getClass();
        return new C5792Qg0();
    }

    @Override
    public final InterfaceC7095eW toBuilder() {
        return this == f43958e ? new C5792Qg0() : new C5792Qg0().a(this);
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        C4983Ch0 c4983Ch0 = this.f43960b;
        if (c4983Ch0 != null) {
            abstractC5322Ie.b(1, c4983Ch0);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f43961c)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 2, this.f43961c);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f43958e;
    }

    public C5850Rg0() {
        this.f43962d = (byte) -1;
        this.f43961c = "";
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C5792Qg0((C7011dz) interfaceC7512gz);
    }

    @Override
    public final InterfaceC7928jW toBuilder() {
        return this == f43958e ? new C5792Qg0() : new C5792Qg0().a(this);
    }

    public C5850Rg0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this();
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 == 10) {
                            C4983Ch0 c4983Ch0 = this.f43960b;
                            C4925Bh0 builder = c4983Ch0 != null ? c4983Ch0.toBuilder() : null;
                            C4983Ch0 c4983Ch02 = (C4983Ch0) abstractC4916Be.a(C4983Ch0.f39316e, c10670zv);
                            this.f43960b = c4983Ch02;
                            if (builder != null) {
                                builder.a(c4983Ch02);
                                this.f43960b = builder.m1181buildPartial();
                            }
                        } else if (s10 != 18) {
                            if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                            }
                        } else {
                            this.f43961c = abstractC4916Be.r();
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
