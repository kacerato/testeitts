package com.android.tools.r8.internal;

import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.ProgramResourceProvider;
import com.android.tools.r8.ResourceException;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.synthesis.S;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Function;

public class C6300Zd {

    public static final boolean f46302c = true;

    public final IdentityHashMap f46303a;

    public final IdentityHashMap f46304b;

    public C6300Zd(IdentityHashMap identityHashMap, IdentityHashMap identityHashMap2) {
        this.f46303a = identityHashMap;
        this.f46304b = identityHashMap2;
    }

    public static C6300Zd a() {
        return new C6300Zd(new IdentityHashMap(), null);
    }

    public final C6300Zd a(final AbstractC5308Hz abstractC5308Hz) {
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        this.f46303a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6300Zd.a(AbstractC5308Hz.this, identityHashMap, (com.android.tools.r8.graph.M2) obj, (FeatureSplit) obj2);
            }
        });
        return new C6300Zd(identityHashMap, this.f46304b);
    }

    public static C6300Zd a(C4724u1 c4724u1, C5821Qv c5821Qv, C5094Ef0 c5094Ef0) {
        if (c5821Qv == null) {
            return a();
        }
        IdentityHashMap identityHashMap = new IdentityHashMap();
        IdentityHashMap identityHashMap2 = new IdentityHashMap();
        ArrayList arrayList = c5821Qv.f43761a;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            FeatureSplit featureSplit = (FeatureSplit) obj;
            Iterator<ProgramResourceProvider> it = featureSplit.getProgramResourceProviders().iterator();
            String str = null;
            while (it.hasNext()) {
                try {
                    Iterator<ProgramResource> it2 = it.next().getProgramResources().iterator();
                    while (it2.hasNext()) {
                        for (String str2 : it2.next().getClassDescriptors()) {
                            identityHashMap.put(c4724u1.d(str2), featureSplit);
                            if (str == null || str2.compareTo(str) > 0) {
                                str = str2;
                            }
                        }
                    }
                } catch (ResourceException e10) {
                    throw c5094Ef0.b(e10.getMessage());
                }
            }
            if (str != null) {
                identityHashMap2.put(featureSplit, str);
            }
        }
        return new C6300Zd(identityHashMap, identityHashMap2);
    }

    public static void a(com.android.tools.r8.graph.O5 o52, Map map, com.android.tools.r8.graph.M2 m22, FeatureSplit featureSplit) {
        if (o52.f36682e.contains(m22)) {
            return;
        }
        map.put(m22, featureSplit);
    }

    public final IdentityHashMap a(Set set, com.android.tools.r8.synthesis.J j10) {
        IdentityHashMap identityHashMap = new IdentityHashMap();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            FeatureSplit a10 = a(h22.getReference(), j10);
            if (a10 != null && !a10.isBase()) {
                ((Set) identityHashMap.computeIfAbsent(a10, new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        Set c10;
                        c10 = AbstractC5513Ll0.c();
                        return c10;
                    }
                })).add(h22);
            }
        }
        return identityHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final FeatureSplit a(com.android.tools.r8.graph.J2 j22, com.android.tools.r8.synthesis.J j10) {
        FeatureSplit featureSplit;
        com.android.tools.r8.graph.M2 S10 = j22.S();
        if (j10 == null) {
            return (FeatureSplit) this.f46303a.getOrDefault(S10, FeatureSplit.BASE);
        }
        if (j10.g(S10)) {
            if (j10.a(S10, new com.android.tools.r8.synthesis.I() {
                @Override
                public final S.b a(com.android.tools.r8.synthesis.S s10) {
                    S.b bVar;
                    bVar = s10.f58182i;
                    return bVar;
                }
            })) {
                return FeatureSplit.BASE;
            }
            featureSplit = j10.a(S10, FeatureSplit.BASE);
            if (!f46302c && this.f46303a.getOrDefault(S10, featureSplit) != featureSplit) {
                throw new AssertionError();
            }
        } else {
            featureSplit = (FeatureSplit) this.f46303a.getOrDefault(S10, FeatureSplit.BASE);
        }
        return featureSplit.isBase() ? FeatureSplit.BASE : featureSplit;
    }

    public final C6300Zd a(final R00 r00, C8659ns0 c8659ns0) {
        return (C6300Zd) c8659ns0.a("Rewrite ClassToFeatureSplitMap", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                return C6300Zd.this.a(r00);
            }
        });
    }

    public static void a(AbstractC5308Hz abstractC5308Hz, Map map, com.android.tools.r8.graph.M2 m22, FeatureSplit featureSplit) {
        com.android.tools.r8.graph.M2 c10 = abstractC5308Hz.c(AbstractC5308Hz.g(), m22);
        if (c10.L0()) {
            return;
        }
        FeatureSplit featureSplit2 = (FeatureSplit) map.put(c10, featureSplit);
        if (!f46302c && featureSplit2 != null && featureSplit2 != featureSplit) {
            throw new AssertionError();
        }
    }

    public final C6300Zd a(final com.android.tools.r8.graph.O5 o52) {
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        this.f46303a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6300Zd.a(com.android.tools.r8.graph.O5.this, identityHashMap, (com.android.tools.r8.graph.M2) obj, (FeatureSplit) obj2);
            }
        });
        return new C6300Zd(identityHashMap, this.f46304b);
    }

    public static boolean a(com.android.tools.r8.graph.H2 h22, C4798y c4798y) {
        C6300Zd c6300Zd = ((C4514j) c4798y.f()).f37255b;
        com.android.tools.r8.synthesis.J g10 = c4798y.f38408a.g();
        c6300Zd.getClass();
        return !c6300Zd.a(h22.getReference(), g10).isBase();
    }
}
