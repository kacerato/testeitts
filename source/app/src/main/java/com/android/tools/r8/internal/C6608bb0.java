package com.android.tools.r8.internal;

import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.metadata.R8FeatureSplitMetadata;
import com.android.tools.r8.metadata.R8FeatureSplitsMetadata;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

public final class C6608bb0 implements R8FeatureSplitsMetadata {

    public static final boolean f46797c = true;

    @InterfaceC9168qv
    @InterfaceC10474yl0("featureSplits")
    public final List<R8FeatureSplitMetadata> f46798a;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isolatedSplits")
    public final boolean f46799b;

    public C6608bb0(C5821Qv c5821Qv, ArrayList arrayList) {
        this.f46798a = arrayList;
        this.f46799b = c5821Qv.f43762b;
    }

    public static C6608bb0 a(C4798y c4798y, Map map) {
        C8570nJ E10 = c4798y.E();
        if (!f46797c && !E10.I()) {
            throw new AssertionError();
        }
        C5821Qv c5821Qv = E10.f50718s;
        ArrayList arrayList = c5821Qv.f43761a;
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            arrayList2.add(new C6441ab0(AT.a((Collection) map.getOrDefault((FeatureSplit) obj, Collections.EMPTY_LIST), (Function) new C7688i11())));
        }
        return new C6608bb0(c5821Qv, arrayList2);
    }

    @Override
    public final List getFeatureSplits() {
        return this.f46798a;
    }

    @Override
    public final boolean isIsolatedSplitsEnabled() {
        return this.f46799b;
    }
}
