package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.OptionalInt;

public final class C8605na0 {

    public static final boolean f50984e = true;

    public final int f50985a;

    public final C8939pa0 f50986b;

    public OptionalInt f50987c;

    public final ArrayList f50988d;

    public C8605na0(int i10, C8939pa0 c8939pa0, OptionalInt optionalInt, ArrayList arrayList) {
        this.f50985a = i10;
        this.f50986b = c8939pa0;
        this.f50987c = optionalInt;
        this.f50988d = arrayList;
    }

    public final int a() {
        if (!f50984e && !this.f50987c.isPresent()) {
            throw new AssertionError();
        }
        return this.f50987c.getAsInt();
    }

    public final boolean b() {
        return this.f50987c.isPresent();
    }

    public final com.android.tools.r8.graph.F5 c(C4798y c4798y, C9773ua0 c9773ua0) {
        AbstractC4905Ba0 abstractC4905Ba0 = this.f50986b instanceof C5079Ea0 ? ((C5137Fa0) c9773ua0.f52883e.get(a())).f40251a : (AbstractC4905Ba0) this.f50988d.get(0);
        if (!f50984e) {
            abstractC4905Ba0.getClass();
            if (!(abstractC4905Ba0 instanceof HT)) {
                throw new AssertionError();
            }
        }
        return ((C4514j) c4798y.f()).c(abstractC4905Ba0.a().f40770a).o();
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("ProtoFieldInfo(number=");
        sb2.append(this.f50985a);
        sb2.append(", type=");
        sb2.append((Object) this.f50986b);
        sb2.append(", aux data=");
        sb2.append((Object) this.f50987c);
        sb2.append(", objects=[");
        if (this.f50988d.size() > 0) {
            sb2.append(this.f50988d.get(0));
            for (int i10 = 1; i10 < this.f50988d.size(); i10++) {
                sb2.append(", ");
                sb2.append(this.f50988d.get(i10));
            }
        }
        sb2.append("])");
        return sb2.toString();
    }

    public final com.android.tools.r8.graph.F5 b(C4798y c4798y, C9773ua0 c9773ua0) {
        boolean z10 = f50984e;
        if (!z10 && !(this.f50986b instanceof C5079Ea0)) {
            throw new AssertionError();
        }
        AbstractC8772oa0 abstractC8772oa0 = ((C5137Fa0) c9773ua0.f52883e.get(a())).f40252b;
        if (!z10) {
            abstractC8772oa0.getClass();
            if (!(abstractC8772oa0 instanceof HT)) {
                throw new AssertionError();
            }
        }
        return ((C4514j) c4798y.f()).c(abstractC8772oa0.a().f40770a).r();
    }

    public final com.android.tools.r8.graph.F5 a(C4798y c4798y, C9773ua0 c9773ua0) {
        boolean z10 = f50984e;
        if (!z10) {
            C8939pa0 c8939pa0 = this.f50986b;
            int i10 = c9773ua0.f52880b;
            boolean z11 = C5832Ra0.f43938a;
            if (!c8939pa0.a((i10 & 1) != 0)) {
                throw new AssertionError();
            }
        }
        int a10 = a() / 32;
        if (!z10) {
            LinkedList linkedList = c9773ua0.f52882d;
            if (a10 >= (linkedList != null ? linkedList.size() : 0)) {
                throw new AssertionError();
            }
        }
        AbstractC4905Ba0 abstractC4905Ba0 = (AbstractC4905Ba0) c9773ua0.f52882d.get(a10);
        if (!z10) {
            abstractC4905Ba0.getClass();
            if (!(abstractC4905Ba0 instanceof HT)) {
                throw new AssertionError();
            }
        }
        return ((C4514j) c4798y.f()).c(abstractC4905Ba0.a().f40770a).r();
    }
}
