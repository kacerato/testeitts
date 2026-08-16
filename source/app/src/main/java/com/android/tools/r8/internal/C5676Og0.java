package com.android.tools.r8.internal;

import java.io.IOException;

public final class C5676Og0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C5676Og0 f42949e = new C5676Og0();

    public static final C5560Mg0 f42950f = new C5560Mg0();

    public C7291fh f42951b;

    public C7131ej0 f42952c;

    public byte f42953d;

    public C5676Og0(C5618Ng0 c5618Ng0) {
        super(c5618Ng0);
        this.f42953d = (byte) -1;
    }

    public final boolean a() {
        return this.f42952c != null;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5676Og0)) {
            return super.equals(obj);
        }
        C5676Og0 c5676Og0 = (C5676Og0) obj;
        C7291fh c7291fh = this.f42951b;
        boolean z10 = c7291fh != null;
        C7291fh c7291fh2 = c5676Og0.f42951b;
        if (z10 != (c7291fh2 != null)) {
            return false;
        }
        if (c7291fh != null) {
            if (c7291fh2 == null) {
                c7291fh2 = C7291fh.f48039C;
            }
            if (!c7291fh.equals(c7291fh2)) {
                return false;
            }
        }
        if (a() != c5676Og0.a()) {
            return false;
        }
        if (a()) {
            C7131ej0 c7131ej0 = this.f42952c;
            if (c7131ej0 == null) {
                c7131ej0 = C7131ej0.f47760h;
            }
            C7131ej0 c7131ej02 = c5676Og0.f42952c;
            if (c7131ej02 == null) {
                c7131ej02 = C7131ej0.f47760h;
            }
            if (!c7131ej0.equals(c7131ej02)) {
                return false;
            }
        }
        return this.unknownFields.equals(c5676Og0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f42949e;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        C7291fh c7291fh = this.f42951b;
        int a10 = c7291fh != null ? AbstractC5322Ie.a(1, c7291fh) : 0;
        C7131ej0 c7131ej0 = this.f42952c;
        if (c7131ej0 != null) {
            a10 += AbstractC5322Ie.a(2, c7131ej0);
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
        int hashCode = AbstractC9967vj0.f53227I.hashCode() + 779;
        C7291fh c7291fh = this.f42951b;
        if (c7291fh != null) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + c7291fh.hashCode();
        }
        if (a()) {
            int a10 = AbstractC9124qg0.a(hashCode, 37, 2, 53);
            C7131ej0 c7131ej0 = this.f42952c;
            if (c7131ej0 == null) {
                c7131ej0 = C7131ej0.f47760h;
            }
            hashCode = a10 + c7131ej0.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + (hashCode * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53229J.a(C5676Og0.class, C5618Ng0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f42953d;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f42953d = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        f42949e.getClass();
        return new C5618Ng0();
    }

    @Override
    public final InterfaceC7095eW toBuilder() {
        return this == f42949e ? new C5618Ng0() : new C5618Ng0().a(this);
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        C7291fh c7291fh = this.f42951b;
        if (c7291fh != null) {
            abstractC5322Ie.b(1, c7291fh);
        }
        C7131ej0 c7131ej0 = this.f42952c;
        if (c7131ej0 != null) {
            abstractC5322Ie.b(2, c7131ej0);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f42949e;
    }

    public C5676Og0() {
        this.f42953d = (byte) -1;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C5618Ng0((C7011dz) interfaceC7512gz);
    }

    @Override
    public final InterfaceC7928jW toBuilder() {
        return this == f42949e ? new C5618Ng0() : new C5618Ng0().a(this);
    }

    public C5676Og0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this.f42953d = (byte) -1;
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int s10 = abstractC4916Be.s();
                        if (s10 != 0) {
                            if (s10 == 10) {
                                C7291fh c7291fh = this.f42951b;
                                C5733Pg builder = c7291fh != null ? c7291fh.toBuilder() : null;
                                C7291fh c7291fh2 = (C7291fh) abstractC4916Be.a(C7291fh.f48040D, c10670zv);
                                this.f42951b = c7291fh2;
                                if (builder != null) {
                                    builder.a(c7291fh2);
                                    this.f42951b = builder.m1181buildPartial();
                                }
                            } else if (s10 != 18) {
                                if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                                }
                            } else {
                                C7131ej0 c7131ej0 = this.f42952c;
                                C6965dj0 builder2 = c7131ej0 != null ? c7131ej0.toBuilder() : null;
                                C7131ej0 c7131ej02 = (C7131ej0) abstractC4916Be.a(C7131ej0.f47761i, c10670zv);
                                this.f42952c = c7131ej02;
                                if (builder2 != null) {
                                    builder2.a(c7131ej02);
                                    this.f42952c = builder2.m1181buildPartial();
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
