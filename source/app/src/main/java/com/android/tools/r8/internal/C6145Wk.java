package com.android.tools.r8.internal;

import java.io.Serializable;
import java.nio.charset.Charset;

public final class C6145Wk extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C6145Wk f45521j = new C6145Wk();

    public static final C6031Uk f45522k = new C6031Uk();

    public int f45523b;

    public volatile Serializable f45524c;

    public volatile Serializable f45525d;

    public volatile Serializable f45526e;

    public C6470al f45527f;

    public boolean f45528g;

    public boolean f45529h;

    public byte f45530i;

    public C6145Wk(C6088Vk c6088Vk) {
        super(c6088Vk);
        this.f45530i = (byte) -1;
    }

    public final String a() {
        Serializable serializable = this.f45525d;
        if (serializable instanceof String) {
            return (String) serializable;
        }
        AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
        String c10 = abstractC8373m8.c();
        if (abstractC8373m8.a()) {
            this.f45525d = c10;
        }
        return c10;
    }

    public final String b() {
        Serializable serializable = this.f45526e;
        if (serializable instanceof String) {
            return (String) serializable;
        }
        AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
        String c10 = abstractC8373m8.c();
        if (abstractC8373m8.a()) {
            this.f45526e = c10;
        }
        return c10;
    }

    public final boolean c() {
        return (this.f45523b & 8) != 0;
    }

    @Override
    public final C6088Vk toBuilder() {
        return this == f45521j ? new C6088Vk() : new C6088Vk().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C6145Wk)) {
            return super.equals(obj);
        }
        C6145Wk c6145Wk = (C6145Wk) obj;
        int i10 = this.f45523b & 1;
        if ((i10 != 0) != ((c6145Wk.f45523b & 1) != 0)) {
            return false;
        }
        if (i10 != 0 && !getName().equals(c6145Wk.getName())) {
            return false;
        }
        int i11 = this.f45523b & 2;
        if ((i11 != 0) != ((c6145Wk.f45523b & 2) != 0)) {
            return false;
        }
        if (i11 != 0 && !a().equals(c6145Wk.a())) {
            return false;
        }
        int i12 = this.f45523b & 4;
        if ((i12 != 0) != ((c6145Wk.f45523b & 4) != 0)) {
            return false;
        }
        if ((i12 != 0 && !b().equals(c6145Wk.b())) || c() != c6145Wk.c()) {
            return false;
        }
        if (c()) {
            C6470al c6470al = this.f45527f;
            if (c6470al == null) {
                c6470al = C6470al.f46617h;
            }
            C6470al c6470al2 = c6145Wk.f45527f;
            if (c6470al2 == null) {
                c6470al2 = C6470al.f46617h;
            }
            if (!c6470al.equals(c6470al2)) {
                return false;
            }
        }
        int i13 = this.f45523b;
        int i14 = i13 & 16;
        boolean z10 = i14 != 0;
        int i15 = c6145Wk.f45523b;
        if (z10 != ((i15 & 16) != 0)) {
            return false;
        }
        if (i14 != 0 && this.f45528g != c6145Wk.f45528g) {
            return false;
        }
        int i16 = i13 & 32;
        if ((i16 != 0) != ((i15 & 32) != 0)) {
            return false;
        }
        return (i16 == 0 || this.f45529h == c6145Wk.f45529h) && this.unknownFields.equals(c6145Wk.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f45521j;
    }

    public final String getName() {
        Serializable serializable = this.f45524c;
        if (serializable instanceof String) {
            return (String) serializable;
        }
        AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
        String c10 = abstractC8373m8.c();
        if (abstractC8373m8.a()) {
            this.f45524c = c10;
        }
        return c10;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = (this.f45523b & 1) != 0 ? AbstractC10181wz.computeStringSize(1, this.f45524c) : 0;
        if ((this.f45523b & 2) != 0) {
            computeStringSize += AbstractC10181wz.computeStringSize(2, this.f45525d);
        }
        if ((this.f45523b & 4) != 0) {
            computeStringSize += AbstractC10181wz.computeStringSize(3, this.f45526e);
        }
        if ((this.f45523b & 8) != 0) {
            C6470al c6470al = this.f45527f;
            if (c6470al == null) {
                c6470al = C6470al.f46617h;
            }
            computeStringSize += AbstractC5322Ie.a(4, c6470al);
        }
        if ((this.f45523b & 16) != 0) {
            computeStringSize = AbstractC8292lh0.a(5, 1, computeStringSize);
        }
        if ((this.f45523b & 32) != 0) {
            computeStringSize = AbstractC8292lh0.a(6, 1, computeStringSize);
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
        int hashCode = AbstractC10640zl.f54528w.hashCode() + 779;
        if ((this.f45523b & 1) != 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + getName().hashCode();
        }
        if ((this.f45523b & 2) != 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 2, 53) + a().hashCode();
        }
        if ((this.f45523b & 4) != 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 3, 53) + b().hashCode();
        }
        if (c()) {
            int a10 = AbstractC9124qg0.a(hashCode, 37, 4, 53);
            C6470al c6470al = this.f45527f;
            if (c6470al == null) {
                c6470al = C6470al.f46617h;
            }
            hashCode = a10 + c6470al.hashCode();
        }
        int i11 = this.f45523b;
        if ((i11 & 16) != 0) {
            int a11 = AbstractC9124qg0.a(hashCode, 37, 5, 53);
            boolean z10 = this.f45528g;
            Charset charset = YI.f45964a;
            hashCode = a11 + (z10 ? 1231 : 1237);
        }
        if ((i11 & 32) != 0) {
            int a12 = AbstractC9124qg0.a(hashCode, 37, 6, 53);
            boolean z11 = this.f45529h;
            Charset charset2 = YI.f45964a;
            hashCode = a12 + (z11 ? 1231 : 1237);
        }
        int hashCode2 = this.unknownFields.hashCode() + (hashCode * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54529x.a(C6145Wk.class, C6088Vk.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f45530i;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        if (c()) {
            C6470al c6470al = this.f45527f;
            if (c6470al == null) {
                c6470al = C6470al.f46617h;
            }
            if (!c6470al.isInitialized()) {
                this.f45530i = (byte) 0;
                return false;
            }
        }
        this.f45530i = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f45521j.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if ((this.f45523b & 1) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 1, this.f45524c);
        }
        if ((this.f45523b & 2) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 2, this.f45525d);
        }
        if ((this.f45523b & 4) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 3, this.f45526e);
        }
        if ((this.f45523b & 8) != 0) {
            C6470al c6470al = this.f45527f;
            if (c6470al == null) {
                c6470al = C6470al.f46617h;
            }
            abstractC5322Ie.b(4, c6470al);
        }
        if ((this.f45523b & 16) != 0) {
            abstractC5322Ie.a(5, this.f45528g);
        }
        if ((this.f45523b & 32) != 0) {
            abstractC5322Ie.a(6, this.f45529h);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f45521j;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C6088Vk((C7011dz) interfaceC7512gz);
    }

    public C6145Wk() {
        this.f45530i = (byte) -1;
        this.f45524c = "";
        this.f45525d = "";
        this.f45526e = "";
    }
}
