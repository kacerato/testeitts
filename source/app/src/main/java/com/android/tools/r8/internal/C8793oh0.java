package com.android.tools.r8.internal;

import java.io.IOException;
import java.nio.charset.Charset;

public final class C8793oh0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C8793oh0 f51315f = new C8793oh0();

    public static final C8459mh0 f51316g = new C8459mh0();

    public volatile String f51317b;

    public volatile String f51318c;

    public boolean f51319d;

    public byte f51320e;

    public C8793oh0(C8626nh0 c8626nh0) {
        super(c8626nh0);
        this.f51320e = (byte) -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8793oh0)) {
            return super.equals(obj);
        }
        C8793oh0 c8793oh0 = (C8793oh0) obj;
        String str = this.f51317b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f51317b = c10;
            str2 = c10;
        }
        Object obj2 = c8793oh0.f51317b;
        Object obj3 = obj2;
        if (obj2 == null) {
            String c11 = ((AbstractC8373m8) obj2).c();
            c8793oh0.f51317b = c11;
            obj3 = c11;
        }
        if (!str2.equals(obj3)) {
            return false;
        }
        String str3 = this.f51318c;
        String str4 = str3;
        if (str3 == 0) {
            String c12 = ((AbstractC8373m8) str3).c();
            this.f51318c = c12;
            str4 = c12;
        }
        Object obj4 = c8793oh0.f51318c;
        Object obj5 = obj4;
        if (obj4 == null) {
            String c13 = ((AbstractC8373m8) obj4).c();
            c8793oh0.f51318c = c13;
            obj5 = c13;
        }
        return str4.equals(obj5) && this.f51319d == c8793oh0.f51319d && this.unknownFields.equals(c8793oh0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f51315f;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = !AbstractC10181wz.isStringEmpty(this.f51317b) ? AbstractC10181wz.computeStringSize(1, this.f51317b) : 0;
        if (!AbstractC10181wz.isStringEmpty(this.f51318c)) {
            computeStringSize += AbstractC10181wz.computeStringSize(2, this.f51318c);
        }
        if (this.f51319d) {
            computeStringSize = AbstractC8292lh0.a(3, 1, computeStringSize);
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
        int a10 = AbstractC5444Kg.a(AbstractC9967vj0.f53244Q0, 779, 37, 1, 53);
        String str = this.f51317b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f51317b = c10;
            str2 = c10;
        }
        int hashCode = (((str2.hashCode() + a10) * 37) + 2) * 53;
        String str3 = this.f51318c;
        String str4 = str3;
        if (str3 == 0) {
            String c11 = ((AbstractC8373m8) str3).c();
            this.f51318c = c11;
            str4 = c11;
        }
        int hashCode2 = (((str4.hashCode() + hashCode) * 37) + 3) * 53;
        boolean z10 = this.f51319d;
        Charset charset = YI.f45964a;
        int hashCode3 = this.unknownFields.hashCode() + ((hashCode2 + (z10 ? 1231 : 1237)) * 29);
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53246R0.a(C8793oh0.class, C8626nh0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f51320e;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f51320e = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        f51315f.getClass();
        return new C8626nh0();
    }

    @Override
    public final InterfaceC7095eW toBuilder() {
        return this == f51315f ? new C8626nh0() : new C8626nh0().a(this);
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if (!AbstractC10181wz.isStringEmpty(this.f51317b)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 1, this.f51317b);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f51318c)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 2, this.f51318c);
        }
        boolean z10 = this.f51319d;
        if (z10) {
            abstractC5322Ie.a(3, z10);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f51315f;
    }

    public C8793oh0() {
        this.f51320e = (byte) -1;
        this.f51317b = "";
        this.f51318c = "";
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C8626nh0((C7011dz) interfaceC7512gz);
    }

    @Override
    public final InterfaceC7928jW toBuilder() {
        return this == f51315f ? new C8626nh0() : new C8626nh0().a(this);
    }

    public C8793oh0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this();
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int s10 = abstractC4916Be.s();
                        if (s10 != 0) {
                            if (s10 == 10) {
                                this.f51317b = abstractC4916Be.r();
                            } else if (s10 == 18) {
                                this.f51318c = abstractC4916Be.r();
                            } else if (s10 != 24) {
                                if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                                }
                            } else {
                                this.f51319d = abstractC4916Be.c();
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
