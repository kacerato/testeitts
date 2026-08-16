package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4291c;
import java.io.IOException;

public final class C5503Lg0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C5503Lg0 f42036e = new C5503Lg0();

    public static final C5387Jg0 f42037f = new C5387Jg0();

    public int f42038b;

    public InterfaceC8095kW f42039c;

    public byte f42040d;

    public C5503Lg0(C5445Kg0 c5445Kg0) {
        super(c5445Kg0);
        this.f42038b = 0;
        this.f42040d = (byte) -1;
    }

    public final C10298xi0 a() {
        return this.f42038b == 2 ? (C10298xi0) this.f42039c : C10298xi0.f53820f;
    }

    public final int b() {
        switch (this.f42038b) {
            case 0:
                return 7;
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
            default:
                return 0;
        }
    }

    @Override
    public final C5445Kg0 toBuilder() {
        return this == f42036e ? new C5445Kg0() : new C5445Kg0().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5503Lg0)) {
            return super.equals(obj);
        }
        C5503Lg0 c5503Lg0 = (C5503Lg0) obj;
        if (!AbstractC4291c.b(b(), c5503Lg0.b())) {
            return false;
        }
        int i10 = this.f42038b;
        switch (i10) {
            case 1:
                if (!(i10 == 1 ? (C5155Fg0) this.f42039c : C5155Fg0.f40275g).equals(c5503Lg0.f42038b == 1 ? (C5155Fg0) c5503Lg0.f42039c : C5155Fg0.f40275g)) {
                    return false;
                }
                break;
            case 2:
                if (!a().equals(c5503Lg0.a())) {
                    return false;
                }
                break;
            case 3:
                if (!(i10 == 3 ? (C5391Ji0) this.f42039c : C5391Ji0.f41459d).equals(c5503Lg0.f42038b == 3 ? (C5391Ji0) c5503Lg0.f42039c : C5391Ji0.f41459d)) {
                    return false;
                }
                break;
            case 4:
                if (!(i10 == 4 ? (C10626zg0) this.f42039c : C10626zg0.f54442d).equals(c5503Lg0.f42038b == 4 ? (C10626zg0) c5503Lg0.f42039c : C10626zg0.f54442d)) {
                    return false;
                }
                break;
            case 5:
                if (!(i10 == 5 ? (C5389Jh0) this.f42039c : C5389Jh0.f41453d).equals(c5503Lg0.f42038b == 5 ? (C5389Jh0) c5503Lg0.f42039c : C5389Jh0.f41453d)) {
                    return false;
                }
                break;
            case 6:
                if (!(i10 == 6 ? (C8125kh0) this.f42039c : C8125kh0.f49720h).equals(c5503Lg0.f42038b == 6 ? (C8125kh0) c5503Lg0.f42039c : C8125kh0.f49720h)) {
                    return false;
                }
                break;
        }
        return this.unknownFields.equals(c5503Lg0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f42036e;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int a10 = this.f42038b == 1 ? AbstractC5322Ie.a(1, (C5155Fg0) this.f42039c) : 0;
        if (this.f42038b == 2) {
            a10 += AbstractC5322Ie.a(2, (C10298xi0) this.f42039c);
        }
        if (this.f42038b == 3) {
            a10 += AbstractC5322Ie.a(3, (C5391Ji0) this.f42039c);
        }
        if (this.f42038b == 4) {
            a10 += AbstractC5322Ie.a(4, (C10626zg0) this.f42039c);
        }
        if (this.f42038b == 5) {
            a10 += AbstractC5322Ie.a(5, (C5389Jh0) this.f42039c);
        }
        if (this.f42038b == 6) {
            a10 += AbstractC5322Ie.a(6, (C8125kh0) this.f42039c);
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
        int hashCode2 = AbstractC9967vj0.f53239O.hashCode() + 779;
        int i11 = this.f42038b;
        switch (i11) {
            case 1:
                a10 = AbstractC9124qg0.a(hashCode2, 37, 1, 53);
                hashCode = (i11 == 1 ? (C5155Fg0) this.f42039c : C5155Fg0.f40275g).hashCode();
                break;
            case 2:
                a10 = AbstractC9124qg0.a(hashCode2, 37, 2, 53);
                hashCode = a().hashCode();
                break;
            case 3:
                a10 = AbstractC9124qg0.a(hashCode2, 37, 3, 53);
                hashCode = (i11 == 3 ? (C5391Ji0) this.f42039c : C5391Ji0.f41459d).hashCode();
                break;
            case 4:
                a10 = AbstractC9124qg0.a(hashCode2, 37, 4, 53);
                hashCode = (i11 == 4 ? (C10626zg0) this.f42039c : C10626zg0.f54442d).hashCode();
                break;
            case 5:
                a10 = AbstractC9124qg0.a(hashCode2, 37, 5, 53);
                hashCode = (i11 == 5 ? (C5389Jh0) this.f42039c : C5389Jh0.f41453d).hashCode();
                break;
            case 6:
                a10 = AbstractC9124qg0.a(hashCode2, 37, 6, 53);
                hashCode = (i11 == 6 ? (C8125kh0) this.f42039c : C8125kh0.f49720h).hashCode();
                break;
        }
        hashCode2 = a10 + hashCode;
        int hashCode3 = this.unknownFields.hashCode() + (hashCode2 * 29);
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53241P.a(C5503Lg0.class, C5445Kg0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f42040d;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f42040d = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f42036e.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if (this.f42038b == 1) {
            abstractC5322Ie.b(1, (C5155Fg0) this.f42039c);
        }
        if (this.f42038b == 2) {
            abstractC5322Ie.b(2, (C10298xi0) this.f42039c);
        }
        if (this.f42038b == 3) {
            abstractC5322Ie.b(3, (C5391Ji0) this.f42039c);
        }
        if (this.f42038b == 4) {
            abstractC5322Ie.b(4, (C10626zg0) this.f42039c);
        }
        if (this.f42038b == 5) {
            abstractC5322Ie.b(5, (C5389Jh0) this.f42039c);
        }
        if (this.f42038b == 6) {
            abstractC5322Ie.b(6, (C8125kh0) this.f42039c);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f42036e;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C5445Kg0((C7011dz) interfaceC7512gz);
    }

    public C5503Lg0() {
        this.f42038b = 0;
        this.f42040d = (byte) -1;
    }

    public C5503Lg0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
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
                                C4923Bg0 builder = this.f42038b == 1 ? ((C5155Fg0) this.f42039c).toBuilder() : null;
                                InterfaceC8095kW a11 = abstractC4916Be.a(C5155Fg0.f40276h, c10670zv);
                                this.f42039c = a11;
                                if (builder != null) {
                                    builder.a((C5155Fg0) a11);
                                    this.f42039c = builder.m1181buildPartial();
                                }
                                this.f42038b = 1;
                            } else if (s10 == 18) {
                                C9630ti0 builder2 = this.f42038b == 2 ? ((C10298xi0) this.f42039c).toBuilder() : null;
                                InterfaceC8095kW a12 = abstractC4916Be.a(C10298xi0.f53821g, c10670zv);
                                this.f42039c = a12;
                                if (builder2 != null) {
                                    builder2.a((C10298xi0) a12);
                                    this.f42039c = builder2.m1181buildPartial();
                                }
                                this.f42038b = 2;
                            } else if (s10 == 26) {
                                C5159Fi0 builder3 = this.f42038b == 3 ? ((C5391Ji0) this.f42039c).toBuilder() : null;
                                InterfaceC8095kW a13 = abstractC4916Be.a(C5391Ji0.f41460e, c10670zv);
                                this.f42039c = a13;
                                if (builder3 != null) {
                                    builder3.a((C5391Ji0) a13);
                                    this.f42039c = builder3.m1181buildPartial();
                                }
                                this.f42038b = 3;
                            } else if (s10 == 34) {
                                C9958vg0 builder4 = this.f42038b == 4 ? ((C10626zg0) this.f42039c).toBuilder() : null;
                                InterfaceC8095kW a14 = abstractC4916Be.a(C10626zg0.f54443e, c10670zv);
                                this.f42039c = a14;
                                if (builder4 != null) {
                                    builder4.a((C10626zg0) a14);
                                    this.f42039c = builder4.m1181buildPartial();
                                }
                                this.f42038b = 4;
                            } else if (s10 == 42) {
                                C5157Fh0 builder5 = this.f42038b == 5 ? ((C5389Jh0) this.f42039c).toBuilder() : null;
                                InterfaceC8095kW a15 = abstractC4916Be.a(C5389Jh0.f41454e, c10670zv);
                                this.f42039c = a15;
                                if (builder5 != null) {
                                    builder5.a((C5389Jh0) a15);
                                    this.f42039c = builder5.m1181buildPartial();
                                }
                                this.f42038b = 5;
                            } else if (s10 != 50) {
                                if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                                }
                            } else {
                                C7958jh0 builder6 = this.f42038b == 6 ? ((C8125kh0) this.f42039c).toBuilder() : null;
                                InterfaceC8095kW a16 = abstractC4916Be.a(C8125kh0.f49721i, c10670zv);
                                this.f42039c = a16;
                                if (builder6 != null) {
                                    builder6.a((C8125kh0) a16);
                                    this.f42039c = builder6.m1181buildPartial();
                                }
                                this.f42038b = 6;
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
