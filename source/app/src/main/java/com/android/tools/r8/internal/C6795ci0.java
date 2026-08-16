package com.android.tools.r8.internal;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C6795ci0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C6795ci0 f47136h = new C6795ci0();

    public static final C6462ai0 f47137i = new C6462ai0();

    public C9296ri0 f47138b;

    public List f47139c;

    public List f47140d;

    public List f47141e;

    public List f47142f;

    public byte f47143g;

    public C6795ci0(C6629bi0 c6629bi0) {
        super(c6629bi0);
        this.f47143g = (byte) -1;
    }

    public static C6795ci0 a(InputStream inputStream) {
        return (C6795ci0) AbstractC10181wz.parseWithIOException(f47137i, inputStream);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C6795ci0)) {
            return super.equals(obj);
        }
        C6795ci0 c6795ci0 = (C6795ci0) obj;
        C9296ri0 c9296ri0 = this.f47138b;
        boolean z10 = c9296ri0 != null;
        C9296ri0 c9296ri02 = c6795ci0.f47138b;
        if (z10 != (c9296ri02 != null)) {
            return false;
        }
        if (c9296ri0 != null) {
            if (c9296ri02 == null) {
                c9296ri02 = C9296ri0.f52111d;
            }
            if (!c9296ri0.equals(c9296ri02)) {
                return false;
            }
        }
        return this.f47139c.equals(c6795ci0.f47139c) && this.f47140d.equals(c6795ci0.f47140d) && this.f47141e.equals(c6795ci0.f47141e) && this.f47142f.equals(c6795ci0.f47142f) && this.unknownFields.equals(c6795ci0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f47136h;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        C9296ri0 c9296ri0 = this.f47138b;
        int a10 = c9296ri0 != null ? AbstractC5322Ie.a(1, c9296ri0) : 0;
        for (int i11 = 0; i11 < this.f47139c.size(); i11++) {
            a10 += AbstractC5322Ie.a(2, (InterfaceC8095kW) this.f47139c.get(i11));
        }
        for (int i12 = 0; i12 < this.f47140d.size(); i12++) {
            a10 += AbstractC5322Ie.a(3, (InterfaceC8095kW) this.f47140d.get(i12));
        }
        for (int i13 = 0; i13 < this.f47141e.size(); i13++) {
            a10 += AbstractC5322Ie.a(4, (InterfaceC8095kW) this.f47141e.get(i13));
        }
        for (int i14 = 0; i14 < this.f47142f.size(); i14++) {
            a10 += AbstractC5322Ie.a(5, (InterfaceC8095kW) this.f47142f.get(i14));
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
        int hashCode = AbstractC9967vj0.f53282k.hashCode() + 779;
        C9296ri0 c9296ri0 = this.f47138b;
        if (c9296ri0 != null) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + c9296ri0.hashCode();
        }
        if (this.f47139c.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 2, 53) + this.f47139c.hashCode();
        }
        if (this.f47140d.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 3, 53) + this.f47140d.hashCode();
        }
        if (this.f47141e.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 4, 53) + this.f47141e.hashCode();
        }
        if (this.f47142f.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 5, 53) + this.f47142f.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + (hashCode * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53284l.a(C6795ci0.class, C6629bi0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f47143g;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f47143g = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f47136h.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        C9296ri0 c9296ri0 = this.f47138b;
        if (c9296ri0 != null) {
            abstractC5322Ie.b(1, c9296ri0);
        }
        for (int i10 = 0; i10 < this.f47139c.size(); i10++) {
            abstractC5322Ie.b(2, (InterfaceC8095kW) this.f47139c.get(i10));
        }
        for (int i11 = 0; i11 < this.f47140d.size(); i11++) {
            abstractC5322Ie.b(3, (InterfaceC8095kW) this.f47140d.get(i11));
        }
        for (int i12 = 0; i12 < this.f47141e.size(); i12++) {
            abstractC5322Ie.b(4, (InterfaceC8095kW) this.f47141e.get(i12));
        }
        for (int i13 = 0; i13 < this.f47142f.size(); i13++) {
            abstractC5322Ie.b(5, (InterfaceC8095kW) this.f47142f.get(i13));
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f47136h;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C6629bi0((C7011dz) interfaceC7512gz);
    }

    public C6795ci0() {
        this.f47143g = (byte) -1;
        List list = Collections.EMPTY_LIST;
        this.f47139c = list;
        this.f47140d = list;
        this.f47141e = list;
        this.f47142f = list;
    }

    @Override
    public final C6629bi0 toBuilder() {
        return this == f47136h ? new C6629bi0() : new C6629bi0().a(this);
    }

    public C6795ci0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
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
                            C9296ri0 c9296ri0 = this.f47138b;
                            C9130qi0 builder = c9296ri0 != null ? c9296ri0.toBuilder() : null;
                            C9296ri0 c9296ri02 = (C9296ri0) abstractC4916Be.a(C9296ri0.f52112e, c10670zv);
                            this.f47138b = c9296ri02;
                            if (builder != null) {
                                builder.a(c9296ri02);
                                this.f47138b = builder.m1181buildPartial();
                            }
                        } else if (s10 == 18) {
                            if ((i10 & 1) == 0) {
                                this.f47139c = new ArrayList();
                                i10 |= 1;
                            }
                            this.f47139c.add((C10629zh0) abstractC4916Be.a(C10629zh0.f54451g, c10670zv));
                        } else if (s10 == 26) {
                            if ((i10 & 2) == 0) {
                                this.f47140d = new ArrayList();
                                i10 |= 2;
                            }
                            this.f47140d.add((C9293rh0) abstractC4916Be.a(C9293rh0.f52101g, c10670zv));
                        } else if (s10 == 34) {
                            if ((i10 & 4) == 0) {
                                this.f47141e = new ArrayList();
                                i10 |= 4;
                            }
                            this.f47141e.add((C5912Si0) abstractC4916Be.a(C5912Si0.f44285f, c10670zv));
                        } else if (s10 != 42) {
                            if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                            }
                        } else {
                            if ((i10 & 8) == 0) {
                                this.f47142f = new ArrayList();
                                i10 |= 8;
                            }
                            this.f47142f.add((C5850Rg0) abstractC4916Be.a(C5850Rg0.f43959f, c10670zv));
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
                    this.f47139c = Collections.unmodifiableList(this.f47139c);
                }
                if ((i10 & 2) != 0) {
                    this.f47140d = Collections.unmodifiableList(this.f47140d);
                }
                if ((i10 & 4) != 0) {
                    this.f47141e = Collections.unmodifiableList(this.f47141e);
                }
                if ((i10 & 8) != 0) {
                    this.f47142f = Collections.unmodifiableList(this.f47142f);
                }
                this.unknownFields = a10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        if ((i10 & 1) != 0) {
            this.f47139c = Collections.unmodifiableList(this.f47139c);
        }
        if ((i10 & 2) != 0) {
            this.f47140d = Collections.unmodifiableList(this.f47140d);
        }
        if ((i10 & 4) != 0) {
            this.f47141e = Collections.unmodifiableList(this.f47141e);
        }
        if ((i10 & 8) != 0) {
            this.f47142f = Collections.unmodifiableList(this.f47142f);
        }
        this.unknownFields = a10.build();
        makeExtensionsImmutable();
    }
}
