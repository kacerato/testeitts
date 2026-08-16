package com.android.tools.r8.graph;

import com.android.tools.r8.internal.C8693o30;

@FunctionalInterface
public interface InterfaceC4651q3 {
    static InterfaceC4651q3 a(final C4460g1[] c4460g1Arr, final C4460g1[] c4460g1Arr2) {
        return new InterfaceC4651q3() {
            @Override
            public final C4669r3 a(E0 e02) {
                return InterfaceC4651q3.a(c4460g1Arr2, c4460g1Arr, e02);
            }
        };
    }

    static InterfaceC4651q3 empty() {
        C4460g1[] c4460g1Arr = C4460g1.f37200o;
        return a(c4460g1Arr, c4460g1Arr);
    }

    C4669r3 a(E0 e02);

    static InterfaceC4651q3 a(final C4669r3 c4669r3) {
        return new InterfaceC4651q3() {
            @Override
            public final C4669r3 a(E0 e02) {
                return InterfaceC4651q3.a(C4669r3.this, e02);
            }
        };
    }

    static C4669r3 a(C4669r3 c4669r3, E0 e02) {
        return new C4669r3(e02, c4669r3.f37700b);
    }

    static C4669r3 a(C4460g1[] c4460g1Arr, C4460g1[] c4460g1Arr2, E0 e02) {
        AbstractC4688s3 c4632p3;
        int length = c4460g1Arr.length + c4460g1Arr2.length;
        if (length > 30) {
            c4632p3 = new C4707t3(new C8693o30(length));
            c4632p3.b(c4460g1Arr);
            c4632p3.a(c4460g1Arr2);
        } else {
            c4632p3 = new C4632p3(c4460g1Arr, c4460g1Arr2);
        }
        return new C4669r3(e02, c4632p3);
    }
}
