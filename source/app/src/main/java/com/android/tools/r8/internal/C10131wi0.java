package com.android.tools.r8.internal;

import java.io.IOException;

public final class C10131wi0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C10131wi0 f53573g = new C10131wi0();

    public static final C9797ui0 f53574h = new C9797ui0();

    public C7295fi0 f53575b;

    public volatile String f53576c;

    public C6311Zh0 f53577d;

    public C7626hh0 f53578e;

    public byte f53579f;

    public C10131wi0(C9964vi0 c9964vi0) {
        super(c9964vi0);
        this.f53579f = (byte) -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C10131wi0)) {
            return super.equals(obj);
        }
        C10131wi0 c10131wi0 = (C10131wi0) obj;
        C7295fi0 c7295fi0 = this.f53575b;
        boolean z10 = c7295fi0 != null;
        C7295fi0 c7295fi02 = c10131wi0.f53575b;
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
        String str = this.f53576c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f53576c = c10;
            str2 = c10;
        }
        Object obj2 = c10131wi0.f53576c;
        Object obj3 = obj2;
        if (obj2 == null) {
            String c11 = ((AbstractC8373m8) obj2).c();
            c10131wi0.f53576c = c11;
            obj3 = c11;
        }
        if (!str2.equals(obj3)) {
            return false;
        }
        C6311Zh0 c6311Zh0 = this.f53577d;
        boolean z11 = c6311Zh0 != null;
        C6311Zh0 c6311Zh02 = c10131wi0.f53577d;
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
        C7626hh0 c7626hh0 = this.f53578e;
        boolean z12 = c7626hh0 != null;
        C7626hh0 c7626hh02 = c10131wi0.f53578e;
        if (z12 != (c7626hh02 != null)) {
            return false;
        }
        if (c7626hh0 != null) {
            if (c7626hh02 == null) {
                c7626hh02 = C7626hh0.f48676e;
            }
            if (!c7626hh0.equals(c7626hh02)) {
                return false;
            }
        }
        return this.unknownFields.equals(c10131wi0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f53573g;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        C7295fi0 c7295fi0 = this.f53575b;
        int a10 = c7295fi0 != null ? AbstractC5322Ie.a(1, c7295fi0) : 0;
        if (!AbstractC10181wz.isStringEmpty(this.f53576c)) {
            a10 += AbstractC10181wz.computeStringSize(2, this.f53576c);
        }
        C6311Zh0 c6311Zh0 = this.f53577d;
        if (c6311Zh0 != null) {
            a10 += AbstractC5322Ie.a(3, c6311Zh0);
        }
        C7626hh0 c7626hh0 = this.f53578e;
        if (c7626hh0 != null) {
            a10 += AbstractC5322Ie.a(4, c7626hh0);
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
        int hashCode = AbstractC9967vj0.f53299s0.hashCode() + 779;
        C7295fi0 c7295fi0 = this.f53575b;
        if (c7295fi0 != null) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + c7295fi0.hashCode();
        }
        int a10 = AbstractC9124qg0.a(hashCode, 37, 2, 53);
        String str = this.f53576c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f53576c = c10;
            str2 = c10;
        }
        int hashCode2 = str2.hashCode() + a10;
        C6311Zh0 c6311Zh0 = this.f53577d;
        if (c6311Zh0 != null) {
            hashCode2 = AbstractC9124qg0.a(hashCode2, 37, 3, 53) + c6311Zh0.hashCode();
        }
        C7626hh0 c7626hh0 = this.f53578e;
        if (c7626hh0 != null) {
            hashCode2 = AbstractC9124qg0.a(hashCode2, 37, 4, 53) + c7626hh0.hashCode();
        }
        int hashCode3 = this.unknownFields.hashCode() + (hashCode2 * 29);
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53301t0.a(C10131wi0.class, C9964vi0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f53579f;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f53579f = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        f53573g.getClass();
        return new C9964vi0();
    }

    @Override
    public final InterfaceC7095eW toBuilder() {
        return this == f53573g ? new C9964vi0() : new C9964vi0().a(this);
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        C7295fi0 c7295fi0 = this.f53575b;
        if (c7295fi0 != null) {
            abstractC5322Ie.b(1, c7295fi0);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f53576c)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 2, this.f53576c);
        }
        C6311Zh0 c6311Zh0 = this.f53577d;
        if (c6311Zh0 != null) {
            abstractC5322Ie.b(3, c6311Zh0);
        }
        C7626hh0 c7626hh0 = this.f53578e;
        if (c7626hh0 != null) {
            abstractC5322Ie.b(4, c7626hh0);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f53573g;
    }

    public C10131wi0() {
        this.f53579f = (byte) -1;
        this.f53576c = "";
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C9964vi0((C7011dz) interfaceC7512gz);
    }

    @Override
    public final InterfaceC7928jW toBuilder() {
        return this == f53573g ? new C9964vi0() : new C9964vi0().a(this);
    }

    public C10131wi0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this();
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 == 10) {
                            C7295fi0 c7295fi0 = this.f53575b;
                            C7128ei0 builder = c7295fi0 != null ? c7295fi0.toBuilder() : null;
                            C7295fi0 c7295fi02 = (C7295fi0) abstractC4916Be.a(C7295fi0.f48070f, c10670zv);
                            this.f53575b = c7295fi02;
                            if (builder != null) {
                                builder.a(c7295fi02);
                                this.f53575b = builder.m1181buildPartial();
                            }
                        } else if (s10 == 18) {
                            this.f53576c = abstractC4916Be.r();
                        } else if (s10 == 26) {
                            C6311Zh0 c6311Zh0 = this.f53577d;
                            C6197Xh0 builder2 = c6311Zh0 != null ? c6311Zh0.toBuilder() : null;
                            C6311Zh0 c6311Zh02 = (C6311Zh0) abstractC4916Be.a(C6311Zh0.f46321k, c10670zv);
                            this.f53577d = c6311Zh02;
                            if (builder2 != null) {
                                builder2.a(c6311Zh02);
                                this.f53577d = builder2.m1181buildPartial();
                            }
                        } else if (s10 != 34) {
                            if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                            }
                        } else {
                            C7626hh0 c7626hh0 = this.f53578e;
                            C7459gh0 builder3 = c7626hh0 != null ? c7626hh0.toBuilder() : null;
                            C7626hh0 c7626hh02 = (C7626hh0) abstractC4916Be.a(C7626hh0.f48677f, c10670zv);
                            this.f53578e = c7626hh02;
                            if (builder3 != null) {
                                builder3.a(c7626hh02);
                                this.f53578e = builder3.m1181buildPartial();
                            }
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
