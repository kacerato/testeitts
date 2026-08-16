package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4291c;
import java.io.IOException;

public final class C7626hh0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C7626hh0 f48676e = new C7626hh0();

    public static final C7292fh0 f48677f = new C7292fh0();

    public int f48678b;

    public InterfaceC8095kW f48679c;

    public byte f48680d;

    public C7626hh0(C7459gh0 c7459gh0) {
        super(c7459gh0);
        this.f48678b = 0;
        this.f48680d = (byte) -1;
    }

    public final C6626bh0 a() {
        return this.f48678b == 5 ? (C6626bh0) this.f48679c : C6626bh0.f46827e;
    }

    public final C6311Zh0 b() {
        return this.f48678b == 1 ? (C6311Zh0) this.f48679c : C6311Zh0.f46320j;
    }

    public final int c() {
        switch (this.f48678b) {
            case 0:
                return 8;
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 6;
            case 7:
                return 7;
            default:
                return 0;
        }
    }

    @Override
    public final C7459gh0 toBuilder() {
        return this == f48676e ? new C7459gh0() : new C7459gh0().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7626hh0)) {
            return super.equals(obj);
        }
        C7626hh0 c7626hh0 = (C7626hh0) obj;
        if (!AbstractC4291c.b(c(), c7626hh0.c())) {
            return false;
        }
        int i10 = this.f48678b;
        switch (i10) {
            case 1:
                if (!b().equals(c7626hh0.b())) {
                    return false;
                }
                break;
            case 2:
                if (!(i10 == 2 ? (C8796oi0) this.f48679c : C8796oi0.f51321d).equals(c7626hh0.f48678b == 2 ? (C8796oi0) c7626hh0.f48679c : C8796oi0.f51321d)) {
                    return false;
                }
                break;
            case 3:
                if (!(i10 == 3 ? (C6083Vh0) this.f48679c : C6083Vh0.f45124d).equals(c7626hh0.f48678b == 3 ? (C6083Vh0) c7626hh0.f48679c : C6083Vh0.f45124d)) {
                    return false;
                }
                break;
            case 4:
                if (!(i10 == 4 ? (C5738Pi0) this.f48679c : C5738Pi0.f43337e).equals(c7626hh0.f48678b == 4 ? (C5738Pi0) c7626hh0.f48679c : C5738Pi0.f43337e)) {
                    return false;
                }
                break;
            case 5:
                if (!a().equals(c7626hh0.a())) {
                    return false;
                }
                break;
            case 6:
                if (!(i10 == 6 ? (C7125eh0) this.f48679c : C7125eh0.f47751c).equals(c7626hh0.f48678b == 6 ? (C7125eh0) c7626hh0.f48679c : C7125eh0.f47751c)) {
                    return false;
                }
                break;
            case 7:
                if (!(i10 == 7 ? (C5910Sh0) this.f48679c : C5910Sh0.f44272e).equals(c7626hh0.f48678b == 7 ? (C5910Sh0) c7626hh0.f48679c : C5910Sh0.f44272e)) {
                    return false;
                }
                break;
        }
        return this.unknownFields.equals(c7626hh0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f48676e;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int a10 = this.f48678b == 1 ? AbstractC5322Ie.a(1, (C6311Zh0) this.f48679c) : 0;
        if (this.f48678b == 2) {
            a10 += AbstractC5322Ie.a(2, (C8796oi0) this.f48679c);
        }
        if (this.f48678b == 3) {
            a10 += AbstractC5322Ie.a(3, (C6083Vh0) this.f48679c);
        }
        if (this.f48678b == 4) {
            a10 += AbstractC5322Ie.a(4, (C5738Pi0) this.f48679c);
        }
        if (this.f48678b == 5) {
            a10 += AbstractC5322Ie.a(5, (C6626bh0) this.f48679c);
        }
        if (this.f48678b == 6) {
            a10 += AbstractC5322Ie.a(6, (C7125eh0) this.f48679c);
        }
        if (this.f48678b == 7) {
            a10 += AbstractC5322Ie.a(7, (C5910Sh0) this.f48679c);
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
        int a10;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = AbstractC9967vj0.f53235M.hashCode() + 779;
        int i11 = this.f48678b;
        switch (i11) {
            case 1:
                a10 = AbstractC9124qg0.a(hashCode2, 37, 1, 53);
                hashCode = b().hashCode();
                break;
            case 2:
                a10 = AbstractC9124qg0.a(hashCode2, 37, 2, 53);
                hashCode = (i11 == 2 ? (C8796oi0) this.f48679c : C8796oi0.f51321d).hashCode();
                break;
            case 3:
                a10 = AbstractC9124qg0.a(hashCode2, 37, 3, 53);
                hashCode = (i11 == 3 ? (C6083Vh0) this.f48679c : C6083Vh0.f45124d).hashCode();
                break;
            case 4:
                a10 = AbstractC9124qg0.a(hashCode2, 37, 4, 53);
                hashCode = (i11 == 4 ? (C5738Pi0) this.f48679c : C5738Pi0.f43337e).hashCode();
                break;
            case 5:
                a10 = AbstractC9124qg0.a(hashCode2, 37, 5, 53);
                hashCode = a().hashCode();
                break;
            case 6:
                a10 = AbstractC9124qg0.a(hashCode2, 37, 6, 53);
                hashCode = (i11 == 6 ? (C7125eh0) this.f48679c : C7125eh0.f47751c).hashCode();
                break;
            case 7:
                a10 = AbstractC9124qg0.a(hashCode2, 37, 7, 53);
                hashCode = (i11 == 7 ? (C5910Sh0) this.f48679c : C5910Sh0.f44272e).hashCode();
                break;
        }
        hashCode2 = a10 + hashCode;
        int hashCode3 = this.unknownFields.hashCode() + (hashCode2 * 29);
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53237N.a(C7626hh0.class, C7459gh0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f48680d;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f48680d = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f48676e.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if (this.f48678b == 1) {
            abstractC5322Ie.b(1, (C6311Zh0) this.f48679c);
        }
        if (this.f48678b == 2) {
            abstractC5322Ie.b(2, (C8796oi0) this.f48679c);
        }
        if (this.f48678b == 3) {
            abstractC5322Ie.b(3, (C6083Vh0) this.f48679c);
        }
        if (this.f48678b == 4) {
            abstractC5322Ie.b(4, (C5738Pi0) this.f48679c);
        }
        if (this.f48678b == 5) {
            abstractC5322Ie.b(5, (C6626bh0) this.f48679c);
        }
        if (this.f48678b == 6) {
            abstractC5322Ie.b(6, (C7125eh0) this.f48679c);
        }
        if (this.f48678b == 7) {
            abstractC5322Ie.b(7, (C5910Sh0) this.f48679c);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f48676e;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C7459gh0((C7011dz) interfaceC7512gz);
    }

    public C7626hh0() {
        this.f48678b = 0;
        this.f48680d = (byte) -1;
    }

    public C7626hh0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this();
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 == 10) {
                            C6197Xh0 builder = this.f48678b == 1 ? ((C6311Zh0) this.f48679c).toBuilder() : null;
                            InterfaceC8095kW a11 = abstractC4916Be.a(C6311Zh0.f46321k, c10670zv);
                            this.f48679c = a11;
                            if (builder != null) {
                                builder.a((C6311Zh0) a11);
                                this.f48679c = builder.m1181buildPartial();
                            }
                            this.f48678b = 1;
                        } else if (s10 == 18) {
                            C8629ni0 builder2 = this.f48678b == 2 ? ((C8796oi0) this.f48679c).toBuilder() : null;
                            InterfaceC8095kW a12 = abstractC4916Be.a(C8796oi0.f51322e, c10670zv);
                            this.f48679c = a12;
                            if (builder2 != null) {
                                builder2.a((C8796oi0) a12);
                                this.f48679c = builder2.m1181buildPartial();
                            }
                            this.f48678b = 2;
                        } else if (s10 == 26) {
                            C6026Uh0 builder3 = this.f48678b == 3 ? ((C6083Vh0) this.f48679c).toBuilder() : null;
                            InterfaceC8095kW a13 = abstractC4916Be.a(C6083Vh0.f45125e, c10670zv);
                            this.f48679c = a13;
                            if (builder3 != null) {
                                builder3.a((C6083Vh0) a13);
                                this.f48679c = builder3.m1181buildPartial();
                            }
                            this.f48678b = 3;
                        } else if (s10 == 34) {
                            C5507Li0 builder4 = this.f48678b == 4 ? ((C5738Pi0) this.f48679c).toBuilder() : null;
                            InterfaceC8095kW a14 = abstractC4916Be.a(C5738Pi0.f43338f, c10670zv);
                            this.f48679c = a14;
                            if (builder4 != null) {
                                builder4.a((C5738Pi0) a14);
                                this.f48679c = builder4.m1181buildPartial();
                            }
                            this.f48678b = 4;
                        } else if (s10 == 42) {
                            C6309Zg0 builder5 = this.f48678b == 5 ? ((C6626bh0) this.f48679c).toBuilder() : null;
                            InterfaceC8095kW a15 = abstractC4916Be.a(C6626bh0.f46828f, c10670zv);
                            this.f48679c = a15;
                            if (builder5 != null) {
                                builder5.a((C6626bh0) a15);
                                this.f48679c = builder5.m1181buildPartial();
                            }
                            this.f48678b = 5;
                        } else if (s10 == 50) {
                            C6959dh0 builder6 = this.f48678b == 6 ? ((C7125eh0) this.f48679c).toBuilder() : null;
                            InterfaceC8095kW a16 = abstractC4916Be.a(C7125eh0.f47752d, c10670zv);
                            this.f48679c = a16;
                            if (builder6 != null) {
                                builder6.a((C7125eh0) a16);
                                this.f48679c = builder6.b();
                            }
                            this.f48678b = 6;
                        } else if (s10 != 58) {
                            if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                            }
                        } else {
                            C5505Lh0 builder7 = this.f48678b == 7 ? ((C5910Sh0) this.f48679c).toBuilder() : null;
                            InterfaceC8095kW a17 = abstractC4916Be.a(C5910Sh0.f44273f, c10670zv);
                            this.f48679c = a17;
                            if (builder7 != null) {
                                builder7.a((C5910Sh0) a17);
                                this.f48679c = builder7.m1181buildPartial();
                            }
                            this.f48678b = 7;
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
