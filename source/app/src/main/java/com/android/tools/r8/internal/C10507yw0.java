package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Set;

public final class C10507yw0 {

    public static final C10507yw0 f54197c;

    public static final boolean f54198d = true;

    public final int f54199a;

    public final EC f54200b;

    static {
        int i10 = EC.f39794e;
        f54197c = new C10507yw0(0, C6953df0.f47448l);
    }

    public C10507yw0(int i10, EC ec2) {
        this.f54199a = i10;
        this.f54200b = ec2;
    }

    public final boolean a() {
        return this == f54197c;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("ValueBoxingStatus[");
        if (a()) {
            sb2.append("NOT_UNBOXABLE");
        } else {
            sb2.append(this.f54199a);
            AC ac2 = new AC(this.f54200b.entrySet().iterator());
            while (ac2.hasNext()) {
                AbstractC5990Ts0 abstractC5990Ts0 = (AbstractC5990Ts0) ac2.next();
                sb2.append(";");
                sb2.append(abstractC5990Ts0.toString());
            }
        }
        sb2.append("]");
        return sb2.toString();
    }

    public final C10507yw0 a(C10507yw0 c10507yw0) {
        EC a10;
        if (!a() && !c10507yw0.a()) {
            int i10 = this.f54199a;
            boolean z10 = f54198d;
            if (!z10 && c10507yw0.a()) {
                throw new AssertionError();
            }
            int i11 = c10507yw0.f54199a + i10;
            if (c10507yw0.f54200b.isEmpty()) {
                if (i11 == this.f54199a) {
                    return this;
                }
                EC ec2 = this.f54200b;
                if (ec2.size() > 7) {
                    return f54197c;
                }
                return new C10507yw0(i11, ec2);
            }
            if (this.f54200b.isEmpty()) {
                if (!z10 && c10507yw0.a()) {
                    throw new AssertionError();
                }
                if (i11 == c10507yw0.f54199a) {
                    return c10507yw0;
                }
                EC ec3 = c10507yw0.f54200b;
                if (ec3.size() > 7) {
                    return f54197c;
                }
                return new C10507yw0(i11, ec3);
            }
            C8588nS c8588nS = new BC().b(this.f54200b).b(c10507yw0.f54200b).f38854a;
            if (c8588nS == null) {
                C8588nS c8588nS2 = new C8588nS(c8588nS != null ? c8588nS.w().size() : 11);
                AbstractC9907vK.a(c8588nS, c8588nS2);
                c8588nS = c8588nS2;
            }
            Set entrySet = c8588nS.entrySet();
            if (entrySet.isEmpty()) {
                a10 = C6953df0.f47448l;
            } else {
                a10 = C6953df0.a((Collection) entrySet);
            }
            if (a10.size() > 7) {
                return f54197c;
            }
            return new C10507yw0(i11, a10);
        }
        return f54197c;
    }
}
