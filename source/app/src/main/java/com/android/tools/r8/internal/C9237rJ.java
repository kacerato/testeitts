package com.android.tools.r8.internal;

import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;

public final class C9237rJ {

    public final List f52019a;

    public final List f52020b;

    public C9237rJ(List list, List list2) {
        this.f52019a = list;
        this.f52020b = list2;
    }

    public final C9237rJ a(Function function) {
        return new C9237rJ((List) this.f52019a.stream().map(function).collect(Collectors.toList()), (List) this.f52020b.stream().map(function).collect(Collectors.toList()));
    }
}
