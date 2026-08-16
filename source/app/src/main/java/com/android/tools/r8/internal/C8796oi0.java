package com.android.tools.r8.internal;

import java.io.IOException;

public final class C8796oi0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C8796oi0 f51321d = new C8796oi0();

    public static final C8462mi0 f51322e = new C8462mi0();

    public volatile String f51323b;

    public byte f51324c;

    public C8796oi0(C8629ni0 c8629ni0) {
        super(c8629ni0);
        this.f51324c = (byte) -1;
    }

    @Override
    public final C8629ni0 toBuilder() {
        return this == f51321d ? new C8629ni0() : new C8629ni0().a(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8796oi0)) {
            return super.equals(obj);
        }
        C8796oi0 c8796oi0 = (C8796oi0) obj;
        String str = this.f51323b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f51323b = c10;
            str2 = c10;
        }
        Object obj2 = c8796oi0.f51323b;
        Object obj3 = obj2;
        if (obj2 == null) {
            String c11 = ((AbstractC8373m8) obj2).c();
            c8796oi0.f51323b = c11;
            obj3 = c11;
        }
        return str2.equals(obj3) && this.unknownFields.equals(c8796oi0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f51321d;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int serializedSize = this.unknownFields.getSerializedSize() + (!AbstractC10181wz.isStringEmpty(this.f51323b) ? AbstractC10181wz.computeStringSize(1, this.f51323b) : 0);
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
        int a10 = AbstractC5444Kg.a(AbstractC9967vj0.f53255W, 779, 37, 1, 53);
        String str = this.f51323b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f51323b = c10;
            str2 = c10;
        }
        int hashCode = this.unknownFields.hashCode() + ((str2.hashCode() + a10) * 29);
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53257X.a(C8796oi0.class, C8629ni0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f51324c;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f51324c = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f51321d.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if (!AbstractC10181wz.isStringEmpty(this.f51323b)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 1, this.f51323b);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f51321d;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C8629ni0((C7011dz) interfaceC7512gz);
    }

    public C8796oi0() {
        this.f51324c = (byte) -1;
        this.f51323b = "";
    }

    public C8796oi0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
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
                            this.f51323b = abstractC4916Be.r();
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
