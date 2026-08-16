package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.util.ArrayList;
import java.util.List;

public final class C11896c extends BasePendingResult<C11897d> {

    public int f61060r;

    public boolean f61061s;

    public boolean f61062t;

    public final p[] f61063u;

    public final Object f61064v;

    public static final class a {

        public final List f61065a = new ArrayList();

        public final AbstractC11908l f61066b;

        public a(@NonNull AbstractC11908l abstractC11908l) {
            this.f61066b = abstractC11908l;
        }

        @NonNull
        @ResultIgnorabilityUnspecified
        public <R extends u> C11898e<R> a(@NonNull p<R> pVar) {
            C11898e<R> c11898e = new C11898e<>(this.f61065a.size());
            this.f61065a.add(pVar);
            return c11898e;
        }

        @NonNull
        public C11896c b() {
            return new C11896c(this.f61065a, this.f61066b, null);
        }
    }

    public C11896c(List list, AbstractC11908l abstractC11908l, C c10) {
        super(abstractC11908l);
        this.f61064v = new Object();
        int size = list.size();
        this.f61060r = size;
        p[] pVarArr = new p[size];
        this.f61063u = pVarArr;
        if (list.isEmpty()) {
            o(new C11897d(Status.f61039g, pVarArr));
            return;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            p pVar = (p) list.get(i10);
            this.f61063u[i10] = pVar;
            pVar.c(new B(this));
        }
    }

    @Override
    public void f() {
        super.f();
        int i10 = 0;
        while (true) {
            p[] pVarArr = this.f61063u;
            if (i10 >= pVarArr.length) {
                return;
            }
            pVarArr[i10].f();
            i10++;
        }
    }

    @Override
    @NonNull
    public C11897d k(@NonNull Status status) {
        return new C11897d(status, this.f61063u);
    }
}
