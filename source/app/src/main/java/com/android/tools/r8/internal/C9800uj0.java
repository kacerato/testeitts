package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4291c;
import java.io.IOException;
import java.io.InputStream;

public final class C9800uj0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C9800uj0 f52926f = new C9800uj0();

    public static final C9466sj0 f52927g = new C9466sj0();

    public int f52928b;

    public Object f52929c;

    public C7795ii0 f52930d;

    public byte f52931e;

    public C9800uj0(C9633tj0 c9633tj0) {
        super(c9633tj0);
        this.f52928b = 0;
        this.f52931e = (byte) -1;
    }

    public final C8799oj0 a() {
        if (this.f52928b == 1) {
            return (C8799oj0) this.f52929c;
        }
        return C8799oj0.f51327h;
    }

    public final String b() {
        String str = this.f52928b == 2 ? this.f52929c : "";
        if (str instanceof String) {
            return (String) str;
        }
        String c10 = ((AbstractC8373m8) str).c();
        if (this.f52928b == 2) {
            this.f52929c = c10;
        }
        return c10;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C9800uj0)) {
            return super.equals(obj);
        }
        C9800uj0 c9800uj0 = (C9800uj0) obj;
        C7795ii0 c7795ii0 = this.f52930d;
        boolean z10 = c7795ii0 != null;
        C7795ii0 c7795ii02 = c9800uj0.f52930d;
        if (z10 != (c7795ii02 != null)) {
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
        int i10 = this.f52928b;
        int i11 = i10 != 0 ? i10 != 1 ? i10 != 2 ? 0 : 2 : 1 : 3;
        int i12 = c9800uj0.f52928b;
        if (!AbstractC4291c.b(i11, i12 != 0 ? i12 != 1 ? i12 != 2 ? 0 : 2 : 1 : 3)) {
            return false;
        }
        int i13 = this.f52928b;
        if (i13 != 1) {
            if (i13 == 2 && !b().equals(c9800uj0.b())) {
                return false;
            }
        } else if (!a().equals(c9800uj0.a())) {
            return false;
        }
        return this.unknownFields.equals(c9800uj0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f52926f;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int a10 = this.f52928b == 1 ? AbstractC5322Ie.a(1, (C8799oj0) this.f52929c) : 0;
        if (this.f52928b == 2) {
            a10 += AbstractC10181wz.computeStringSize(2, this.f52929c);
        }
        C7795ii0 c7795ii0 = this.f52930d;
        if (c7795ii0 != null) {
            a10 += AbstractC5322Ie.a(3, c7795ii0);
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
        int a10;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = AbstractC9967vj0.f53224G0.hashCode() + 779;
        C7795ii0 c7795ii0 = this.f52930d;
        if (c7795ii0 != null) {
            hashCode2 = AbstractC9124qg0.a(hashCode2, 37, 3, 53) + c7795ii0.hashCode();
        }
        int i11 = this.f52928b;
        if (i11 != 1) {
            if (i11 == 2) {
                a10 = AbstractC9124qg0.a(hashCode2, 37, 2, 53);
                hashCode = b().hashCode();
            }
            int hashCode3 = this.unknownFields.hashCode() + (hashCode2 * 29);
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }
        a10 = AbstractC9124qg0.a(hashCode2, 37, 1, 53);
        hashCode = a().hashCode();
        hashCode2 = a10 + hashCode;
        int hashCode32 = this.unknownFields.hashCode() + (hashCode2 * 29);
        this.memoizedHashCode = hashCode32;
        return hashCode32;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53226H0.a(C9800uj0.class, C9633tj0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f52931e;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f52931e = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        f52926f.getClass();
        return new C9633tj0();
    }

    @Override
    public final InterfaceC7095eW toBuilder() {
        return this == f52926f ? new C9633tj0() : new C9633tj0().a(this);
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if (this.f52928b == 1) {
            abstractC5322Ie.b(1, (C8799oj0) this.f52929c);
        }
        if (this.f52928b == 2) {
            AbstractC10181wz.writeString(abstractC5322Ie, 2, this.f52929c);
        }
        C7795ii0 c7795ii0 = this.f52930d;
        if (c7795ii0 != null) {
            abstractC5322Ie.b(3, c7795ii0);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f52926f;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C9633tj0((C7011dz) interfaceC7512gz);
    }

    @Override
    public final InterfaceC7928jW toBuilder() {
        return this == f52926f ? new C9633tj0() : new C9633tj0().a(this);
    }

    public C9800uj0() {
        this.f52928b = 0;
        this.f52931e = (byte) -1;
    }

    public static C9800uj0 a(InputStream inputStream) {
        return (C9800uj0) AbstractC10181wz.parseWithIOException(f52927g, inputStream);
    }

    public C9800uj0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this();
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 == 10) {
                            C8632nj0 builder = this.f52928b == 1 ? ((C8799oj0) this.f52929c).toBuilder() : null;
                            InterfaceC8095kW a11 = abstractC4916Be.a(C8799oj0.f51328i, c10670zv);
                            this.f52929c = a11;
                            if (builder != null) {
                                builder.a((C8799oj0) a11);
                                this.f52929c = builder.m1181buildPartial();
                            }
                            this.f52928b = 1;
                        } else if (s10 == 18) {
                            String r10 = abstractC4916Be.r();
                            this.f52928b = 2;
                            this.f52929c = r10;
                        } else if (s10 != 26) {
                            if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                            }
                        } else {
                            C7795ii0 c7795ii0 = this.f52930d;
                            C7629hi0 builder2 = c7795ii0 != null ? c7795ii0.toBuilder() : null;
                            C7795ii0 c7795ii02 = (C7795ii0) abstractC4916Be.a(C7795ii0.f49026f, c10670zv);
                            this.f52930d = c7795ii02;
                            if (builder2 != null) {
                                builder2.a(c7795ii02);
                                this.f52930d = builder2.m1181buildPartial();
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
                this.unknownFields = a10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        this.unknownFields = a10.build();
        makeExtensionsImmutable();
    }
}
