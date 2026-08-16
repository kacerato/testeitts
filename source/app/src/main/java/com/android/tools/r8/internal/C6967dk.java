package com.android.tools.r8.internal;

import java.io.IOException;

public final class C6967dk extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C6967dk f47484g = new C6967dk();

    public static final C6634bk f47485h = new C6634bk();

    public int f47486b;

    public int f47487c;

    public int f47488d;

    public C10637zk f47489e;

    public byte f47490f;

    public C6967dk(C6800ck c6800ck) {
        super(c6800ck);
        this.f47490f = (byte) -1;
    }

    public final boolean a() {
        return (this.f47486b & 4) != 0;
    }

    @Override
    public final C6800ck toBuilder() {
        return this == f47484g ? new C6800ck() : new C6800ck().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C6967dk)) {
            return super.equals(obj);
        }
        C6967dk c6967dk = (C6967dk) obj;
        int i10 = this.f47486b;
        int i11 = i10 & 1;
        boolean z10 = i11 != 0;
        int i12 = c6967dk.f47486b;
        if (z10 != ((i12 & 1) != 0)) {
            return false;
        }
        if (i11 != 0 && this.f47487c != c6967dk.f47487c) {
            return false;
        }
        int i13 = i10 & 2;
        if ((i13 != 0) != ((i12 & 2) != 0)) {
            return false;
        }
        if ((i13 != 0 && this.f47488d != c6967dk.f47488d) || a() != c6967dk.a()) {
            return false;
        }
        if (a()) {
            C10637zk c10637zk = this.f47489e;
            if (c10637zk == null) {
                c10637zk = C10637zk.f54477e;
            }
            C10637zk c10637zk2 = c6967dk.f47489e;
            if (c10637zk2 == null) {
                c10637zk2 = C10637zk.f54477e;
            }
            if (!c10637zk.equals(c10637zk2)) {
                return false;
            }
        }
        return this.unknownFields.equals(c6967dk.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f47484g;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int a10 = (this.f47486b & 1) != 0 ? AbstractC5322Ie.a(1, this.f47487c) : 0;
        if ((this.f47486b & 2) != 0) {
            a10 += AbstractC5322Ie.a(2, this.f47488d);
        }
        if ((this.f47486b & 4) != 0) {
            C10637zk c10637zk = this.f47489e;
            if (c10637zk == null) {
                c10637zk = C10637zk.f54477e;
            }
            a10 += AbstractC5322Ie.a(3, c10637zk);
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
        int hashCode = AbstractC10640zl.f54510e.hashCode() + 779;
        int i11 = this.f47486b;
        if ((i11 & 1) != 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + this.f47487c;
        }
        if ((i11 & 2) != 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 2, 53) + this.f47488d;
        }
        if (a()) {
            int a10 = AbstractC9124qg0.a(hashCode, 37, 3, 53);
            C10637zk c10637zk = this.f47489e;
            if (c10637zk == null) {
                c10637zk = C10637zk.f54477e;
            }
            hashCode = a10 + c10637zk.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + (hashCode * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54511f.a(C6967dk.class, C6800ck.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f47490f;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        if (a()) {
            C10637zk c10637zk = this.f47489e;
            if (c10637zk == null) {
                c10637zk = C10637zk.f54477e;
            }
            if (!c10637zk.isInitialized()) {
                this.f47490f = (byte) 0;
                return false;
            }
        }
        this.f47490f = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f47484g.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if ((this.f47486b & 1) != 0) {
            abstractC5322Ie.c(1, this.f47487c);
        }
        if ((this.f47486b & 2) != 0) {
            abstractC5322Ie.c(2, this.f47488d);
        }
        if ((this.f47486b & 4) != 0) {
            C10637zk c10637zk = this.f47489e;
            if (c10637zk == null) {
                c10637zk = C10637zk.f54477e;
            }
            abstractC5322Ie.b(3, c10637zk);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f47484g;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C6800ck((C7011dz) interfaceC7512gz);
    }

    public C6967dk() {
        this.f47490f = (byte) -1;
    }

    public C6967dk(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this.f47490f = (byte) -1;
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    if (s10 != 0) {
                        if (s10 == 8) {
                            this.f47486b |= 1;
                            this.f47487c = abstractC4916Be.j();
                        } else if (s10 == 16) {
                            this.f47486b |= 2;
                            this.f47488d = abstractC4916Be.j();
                        } else if (s10 != 26) {
                            if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                            }
                        } else {
                            C10470yk builder = (this.f47486b & 4) != 0 ? this.f47489e.toBuilder() : null;
                            C10637zk c10637zk = (C10637zk) abstractC4916Be.a(C10637zk.f54478f, c10670zv);
                            this.f47489e = c10637zk;
                            if (builder != null) {
                                builder.a(c10637zk);
                                this.f47489e = builder.m1181buildPartial();
                            }
                            this.f47486b |= 4;
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
