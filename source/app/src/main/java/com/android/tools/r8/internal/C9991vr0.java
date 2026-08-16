package com.android.tools.r8.internal;

import java.io.IOException;
import java.util.Arrays;

public final class C9991vr0 {

    public final C6605ba0 f53356a;

    public final byte[] f53357b;

    public final int f53358c;

    public C9991vr0(C6605ba0 c6605ba0) {
        this.f53356a = c6605ba0;
        O0 a10 = c6605ba0.a();
        try {
            int a11 = a10.a();
            byte[] bArr = new byte[a11];
            C5264He c5264He = new C5264He(a11, bArr);
            a10.a(c5264He);
            if (a11 - c5264He.f40813c != 0) {
                throw new IllegalStateException("Did not write as much data as expected.");
            }
            this.f53357b = bArr;
            this.f53358c = Arrays.hashCode(bArr);
        } catch (IOException e10) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e10);
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C9991vr0) && Arrays.equals(this.f53357b, ((C9991vr0) obj).f53357b);
    }

    public final int hashCode() {
        return this.f53358c;
    }
}
