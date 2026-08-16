package com.android.tools.r8.internal;

import java.util.ArrayList;

public final class C5870Rq0 {

    public final YQ f44006a;

    public final boolean[] f44007b;

    public final ArrayList f44008c;

    public C5870Rq0(YQ yq, int i10, C9241rL c9241rL) {
        this.f44006a = yq;
        this.f44007b = new boolean[i10];
        ArrayList arrayList = new ArrayList();
        this.f44008c = arrayList;
        arrayList.add(c9241rL);
    }

    public final boolean a(C5870Rq0 c5870Rq0) {
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            boolean[] zArr = this.f44007b;
            if (i10 >= zArr.length) {
                break;
            }
            if (c5870Rq0.f44007b[i10] && !zArr[i10]) {
                zArr[i10] = true;
                z10 = true;
            }
            i10++;
        }
        if (c5870Rq0.f44006a == this.f44006a) {
            for (int i11 = 0; i11 < c5870Rq0.f44008c.size(); i11++) {
                C9241rL c9241rL = (C9241rL) c5870Rq0.f44008c.get(i11);
                if (!this.f44008c.contains(c9241rL)) {
                    this.f44008c.add(c9241rL);
                    z10 = true;
                }
            }
        }
        return z10;
    }

    public C5870Rq0(C5870Rq0 c5870Rq0) {
        this.f44006a = c5870Rq0.f44006a;
        this.f44007b = (boolean[]) c5870Rq0.f44007b.clone();
        this.f44008c = new ArrayList(c5870Rq0.f44008c);
    }
}
