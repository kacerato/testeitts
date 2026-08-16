package com.android.tools.r8.internal;

import java.io.IOException;

public final class C7295fi0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C7295fi0 f48069e = new C7295fi0();

    public static final C6962di0 f48070f = new C6962di0();

    public int f48071b;

    public C7795ii0 f48072c;

    public byte f48073d;

    public C7295fi0(C7128ei0 c7128ei0) {
        super(c7128ei0);
        this.f48073d = (byte) -1;
    }

    @Override
    public final C7128ei0 toBuilder() {
        return this == f48069e ? new C7128ei0() : new C7128ei0().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7295fi0)) {
            return super.equals(obj);
        }
        C7295fi0 c7295fi0 = (C7295fi0) obj;
        if (this.f48071b != c7295fi0.f48071b) {
            return false;
        }
        C7795ii0 c7795ii0 = this.f48072c;
        boolean z10 = c7795ii0 != null;
        C7795ii0 c7795ii02 = c7295fi0.f48072c;
        if (z10 != (c7795ii02 != null)) {
            return false;
        }
        if (c7795ii0 != null) {
            if (c7795ii02 == null) {
                c7795ii02 = C7795ii0.f49025e;
            }
            if (!c7795ii0.equals(c7795ii02)) {
                return false;
            }
        }
        return this.unknownFields.equals(c7295fi0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f48069e;
    }

    @Override
    public final int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        int i12 = this.f48071b;
        if (i12 != 0) {
            i10 = AbstractC5322Ie.c(i12) + AbstractC5322Ie.b(1);
        } else {
            i10 = 0;
        }
        C7795ii0 c7795ii0 = this.f48072c;
        if (c7795ii0 != null) {
            i10 += AbstractC5322Ie.a(2, c7795ii0);
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
        int a10 = AbstractC5444Kg.a(AbstractC9967vj0.f53270e, 779, 37, 1, 53) + this.f48071b;
        C7795ii0 c7795ii0 = this.f48072c;
        if (c7795ii0 != null) {
            a10 = AbstractC9124qg0.a(a10, 37, 2, 53) + c7795ii0.hashCode();
        }
        int hashCode = this.unknownFields.hashCode() + (a10 * 29);
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53272f.a(C7295fi0.class, C7128ei0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f48073d;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f48073d = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f48069e.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        int i10 = this.f48071b;
        if (i10 != 0) {
            abstractC5322Ie.e(1, i10);
        }
        C7795ii0 c7795ii0 = this.f48072c;
        if (c7795ii0 != null) {
            abstractC5322Ie.b(2, c7795ii0);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f48069e;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C7128ei0((C7011dz) interfaceC7512gz);
    }

    public C7295fi0() {
        this.f48073d = (byte) -1;
    }

    public C7295fi0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this.f48073d = (byte) -1;
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int s10 = abstractC4916Be.s();
                        if (s10 != 0) {
                            if (s10 == 8) {
                                this.f48071b = abstractC4916Be.t();
                            } else if (s10 != 18) {
                                if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                                }
                            } else {
                                C7795ii0 c7795ii0 = this.f48072c;
                                C7629hi0 builder = c7795ii0 != null ? c7795ii0.toBuilder() : null;
                                C7795ii0 c7795ii02 = (C7795ii0) abstractC4916Be.a(C7795ii0.f49026f, c10670zv);
                                this.f48072c = c7795ii02;
                                if (builder != null) {
                                    builder.a(c7795ii02);
                                    this.f48072c = builder.m1181buildPartial();
                                }
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
