package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C8799oj0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C8799oj0 f51327h = new C8799oj0();

    public static final C8465mj0 f51328i = new C8465mj0();

    public List f51329b;

    public volatile String f51330c;

    public volatile String f51331d;

    public List f51332e;

    public List f51333f;

    public byte f51334g;

    public C8799oj0(C8632nj0 c8632nj0) {
        super(c8632nj0);
        this.f51334g = (byte) -1;
    }

    @Override
    public final C8632nj0 toBuilder() {
        return this == f51327h ? new C8632nj0() : new C8632nj0().a(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8799oj0)) {
            return super.equals(obj);
        }
        C8799oj0 c8799oj0 = (C8799oj0) obj;
        if (!this.f51329b.equals(c8799oj0.f51329b)) {
            return false;
        }
        String str = this.f51330c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f51330c = c10;
            str2 = c10;
        }
        Object obj2 = c8799oj0.f51330c;
        Object obj3 = obj2;
        if (obj2 == null) {
            String c11 = ((AbstractC8373m8) obj2).c();
            c8799oj0.f51330c = c11;
            obj3 = c11;
        }
        return str2.equals(obj3) && getName().equals(c8799oj0.getName()) && this.f51332e.equals(c8799oj0.f51332e) && this.f51333f.equals(c8799oj0.f51333f) && this.unknownFields.equals(c8799oj0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f51327h;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String getName() {
        String str = this.f51331d;
        if (str != 0) {
            return str;
        }
        String c10 = ((AbstractC8373m8) str).c();
        this.f51331d = c10;
        return c10;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f51329b.size(); i12++) {
            i11 += AbstractC5322Ie.a(1, (InterfaceC8095kW) this.f51329b.get(i12));
        }
        if (!AbstractC10181wz.isStringEmpty(this.f51330c)) {
            i11 += AbstractC10181wz.computeStringSize(2, this.f51330c);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f51331d)) {
            i11 += AbstractC10181wz.computeStringSize(3, this.f51331d);
        }
        for (int i13 = 0; i13 < this.f51332e.size(); i13++) {
            i11 += AbstractC5322Ie.a(4, (InterfaceC8095kW) this.f51332e.get(i13));
        }
        for (int i14 = 0; i14 < this.f51333f.size(); i14++) {
            i11 += AbstractC5322Ie.a(5, (InterfaceC8095kW) this.f51333f.get(i14));
        }
        int serializedSize = this.unknownFields.getSerializedSize() + i11;
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
        int hashCode = AbstractC9967vj0.f53228I0.hashCode() + 779;
        if (this.f51329b.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + this.f51329b.hashCode();
        }
        int a10 = AbstractC9124qg0.a(hashCode, 37, 2, 53);
        String str = this.f51330c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f51330c = c10;
            str2 = c10;
        }
        int hashCode2 = getName().hashCode() + ((((str2.hashCode() + a10) * 37) + 3) * 53);
        if (this.f51332e.size() > 0) {
            hashCode2 = AbstractC9124qg0.a(hashCode2, 37, 4, 53) + this.f51332e.hashCode();
        }
        if (this.f51333f.size() > 0) {
            hashCode2 = AbstractC9124qg0.a(hashCode2, 37, 5, 53) + this.f51333f.hashCode();
        }
        int hashCode3 = this.unknownFields.hashCode() + (hashCode2 * 29);
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53230J0.a(C8799oj0.class, C8632nj0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f51334g;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f51334g = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f51327h.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        for (int i10 = 0; i10 < this.f51329b.size(); i10++) {
            abstractC5322Ie.b(1, (InterfaceC8095kW) this.f51329b.get(i10));
        }
        if (!AbstractC10181wz.isStringEmpty(this.f51330c)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 2, this.f51330c);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f51331d)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 3, this.f51331d);
        }
        for (int i11 = 0; i11 < this.f51332e.size(); i11++) {
            abstractC5322Ie.b(4, (InterfaceC8095kW) this.f51332e.get(i11));
        }
        for (int i12 = 0; i12 < this.f51333f.size(); i12++) {
            abstractC5322Ie.b(5, (InterfaceC8095kW) this.f51333f.get(i12));
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f51327h;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C8632nj0((C7011dz) interfaceC7512gz);
    }

    public C8799oj0() {
        this.f51334g = (byte) -1;
        List list = Collections.EMPTY_LIST;
        this.f51329b = list;
        this.f51330c = "";
        this.f51331d = "";
        this.f51332e = list;
        this.f51333f = list;
    }

    public C8799oj0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this();
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        int i10 = 0;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 == 10) {
                            if ((i10 & 1) == 0) {
                                this.f51329b = new ArrayList();
                                i10 |= 1;
                            }
                            this.f51329b.add((C9299rj0) abstractC4916Be.a(C9299rj0.f52117g, c10670zv));
                        } else if (s10 == 18) {
                            this.f51330c = abstractC4916Be.r();
                        } else if (s10 == 26) {
                            this.f51331d = abstractC4916Be.r();
                        } else if (s10 == 34) {
                            if ((i10 & 2) == 0) {
                                this.f51332e = new ArrayList();
                                i10 |= 2;
                            }
                            this.f51332e.add((C8298lj0) abstractC4916Be.a(C8298lj0.f50076j, c10670zv));
                        } else if (s10 != 42) {
                            if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                            }
                        } else {
                            if ((i10 & 4) == 0) {
                                this.f51333f = new ArrayList();
                                i10 |= 4;
                            }
                            this.f51333f.add((C9800uj0) abstractC4916Be.a(C9800uj0.f52927g, c10670zv));
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
                if ((i10 & 1) != 0) {
                    this.f51329b = Collections.unmodifiableList(this.f51329b);
                }
                if ((i10 & 2) != 0) {
                    this.f51332e = Collections.unmodifiableList(this.f51332e);
                }
                if ((i10 & 4) != 0) {
                    this.f51333f = Collections.unmodifiableList(this.f51333f);
                }
                this.unknownFields = a10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        if ((i10 & 1) != 0) {
            this.f51329b = Collections.unmodifiableList(this.f51329b);
        }
        if ((i10 & 2) != 0) {
            this.f51332e = Collections.unmodifiableList(this.f51332e);
        }
        if ((i10 & 4) != 0) {
            this.f51333f = Collections.unmodifiableList(this.f51333f);
        }
        this.unknownFields = a10.build();
        makeExtensionsImmutable();
    }
}
