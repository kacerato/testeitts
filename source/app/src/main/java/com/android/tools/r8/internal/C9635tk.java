package com.android.tools.r8.internal;

import java.io.Serializable;

public final class C9635tk extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C9635tk f52678g = new C9635tk();

    public static final C9301rk f52679h = new C9301rk();

    public int f52680b;

    public volatile Serializable f52681c;

    public int f52682d;

    public C10136wk f52683e;

    public byte f52684f;

    public C9635tk(C9468sk c9468sk) {
        super(c9468sk);
        this.f52684f = (byte) -1;
    }

    public final boolean a() {
        return (this.f52680b & 4) != 0;
    }

    @Override
    public final C9468sk toBuilder() {
        return this == f52678g ? new C9468sk() : new C9468sk().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C9635tk)) {
            return super.equals(obj);
        }
        C9635tk c9635tk = (C9635tk) obj;
        int i10 = this.f52680b & 1;
        if ((i10 != 0) != ((c9635tk.f52680b & 1) != 0)) {
            return false;
        }
        if (i10 != 0 && !getName().equals(c9635tk.getName())) {
            return false;
        }
        int i11 = this.f52680b & 2;
        if ((i11 != 0) != ((c9635tk.f52680b & 2) != 0)) {
            return false;
        }
        if ((i11 != 0 && this.f52682d != c9635tk.f52682d) || a() != c9635tk.a()) {
            return false;
        }
        if (a()) {
            C10136wk c10136wk = this.f52683e;
            if (c10136wk == null) {
                c10136wk = C10136wk.f53587g;
            }
            C10136wk c10136wk2 = c9635tk.f52683e;
            if (c10136wk2 == null) {
                c10136wk2 = C10136wk.f53587g;
            }
            if (!c10136wk.equals(c10136wk2)) {
                return false;
            }
        }
        return this.unknownFields.equals(c9635tk.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f52678g;
    }

    public final String getName() {
        Serializable serializable = this.f52681c;
        if (serializable instanceof String) {
            return (String) serializable;
        }
        AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
        String c10 = abstractC8373m8.c();
        if (abstractC8373m8.a()) {
            this.f52681c = c10;
        }
        return c10;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = (this.f52680b & 1) != 0 ? AbstractC10181wz.computeStringSize(1, this.f52681c) : 0;
        if ((this.f52680b & 2) != 0) {
            computeStringSize += AbstractC5322Ie.a(2, this.f52682d);
        }
        if ((this.f52680b & 4) != 0) {
            C10136wk c10136wk = this.f52683e;
            if (c10136wk == null) {
                c10136wk = C10136wk.f53587g;
            }
            computeStringSize += AbstractC5322Ie.a(3, c10136wk);
        }
        int serializedSize = this.unknownFields.getSerializedSize() + computeStringSize;
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
        int hashCode = AbstractC10640zl.f54524s.hashCode() + 779;
        if ((this.f52680b & 1) != 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + getName().hashCode();
        }
        if ((this.f52680b & 2) != 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 2, 53) + this.f52682d;
        }
        if (a()) {
            int a10 = AbstractC9124qg0.a(hashCode, 37, 3, 53);
            C10136wk c10136wk = this.f52683e;
            if (c10136wk == null) {
                c10136wk = C10136wk.f53587g;
            }
            hashCode = a10 + c10136wk.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + (hashCode * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54525t.a(C9635tk.class, C9468sk.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f52684f;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        if (a()) {
            C10136wk c10136wk = this.f52683e;
            if (c10136wk == null) {
                c10136wk = C10136wk.f53587g;
            }
            if (!c10136wk.isInitialized()) {
                this.f52684f = (byte) 0;
                return false;
            }
        }
        this.f52684f = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f52678g.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if ((this.f52680b & 1) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 1, this.f52681c);
        }
        if ((this.f52680b & 2) != 0) {
            abstractC5322Ie.c(2, this.f52682d);
        }
        if ((this.f52680b & 4) != 0) {
            C10136wk c10136wk = this.f52683e;
            if (c10136wk == null) {
                c10136wk = C10136wk.f53587g;
            }
            abstractC5322Ie.b(3, c10136wk);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f52678g;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C9468sk((C7011dz) interfaceC7512gz);
    }

    public C9635tk() {
        this.f52684f = (byte) -1;
        this.f52681c = "";
    }
}
