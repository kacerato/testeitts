package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4291c;
import java.io.Serializable;

public final class C5505Lh0 extends AbstractC7345fz implements InterfaceC8596nW {

    public int f42041b;

    public Serializable f42042c;

    public C5505Lh0() {
        this.f42041b = 0;
        C5910Sh0 c5910Sh0 = C5910Sh0.f44272e;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C5505Lh0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C5910Sh0 c5910Sh0 = null;
        try {
            try {
                C5910Sh0.f44273f.getClass();
                a(new C5910Sh0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C5910Sh0 c5910Sh02 = (C5910Sh0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c5910Sh0 = c5910Sh02;
                    if (c5910Sh0 != null) {
                        a(c5910Sh0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c5910Sh0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C5505Lh0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C5910Sh0 m1181buildPartial() {
        C5910Sh0 c5910Sh0 = new C5910Sh0(this);
        int i10 = this.f42041b;
        if (i10 == 1) {
            c5910Sh0.f44275c = this.f42042c;
        }
        if (i10 == 2) {
            c5910Sh0.f44275c = this.f42042c;
        }
        if (i10 == 3) {
            c5910Sh0.f44275c = this.f42042c;
        }
        if (i10 == 13) {
            c5910Sh0.f44275c = this.f42042c;
        }
        if (i10 == 14) {
            c5910Sh0.f44275c = this.f42042c;
        }
        if (i10 == 6) {
            c5910Sh0.f44275c = this.f42042c;
        }
        if (i10 == 7) {
            c5910Sh0.f44275c = this.f42042c;
        }
        if (i10 == 8) {
            c5910Sh0.f44275c = this.f42042c;
        }
        if (i10 == 9) {
            c5910Sh0.f44275c = this.f42042c;
        }
        if (i10 == 10) {
            c5910Sh0.f44275c = this.f42042c;
        }
        if (i10 == 11) {
            c5910Sh0.f44275c = this.f42042c;
        }
        if (i10 == 12) {
            c5910Sh0.f44275c = this.f42042c;
        }
        if (i10 == 4) {
            c5910Sh0.f44275c = this.f42042c;
        }
        if (i10 == 5) {
            c5910Sh0.f44275c = this.f42042c;
        }
        c5910Sh0.f44274b = i10;
        onBuilt();
        return c5910Sh0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C5910Sh0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C5505Lh0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C5910Sh0.f44272e;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53275g0;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53277h0.a(C5910Sh0.class, C5505Lh0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C5505Lh0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C5505Lh0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C5505Lh0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C5910Sh0.f44272e;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C5505Lh0) super.setUnknownFields(c9002pv0);
    }

    public C5505Lh0(C7011dz c7011dz) {
        super(c7011dz);
        this.f42041b = 0;
        C5910Sh0 c5910Sh0 = C5910Sh0.f44272e;
    }

    @Override
    public final InterfaceC8095kW build() {
        C5910Sh0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5910Sh0) {
            return a((C5910Sh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5910Sh0) {
            return a((C5910Sh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public final C5505Lh0 a(C5910Sh0 c5910Sh0) {
        C5852Rh0 c5852Rh0;
        Serializable serializable;
        C5852Rh0 c5852Rh02;
        C5678Oh0 c5678Oh0;
        Serializable serializable2;
        C5678Oh0 c5678Oh02;
        float floatValue;
        if (c5910Sh0 == C5910Sh0.f44272e) {
            return this;
        }
        switch (AbstractC4291c.b(c5910Sh0.a())) {
            case 0:
                if (c5910Sh0.f44274b == 1) {
                    c5852Rh0 = (C5852Rh0) c5910Sh0.f44275c;
                } else {
                    c5852Rh0 = C5852Rh0.f43965c;
                }
                if (this.f42041b == 1 && (serializable = this.f42042c) != (c5852Rh02 = C5852Rh0.f43965c)) {
                    this.f42042c = c5852Rh02.toBuilder().a((C5852Rh0) serializable).a(c5852Rh0).b();
                } else {
                    this.f42042c = c5852Rh0;
                }
                onChanged();
                this.f42041b = 1;
                break;
            case 1:
                if (c5910Sh0.f44274b == 2) {
                    c5678Oh0 = (C5678Oh0) c5910Sh0.f44275c;
                } else {
                    c5678Oh0 = C5678Oh0.f42955c;
                }
                if (this.f42041b == 2 && (serializable2 = this.f42042c) != (c5678Oh02 = C5678Oh0.f42955c)) {
                    this.f42042c = c5678Oh02.toBuilder().a((C5678Oh0) serializable2).a(c5678Oh0).b();
                } else {
                    this.f42042c = c5678Oh0;
                }
                onChanged();
                this.f42041b = 2;
                break;
            case 2:
                floatValue = c5910Sh0.f44274b == 3 ? ((Float) c5910Sh0.f44275c).floatValue() : 0.0f;
                this.f42041b = 3;
                this.f42042c = Float.valueOf(floatValue);
                onChanged();
                break;
            case 3:
                int intValue = c5910Sh0.f44274b == 13 ? ((Integer) c5910Sh0.f44275c).intValue() : 0;
                this.f42041b = 13;
                this.f42042c = Integer.valueOf(intValue);
                onChanged();
                break;
            case 4:
                int intValue2 = c5910Sh0.f44274b == 14 ? ((Integer) c5910Sh0.f44275c).intValue() : 0;
                this.f42041b = 14;
                this.f42042c = Integer.valueOf(intValue2);
                onChanged();
                break;
            case 5:
                int intValue3 = c5910Sh0.f44274b == 6 ? ((Integer) c5910Sh0.f44275c).intValue() : 0;
                this.f42041b = 6;
                this.f42042c = Integer.valueOf(intValue3);
                onChanged();
                break;
            case 6:
                int intValue4 = c5910Sh0.f44274b == 7 ? ((Integer) c5910Sh0.f44275c).intValue() : 0;
                this.f42041b = 7;
                this.f42042c = Integer.valueOf(intValue4);
                onChanged();
                break;
            case 7:
                boolean booleanValue = c5910Sh0.f44274b == 8 ? ((Boolean) c5910Sh0.f44275c).booleanValue() : false;
                this.f42041b = 8;
                this.f42042c = Boolean.valueOf(booleanValue);
                onChanged();
                break;
            case 8:
                int intValue5 = c5910Sh0.f44274b == 9 ? ((Integer) c5910Sh0.f44275c).intValue() : 0;
                this.f42041b = 9;
                this.f42042c = Integer.valueOf(intValue5);
                onChanged();
                break;
            case 9:
                int intValue6 = c5910Sh0.f44274b == 10 ? ((Integer) c5910Sh0.f44275c).intValue() : 0;
                this.f42041b = 10;
                this.f42042c = Integer.valueOf(intValue6);
                onChanged();
                break;
            case 10:
                int intValue7 = c5910Sh0.f44274b == 11 ? ((Integer) c5910Sh0.f44275c).intValue() : 0;
                this.f42041b = 11;
                this.f42042c = Integer.valueOf(intValue7);
                onChanged();
                break;
            case 11:
                int intValue8 = c5910Sh0.f44274b == 12 ? ((Integer) c5910Sh0.f44275c).intValue() : 0;
                this.f42041b = 12;
                this.f42042c = Integer.valueOf(intValue8);
                onChanged();
                break;
            case 12:
                floatValue = c5910Sh0.f44274b == 4 ? ((Float) c5910Sh0.f44275c).floatValue() : 0.0f;
                this.f42041b = 4;
                this.f42042c = Float.valueOf(floatValue);
                onChanged();
                break;
            case 13:
                floatValue = c5910Sh0.f44274b == 5 ? ((Float) c5910Sh0.f44275c).floatValue() : 0.0f;
                this.f42041b = 5;
                this.f42042c = Float.valueOf(floatValue);
                onChanged();
                break;
        }
        onChanged();
        return this;
    }
}
