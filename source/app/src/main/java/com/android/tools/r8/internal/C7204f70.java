package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileResourceProvider;
import com.android.tools.r8.ProgramResource;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Set;

public final class C7204f70 implements ClassFileResourceProvider {

    public final HashMap f47871a;

    public C7204f70(HashMap hashMap) {
        this.f47871a = hashMap;
    }

    public static ClassFileResourceProvider a(String str, byte[] bArr) {
        a a10 = a();
        a10.a(str, bArr);
        return a10.a();
    }

    @Override
    public final Set getClassDescriptors() {
        return AbstractC5513Ll0.a((Collection) this.f47871a.o());
    }

    @Override
    public final ProgramResource getProgramResource(String str) {
        byte[] bArr = (byte[]) this.f47871a.get(str);
        if (bArr == null) {
            return null;
        }
        return ProgramResource.fromBytes(new C7371g70(str), ProgramResource.Kind.CF, bArr, Collections.singleton(str));
    }

    public final String toString() {
        return this.f47871a.size() + " preloaded resources";
    }

    public static a a() {
        return new a();
    }

    public static final class a {

        public static final boolean f47872b = true;

        public HashMap f47873a = new HashMap();

        public a a(String str, byte[] bArr) {
            boolean z10 = f47872b;
            if (!z10 && this.f47873a == null) {
                throw new AssertionError();
            }
            if (!z10 && str == null) {
                throw new AssertionError();
            }
            if (!z10 && bArr == null) {
                throw new AssertionError();
            }
            if (!z10 && this.f47873a.containsKey(str)) {
                throw new AssertionError();
            }
            this.f47873a.put(str, bArr);
            return this;
        }

        public C7204f70 a() {
            if (!f47872b && this.f47873a == null) {
                throw new AssertionError();
            }
            C7204f70 c7204f70 = new C7204f70(this.f47873a);
            this.f47873a = null;
            return c7204f70;
        }
    }
}
