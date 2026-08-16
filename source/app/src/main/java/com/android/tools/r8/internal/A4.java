package com.android.tools.r8.internal;

import com.android.tools.r8.AssertionsConfiguration;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

public final class A4 {

    public static final boolean f38521d = true;

    public final AssertionsConfiguration f38522a;

    public final List f38523b;

    public final AbstractCollection f38524c;

    public A4(List list, AssertionsConfiguration assertionsConfiguration) {
        this.f38522a = assertionsConfiguration;
        if (!f38521d && list == null) {
            throw new AssertionError();
        }
        this.f38523b = list;
        this.f38524c = (AbstractCollection) a();
    }

    public final List a() {
        if (!f38521d && this.f38522a.isAssertionHandler()) {
            throw new AssertionError();
        }
        if (this.f38523b.isEmpty()) {
            int i10 = AbstractC7552hC.f48487c;
            return C6190Xe0.f45779e;
        }
        final ArrayList arrayList = new ArrayList();
        this.f38523b.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                A4.a(List.this, (AssertionsConfiguration) obj);
            }
        });
        return arrayList;
    }

    public static void a(List list, AssertionsConfiguration assertionsConfiguration) {
        if (!assertionsConfiguration.isAssertionHandler() || list.contains(assertionsConfiguration.getAssertionHandler())) {
            return;
        }
        list.add(assertionsConfiguration.getAssertionHandler());
    }
}
