package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.logging.Logger;

public final class C9002pv0 implements InterfaceC8095kW {

    public static final C9002pv0 f51665c = new C9002pv0(new TreeMap());

    public final TreeMap f51666b;

    public C9002pv0(TreeMap treeMap) {
        this.f51666b = treeMap;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C9002pv0) && this.f51666b.equals(((C9002pv0) obj).f51666b);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f51665c;
    }

    @Override
    public final int getSerializedSize() {
        if (this.f51666b.isEmpty()) {
            return 0;
        }
        int i10 = 0;
        for (Map.Entry entry : this.f51666b.entrySet()) {
            C8501mv0 c8501mv0 = (C8501mv0) entry.getValue();
            int intValue = ((Integer) entry.getKey()).intValue();
            Iterator it = c8501mv0.f50457a.iterator();
            int i11 = 0;
            while (it.hasNext()) {
                i11 += AbstractC5322Ie.a(((Long) it.next()).longValue()) + AbstractC5322Ie.b(intValue);
            }
            Iterator it2 = c8501mv0.f50458b.iterator();
            while (it2.hasNext()) {
                ((Integer) it2.next()).intValue();
                i11 += AbstractC5322Ie.b(intValue) + 4;
            }
            Iterator it3 = c8501mv0.f50459c.iterator();
            while (it3.hasNext()) {
                ((Long) it3.next()).longValue();
                i11 += AbstractC5322Ie.b(intValue) + 8;
            }
            Iterator it4 = c8501mv0.f50460d.iterator();
            while (it4.hasNext()) {
                i11 += AbstractC5322Ie.a(intValue, (AbstractC8373m8) it4.next());
            }
            Iterator it5 = c8501mv0.f50461e.iterator();
            while (it5.hasNext()) {
                i11 += ((C9002pv0) it5.next()).getSerializedSize() + (AbstractC5322Ie.b(intValue) * 2);
            }
            i10 += i11;
        }
        return i10;
    }

    public final int hashCode() {
        if (this.f51666b.isEmpty()) {
            return 0;
        }
        return this.f51666b.hashCode();
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final InterfaceC7928jW toBuilder() {
        return new C8167kv0().a(this);
    }

    @Override
    public final byte[] toByteArray() {
        try {
            int serializedSize = getSerializedSize();
            byte[] bArr = new byte[serializedSize];
            Logger logger = AbstractC5322Ie.f41156a;
            C5032De c5032De = new C5032De(serializedSize, bArr);
            writeTo(c5032De);
            if (c5032De.a() == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e10) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e10);
        }
    }

    public final String toString() {
        Logger logger = AbstractC5003Cr0.f39372a;
        C4887Ar0.f38725b.getClass();
        try {
            StringBuilder sb2 = new StringBuilder();
            C4887Ar0.a(this, new C4945Br0(sb2));
            return sb2.toString();
        } catch (IOException e10) {
            throw new IllegalStateException(e10);
        }
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        for (Map.Entry entry : this.f51666b.entrySet()) {
            C8501mv0 c8501mv0 = (C8501mv0) entry.getValue();
            int intValue = ((Integer) entry.getKey()).intValue();
            Iterator it = c8501mv0.f50457a.iterator();
            while (it.hasNext()) {
                abstractC5322Ie.b(intValue, ((Long) it.next()).longValue());
            }
            Iterator it2 = c8501mv0.f50458b.iterator();
            while (it2.hasNext()) {
                abstractC5322Ie.b(intValue, ((Integer) it2.next()).intValue());
            }
            Iterator it3 = c8501mv0.f50459c.iterator();
            while (it3.hasNext()) {
                abstractC5322Ie.a(intValue, ((Long) it3.next()).longValue());
            }
            Iterator it4 = c8501mv0.f50460d.iterator();
            while (it4.hasNext()) {
                abstractC5322Ie.b(intValue, (AbstractC8373m8) it4.next());
            }
            for (C9002pv0 c9002pv0 : c8501mv0.f50461e) {
                abstractC5322Ie.d(intValue, 3);
                c9002pv0.writeTo(abstractC5322Ie);
                abstractC5322Ie.d(intValue, 4);
            }
        }
    }
}
