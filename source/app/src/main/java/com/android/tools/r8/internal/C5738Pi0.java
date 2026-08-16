package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C5738Pi0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C5738Pi0 f43337e = new C5738Pi0();

    public static final C5449Ki0 f43338f = new C5449Ki0();

    public volatile String f43339b;

    public List f43340c;

    public byte f43341d;

    public C5738Pi0(C5507Li0 c5507Li0) {
        super(c5507Li0);
        this.f43341d = (byte) -1;
    }

    public static boolean access$7700() {
        return AbstractC10181wz.alwaysUseFieldBuilders;
    }

    @Override
    public final C5507Li0 toBuilder() {
        return this == f43337e ? new C5507Li0() : new C5507Li0().a(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5738Pi0)) {
            return super.equals(obj);
        }
        C5738Pi0 c5738Pi0 = (C5738Pi0) obj;
        String str = this.f43339b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f43339b = c10;
            str2 = c10;
        }
        Object obj2 = c5738Pi0.f43339b;
        Object obj3 = obj2;
        if (obj2 == null) {
            String c11 = ((AbstractC8373m8) obj2).c();
            c5738Pi0.f43339b = c11;
            obj3 = c11;
        }
        return str2.equals(obj3) && this.f43340c.equals(c5738Pi0.f43340c) && this.unknownFields.equals(c5738Pi0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f43337e;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = !AbstractC10181wz.isStringEmpty(this.f43339b) ? AbstractC10181wz.computeStringSize(1, this.f43339b) : 0;
        for (int i11 = 0; i11 < this.f43340c.size(); i11++) {
            computeStringSize += AbstractC5322Ie.a(2, (InterfaceC8095kW) this.f43340c.get(i11));
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
        int a10 = AbstractC5444Kg.a(AbstractC9967vj0.f53263a0, 779, 37, 1, 53);
        String str = this.f43339b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f43339b = c10;
            str2 = c10;
        }
        int hashCode = str2.hashCode() + a10;
        if (this.f43340c.size() > 0) {
            hashCode = this.f43340c.hashCode() + AbstractC9124qg0.a(hashCode, 37, 2, 53);
        }
        int hashCode2 = this.unknownFields.hashCode() + (hashCode * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53265b0.a(C5738Pi0.class, C5507Li0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f43341d;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f43341d = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f43337e.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if (!AbstractC10181wz.isStringEmpty(this.f43339b)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 1, this.f43339b);
        }
        for (int i10 = 0; i10 < this.f43340c.size(); i10++) {
            abstractC5322Ie.b(2, (InterfaceC8095kW) this.f43340c.get(i10));
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f43337e;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C5507Li0((C7011dz) interfaceC7512gz);
    }

    public C5738Pi0() {
        this.f43341d = (byte) -1;
        this.f43339b = "";
        this.f43340c = Collections.EMPTY_LIST;
    }

    public C5738Pi0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
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
                                this.f43339b = abstractC4916Be.r();
                            } else if (s10 != 18) {
                                if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                                }
                            } else {
                                if (!z11) {
                                    this.f43340c = new ArrayList();
                                    z11 = true;
                                }
                                this.f43340c.add((C5680Oi0) abstractC4916Be.a(C5680Oi0.f42962g, c10670zv));
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
                    this.f43340c = Collections.unmodifiableList(this.f43340c);
                }
                this.unknownFields = a10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        if (z11) {
            this.f43340c = Collections.unmodifiableList(this.f43340c);
        }
        this.unknownFields = a10.build();
        makeExtensionsImmutable();
    }
}
