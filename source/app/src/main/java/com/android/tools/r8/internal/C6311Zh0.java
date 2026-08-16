package com.android.tools.r8.internal;

import java.io.IOException;
import java.nio.charset.Charset;

public final class C6311Zh0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C6311Zh0 f46320j = new C6311Zh0();

    public static final C6140Wh0 f46321k = new C6140Wh0();

    public int f46322b;

    public int f46323c;

    public volatile String f46324d;

    public boolean f46325e;

    public C5329Ig0 f46326f;

    public int f46327g;

    public boolean f46328h;

    public byte f46329i;

    public C6311Zh0(C6197Xh0 c6197Xh0) {
        super(c6197Xh0);
        this.f46329i = (byte) -1;
    }

    @Override
    public final C6197Xh0 toBuilder() {
        return this == f46320j ? new C6197Xh0() : new C6197Xh0().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C6311Zh0)) {
            return super.equals(obj);
        }
        C6311Zh0 c6311Zh0 = (C6311Zh0) obj;
        if (this.f46322b != c6311Zh0.f46322b || this.f46323c != c6311Zh0.f46323c || !getName().equals(c6311Zh0.getName()) || this.f46325e != c6311Zh0.f46325e) {
            return false;
        }
        C5329Ig0 c5329Ig0 = this.f46326f;
        boolean z10 = c5329Ig0 != null;
        C5329Ig0 c5329Ig02 = c6311Zh0.f46326f;
        if (z10 != (c5329Ig02 != null)) {
            return false;
        }
        if (c5329Ig0 != null) {
            if (c5329Ig02 == null) {
                c5329Ig02 = C5329Ig0.f41166d;
            }
            if (!c5329Ig0.equals(c5329Ig02)) {
                return false;
            }
        }
        return this.f46327g == c6311Zh0.f46327g && this.f46328h == c6311Zh0.f46328h && this.unknownFields.equals(c6311Zh0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f46320j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String getName() {
        String str = this.f46324d;
        if (str != 0) {
            return str;
        }
        String c10 = ((AbstractC8373m8) str).c();
        this.f46324d = c10;
        return c10;
    }

    @Override
    public final int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        if (this.f46322b != EnumC6254Yh0.f46061c.getNumber()) {
            int i12 = this.f46322b;
            i10 = AbstractC5322Ie.a(i12) + AbstractC5322Ie.b(1);
        } else {
            i10 = 0;
        }
        int i13 = this.f46323c;
        if (i13 != 0) {
            i10 = AbstractC5559Mg.a(i13, AbstractC5322Ie.b(2), i10);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f46324d)) {
            i10 += AbstractC10181wz.computeStringSize(3, this.f46324d);
        }
        if (this.f46325e) {
            i10 = AbstractC8292lh0.a(4, 1, i10);
        }
        C5329Ig0 c5329Ig0 = this.f46326f;
        if (c5329Ig0 != null) {
            i10 += AbstractC5322Ie.a(5, c5329Ig0);
        }
        int i14 = this.f46327g;
        if (i14 != 0) {
            i10 = AbstractC5559Mg.a(i14, AbstractC5322Ie.b(6), i10);
        }
        if (this.f46328h) {
            i10 = AbstractC8292lh0.a(7, 1, i10);
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
        int hashCode = (((getName().hashCode() + AbstractC5386Jg.a(AbstractC5386Jg.a(AbstractC5444Kg.a(AbstractC9967vj0.f53247S, 779, 37, 1, 53), this.f46322b, 37, 2, 53), this.f46323c, 37, 3, 53)) * 37) + 4) * 53;
        boolean z10 = this.f46325e;
        Charset charset = YI.f45964a;
        int i11 = hashCode + (z10 ? 1231 : 1237);
        C5329Ig0 c5329Ig0 = this.f46326f;
        if (c5329Ig0 != null) {
            i11 = AbstractC9124qg0.a(i11, 37, 5, 53) + c5329Ig0.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + ((AbstractC5386Jg.a(AbstractC9124qg0.a(i11, 37, 6, 53), this.f46327g, 37, 7, 53) + (this.f46328h ? 1231 : 1237)) * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53249T.a(C6311Zh0.class, C6197Xh0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f46329i;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f46329i = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f46320j.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if (this.f46322b != EnumC6254Yh0.f46061c.getNumber()) {
            abstractC5322Ie.c(1, this.f46322b);
        }
        int i10 = this.f46323c;
        if (i10 != 0) {
            abstractC5322Ie.e(2, i10);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f46324d)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 3, this.f46324d);
        }
        boolean z10 = this.f46325e;
        if (z10) {
            abstractC5322Ie.a(4, z10);
        }
        C5329Ig0 c5329Ig0 = this.f46326f;
        if (c5329Ig0 != null) {
            abstractC5322Ie.b(5, c5329Ig0);
        }
        int i11 = this.f46327g;
        if (i11 != 0) {
            abstractC5322Ie.e(6, i11);
        }
        boolean z11 = this.f46328h;
        if (z11) {
            abstractC5322Ie.a(7, z11);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f46320j;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C6197Xh0((C7011dz) interfaceC7512gz);
    }

    public C6311Zh0() {
        this.f46329i = (byte) -1;
        this.f46322b = 0;
        this.f46324d = "";
    }

    public C6311Zh0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this();
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int s10 = abstractC4916Be.s();
                        if (s10 != 0) {
                            if (s10 == 8) {
                                this.f46322b = abstractC4916Be.f();
                            } else if (s10 == 16) {
                                this.f46323c = abstractC4916Be.t();
                            } else if (s10 == 26) {
                                this.f46324d = abstractC4916Be.r();
                            } else if (s10 == 32) {
                                this.f46325e = abstractC4916Be.c();
                            } else if (s10 == 42) {
                                C5329Ig0 c5329Ig0 = this.f46326f;
                                C5271Hg0 builder = c5329Ig0 != null ? c5329Ig0.toBuilder() : null;
                                C5329Ig0 c5329Ig02 = (C5329Ig0) abstractC4916Be.a(C5329Ig0.f41167e, c10670zv);
                                this.f46326f = c5329Ig02;
                                if (builder != null) {
                                    builder.a(c5329Ig02);
                                    this.f46326f = builder.m1181buildPartial();
                                }
                            } else if (s10 == 48) {
                                this.f46327g = abstractC4916Be.t();
                            } else if (s10 != 56) {
                                if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                                }
                            } else {
                                this.f46328h = abstractC4916Be.c();
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
