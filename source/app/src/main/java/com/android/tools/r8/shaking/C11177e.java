package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.EnumC4629p0;
import java.util.Objects;

public final class C11177e {

    public final com.android.tools.r8.graph.D5 f57246a;

    public final C4666r0 f57247b;

    public final EnumC4629p0 f57248c;

    public C11177e(com.android.tools.r8.graph.D5 d52, C4666r0 c4666r0, EnumC4629p0 enumC4629p0) {
        this.f57246a = d52;
        this.f57247b = c4666r0;
        this.f57248c = enumC4629p0;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C11177e) {
            C11177e c11177e = (C11177e) obj;
            if (this.f57246a == c11177e.f57246a && this.f57247b == c11177e.f57247b && this.f57248c == c11177e.f57248c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f57246a, this.f57247b, this.f57248c);
    }
}
