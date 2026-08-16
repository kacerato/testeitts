package com.android.tools.r8.internal;

import java.io.IOException;
import java.nio.charset.Charset;

public final class C7798ij0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C7798ij0 f49034g = new C7798ij0();

    public static final C7298fj0 f49035h = new C7298fj0();

    public int f49036b;

    public C7295fi0 f49037c;

    public volatile String f49038d;

    public boolean f49039e;

    public byte f49040f;

    public C7798ij0(C7465gj0 c7465gj0) {
        super(c7465gj0);
        this.f49040f = (byte) -1;
    }

    @Override
    public final C7465gj0 toBuilder() {
        return this == f49034g ? new C7465gj0() : new C7465gj0().a(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7798ij0)) {
            return super.equals(obj);
        }
        C7798ij0 c7798ij0 = (C7798ij0) obj;
        if (this.f49036b != c7798ij0.f49036b) {
            return false;
        }
        C7295fi0 c7295fi0 = this.f49037c;
        boolean z10 = c7295fi0 != null;
        C7295fi0 c7295fi02 = c7798ij0.f49037c;
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
        String str = this.f49038d;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f49038d = c10;
            str2 = c10;
        }
        Object obj2 = c7798ij0.f49038d;
        Object obj3 = obj2;
        if (obj2 == null) {
            String c11 = ((AbstractC8373m8) obj2).c();
            c7798ij0.f49038d = c11;
            obj3 = c11;
        }
        return str2.equals(obj3) && this.f49039e == c7798ij0.f49039e && this.unknownFields.equals(c7798ij0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f49034g;
    }

    @Override
    public final int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        if (this.f49036b != EnumC7632hj0.f48686c.getNumber()) {
            int i12 = this.f49036b;
            i10 = AbstractC5322Ie.a(i12) + AbstractC5322Ie.b(1);
        } else {
            i10 = 0;
        }
        C7295fi0 c7295fi0 = this.f49037c;
        if (c7295fi0 != null) {
            i10 += AbstractC5322Ie.a(2, c7295fi0);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f49038d)) {
            i10 += AbstractC10181wz.computeStringSize(3, this.f49038d);
        }
        if (this.f49039e) {
            i10 = AbstractC8292lh0.a(4, 1, i10);
        }
        int serializedSize = this.unknownFields.getSerializedSize() + i10;
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
        int a10 = AbstractC5444Kg.a(AbstractC9967vj0.f53302u, 779, 37, 1, 53) + this.f49036b;
        C7295fi0 c7295fi0 = this.f49037c;
        if (c7295fi0 != null) {
            a10 = AbstractC9124qg0.a(a10, 37, 2, 53) + c7295fi0.hashCode();
        }
        int a11 = AbstractC9124qg0.a(a10, 37, 3, 53);
        String str = this.f49038d;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f49038d = c10;
            str2 = c10;
        }
        int hashCode = (((str2.hashCode() + a11) * 37) + 4) * 53;
        boolean z10 = this.f49039e;
        Charset charset = YI.f45964a;
        int hashCode2 = this.unknownFields.hashCode() + ((hashCode + (z10 ? 1231 : 1237)) * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53304v.a(C7798ij0.class, C7465gj0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f49040f;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f49040f = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f49034g.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if (this.f49036b != EnumC7632hj0.f48686c.getNumber()) {
            abstractC5322Ie.c(1, this.f49036b);
        }
        C7295fi0 c7295fi0 = this.f49037c;
        if (c7295fi0 != null) {
            abstractC5322Ie.b(2, c7295fi0);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f49038d)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 3, this.f49038d);
        }
        boolean z10 = this.f49039e;
        if (z10) {
            abstractC5322Ie.a(4, z10);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f49034g;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C7465gj0((C7011dz) interfaceC7512gz);
    }

    public C7798ij0() {
        this.f49040f = (byte) -1;
        this.f49036b = 0;
        this.f49038d = "";
    }

    public C7798ij0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this();
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 == 8) {
                            this.f49036b = abstractC4916Be.f();
                        } else if (s10 == 18) {
                            C7295fi0 c7295fi0 = this.f49037c;
                            C7128ei0 builder = c7295fi0 != null ? c7295fi0.toBuilder() : null;
                            C7295fi0 c7295fi02 = (C7295fi0) abstractC4916Be.a(C7295fi0.f48070f, c10670zv);
                            this.f49037c = c7295fi02;
                            if (builder != null) {
                                builder.a(c7295fi02);
                                this.f49037c = builder.m1181buildPartial();
                            }
                        } else if (s10 == 26) {
                            this.f49038d = abstractC4916Be.r();
                        } else if (s10 != 32) {
                            if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                            }
                        } else {
                            this.f49039e = abstractC4916Be.c();
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
