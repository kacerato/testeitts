package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.List;

public final class C9471sl extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C9471sl f52446d = new C9471sl();

    public static final C8637nl f52447e = new C8637nl();

    public List f52448b;

    public byte f52449c;

    public C9471sl(C8804ol c8804ol) {
        super(c8804ol);
        this.f52449c = (byte) -1;
    }

    @Override
    public final C8804ol toBuilder() {
        return this == f52446d ? new C8804ol() : new C8804ol().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C9471sl)) {
            return super.equals(obj);
        }
        C9471sl c9471sl = (C9471sl) obj;
        return this.f52448b.equals(c9471sl.f52448b) && this.unknownFields.equals(c9471sl.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f52446d;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f52448b.size(); i12++) {
            i11 += AbstractC5322Ie.a(1, (InterfaceC8095kW) this.f52448b.get(i12));
        }
        int serializedSize = this.unknownFields.getSerializedSize() + i11;
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
        int hashCode = AbstractC10640zl.f54502S.hashCode() + 779;
        if (this.f52448b.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + this.f52448b.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + (hashCode * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54503T.a(C9471sl.class, C8804ol.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f52449c;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f52449c = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f52446d.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        for (int i10 = 0; i10 < this.f52448b.size(); i10++) {
            abstractC5322Ie.b(1, (InterfaceC8095kW) this.f52448b.get(i10));
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f52446d;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C8804ol((C7011dz) interfaceC7512gz);
    }

    public C9471sl() {
        this.f52449c = (byte) -1;
        this.f52448b = Collections.EMPTY_LIST;
    }
}
