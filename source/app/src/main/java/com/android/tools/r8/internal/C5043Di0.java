package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C5043Di0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C5043Di0 f39598e = new C5043Di0();

    public static final C10465yi0 f39599f = new C10465yi0();

    public volatile String f39600b;

    public List f39601c;

    public byte f39602d;

    public C5043Di0(C10632zi0 c10632zi0) {
        super(c10632zi0);
        this.f39602d = (byte) -1;
    }

    @Override
    public final C10632zi0 toBuilder() {
        return this == f39598e ? new C10632zi0() : new C10632zi0().a(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5043Di0)) {
            return super.equals(obj);
        }
        C5043Di0 c5043Di0 = (C5043Di0) obj;
        String str = this.f39600b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f39600b = c10;
            str2 = c10;
        }
        Object obj2 = c5043Di0.f39600b;
        Object obj3 = obj2;
        if (obj2 == null) {
            String c11 = ((AbstractC8373m8) obj2).c();
            c5043Di0.f39600b = c11;
            obj3 = c11;
        }
        return str2.equals(obj3) && this.f39601c.equals(c5043Di0.f39601c) && this.unknownFields.equals(c5043Di0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f39598e;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = !AbstractC10181wz.isStringEmpty(this.f39600b) ? AbstractC10181wz.computeStringSize(1, this.f39600b) : 0;
        for (int i11 = 0; i11 < this.f39601c.size(); i11++) {
            computeStringSize += AbstractC5322Ie.a(2, (InterfaceC8095kW) this.f39601c.get(i11));
        }
        int serializedSize = this.unknownFields.getSerializedSize() + computeStringSize;
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
        int a10 = AbstractC5444Kg.a(AbstractC9967vj0.f53248S0, 779, 37, 1, 53);
        String str = this.f39600b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f39600b = c10;
            str2 = c10;
        }
        int hashCode = str2.hashCode() + a10;
        if (this.f39601c.size() > 0) {
            hashCode = this.f39601c.hashCode() + AbstractC9124qg0.a(hashCode, 37, 2, 53);
        }
        int hashCode2 = this.unknownFields.hashCode() + (hashCode * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53250T0.a(C5043Di0.class, C10632zi0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f39602d;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f39602d = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f39598e.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if (!AbstractC10181wz.isStringEmpty(this.f39600b)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 1, this.f39600b);
        }
        for (int i10 = 0; i10 < this.f39601c.size(); i10++) {
            abstractC5322Ie.b(2, (InterfaceC8095kW) this.f39601c.get(i10));
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f39598e;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C10632zi0((C7011dz) interfaceC7512gz);
    }

    public C5043Di0() {
        this.f39602d = (byte) -1;
        this.f39600b = "";
        this.f39601c = Collections.EMPTY_LIST;
    }

    public C5043Di0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this();
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int s10 = abstractC4916Be.s();
                        if (s10 != 0) {
                            if (s10 == 10) {
                                this.f39600b = abstractC4916Be.r();
                            } else if (s10 != 18) {
                                if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                                }
                            } else {
                                if (!z11) {
                                    this.f39601c = new ArrayList();
                                    z11 = true;
                                }
                                this.f39601c.add((C4985Ci0) abstractC4916Be.a(C4985Ci0.f39325g, c10670zv));
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
                if (z11) {
                    this.f39601c = Collections.unmodifiableList(this.f39601c);
                }
                this.unknownFields = a10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        if (z11) {
            this.f39601c = Collections.unmodifiableList(this.f39601c);
        }
        this.unknownFields = a10.build();
        makeExtensionsImmutable();
    }
}
