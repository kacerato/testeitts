package com.android.tools.r8.internal;

import java.io.IOException;

public final class C9624tg0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C9624tg0 f52661e = new C9624tg0();

    public static final C9290rg0 f52662f = new C9290rg0();

    public C7295fi0 f52663b;

    public volatile String f52664c;

    public byte f52665d;

    public C9624tg0(C9457sg0 c9457sg0) {
        super(c9457sg0);
        this.f52665d = (byte) -1;
    }

    @Override
    public final C9457sg0 toBuilder() {
        return this == f52661e ? new C9457sg0() : new C9457sg0().a(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C9624tg0)) {
            return super.equals(obj);
        }
        C9624tg0 c9624tg0 = (C9624tg0) obj;
        C7295fi0 c7295fi0 = this.f52663b;
        boolean z10 = c7295fi0 != null;
        C7295fi0 c7295fi02 = c9624tg0.f52663b;
        if (z10 != (c7295fi02 != null)) {
            return false;
        }
        if (c7295fi0 != null) {
            if (c7295fi02 == null) {
                c7295fi02 = C7295fi0.f48069e;
            }
            if (!c7295fi0.equals(c7295fi02)) {
                return false;
            }
        }
        String str = this.f52664c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f52664c = c10;
            str2 = c10;
        }
        Object obj2 = c9624tg0.f52664c;
        Object obj3 = obj2;
        if (obj2 == null) {
            String c11 = ((AbstractC8373m8) obj2).c();
            c9624tg0.f52664c = c11;
            obj3 = c11;
        }
        return str2.equals(obj3) && this.unknownFields.equals(c9624tg0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f52661e;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        C7295fi0 c7295fi0 = this.f52663b;
        int a10 = c7295fi0 != null ? AbstractC5322Ie.a(1, c7295fi0) : 0;
        if (!AbstractC10181wz.isStringEmpty(this.f52664c)) {
            a10 += AbstractC10181wz.computeStringSize(2, this.f52664c);
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
        int hashCode = AbstractC9967vj0.f53306w.hashCode() + 779;
        C7295fi0 c7295fi0 = this.f52663b;
        if (c7295fi0 != null) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + c7295fi0.hashCode();
        }
        int a10 = AbstractC9124qg0.a(hashCode, 37, 2, 53);
        String str = this.f52664c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f52664c = c10;
            str2 = c10;
        }
        int hashCode2 = this.unknownFields.hashCode() + ((str2.hashCode() + a10) * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53308x.a(C9624tg0.class, C9457sg0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f52665d;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f52665d = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f52661e.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        C7295fi0 c7295fi0 = this.f52663b;
        if (c7295fi0 != null) {
            abstractC5322Ie.b(1, c7295fi0);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f52664c)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 2, this.f52664c);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f52661e;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C9457sg0((C7011dz) interfaceC7512gz);
    }

    public C9624tg0() {
        this.f52665d = (byte) -1;
        this.f52664c = "";
    }

    public C9624tg0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this();
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 == 10) {
                            C7295fi0 c7295fi0 = this.f52663b;
                            C7128ei0 builder = c7295fi0 != null ? c7295fi0.toBuilder() : null;
                            C7295fi0 c7295fi02 = (C7295fi0) abstractC4916Be.a(C7295fi0.f48070f, c10670zv);
                            this.f52663b = c7295fi02;
                            if (builder != null) {
                                builder.a(c7295fi02);
                                this.f52663b = builder.m1181buildPartial();
                            }
                        } else if (s10 != 18) {
                            if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                            }
                        } else {
                            this.f52664c = abstractC4916Be.r();
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
