package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C6085Vi0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C6085Vi0 f45129f = new C6085Vi0();

    public static final C5970Ti0 f45130g = new C5970Ti0();

    public C6256Yi0 f45131b;

    public volatile String f45132c;

    public List f45133d;

    public byte f45134e;

    public C6085Vi0(C6028Ui0 c6028Ui0) {
        super(c6028Ui0);
        this.f45134e = (byte) -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C6085Vi0)) {
            return super.equals(obj);
        }
        C6085Vi0 c6085Vi0 = (C6085Vi0) obj;
        C6256Yi0 c6256Yi0 = this.f45131b;
        boolean z10 = c6256Yi0 != null;
        C6256Yi0 c6256Yi02 = c6085Vi0.f45131b;
        if (z10 != (c6256Yi02 != null)) {
            return false;
        }
        if (c6256Yi0 != null) {
            if (c6256Yi02 == null) {
                c6256Yi02 = C6256Yi0.f46066d;
            }
            if (!c6256Yi0.equals(c6256Yi02)) {
                return false;
            }
        }
        String str = this.f45132c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f45132c = c10;
            str2 = c10;
        }
        Object obj2 = c6085Vi0.f45132c;
        Object obj3 = obj2;
        if (obj2 == null) {
            String c11 = ((AbstractC8373m8) obj2).c();
            c6085Vi0.f45132c = c11;
            obj3 = c11;
        }
        return str2.equals(obj3) && this.f45133d.equals(c6085Vi0.f45133d) && this.unknownFields.equals(c6085Vi0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f45129f;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        C6256Yi0 c6256Yi0 = this.f45131b;
        int a10 = c6256Yi0 != null ? AbstractC5322Ie.a(1, c6256Yi0) : 0;
        if (!AbstractC10181wz.isStringEmpty(this.f45132c)) {
            a10 += AbstractC10181wz.computeStringSize(2, this.f45132c);
        }
        for (int i11 = 0; i11 < this.f45133d.size(); i11++) {
            a10 += AbstractC5322Ie.a(3, (InterfaceC8095kW) this.f45133d.get(i11));
        }
        int serializedSize = this.unknownFields.getSerializedSize() + a10;
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
        int hashCode = AbstractC9967vj0.f53298s.hashCode() + 779;
        C6256Yi0 c6256Yi0 = this.f45131b;
        if (c6256Yi0 != null) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + c6256Yi0.hashCode();
        }
        int a10 = AbstractC9124qg0.a(hashCode, 37, 2, 53);
        String str = this.f45132c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            this.f45132c = c10;
            str2 = c10;
        }
        int hashCode2 = str2.hashCode() + a10;
        if (this.f45133d.size() > 0) {
            hashCode2 = this.f45133d.hashCode() + AbstractC9124qg0.a(hashCode2, 37, 3, 53);
        }
        int hashCode3 = this.unknownFields.hashCode() + (hashCode2 * 29);
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53300t.a(C6085Vi0.class, C6028Ui0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f45134e;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f45134e = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        f45129f.getClass();
        return new C6028Ui0();
    }

    @Override
    public final InterfaceC7095eW toBuilder() {
        return this == f45129f ? new C6028Ui0() : new C6028Ui0().a(this);
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        C6256Yi0 c6256Yi0 = this.f45131b;
        if (c6256Yi0 != null) {
            abstractC5322Ie.b(1, c6256Yi0);
        }
        if (!AbstractC10181wz.isStringEmpty(this.f45132c)) {
            AbstractC10181wz.writeString(abstractC5322Ie, 2, this.f45132c);
        }
        for (int i10 = 0; i10 < this.f45133d.size(); i10++) {
            abstractC5322Ie.b(3, (InterfaceC8095kW) this.f45133d.get(i10));
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f45129f;
    }

    public C6085Vi0() {
        this.f45134e = (byte) -1;
        this.f45132c = "";
        this.f45133d = Collections.EMPTY_LIST;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C6028Ui0((C7011dz) interfaceC7512gz);
    }

    @Override
    public final InterfaceC7928jW toBuilder() {
        return this == f45129f ? new C6028Ui0() : new C6028Ui0().a(this);
    }

    public C6085Vi0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
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
                            C6256Yi0 c6256Yi0 = this.f45131b;
                            C6199Xi0 builder = c6256Yi0 != null ? c6256Yi0.toBuilder() : null;
                            C6256Yi0 c6256Yi02 = (C6256Yi0) abstractC4916Be.a(C6256Yi0.f46067e, c10670zv);
                            this.f45131b = c6256Yi02;
                            if (builder != null) {
                                builder.a(c6256Yi02);
                                this.f45131b = builder.m1181buildPartial();
                            }
                        } else if (s10 == 18) {
                            this.f45132c = abstractC4916Be.r();
                        } else if (s10 != 26) {
                            if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                            }
                        } else {
                            if (!z11) {
                                this.f45133d = new ArrayList();
                                z11 = true;
                            }
                            this.f45133d.add((C6024Ug0) abstractC4916Be.a(C6024Ug0.f44827k, c10670zv));
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
                    this.f45133d = Collections.unmodifiableList(this.f45133d);
                }
                this.unknownFields = a10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        if (z11) {
            this.f45133d = Collections.unmodifiableList(this.f45133d);
        }
        this.unknownFields = a10.build();
        makeExtensionsImmutable();
    }
}
