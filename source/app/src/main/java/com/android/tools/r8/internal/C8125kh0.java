package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C8125kh0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C8125kh0 f49720h = new C8125kh0();

    public static final C7792ih0 f49721i = new C7792ih0();

    public volatile String f49722b;

    public C5043Di0 f49723c;

    public List f49724d;

    public List f49725e;

    public C7795ii0 f49726f;

    public byte f49727g;

    public C8125kh0(C7958jh0 c7958jh0) {
        super(c7958jh0);
        this.f49727g = (byte) -1;
    }

    @Override
    public final C7958jh0 toBuilder() {
        return this == f49720h ? new C7958jh0() : new C7958jh0().a(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8125kh0)) {
            return super.equals(obj);
        }
        C8125kh0 c8125kh0 = (C8125kh0) obj;
        String str = this.f49722b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f49722b = c10;
            str2 = c10;
        }
        Object obj2 = c8125kh0.f49722b;
        Object obj3 = obj2;
        if (obj2 == null) {
            String c11 = ((AbstractC8373m8) obj2).c();
            c8125kh0.f49722b = c11;
            obj3 = c11;
        }
        if (!str2.equals(obj3)) {
            return false;
        }
        C5043Di0 c5043Di0 = this.f49723c;
        boolean z10 = c5043Di0 != null;
        C5043Di0 c5043Di02 = c8125kh0.f49723c;
        if (z10 != (c5043Di02 != null)) {
            return false;
        }
        if (c5043Di0 != null) {
            if (c5043Di02 == null) {
                c5043Di02 = C5043Di0.f39598e;
            }
            if (!c5043Di0.equals(c5043Di02)) {
                return false;
            }
        }
        if (!this.f49724d.equals(c8125kh0.f49724d) || !this.f49725e.equals(c8125kh0.f49725e)) {
            return false;
        }
        C7795ii0 c7795ii0 = this.f49726f;
        boolean z11 = c7795ii0 != null;
        C7795ii0 c7795ii02 = c8125kh0.f49726f;
        if (z11 != (c7795ii02 != null)) {
            return false;
        }
        if (c7795ii0 != null) {
            if (c7795ii02 == null) {
                c7795ii02 = C7795ii0.f49025e;
            }
            if (!c7795ii0.equals(c7795ii02)) {
                return false;
            }
        }
        return this.unknownFields.equals(c8125kh0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f49720h;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = !AbstractC10181wz.isStringEmpty(this.f49722b) ? AbstractC10181wz.computeStringSize(1, this.f49722b) : 0;
        C5043Di0 c5043Di0 = this.f49723c;
        if (c5043Di0 != null) {
            computeStringSize += AbstractC5322Ie.a(2, c5043Di0);
        }
        for (int i11 = 0; i11 < this.f49724d.size(); i11++) {
            computeStringSize += AbstractC5322Ie.a(3, (InterfaceC8095kW) this.f49724d.get(i11));
        }
        for (int i12 = 0; i12 < this.f49725e.size(); i12++) {
            computeStringSize += AbstractC5322Ie.a(4, (InterfaceC8095kW) this.f49725e.get(i12));
        }
        C7795ii0 c7795ii0 = this.f49726f;
        if (c7795ii0 != null) {
            computeStringSize += AbstractC5322Ie.a(5, c7795ii0);
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
        int a10 = AbstractC5444Kg.a(AbstractC9967vj0.f53240O0, 779, 37, 1, 53);
        String str = this.f49722b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f49722b = c10;
            str2 = c10;
        }
        int hashCode = str2.hashCode() + a10;
        C5043Di0 c5043Di0 = this.f49723c;
        if (c5043Di0 != null) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 2, 53) + c5043Di0.hashCode();
        }
        if (this.f49724d.size() > 0) {
            hashCode = this.f49724d.hashCode() + AbstractC9124qg0.a(hashCode, 37, 3, 53);
        }
        if (this.f49725e.size() > 0) {
            hashCode = this.f49725e.hashCode() + AbstractC9124qg0.a(hashCode, 37, 4, 53);
        }
        C7795ii0 c7795ii0 = this.f49726f;
        if (c7795ii0 != null) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 5, 53) + c7795ii0.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + (hashCode * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53242P0.a(C8125kh0.class, C7958jh0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f49727g;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f49727g = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f49720h.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if (!AbstractC10181wz.isStringEmpty(this.f49722b)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 1, this.f49722b);
        }
        C5043Di0 c5043Di0 = this.f49723c;
        if (c5043Di0 != null) {
            abstractC5322Ie.b(2, c5043Di0);
        }
        for (int i10 = 0; i10 < this.f49724d.size(); i10++) {
            abstractC5322Ie.b(3, (InterfaceC8095kW) this.f49724d.get(i10));
        }
        for (int i11 = 0; i11 < this.f49725e.size(); i11++) {
            abstractC5322Ie.b(4, (InterfaceC8095kW) this.f49725e.get(i11));
        }
        C7795ii0 c7795ii0 = this.f49726f;
        if (c7795ii0 != null) {
            abstractC5322Ie.b(5, c7795ii0);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f49720h;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C7958jh0((C7011dz) interfaceC7512gz);
    }

    public C8125kh0() {
        this.f49727g = (byte) -1;
        this.f49722b = "";
        List list = Collections.EMPTY_LIST;
        this.f49724d = list;
        this.f49725e = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v6 */
    public C8125kh0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this();
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        char c10 = 0;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 != 10) {
                            if (s10 == 18) {
                                C5043Di0 c5043Di0 = this.f49723c;
                                C10632zi0 builder = c5043Di0 != null ? c5043Di0.toBuilder() : null;
                                C5043Di0 c5043Di02 = (C5043Di0) abstractC4916Be.a(C5043Di0.f39599f, c10670zv);
                                this.f49723c = c5043Di02;
                                if (builder != null) {
                                    builder.a(c5043Di02);
                                    this.f49723c = builder.m1181buildPartial();
                                }
                            } else if (s10 == 26) {
                                int i10 = (c10 == true ? 1 : 0) & 1;
                                c10 = c10;
                                if (i10 == 0) {
                                    this.f49724d = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | 1;
                                }
                                this.f49724d.add((C6632bj0) abstractC4916Be.a(C6632bj0.f46847f, c10670zv));
                            } else if (s10 == 34) {
                                int i11 = (c10 == true ? 1 : 0) & 2;
                                c10 = c10;
                                if (i11 == 0) {
                                    this.f49725e = new ArrayList();
                                    c10 = (c10 == true ? 1 : 0) | 2;
                                }
                                this.f49725e.add((C8793oh0) abstractC4916Be.a(C8793oh0.f51316g, c10670zv));
                            } else if (s10 != 42) {
                                if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                                }
                            } else {
                                C7795ii0 c7795ii0 = this.f49726f;
                                C7629hi0 builder2 = c7795ii0 != null ? c7795ii0.toBuilder() : null;
                                C7795ii0 c7795ii02 = (C7795ii0) abstractC4916Be.a(C7795ii0.f49026f, c10670zv);
                                this.f49726f = c7795ii02;
                                if (builder2 != null) {
                                    builder2.a(c7795ii02);
                                    this.f49726f = builder2.m1181buildPartial();
                                }
                            }
                        } else {
                            this.f49722b = abstractC4916Be.r();
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
                if (((c10 == true ? 1 : 0) & 1) != 0) {
                    this.f49724d = Collections.unmodifiableList(this.f49724d);
                }
                if (((c10 == true ? 1 : 0) & 2) != 0) {
                    this.f49725e = Collections.unmodifiableList(this.f49725e);
                }
                this.unknownFields = a10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        if (((c10 == true ? 1 : 0) & 1) != 0) {
            this.f49724d = Collections.unmodifiableList(this.f49724d);
        }
        if (((c10 == true ? 1 : 0) & 2) != 0) {
            this.f49725e = Collections.unmodifiableList(this.f49725e);
        }
        this.unknownFields = a10.build();
        makeExtensionsImmutable();
    }
}
