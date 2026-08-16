package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5480Ky;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.C7417gQ;
import com.android.tools.r8.internal.C7751iQ;
import com.android.tools.r8.internal.InterfaceC7495gt0;
import com.android.tools.r8.internal.WB;
import com.android.tools.r8.shaking.InterfaceC11195f0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;

public final class A implements InterfaceC11195f0 {

    public static final A f54996b;

    public final AbstractC7552hC f54997a;

    static {
        int i10 = AbstractC7552hC.f48487c;
        f54996b = new A(C6190Xe0.f45779e);
    }

    public A(AbstractC7552hC abstractC7552hC) {
        this.f54997a = abstractC7552hC;
    }

    public static A a(C7417gQ c7417gQ, C4724u1 c4724u1, C5094Ef0 c5094Ef0) {
        if (c7417gQ == null) {
            return f54996b;
        }
        ArrayList arrayList = c7417gQ.f48260a;
        if (arrayList.isEmpty()) {
            return f54996b;
        }
        int i10 = AbstractC7552hC.f48487c;
        Object[] objArr = new Object[4];
        int size = arrayList.size();
        int i11 = 0;
        int i12 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            C7751iQ c7751iQ = (C7751iQ) obj;
            E e10 = new E(c7751iQ.f48935a, c7751iQ.f48936b, D.a(c7751iQ.f48937c, c4724u1, c5094Ef0), D.a(c7751iQ.f48938d, c4724u1, c5094Ef0));
            int i13 = i12 + 1;
            if (objArr.length < i13) {
                objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i13));
            }
            objArr[i12] = e10;
            i12 = i13;
        }
        return new A(AbstractC7552hC.b(i12, objArr));
    }

    public final boolean b(Consumer consumer, C4798y c4798y) {
        if (this == f54996b) {
            return false;
        }
        C7417gQ c7417gQ = new C7417gQ();
        consumer.accept(c7417gQ);
        return AbstractC10752b0.a(c4798y, this.f54997a, c7417gQ.f48260a, new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return Boolean.valueOf(((E) obj).b((Consumer) obj2, (C4798y) obj3));
            }
        });
    }

    public static Consumer a(final E e10) {
        Objects.requireNonNull(e10);
        return new Consumer() {
            @Override
            public final void accept(Object obj) {
                E.this.a((InterfaceC4403d1) obj);
            }
        };
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        C5480Ky.a((Iterable) this.f54997a, new Function() {
            @Override
            public final Object apply(Object obj) {
                return A.a((E) obj);
            }
        }, (Object) interfaceC4403d1);
    }
}
