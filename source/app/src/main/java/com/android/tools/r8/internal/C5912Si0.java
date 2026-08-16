package com.android.tools.r8.internal;

import java.io.IOException;

public final class C5912Si0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C5912Si0 f44284e = new C5912Si0();

    public static final C5796Qi0 f44285f = new C5796Qi0();

    public volatile String f44286b;

    public volatile String f44287c;

    public byte f44288d;

    public C5912Si0(C5854Ri0 c5854Ri0) {
        super(c5854Ri0);
        this.f44288d = (byte) -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5912Si0)) {
            return super.equals(obj);
        }
        C5912Si0 c5912Si0 = (C5912Si0) obj;
        String str = this.f44286b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f44286b = c10;
            str2 = c10;
        }
        Object obj2 = c5912Si0.f44286b;
        Object obj3 = obj2;
        if (obj2 == null) {
            String c11 = ((AbstractC8373m8) obj2).c();
            c5912Si0.f44286b = c11;
            obj3 = c11;
        }
        if (!str2.equals(obj3)) {
            return false;
        }
        String str3 = this.f44287c;
        String str4 = str3;
        if (str3 == 0) {
            String c12 = ((AbstractC8373m8) str3).c();
            this.f44287c = c12;
            str4 = c12;
        }
        Object obj4 = c5912Si0.f44287c;
        Object obj5 = obj4;
        if (obj4 == null) {
            String c13 = ((AbstractC8373m8) obj4).c();
            c5912Si0.f44287c = c13;
            obj5 = c13;
        }
        return str4.equals(obj5) && this.unknownFields.equals(c5912Si0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f44284e;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = !AbstractC10181wz.isStringEmpty(this.f44286b) ? AbstractC10181wz.computeStringSize(1, this.f44286b) : 0;
        if (!AbstractC10181wz.isStringEmpty(this.f44287c)) {
            computeStringSize += AbstractC10181wz.computeStringSize(2, this.f44287c);
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
        int a10 = AbstractC5444Kg.a(AbstractC9967vj0.f53274g, 779, 37, 1, 53);
        String str = this.f44286b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f44286b = c10;
            str2 = c10;
        }
        int hashCode = (((str2.hashCode() + a10) * 37) + 2) * 53;
        String str3 = this.f44287c;
        String str4 = str3;
        if (str3 == 0) {
            String c11 = ((AbstractC8373m8) str3).c();
            this.f44287c = c11;
            str4 = c11;
        }
        int hashCode2 = this.unknownFields.hashCode() + ((str4.hashCode() + hashCode) * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53276h.a(C5912Si0.class, C5854Ri0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f44288d;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f44288d = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        f44284e.getClass();
        return new C5854Ri0();
    }

    @Override
    public final InterfaceC7095eW toBuilder() {
        return this == f44284e ? new C5854Ri0() : new C5854Ri0().a(this);
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if (!AbstractC10181wz.isStringEmpty(this.f44286b)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 1, this.f44286b);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f44287c)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 2, this.f44287c);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f44284e;
    }

    public C5912Si0() {
        this.f44288d = (byte) -1;
        this.f44286b = "";
        this.f44287c = "";
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C5854Ri0((C7011dz) interfaceC7512gz);
    }

    @Override
    public final InterfaceC7928jW toBuilder() {
        return this == f44284e ? new C5854Ri0() : new C5854Ri0().a(this);
    }

    public C5912Si0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this();
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 == 10) {
                            this.f44286b = abstractC4916Be.r();
                        } else if (s10 != 18) {
                            if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                            }
                        } else {
                            this.f44287c = abstractC4916Be.r();
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
