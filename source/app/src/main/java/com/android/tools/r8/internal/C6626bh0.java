package com.android.tools.r8.internal;

import java.io.IOException;

public final class C6626bh0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C6626bh0 f46827e = new C6626bh0();

    public static final C6252Yg0 f46828f = new C6252Yg0();

    public volatile String f46829b;

    public int f46830c;

    public byte f46831d;

    public C6626bh0(C6309Zg0 c6309Zg0) {
        super(c6309Zg0);
        this.f46831d = (byte) -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String a() {
        String str = this.f46829b;
        if (str != 0) {
            return str;
        }
        String c10 = ((AbstractC8373m8) str).c();
        this.f46829b = c10;
        return c10;
    }

    @Override
    public final C6309Zg0 toBuilder() {
        return this == f46827e ? new C6309Zg0() : new C6309Zg0().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C6626bh0)) {
            return super.equals(obj);
        }
        C6626bh0 c6626bh0 = (C6626bh0) obj;
        return a().equals(c6626bh0.a()) && this.f46830c == c6626bh0.f46830c && this.unknownFields.equals(c6626bh0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f46827e;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = !AbstractC10181wz.isStringEmpty(this.f46829b) ? AbstractC10181wz.computeStringSize(1, this.f46829b) : 0;
        if (this.f46830c != EnumC6459ah0.f46580c.getNumber()) {
            computeStringSize = AbstractC5502Lg.a(this.f46830c, AbstractC5322Ie.b(2), computeStringSize);
        }
        int serializedSize = this.unknownFields.getSerializedSize() + computeStringSize;
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
        int hashCode = this.unknownFields.hashCode() + ((((((a().hashCode() + AbstractC5444Kg.a(AbstractC9967vj0.f53271e0, 779, 37, 1, 53)) * 37) + 2) * 53) + this.f46830c) * 29);
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53273f0.a(C6626bh0.class, C6309Zg0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f46831d;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f46831d = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f46827e.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if (!AbstractC10181wz.isStringEmpty(this.f46829b)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 1, this.f46829b);
        }
        if (this.f46830c != EnumC6459ah0.f46580c.getNumber()) {
            abstractC5322Ie.c(2, this.f46830c);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f46827e;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C6309Zg0((C7011dz) interfaceC7512gz);
    }

    public C6626bh0() {
        this.f46831d = (byte) -1;
        this.f46829b = "";
        this.f46830c = 0;
    }

    public C6626bh0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this();
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 == 10) {
                            this.f46829b = abstractC4916Be.r();
                        } else if (s10 != 16) {
                            if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                            }
                        } else {
                            this.f46830c = abstractC4916Be.f();
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
