package com.android.tools.r8.internal;

import java.io.IOException;

public final class C6083Vh0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C6083Vh0 f45124d = new C6083Vh0();

    public static final C5968Th0 f45125e = new C5968Th0();

    public volatile String f45126b;

    public byte f45127c;

    public C6083Vh0(C6026Uh0 c6026Uh0) {
        super(c6026Uh0);
        this.f45127c = (byte) -1;
    }

    @Override
    public final C6026Uh0 toBuilder() {
        return this == f45124d ? new C6026Uh0() : new C6026Uh0().a(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C6083Vh0)) {
            return super.equals(obj);
        }
        C6083Vh0 c6083Vh0 = (C6083Vh0) obj;
        String str = this.f45126b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f45126b = c10;
            str2 = c10;
        }
        Object obj2 = c6083Vh0.f45126b;
        Object obj3 = obj2;
        if (obj2 == null) {
            String c11 = ((AbstractC8373m8) obj2).c();
            c6083Vh0.f45126b = c11;
            obj3 = c11;
        }
        return str2.equals(obj3) && this.unknownFields.equals(c6083Vh0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f45124d;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int serializedSize = this.unknownFields.getSerializedSize() + (!AbstractC10181wz.isStringEmpty(this.f45126b) ? AbstractC10181wz.computeStringSize(1, this.f45126b) : 0);
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
        int a10 = AbstractC5444Kg.a(AbstractC9967vj0.f53259Y, 779, 37, 1, 53);
        String str = this.f45126b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f45126b = c10;
            str2 = c10;
        }
        int hashCode = this.unknownFields.hashCode() + ((str2.hashCode() + a10) * 29);
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53261Z.a(C6083Vh0.class, C6026Uh0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f45127c;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f45127c = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f45124d.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if (!AbstractC10181wz.isStringEmpty(this.f45126b)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 1, this.f45126b);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f45124d;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C6026Uh0((C7011dz) interfaceC7512gz);
    }

    public C6083Vh0() {
        this.f45127c = (byte) -1;
        this.f45126b = "";
    }

    public C6083Vh0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
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
                            this.f45126b = abstractC4916Be.r();
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
