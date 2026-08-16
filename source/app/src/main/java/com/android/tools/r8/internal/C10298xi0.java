package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C10298xi0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C10298xi0 f53820f = new C10298xi0();

    public static final C9463si0 f53821g = new C9463si0();

    public C6311Zh0 f53822b;

    public C7295fi0 f53823c;

    public List f53824d;

    public byte f53825e;

    public C10298xi0(C9630ti0 c9630ti0) {
        super(c9630ti0);
        this.f53825e = (byte) -1;
    }

    @Override
    public final C9630ti0 toBuilder() {
        return this == f53820f ? new C9630ti0() : new C9630ti0().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C10298xi0)) {
            return super.equals(obj);
        }
        C10298xi0 c10298xi0 = (C10298xi0) obj;
        C6311Zh0 c6311Zh0 = this.f53822b;
        boolean z10 = c6311Zh0 != null;
        C6311Zh0 c6311Zh02 = c10298xi0.f53822b;
        if (z10 != (c6311Zh02 != null)) {
            return false;
        }
        if (c6311Zh0 != null) {
            if (c6311Zh02 == null) {
                c6311Zh02 = C6311Zh0.f46320j;
            }
            if (!c6311Zh0.equals(c6311Zh02)) {
                return false;
            }
        }
        C7295fi0 c7295fi0 = this.f53823c;
        boolean z11 = c7295fi0 != null;
        C7295fi0 c7295fi02 = c10298xi0.f53823c;
        if (z11 != (c7295fi02 != null)) {
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
        return this.f53824d.equals(c10298xi0.f53824d) && this.unknownFields.equals(c10298xi0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f53820f;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        C6311Zh0 c6311Zh0 = this.f53822b;
        int a10 = c6311Zh0 != null ? AbstractC5322Ie.a(1, c6311Zh0) : 0;
        C7295fi0 c7295fi0 = this.f53823c;
        if (c7295fi0 != null) {
            a10 += AbstractC5322Ie.a(2, c7295fi0);
        }
        for (int i11 = 0; i11 < this.f53824d.size(); i11++) {
            a10 += AbstractC5322Ie.a(3, (InterfaceC8095kW) this.f53824d.get(i11));
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
        int hashCode = AbstractC9967vj0.f53295q0.hashCode() + 779;
        C6311Zh0 c6311Zh0 = this.f53822b;
        if (c6311Zh0 != null) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + c6311Zh0.hashCode();
        }
        C7295fi0 c7295fi0 = this.f53823c;
        if (c7295fi0 != null) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 2, 53) + c7295fi0.hashCode();
        }
        if (this.f53824d.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 3, 53) + this.f53824d.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + (hashCode * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53297r0.a(C10298xi0.class, C9630ti0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f53825e;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f53825e = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f53820f.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        C6311Zh0 c6311Zh0 = this.f53822b;
        if (c6311Zh0 != null) {
            abstractC5322Ie.b(1, c6311Zh0);
        }
        C7295fi0 c7295fi0 = this.f53823c;
        if (c7295fi0 != null) {
            abstractC5322Ie.b(2, c7295fi0);
        }
        for (int i10 = 0; i10 < this.f53824d.size(); i10++) {
            abstractC5322Ie.b(3, (InterfaceC8095kW) this.f53824d.get(i10));
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f53820f;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C9630ti0((C7011dz) interfaceC7512gz);
    }

    public C10298xi0() {
        this.f53825e = (byte) -1;
        this.f53824d = Collections.EMPTY_LIST;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C10298xi0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
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
                            C6311Zh0 c6311Zh0 = this.f53822b;
                            C6197Xh0 builder = c6311Zh0 != null ? c6311Zh0.toBuilder() : null;
                            C6311Zh0 c6311Zh02 = (C6311Zh0) abstractC4916Be.a(C6311Zh0.f46321k, c10670zv);
                            this.f53822b = c6311Zh02;
                            if (builder != null) {
                                builder.a(c6311Zh02);
                                this.f53822b = builder.m1181buildPartial();
                            }
                        } else if (s10 == 18) {
                            C7295fi0 c7295fi0 = this.f53823c;
                            C7128ei0 builder2 = c7295fi0 != null ? c7295fi0.toBuilder() : null;
                            C7295fi0 c7295fi02 = (C7295fi0) abstractC4916Be.a(C7295fi0.f48070f, c10670zv);
                            this.f53823c = c7295fi02;
                            if (builder2 != null) {
                                builder2.a(c7295fi02);
                                this.f53823c = builder2.m1181buildPartial();
                            }
                        } else if (s10 != 26) {
                            if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                            }
                        } else {
                            if (objArr == false) {
                                this.f53824d = new ArrayList();
                                objArr = true;
                            }
                            this.f53824d.add((C10131wi0) abstractC4916Be.a(C10131wi0.f53574h, c10670zv));
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
                    this.f53824d = Collections.unmodifiableList(this.f53824d);
                }
                this.unknownFields = a10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        if (objArr != false) {
            this.f53824d = Collections.unmodifiableList(this.f53824d);
        }
        this.unknownFields = a10.build();
        makeExtensionsImmutable();
    }
}
