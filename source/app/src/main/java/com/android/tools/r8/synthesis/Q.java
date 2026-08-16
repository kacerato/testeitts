package com.android.tools.r8.synthesis;

import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.synthesis.S;
import java.util.ArrayList;

public final class Q {

    public static final boolean f58138c = true;

    public int f58139a = 1;

    public ArrayList f58140b = new ArrayList();

    public final S.b a(S.b bVar) {
        this.f58140b.add(bVar);
        if (this.f58140b.size() == bVar.f58202b) {
            return bVar;
        }
        throw new C5417Jv0("Invalid synthetic kind id: " + bVar.f58202b);
    }

    public final S.b b(String str) {
        int i10 = this.f58139a;
        this.f58139a = i10 + 1;
        return a(new V(i10, str, false));
    }

    public final S.b c(String str) {
        int i10 = this.f58139a;
        this.f58139a = i10 + 1;
        return a(new V(i10, str, true));
    }

    public final S.b a(String str) {
        if (!f58138c && str.isEmpty()) {
            throw new AssertionError();
        }
        int i10 = this.f58139a;
        this.f58139a = i10 + 1;
        return a(new U(i10, str, false));
    }
}
