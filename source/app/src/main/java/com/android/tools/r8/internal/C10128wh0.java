package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C10128wh0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C9460sh0 f53561h = new C9460sh0();

    public static final C10128wh0 f53562i = new C10128wh0();

    public static final C9627th0 f53563j = new C9627th0();

    public C7295fi0 f53564b;

    public volatile String f53565c;

    public List f53566d;

    public int f53567e;

    public int f53568f;

    public byte f53569g;

    public C10128wh0(C9794uh0 c9794uh0) {
        super(c9794uh0);
        this.f53569g = (byte) -1;
    }

    @Override
    public final C9794uh0 toBuilder() {
        return this == f53562i ? new C9794uh0() : new C9794uh0().a(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C10128wh0)) {
            return super.equals(obj);
        }
        C10128wh0 c10128wh0 = (C10128wh0) obj;
        C7295fi0 c7295fi0 = this.f53564b;
        boolean z10 = c7295fi0 != null;
        C7295fi0 c7295fi02 = c10128wh0.f53564b;
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
        String str = this.f53565c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f53565c = c10;
            str2 = c10;
        }
        Object obj2 = c10128wh0.f53565c;
        Object obj3 = obj2;
        if (obj2 == null) {
            String c11 = ((AbstractC8373m8) obj2).c();
            c10128wh0.f53565c = c11;
            obj3 = c11;
        }
        return str2.equals(obj3) && this.f53566d.equals(c10128wh0.f53566d) && this.f53568f == c10128wh0.f53568f && this.unknownFields.equals(c10128wh0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f53562i;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        C7295fi0 c7295fi0 = this.f53564b;
        int a10 = c7295fi0 != null ? AbstractC5322Ie.a(1, c7295fi0) : 0;
        if (!AbstractC10181wz.isStringEmpty(this.f53565c)) {
            a10 += AbstractC10181wz.computeStringSize(2, this.f53565c);
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f53566d.size(); i12++) {
            i11 += AbstractC5322Ie.a(((Integer) this.f53566d.get(i12)).intValue());
        }
        int i13 = a10 + i11;
        if (!new VI(this.f53566d, f53561h).isEmpty()) {
            i13 = i13 + 1 + AbstractC5322Ie.c(i11);
        }
        this.f53567e = i11;
        int i14 = this.f53568f;
        if (i14 != 0) {
            i13 = AbstractC5559Mg.a(i14, AbstractC5322Ie.b(4), i13);
        }
        int serializedSize = this.unknownFields.getSerializedSize() + i13;
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
        int hashCode = AbstractC9967vj0.f53211A.hashCode() + 779;
        C7295fi0 c7295fi0 = this.f53564b;
        if (c7295fi0 != null) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + c7295fi0.hashCode();
        }
        int a10 = AbstractC9124qg0.a(hashCode, 37, 2, 53);
        String str = this.f53565c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f53565c = c10;
            str2 = c10;
        }
        int hashCode2 = str2.hashCode() + a10;
        if (this.f53566d.size() > 0) {
            hashCode2 = this.f53566d.hashCode() + AbstractC9124qg0.a(hashCode2, 37, 3, 53);
        }
        int hashCode3 = this.unknownFields.hashCode() + ((AbstractC9124qg0.a(hashCode2, 37, 4, 53) + this.f53568f) * 29);
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53213B.a(C10128wh0.class, C9794uh0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f53569g;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f53569g = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f53562i.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        getSerializedSize();
        C7295fi0 c7295fi0 = this.f53564b;
        if (c7295fi0 != null) {
            abstractC5322Ie.b(1, c7295fi0);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f53565c)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 2, this.f53565c);
        }
        if (new VI(this.f53566d, f53561h).f45015b.size() > 0) {
            abstractC5322Ie.g(26);
            abstractC5322Ie.g(this.f53567e);
        }
        for (int i10 = 0; i10 < this.f53566d.size(); i10++) {
            abstractC5322Ie.f(((Integer) this.f53566d.get(i10)).intValue());
        }
        int i11 = this.f53568f;
        if (i11 != 0) {
            abstractC5322Ie.e(4, i11);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f53562i;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C9794uh0((C7011dz) interfaceC7512gz);
    }

    public C10128wh0() {
        this.f53569g = (byte) -1;
        this.f53565c = "";
        this.f53566d = Collections.EMPTY_LIST;
    }

    public C10128wh0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this();
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 == 10) {
                            C7295fi0 c7295fi0 = this.f53564b;
                            C7128ei0 builder = c7295fi0 != null ? c7295fi0.toBuilder() : null;
                            C7295fi0 c7295fi02 = (C7295fi0) abstractC4916Be.a(C7295fi0.f48070f, c10670zv);
                            this.f53564b = c7295fi02;
                            if (builder != null) {
                                builder.a(c7295fi02);
                                this.f53564b = builder.m1181buildPartial();
                            }
                        } else if (s10 == 18) {
                            this.f53565c = abstractC4916Be.r();
                        } else if (s10 == 24) {
                            int f10 = abstractC4916Be.f();
                            if (!z11) {
                                this.f53566d = new ArrayList();
                                z11 = true;
                            }
                            this.f53566d.add(Integer.valueOf(f10));
                        } else if (s10 == 26) {
                            int d10 = abstractC4916Be.d(abstractC4916Be.l());
                            while (abstractC4916Be.b() > 0) {
                                int f11 = abstractC4916Be.f();
                                if (!z11) {
                                    this.f53566d = new ArrayList();
                                    z11 = true;
                                }
                                this.f53566d.add(Integer.valueOf(f11));
                            }
                            abstractC4916Be.c(d10);
                        } else if (s10 != 32) {
                            if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                            }
                        } else {
                            this.f53568f = abstractC4916Be.t();
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
                    this.f53566d = Collections.unmodifiableList(this.f53566d);
                }
                this.unknownFields = a10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        if (z11) {
            this.f53566d = Collections.unmodifiableList(this.f53566d);
        }
        this.unknownFields = a10.build();
        makeExtensionsImmutable();
    }
}
