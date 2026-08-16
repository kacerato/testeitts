package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4291c;
import java.io.IOException;
import java.nio.charset.Charset;

public final class C7131ej0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C7131ej0 f47760h = new C7131ej0();

    public static final C6798cj0 f47761i = new C6798cj0();

    public int f47762b;

    public InterfaceC8095kW f47763c;

    public C7295fi0 f47764d;

    public volatile String f47765e;

    public boolean f47766f;

    public byte f47767g;

    public C7131ej0(C6965dj0 c6965dj0) {
        super(c6965dj0);
        this.f47762b = 0;
        this.f47767g = (byte) -1;
    }

    public final C7626hh0 a() {
        return this.f47762b == 4 ? (C7626hh0) this.f47763c : C7626hh0.f48676e;
    }

    @Override
    public final C6965dj0 toBuilder() {
        return this == f47760h ? new C6965dj0() : new C6965dj0().a(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7131ej0)) {
            return super.equals(obj);
        }
        C7131ej0 c7131ej0 = (C7131ej0) obj;
        C7295fi0 c7295fi0 = this.f47764d;
        boolean z10 = c7295fi0 != null;
        C7295fi0 c7295fi02 = c7131ej0.f47764d;
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
        String str = this.f47765e;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f47765e = c10;
            str2 = c10;
        }
        Object obj2 = c7131ej0.f47765e;
        Object obj3 = obj2;
        if (obj2 == null) {
            String c11 = ((AbstractC8373m8) obj2).c();
            c7131ej0.f47765e = c11;
            obj3 = c11;
        }
        if (!str2.equals(obj3) || this.f47766f != c7131ej0.f47766f) {
            return false;
        }
        int i10 = this.f47762b;
        int i11 = i10 != 0 ? i10 != 4 ? i10 != 5 ? 0 : 2 : 1 : 3;
        int i12 = c7131ej0.f47762b;
        if (!AbstractC4291c.b(i11, i12 != 0 ? i12 != 4 ? i12 != 5 ? 0 : 2 : 1 : 3)) {
            return false;
        }
        int i13 = this.f47762b;
        if (i13 != 4) {
            if (i13 == 5) {
                if (!(i13 == 5 ? (C5503Lg0) this.f47763c : C5503Lg0.f42036e).equals(c7131ej0.f47762b == 5 ? (C5503Lg0) c7131ej0.f47763c : C5503Lg0.f42036e)) {
                    return false;
                }
            }
        } else if (!a().equals(c7131ej0.a())) {
            return false;
        }
        return this.unknownFields.equals(c7131ej0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f47760h;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        C7295fi0 c7295fi0 = this.f47764d;
        int a10 = c7295fi0 != null ? AbstractC5322Ie.a(1, c7295fi0) : 0;
        if (!AbstractC10181wz.isStringEmpty(this.f47765e)) {
            a10 += AbstractC10181wz.computeStringSize(2, this.f47765e);
        }
        if (this.f47766f) {
            a10 = AbstractC8292lh0.a(3, 1, a10);
        }
        if (this.f47762b == 4) {
            a10 += AbstractC5322Ie.a(4, (C7626hh0) this.f47763c);
        }
        if (this.f47762b == 5) {
            a10 += AbstractC5322Ie.a(5, (C5503Lg0) this.f47763c);
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
        int hashCode = AbstractC9967vj0.f53231K.hashCode() + 779;
        C7295fi0 c7295fi0 = this.f47764d;
        if (c7295fi0 != null) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + c7295fi0.hashCode();
        }
        int a10 = AbstractC9124qg0.a(hashCode, 37, 2, 53);
        String str = this.f47765e;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f47765e = c10;
            str2 = c10;
        }
        int hashCode2 = (((str2.hashCode() + a10) * 37) + 3) * 53;
        boolean z10 = this.f47766f;
        Charset charset = YI.f45964a;
        int i11 = hashCode2 + (z10 ? 1231 : 1237);
        int i12 = this.f47762b;
        if (i12 == 4) {
            i11 = a().hashCode() + AbstractC9124qg0.a(i11, 37, 4, 53);
        } else if (i12 == 5) {
            i11 = AbstractC9124qg0.a(i11, 37, 5, 53) + (i12 == 5 ? (C5503Lg0) this.f47763c : C5503Lg0.f42036e).hashCode();
        }
        int hashCode3 = this.unknownFields.hashCode() + (i11 * 29);
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53233L.a(C7131ej0.class, C6965dj0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f47767g;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f47767g = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f47760h.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        C7295fi0 c7295fi0 = this.f47764d;
        if (c7295fi0 != null) {
            abstractC5322Ie.b(1, c7295fi0);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f47765e)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 2, this.f47765e);
        }
        boolean z10 = this.f47766f;
        if (z10) {
            abstractC5322Ie.a(3, z10);
        }
        if (this.f47762b == 4) {
            abstractC5322Ie.b(4, (C7626hh0) this.f47763c);
        }
        if (this.f47762b == 5) {
            abstractC5322Ie.b(5, (C5503Lg0) this.f47763c);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f47760h;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C6965dj0((C7011dz) interfaceC7512gz);
    }

    public C7131ej0() {
        this.f47762b = 0;
        this.f47767g = (byte) -1;
        this.f47765e = "";
    }

    public C7131ej0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this();
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 == 10) {
                            C7295fi0 c7295fi0 = this.f47764d;
                            C7128ei0 builder = c7295fi0 != null ? c7295fi0.toBuilder() : null;
                            C7295fi0 c7295fi02 = (C7295fi0) abstractC4916Be.a(C7295fi0.f48070f, c10670zv);
                            this.f47764d = c7295fi02;
                            if (builder != null) {
                                builder.a(c7295fi02);
                                this.f47764d = builder.m1181buildPartial();
                            }
                        } else if (s10 == 18) {
                            this.f47765e = abstractC4916Be.r();
                        } else if (s10 == 24) {
                            this.f47766f = abstractC4916Be.c();
                        } else if (s10 == 34) {
                            C7459gh0 builder2 = this.f47762b == 4 ? ((C7626hh0) this.f47763c).toBuilder() : null;
                            InterfaceC8095kW a11 = abstractC4916Be.a(C7626hh0.f48677f, c10670zv);
                            this.f47763c = a11;
                            if (builder2 != null) {
                                builder2.a((C7626hh0) a11);
                                this.f47763c = builder2.m1181buildPartial();
                            }
                            this.f47762b = 4;
                        } else if (s10 != 42) {
                            if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                            }
                        } else {
                            C5445Kg0 builder3 = this.f47762b == 5 ? ((C5503Lg0) this.f47763c).toBuilder() : null;
                            InterfaceC8095kW a12 = abstractC4916Be.a(C5503Lg0.f42037f, c10670zv);
                            this.f47763c = a12;
                            if (builder3 != null) {
                                builder3.a((C5503Lg0) a12);
                                this.f47763c = builder3.m1181buildPartial();
                            }
                            this.f47762b = 5;
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
