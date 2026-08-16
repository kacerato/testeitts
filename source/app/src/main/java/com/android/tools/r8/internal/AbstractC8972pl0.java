package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public abstract class AbstractC8972pl0 extends AbstractC9472sl0 {
    public static final boolean a(Object obj) {
        return obj == null;
    }

    public static final Object b(Object obj) {
        return obj;
    }

    public static final Iterator c(InterfaceC8638nl0 interfaceC8638nl0) {
        GJ.c(interfaceC8638nl0, "it");
        return interfaceC8638nl0.iterator();
    }

    public static List d(InterfaceC8638nl0 interfaceC8638nl0) {
        Iterator it = interfaceC8638nl0.iterator();
        if (!it.hasNext()) {
            return C6049Ut.f44892b;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            List singletonList = Collections.singletonList(next);
            GJ.b(singletonList, "singletonList(...)");
            return singletonList;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public static final C4898Ax a(InterfaceC8638nl0 interfaceC8638nl0, InterfaceC8676ny interfaceC8676ny) {
        if (interfaceC8638nl0 instanceof C5874Rs0) {
            C5874Rs0 c5874Rs0 = (C5874Rs0) interfaceC8638nl0;
            GJ.c(interfaceC8676ny, "iterator");
            return new C4898Ax(c5874Rs0.f44012a, c5874Rs0.f44013b, interfaceC8676ny);
        }
        return new C4898Ax(interfaceC8638nl0, new InterfaceC8676ny() {
            @Override
            public final Object a(Object obj) {
                return AbstractC8972pl0.b(obj);
            }
        }, interfaceC8676ny);
    }

    public static final C4898Ax b(InterfaceC8638nl0 interfaceC8638nl0) {
        return a(interfaceC8638nl0, new InterfaceC8676ny() {
            @Override
            public final Object a(Object obj) {
                return AbstractC8972pl0.c((InterfaceC8638nl0) obj);
            }
        });
    }

    public static C6839cx a(InterfaceC8638nl0 interfaceC8638nl0) {
        InterfaceC8676ny interfaceC8676ny = new InterfaceC8676ny() {
            @Override
            public final Object a(Object obj) {
                return Boolean.valueOf(AbstractC8972pl0.a(obj));
            }
        };
        GJ.c(interfaceC8676ny, "predicate");
        return new C6839cx(interfaceC8638nl0, false, interfaceC8676ny);
    }

    public static C5874Rs0 a(C4898Ax c4898Ax, final InterfaceC8676ny interfaceC8676ny) {
        InterfaceC8676ny interfaceC8676ny2 = new InterfaceC8676ny() {
            @Override
            public final Object a(Object obj) {
                return AbstractC8972pl0.a(InterfaceC8676ny.this, obj);
            }
        };
        GJ.c(interfaceC8676ny2, "transform");
        return new C5874Rs0(c4898Ax, interfaceC8676ny2);
    }

    public static final Object a(InterfaceC8676ny interfaceC8676ny, Object obj) {
        interfaceC8676ny.a(obj);
        return obj;
    }

    public static InterfaceC8638nl0 a(Object... objArr) {
        return objArr.length == 0 ? C6220Xt.f45846a : new C6528b4(objArr);
    }
}
