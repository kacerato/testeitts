package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C5155Fg0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C5155Fg0 f40275g = new C5155Fg0();

    public static final C4865Ag0 f40276h = new C4865Ag0();

    public int f40277b;

    public int f40278c;

    public int f40279d;

    public List f40280e;

    public byte f40281f;

    public C5155Fg0(C4923Bg0 c4923Bg0) {
        super(c4923Bg0);
        this.f40281f = (byte) -1;
    }

    @Override
    public final C4923Bg0 toBuilder() {
        return this == f40275g ? new C4923Bg0() : new C4923Bg0().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5155Fg0)) {
            return super.equals(obj);
        }
        C5155Fg0 c5155Fg0 = (C5155Fg0) obj;
        return this.f40277b == c5155Fg0.f40277b && this.f40278c == c5155Fg0.f40278c && this.f40279d == c5155Fg0.f40279d && this.f40280e.equals(c5155Fg0.f40280e) && this.unknownFields.equals(c5155Fg0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f40275g;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = this.f40277b;
        int c10 = i11 != 0 ? AbstractC5322Ie.c(i11) + AbstractC5322Ie.b(1) : 0;
        int i12 = this.f40278c;
        if (i12 != 0) {
            c10 += AbstractC5322Ie.a(2, i12);
        }
        int i13 = this.f40279d;
        if (i13 != 0) {
            c10 += AbstractC5322Ie.a(3, i13);
        }
        for (int i14 = 0; i14 < this.f40280e.size(); i14++) {
            c10 += AbstractC5322Ie.a(4, (InterfaceC8095kW) this.f40280e.get(i14));
        }
        int serializedSize = this.unknownFields.getSerializedSize() + c10;
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
        int a10 = AbstractC5386Jg.a(AbstractC5386Jg.a(AbstractC5444Kg.a(AbstractC9967vj0.f53287m0, 779, 37, 1, 53), this.f40277b, 37, 2, 53), this.f40278c, 37, 3, 53) + this.f40279d;
        if (this.f40280e.size() > 0) {
            a10 = AbstractC9124qg0.a(a10, 37, 4, 53) + this.f40280e.hashCode();
        }
        int hashCode = this.unknownFields.hashCode() + (a10 * 29);
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53289n0.a(C5155Fg0.class, C4923Bg0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f40281f;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f40281f = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f40275g.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        int i10 = this.f40277b;
        if (i10 != 0) {
            abstractC5322Ie.e(1, i10);
        }
        int i11 = this.f40278c;
        if (i11 != 0) {
            abstractC5322Ie.c(2, i11);
        }
        int i12 = this.f40279d;
        if (i12 != 0) {
            abstractC5322Ie.c(3, i12);
        }
        for (int i13 = 0; i13 < this.f40280e.size(); i13++) {
            abstractC5322Ie.b(4, (InterfaceC8095kW) this.f40280e.get(i13));
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f40275g;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C4923Bg0((C7011dz) interfaceC7512gz);
    }

    public C5155Fg0() {
        this.f40281f = (byte) -1;
        this.f40280e = Collections.EMPTY_LIST;
    }

    public C5155Fg0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this();
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 == 8) {
                            this.f40277b = abstractC4916Be.t();
                        } else if (s10 == 16) {
                            this.f40278c = abstractC4916Be.j();
                        } else if (s10 == 24) {
                            this.f40279d = abstractC4916Be.j();
                        } else if (s10 != 34) {
                            if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                            }
                        } else {
                            if (!z11) {
                                this.f40280e = new ArrayList();
                                z11 = true;
                            }
                            this.f40280e.add((C5097Eg0) abstractC4916Be.a(C5097Eg0.f39974i, c10670zv));
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
                    this.f40280e = Collections.unmodifiableList(this.f40280e);
                }
                this.unknownFields = a10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        if (z11) {
            this.f40280e = Collections.unmodifiableList(this.f40280e);
        }
        this.unknownFields = a10.build();
        makeExtensionsImmutable();
    }
}
