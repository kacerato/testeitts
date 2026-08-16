package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C5391Ji0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C5391Ji0 f41459d = new C5391Ji0();

    public static final C5101Ei0 f41460e = new C5101Ei0();

    public List f41461b;

    public byte f41462c;

    public C5391Ji0(C5159Fi0 c5159Fi0) {
        super(c5159Fi0);
        this.f41462c = (byte) -1;
    }

    @Override
    public final C5159Fi0 toBuilder() {
        return this == f41459d ? new C5159Fi0() : new C5159Fi0().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5391Ji0)) {
            return super.equals(obj);
        }
        C5391Ji0 c5391Ji0 = (C5391Ji0) obj;
        return this.f41461b.equals(c5391Ji0.f41461b) && this.unknownFields.equals(c5391Ji0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f41459d;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f41461b.size(); i12++) {
            i11 += AbstractC5322Ie.a(1, (InterfaceC8095kW) this.f41461b.get(i12));
        }
        int serializedSize = this.unknownFields.getSerializedSize() + i11;
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
        int hashCode = AbstractC9967vj0.f53303u0.hashCode() + 779;
        if (this.f41461b.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + this.f41461b.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + (hashCode * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53305v0.a(C5391Ji0.class, C5159Fi0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f41462c;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f41462c = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f41459d.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        for (int i10 = 0; i10 < this.f41461b.size(); i10++) {
            abstractC5322Ie.b(1, (InterfaceC8095kW) this.f41461b.get(i10));
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f41459d;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C5159Fi0((C7011dz) interfaceC7512gz);
    }

    public C5391Ji0() {
        this.f41462c = (byte) -1;
        this.f41461b = Collections.EMPTY_LIST;
    }

    public C5391Ji0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this();
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 != 10) {
                            if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                            }
                        } else {
                            if (!z11) {
                                this.f41461b = new ArrayList();
                                z11 = true;
                            }
                            this.f41461b.add((C5333Ii0) abstractC4916Be.a(C5333Ii0.f41182g, c10670zv));
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
                if (z11) {
                    this.f41461b = Collections.unmodifiableList(this.f41461b);
                }
                this.unknownFields = a10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        if (z11) {
            this.f41461b = Collections.unmodifiableList(this.f41461b);
        }
        this.unknownFields = a10.build();
        makeExtensionsImmutable();
    }
}
