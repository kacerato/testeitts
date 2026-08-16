package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C10629zh0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C10629zh0 f54450f = new C10629zh0();

    public static final C10295xh0 f54451g = new C10295xh0();

    public C4983Ch0 f54452b;

    public volatile String f54453c;

    public List f54454d;

    public byte f54455e;

    public C10629zh0(C10462yh0 c10462yh0) {
        super(c10462yh0);
        this.f54455e = (byte) -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String b() {
        String str = this.f54453c;
        if (str != 0) {
            return str;
        }
        String c10 = ((AbstractC8373m8) str).c();
        this.f54453c = c10;
        return c10;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C10629zh0)) {
            return super.equals(obj);
        }
        C10629zh0 c10629zh0 = (C10629zh0) obj;
        C4983Ch0 c4983Ch0 = this.f54452b;
        boolean z10 = c4983Ch0 != null;
        C4983Ch0 c4983Ch02 = c10629zh0.f54452b;
        if (z10 != (c4983Ch02 != null)) {
            return false;
        }
        if (c4983Ch0 != null) {
            if (c4983Ch02 == null) {
                c4983Ch02 = C4983Ch0.f39315d;
            }
            if (!c4983Ch0.equals(c4983Ch02)) {
                return false;
            }
        }
        return b().equals(c10629zh0.b()) && this.f54454d.equals(c10629zh0.f54454d) && this.unknownFields.equals(c10629zh0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f54450f;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        C4983Ch0 c4983Ch0 = this.f54452b;
        int a10 = c4983Ch0 != null ? AbstractC5322Ie.a(1, c4983Ch0) : 0;
        if (!AbstractC10181wz.isStringEmpty(this.f54453c)) {
            a10 += AbstractC10181wz.computeStringSize(2, this.f54453c);
        }
        for (int i11 = 0; i11 < this.f54454d.size(); i11++) {
            a10 += AbstractC5322Ie.a(3, (InterfaceC8095kW) this.f54454d.get(i11));
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
        int hashCode = AbstractC9967vj0.f53290o.hashCode() + 779;
        C4983Ch0 c4983Ch0 = this.f54452b;
        if (c4983Ch0 != null) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + c4983Ch0.hashCode();
        }
        int hashCode2 = b().hashCode() + AbstractC9124qg0.a(hashCode, 37, 2, 53);
        if (this.f54454d.size() > 0) {
            hashCode2 = this.f54454d.hashCode() + AbstractC9124qg0.a(hashCode2, 37, 3, 53);
        }
        int hashCode3 = this.unknownFields.hashCode() + (hashCode2 * 29);
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53292p.a(C10629zh0.class, C10462yh0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f54455e;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f54455e = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        f54450f.getClass();
        return new C10462yh0();
    }

    @Override
    public final InterfaceC7095eW toBuilder() {
        return this == f54450f ? new C10462yh0() : new C10462yh0().a(this);
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        C4983Ch0 c4983Ch0 = this.f54452b;
        if (c4983Ch0 != null) {
            abstractC5322Ie.b(1, c4983Ch0);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f54453c)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 2, this.f54453c);
        }
        for (int i10 = 0; i10 < this.f54454d.size(); i10++) {
            abstractC5322Ie.b(3, (InterfaceC8095kW) this.f54454d.get(i10));
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f54450f;
    }

    public C10629zh0() {
        this.f54455e = (byte) -1;
        this.f54453c = "";
        this.f54454d = Collections.EMPTY_LIST;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C10462yh0((C7011dz) interfaceC7512gz);
    }

    @Override
    public final InterfaceC7928jW toBuilder() {
        return this == f54450f ? new C10462yh0() : new C10462yh0().a(this);
    }

    public C10629zh0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
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
                            C4983Ch0 c4983Ch0 = this.f54452b;
                            C4925Bh0 builder = c4983Ch0 != null ? c4983Ch0.toBuilder() : null;
                            C4983Ch0 c4983Ch02 = (C4983Ch0) abstractC4916Be.a(C4983Ch0.f39316e, c10670zv);
                            this.f54452b = c4983Ch02;
                            if (builder != null) {
                                builder.a(c4983Ch02);
                                this.f54452b = builder.m1181buildPartial();
                            }
                        } else if (s10 == 18) {
                            this.f54453c = abstractC4916Be.r();
                        } else if (s10 != 26) {
                            if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                            }
                        } else {
                            if (!z11) {
                                this.f54454d = new ArrayList();
                                z11 = true;
                            }
                            this.f54454d.add((C6085Vi0) abstractC4916Be.a(C6085Vi0.f45130g, c10670zv));
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
                    this.f54454d = Collections.unmodifiableList(this.f54454d);
                }
                this.unknownFields = a10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        if (z11) {
            this.f54454d = Collections.unmodifiableList(this.f54454d);
        }
        this.unknownFields = a10.build();
        makeExtensionsImmutable();
    }
}
