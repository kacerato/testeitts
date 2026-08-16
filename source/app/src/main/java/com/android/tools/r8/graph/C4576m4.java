package com.android.tools.r8.graph;

import com.android.tools.r8.graph.H3;
import com.android.tools.r8.internal.AbstractC7611hc0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C9666tu0;
import com.android.tools.r8.origin.Origin;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.objectweb.asm.Opcodes;

public final class C4576m4 extends AbstractC7611hc0 {

    public static final boolean f37478f = true;

    public final C4519j4 f37479b;

    public final C4554l1 f37480c;

    public final H3.e f37481d;

    public ArrayList f37482e;

    public C4576m4(C4519j4 c4519j4, String str, String str2, String str3) {
        super(Opcodes.ASM9, null);
        this.f37482e = null;
        C4482h4 c4482h4 = c4519j4.f37369e;
        this.f37480c = c4482h4.f37267a.f50660a.a(c4519j4.f37374j, c4482h4.e(str2), c4482h4.d(str));
        this.f37479b = c4519j4;
        c4519j4.f37369e.f37267a.getClass();
        Origin origin = c4519j4.f37367c;
        C8570nJ c8570nJ = c4519j4.f37369e.f37267a;
        this.f37481d = H3.b(str, str3, origin, c8570nJ.f50660a, c8570nJ.f50691j);
    }

    @Override
    public final com.android.tools.r8.internal.Q2 a(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        return null;
    }

    @Override
    public final com.android.tools.r8.internal.Q2 a(String str, boolean z10) {
        if (this.f37482e == null) {
            this.f37482e = new ArrayList();
        }
        return C4614o4.a(str, z10, this.f37482e, this.f37479b.f37369e, new C4605ne());
    }

    @Override
    public final void a() {
        List list;
        ArrayList arrayList;
        if (!f37478f && (arrayList = this.f37482e) != null && arrayList.isEmpty()) {
            throw new AssertionError();
        }
        ArrayList arrayList2 = this.f37479b.f37382r;
        C4554l1 c4554l1 = this.f37480c;
        H3.e eVar = this.f37481d;
        ArrayList arrayList3 = this.f37482e;
        if (arrayList3 != null && !arrayList3.isEmpty()) {
            list = this.f37482e;
        } else {
            list = Collections.EMPTY_LIST;
        }
        arrayList2.add(new P5(c4554l1, eVar, list));
    }
}
