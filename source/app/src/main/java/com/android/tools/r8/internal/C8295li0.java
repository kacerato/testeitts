package com.android.tools.r8.internal;

import java.io.IOException;

public final class C8295li0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C8295li0 f50069e = new C8295li0();

    public static final C7961ji0 f50070f = new C7961ji0();

    public C7295fi0 f50071b;

    public int f50072c;

    public byte f50073d;

    public C8295li0(C8128ki0 c8128ki0) {
        super(c8128ki0);
        this.f50073d = (byte) -1;
    }

    @Override
    public final C8128ki0 toBuilder() {
        return this == f50069e ? new C8128ki0() : new C8128ki0().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8295li0)) {
            return super.equals(obj);
        }
        C8295li0 c8295li0 = (C8295li0) obj;
        C7295fi0 c7295fi0 = this.f50071b;
        boolean z10 = c7295fi0 != null;
        C7295fi0 c7295fi02 = c8295li0.f50071b;
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
        return this.f50072c == c8295li0.f50072c && this.unknownFields.equals(c8295li0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f50069e;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        C7295fi0 c7295fi0 = this.f50071b;
        int a10 = c7295fi0 != null ? AbstractC5322Ie.a(1, c7295fi0) : 0;
        int i11 = this.f50072c;
        if (i11 != 0) {
            a10 = AbstractC5559Mg.a(i11, AbstractC5322Ie.b(2), a10);
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
        int hashCode = AbstractC9967vj0.f53215C.hashCode() + 779;
        C7295fi0 c7295fi0 = this.f50071b;
        if (c7295fi0 != null) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + c7295fi0.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + ((AbstractC9124qg0.a(hashCode, 37, 2, 53) + this.f50072c) * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53217D.a(C8295li0.class, C8128ki0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f50073d;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f50073d = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f50069e.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        C7295fi0 c7295fi0 = this.f50071b;
        if (c7295fi0 != null) {
            abstractC5322Ie.b(1, c7295fi0);
        }
        int i10 = this.f50072c;
        if (i10 != 0) {
            abstractC5322Ie.e(2, i10);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f50069e;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C8128ki0((C7011dz) interfaceC7512gz);
    }

    public C8295li0() {
        this.f50073d = (byte) -1;
    }

    public C8295li0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this.f50073d = (byte) -1;
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int s10 = abstractC4916Be.s();
                        if (s10 != 0) {
                            if (s10 == 10) {
                                C7295fi0 c7295fi0 = this.f50071b;
                                C7128ei0 builder = c7295fi0 != null ? c7295fi0.toBuilder() : null;
                                C7295fi0 c7295fi02 = (C7295fi0) abstractC4916Be.a(C7295fi0.f48070f, c10670zv);
                                this.f50071b = c7295fi02;
                                if (builder != null) {
                                    builder.a(c7295fi02);
                                    this.f50071b = builder.m1181buildPartial();
                                }
                            } else if (s10 != 16) {
                                if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                                }
                            } else {
                                this.f50072c = abstractC4916Be.t();
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
