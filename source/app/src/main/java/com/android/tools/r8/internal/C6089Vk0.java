package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4537k3;
import java.util.Objects;

public final class C6089Vk0 {

    public final C4537k3 f45152a;

    public final com.android.tools.r8.graph.M2 f45153b;

    public C6089Vk0(C4537k3 c4537k3, com.android.tools.r8.graph.M2 m22) {
        C4537k3 g10 = C4537k3.g(c4537k3.f37197c);
        g10.b(16);
        C4537k3 c4537k32 = (C4537k3) g10.E();
        c4537k32.b(4096);
        this.f45152a = (C4537k3) c4537k32.E();
        this.f45153b = m22;
    }

    public final boolean equals(Object obj) {
        if (obj != null && C6089Vk0.class == obj.getClass()) {
            C6089Vk0 c6089Vk0 = (C6089Vk0) obj;
            if (this.f45152a.f37197c == c6089Vk0.f45152a.f37197c && this.f45153b == c6089Vk0.f45153b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f45152a, this.f45153b);
    }
}
