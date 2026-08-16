package com.android.tools.r8.internal;

public final class DW {

    public static final DW f39540c = new DW(null, null);

    public static final DW f39541d = new DW(null, null);

    public static final boolean f39542e = true;

    public final C10507yw0 f39543a;

    public final C10507yw0[] f39544b;

    public DW(C10507yw0 c10507yw0, C10507yw0[] c10507yw0Arr) {
        this.f39543a = c10507yw0;
        this.f39544b = c10507yw0Arr;
    }

    public final boolean a() {
        return this == f39540c;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("MethodBoxingStatus[");
        if (this == f39541d) {
            sb2.append("UNPROCESSED_CANDIDATE");
        } else if (a()) {
            sb2.append("NONE_UNBOXABLE");
        } else {
            int i10 = 0;
            while (true) {
                C10507yw0[] c10507yw0Arr = this.f39544b;
                if (i10 >= c10507yw0Arr.length) {
                    break;
                }
                if (!c10507yw0Arr[i10].a()) {
                    sb2.append(i10);
                    sb2.append(b3.s.f32937c);
                    sb2.append((Object) this.f39544b[i10]);
                    sb2.append(";");
                }
                i10++;
            }
            if (!this.f39543a.a()) {
                sb2.append("ret:");
                sb2.append((Object) this.f39543a);
                sb2.append(";");
            }
        }
        sb2.append("]");
        return sb2.toString();
    }
}
