package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C6024Ug0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C6024Ug0 f44826j = new C6024Ug0();

    public static final C5908Sg0 f44827k = new C5908Sg0();

    public C6195Xg0 f44828b;

    public volatile String f44829c;

    public C7798ij0 f44830d;

    public C9624tg0 f44831e;

    public C10128wh0 f44832f;

    public List f44833g;

    public C8295li0 f44834h;

    public byte f44835i;

    public C6024Ug0(C5966Tg0 c5966Tg0) {
        super(c5966Tg0);
        this.f44835i = (byte) -1;
    }

    public final boolean b() {
        return this.f44832f != null;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C6024Ug0)) {
            return super.equals(obj);
        }
        C6024Ug0 c6024Ug0 = (C6024Ug0) obj;
        C6195Xg0 c6195Xg0 = this.f44828b;
        boolean z10 = c6195Xg0 != null;
        C6195Xg0 c6195Xg02 = c6024Ug0.f44828b;
        if (z10 != (c6195Xg02 != null)) {
            return false;
        }
        if (c6195Xg0 != null) {
            if (c6195Xg02 == null) {
                c6195Xg02 = C6195Xg0.f45787d;
            }
            if (!c6195Xg0.equals(c6195Xg02)) {
                return false;
            }
        }
        if (!getName().equals(c6024Ug0.getName())) {
            return false;
        }
        C7798ij0 c7798ij0 = this.f44830d;
        boolean z11 = c7798ij0 != null;
        C7798ij0 c7798ij02 = c6024Ug0.f44830d;
        if (z11 != (c7798ij02 != null)) {
            return false;
        }
        if (c7798ij0 != null) {
            if (c7798ij02 == null) {
                c7798ij02 = C7798ij0.f49034g;
            }
            if (!c7798ij0.equals(c7798ij02)) {
                return false;
            }
        }
        C9624tg0 c9624tg0 = this.f44831e;
        boolean z12 = c9624tg0 != null;
        C9624tg0 c9624tg02 = c6024Ug0.f44831e;
        if (z12 != (c9624tg02 != null)) {
            return false;
        }
        if (c9624tg0 != null) {
            if (c9624tg02 == null) {
                c9624tg02 = C9624tg0.f52661e;
            }
            if (!c9624tg0.equals(c9624tg02)) {
                return false;
            }
        }
        if (b() != c6024Ug0.b()) {
            return false;
        }
        if (b()) {
            C10128wh0 c10128wh0 = this.f44832f;
            if (c10128wh0 == null) {
                c10128wh0 = C10128wh0.f53562i;
            }
            C10128wh0 c10128wh02 = c6024Ug0.f44832f;
            if (c10128wh02 == null) {
                c10128wh02 = C10128wh0.f53562i;
            }
            if (!c10128wh0.equals(c10128wh02)) {
                return false;
            }
        }
        if (!this.f44833g.equals(c6024Ug0.f44833g)) {
            return false;
        }
        C8295li0 c8295li0 = this.f44834h;
        boolean z13 = c8295li0 != null;
        C8295li0 c8295li02 = c6024Ug0.f44834h;
        if (z13 != (c8295li02 != null)) {
            return false;
        }
        if (c8295li0 != null) {
            if (c8295li02 == null) {
                c8295li02 = C8295li0.f50069e;
            }
            if (!c8295li0.equals(c8295li02)) {
                return false;
            }
        }
        return this.unknownFields.equals(c6024Ug0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f44826j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String getName() {
        String str = this.f44829c;
        if (str != 0) {
            return str;
        }
        String c10 = ((AbstractC8373m8) str).c();
        this.f44829c = c10;
        return c10;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        C6195Xg0 c6195Xg0 = this.f44828b;
        int a10 = c6195Xg0 != null ? AbstractC5322Ie.a(1, c6195Xg0) : 0;
        if (!AbstractC10181wz.isStringEmpty(this.f44829c)) {
            a10 += AbstractC10181wz.computeStringSize(2, this.f44829c);
        }
        C7798ij0 c7798ij0 = this.f44830d;
        if (c7798ij0 != null) {
            a10 += AbstractC5322Ie.a(3, c7798ij0);
        }
        C9624tg0 c9624tg0 = this.f44831e;
        if (c9624tg0 != null) {
            a10 += AbstractC5322Ie.a(4, c9624tg0);
        }
        C10128wh0 c10128wh0 = this.f44832f;
        if (c10128wh0 != null) {
            a10 += AbstractC5322Ie.a(5, c10128wh0);
        }
        for (int i11 = 0; i11 < this.f44833g.size(); i11++) {
            a10 += AbstractC5322Ie.a(6, (InterfaceC8095kW) this.f44833g.get(i11));
        }
        C8295li0 c8295li0 = this.f44834h;
        if (c8295li0 != null) {
            a10 += AbstractC5322Ie.a(7, c8295li0);
        }
        int serializedSize = this.unknownFields.getSerializedSize() + a10;
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
        int hashCode = AbstractC9967vj0.f53223G.hashCode() + 779;
        C6195Xg0 c6195Xg0 = this.f44828b;
        if (c6195Xg0 != null) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + c6195Xg0.hashCode();
        }
        int hashCode2 = getName().hashCode() + AbstractC9124qg0.a(hashCode, 37, 2, 53);
        C7798ij0 c7798ij0 = this.f44830d;
        if (c7798ij0 != null) {
            hashCode2 = AbstractC9124qg0.a(hashCode2, 37, 3, 53) + c7798ij0.hashCode();
        }
        C9624tg0 c9624tg0 = this.f44831e;
        if (c9624tg0 != null) {
            hashCode2 = AbstractC9124qg0.a(hashCode2, 37, 4, 53) + c9624tg0.hashCode();
        }
        if (b()) {
            int a10 = AbstractC9124qg0.a(hashCode2, 37, 5, 53);
            C10128wh0 c10128wh0 = this.f44832f;
            if (c10128wh0 == null) {
                c10128wh0 = C10128wh0.f53562i;
            }
            hashCode2 = c10128wh0.hashCode() + a10;
        }
        if (this.f44833g.size() > 0) {
            hashCode2 = this.f44833g.hashCode() + AbstractC9124qg0.a(hashCode2, 37, 6, 53);
        }
        C8295li0 c8295li0 = this.f44834h;
        if (c8295li0 != null) {
            hashCode2 = AbstractC9124qg0.a(hashCode2, 37, 7, 53) + c8295li0.hashCode();
        }
        int hashCode3 = this.unknownFields.hashCode() + (hashCode2 * 29);
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53225H.a(C6024Ug0.class, C5966Tg0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f44835i;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f44835i = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        f44826j.getClass();
        return new C5966Tg0();
    }

    @Override
    public final InterfaceC7095eW toBuilder() {
        return this == f44826j ? new C5966Tg0() : new C5966Tg0().a(this);
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        C6195Xg0 c6195Xg0 = this.f44828b;
        if (c6195Xg0 != null) {
            abstractC5322Ie.b(1, c6195Xg0);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f44829c)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 2, this.f44829c);
        }
        C7798ij0 c7798ij0 = this.f44830d;
        if (c7798ij0 != null) {
            abstractC5322Ie.b(3, c7798ij0);
        }
        C9624tg0 c9624tg0 = this.f44831e;
        if (c9624tg0 != null) {
            abstractC5322Ie.b(4, c9624tg0);
        }
        C10128wh0 c10128wh0 = this.f44832f;
        if (c10128wh0 != null) {
            abstractC5322Ie.b(5, c10128wh0);
        }
        for (int i10 = 0; i10 < this.f44833g.size(); i10++) {
            abstractC5322Ie.b(6, (InterfaceC8095kW) this.f44833g.get(i10));
        }
        C8295li0 c8295li0 = this.f44834h;
        if (c8295li0 != null) {
            abstractC5322Ie.b(7, c8295li0);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f44826j;
    }

    public C6024Ug0() {
        this.f44835i = (byte) -1;
        this.f44829c = "";
        this.f44833g = Collections.EMPTY_LIST;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C5966Tg0((C7011dz) interfaceC7512gz);
    }

    @Override
    public final InterfaceC7928jW toBuilder() {
        return this == f44826j ? new C5966Tg0() : new C5966Tg0().a(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C6024Ug0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this();
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        Object[] objArr = false;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 == 10) {
                            C6195Xg0 c6195Xg0 = this.f44828b;
                            C6138Wg0 builder = c6195Xg0 != null ? c6195Xg0.toBuilder() : null;
                            C6195Xg0 c6195Xg02 = (C6195Xg0) abstractC4916Be.a(C6195Xg0.f45788e, c10670zv);
                            this.f44828b = c6195Xg02;
                            if (builder != null) {
                                builder.a(c6195Xg02);
                                this.f44828b = builder.m1181buildPartial();
                            }
                        } else if (s10 == 18) {
                            this.f44829c = abstractC4916Be.r();
                        } else if (s10 == 26) {
                            C7798ij0 c7798ij0 = this.f44830d;
                            C7465gj0 builder2 = c7798ij0 != null ? c7798ij0.toBuilder() : null;
                            C7798ij0 c7798ij02 = (C7798ij0) abstractC4916Be.a(C7798ij0.f49035h, c10670zv);
                            this.f44830d = c7798ij02;
                            if (builder2 != null) {
                                builder2.a(c7798ij02);
                                this.f44830d = builder2.m1181buildPartial();
                            }
                        } else if (s10 == 34) {
                            C9624tg0 c9624tg0 = this.f44831e;
                            C9457sg0 builder3 = c9624tg0 != null ? c9624tg0.toBuilder() : null;
                            C9624tg0 c9624tg02 = (C9624tg0) abstractC4916Be.a(C9624tg0.f52662f, c10670zv);
                            this.f44831e = c9624tg02;
                            if (builder3 != null) {
                                builder3.a(c9624tg02);
                                this.f44831e = builder3.m1181buildPartial();
                            }
                        } else if (s10 == 42) {
                            C10128wh0 c10128wh0 = this.f44832f;
                            C9794uh0 builder4 = c10128wh0 != null ? c10128wh0.toBuilder() : null;
                            C10128wh0 c10128wh02 = (C10128wh0) abstractC4916Be.a(C10128wh0.f53563j, c10670zv);
                            this.f44832f = c10128wh02;
                            if (builder4 != null) {
                                builder4.a(c10128wh02);
                                this.f44832f = builder4.m1181buildPartial();
                            }
                        } else if (s10 == 50) {
                            if (objArr == false) {
                                this.f44833g = new ArrayList();
                                objArr = true;
                            }
                            this.f44833g.add((C5676Og0) abstractC4916Be.a(C5676Og0.f42950f, c10670zv));
                        } else if (s10 != 58) {
                            if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                            }
                        } else {
                            C8295li0 c8295li0 = this.f44834h;
                            C8128ki0 builder5 = c8295li0 != null ? c8295li0.toBuilder() : null;
                            C8295li0 c8295li02 = (C8295li0) abstractC4916Be.a(C8295li0.f50070f, c10670zv);
                            this.f44834h = c8295li02;
                            if (builder5 != null) {
                                builder5.a(c8295li02);
                                this.f44834h = builder5.m1181buildPartial();
                            }
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
                if (objArr != false) {
                    this.f44833g = Collections.unmodifiableList(this.f44833g);
                }
                this.unknownFields = a10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        if (objArr != false) {
            this.f44833g = Collections.unmodifiableList(this.f44833g);
        }
        this.unknownFields = a10.build();
        makeExtensionsImmutable();
    }
}
