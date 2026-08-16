package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
import java.util.function.Consumer;

public final class C5840Rd extends AbstractC6014Ud {

    public final ArrayList f43945b;

    public C5840Rd(com.android.tools.r8.graph.V v10, ArrayList arrayList) {
        super(v10);
        this.f43945b = arrayList;
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22, Consumer consumer) {
        ArrayList arrayList = this.f43945b;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            ((AbstractC6014Ud) obj).a(m22, consumer);
        }
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        ArrayList arrayList = this.f43945b;
        int size = arrayList.size();
        String str = "combined(";
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            sb2.append(str);
            sb2.append(obj);
            str = ", ";
        }
        sb2.append(")");
        return sb2.toString();
    }

    @Override
    public final Collection a() {
        Set c10 = AbstractC5513Ll0.c();
        ArrayList arrayList = this.f43945b;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            c10.addAll(((AbstractC6014Ud) obj).a());
        }
        return c10;
    }
}
