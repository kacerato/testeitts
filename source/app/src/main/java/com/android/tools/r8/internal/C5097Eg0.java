package com.android.tools.r8.internal;

import java.io.IOException;

public final class C5097Eg0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C5097Eg0 f39973h = new C5097Eg0();

    public static final C4981Cg0 f39974i = new C4981Cg0();

    public C7295fi0 f39975b;

    public volatile String f39976c;

    public C6311Zh0 f39977d;

    public int f39978e;

    public int f39979f;

    public byte f39980g;

    public C5097Eg0(C5039Dg0 c5039Dg0) {
        super(c5039Dg0);
        this.f39980g = (byte) -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5097Eg0)) {
            return super.equals(obj);
        }
        C5097Eg0 c5097Eg0 = (C5097Eg0) obj;
        C7295fi0 c7295fi0 = this.f39975b;
        boolean z10 = c7295fi0 != null;
        C7295fi0 c7295fi02 = c5097Eg0.f39975b;
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
        String str = this.f39976c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f39976c = c10;
            str2 = c10;
        }
        Object obj2 = c5097Eg0.f39976c;
        Object obj3 = obj2;
        if (obj2 == null) {
            String c11 = ((AbstractC8373m8) obj2).c();
            c5097Eg0.f39976c = c11;
            obj3 = c11;
        }
        if (!str2.equals(obj3)) {
            return false;
        }
        C6311Zh0 c6311Zh0 = this.f39977d;
        boolean z11 = c6311Zh0 != null;
        C6311Zh0 c6311Zh02 = c5097Eg0.f39977d;
        if (z11 != (c6311Zh02 != null)) {
            return false;
        }
        if (c6311Zh0 != null) {
            if (c6311Zh02 == null) {
                c6311Zh02 = C6311Zh0.f46320j;
            }
            if (!c6311Zh0.equals(c6311Zh02)) {
                return false;
            }
        }
        return this.f39978e == c5097Eg0.f39978e && this.f39979f == c5097Eg0.f39979f && this.unknownFields.equals(c5097Eg0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f39973h;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        C7295fi0 c7295fi0 = this.f39975b;
        int a10 = c7295fi0 != null ? AbstractC5322Ie.a(1, c7295fi0) : 0;
        if (!AbstractC10181wz.isStringEmpty(this.f39976c)) {
            a10 += AbstractC10181wz.computeStringSize(2, this.f39976c);
        }
        C6311Zh0 c6311Zh0 = this.f39977d;
        if (c6311Zh0 != null) {
            a10 += AbstractC5322Ie.a(3, c6311Zh0);
        }
        int i11 = this.f39978e;
        if (i11 != 0) {
            a10 = AbstractC5559Mg.a(i11, AbstractC5322Ie.b(4), a10);
        }
        int i12 = this.f39979f;
        if (i12 != 0) {
            a10 = AbstractC5559Mg.a(i12, AbstractC5322Ie.b(5), a10);
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
        int hashCode = AbstractC9967vj0.f53291o0.hashCode() + 779;
        C7295fi0 c7295fi0 = this.f39975b;
        if (c7295fi0 != null) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + c7295fi0.hashCode();
        }
        int a10 = AbstractC9124qg0.a(hashCode, 37, 2, 53);
        String str = this.f39976c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f39976c = c10;
            str2 = c10;
        }
        int hashCode2 = str2.hashCode() + a10;
        C6311Zh0 c6311Zh0 = this.f39977d;
        if (c6311Zh0 != null) {
            hashCode2 = AbstractC9124qg0.a(hashCode2, 37, 3, 53) + c6311Zh0.hashCode();
        }
        int hashCode3 = this.unknownFields.hashCode() + ((AbstractC5386Jg.a(AbstractC9124qg0.a(hashCode2, 37, 4, 53), this.f39978e, 37, 5, 53) + this.f39979f) * 29);
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53293p0.a(C5097Eg0.class, C5039Dg0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f39980g;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f39980g = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        f39973h.getClass();
        return new C5039Dg0();
    }

    @Override
    public final InterfaceC7095eW toBuilder() {
        return this == f39973h ? new C5039Dg0() : new C5039Dg0().a(this);
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        C7295fi0 c7295fi0 = this.f39975b;
        if (c7295fi0 != null) {
            abstractC5322Ie.b(1, c7295fi0);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f39976c)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 2, this.f39976c);
        }
        C6311Zh0 c6311Zh0 = this.f39977d;
        if (c6311Zh0 != null) {
            abstractC5322Ie.b(3, c6311Zh0);
        }
        int i10 = this.f39978e;
        if (i10 != 0) {
            abstractC5322Ie.e(4, i10);
        }
        int i11 = this.f39979f;
        if (i11 != 0) {
            abstractC5322Ie.e(5, i11);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f39973h;
    }

    public C5097Eg0() {
        this.f39980g = (byte) -1;
        this.f39976c = "";
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C5039Dg0((C7011dz) interfaceC7512gz);
    }

    @Override
    public final InterfaceC7928jW toBuilder() {
        return this == f39973h ? new C5039Dg0() : new C5039Dg0().a(this);
    }

    public C5097Eg0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this();
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 == 10) {
                            C7295fi0 c7295fi0 = this.f39975b;
                            C7128ei0 builder = c7295fi0 != null ? c7295fi0.toBuilder() : null;
                            C7295fi0 c7295fi02 = (C7295fi0) abstractC4916Be.a(C7295fi0.f48070f, c10670zv);
                            this.f39975b = c7295fi02;
                            if (builder != null) {
                                builder.a(c7295fi02);
                                this.f39975b = builder.m1181buildPartial();
                            }
                        } else if (s10 == 18) {
                            this.f39976c = abstractC4916Be.r();
                        } else if (s10 == 26) {
                            C6311Zh0 c6311Zh0 = this.f39977d;
                            C6197Xh0 builder2 = c6311Zh0 != null ? c6311Zh0.toBuilder() : null;
                            C6311Zh0 c6311Zh02 = (C6311Zh0) abstractC4916Be.a(C6311Zh0.f46321k, c10670zv);
                            this.f39977d = c6311Zh02;
                            if (builder2 != null) {
                                builder2.a(c6311Zh02);
                                this.f39977d = builder2.m1181buildPartial();
                            }
                        } else if (s10 == 32) {
                            this.f39978e = abstractC4916Be.t();
                        } else if (s10 != 40) {
                            if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                            }
                        } else {
                            this.f39979f = abstractC4916Be.t();
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
