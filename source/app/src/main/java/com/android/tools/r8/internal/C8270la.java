package com.android.tools.r8.internal;

import java.util.function.Function;

public final class C8270la extends AbstractC7449ge {

    public C6899dH f50003c;

    public final C8604na f50004d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8270la(C8604na c8604na) {
        super(null);
        this.f50004d = c8604na;
        this.f50003c = null;
    }

    public static C6899dH d(String str) {
        return new C6899dH(16);
    }

    @Override
    public final void a(int i10, int i11, String str, String str2, String str3, String[] strArr) {
        super.a(i10, i11, str, str2, str3, strArr);
        this.f50003c = (C6899dH) this.f50004d.f50982a.computeIfAbsent(str, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C8270la.d((String) obj);
            }
        });
    }

    @Override
    public final DX a(int i10, String str, String str2, String str3, String[] strArr) {
        return new C8437ma(str + ";;" + str2, this.f50003c);
    }
}
