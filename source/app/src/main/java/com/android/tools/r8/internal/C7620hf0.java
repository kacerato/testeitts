package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.PackageReference;
import com.android.tools.r8.references.Reference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;

public class C7620hf0 {

    public static final boolean f48663e = true;

    public final AbstractC8552nC f48664a;

    public final AbstractC8552nC f48665b;

    public final AbstractC8552nC f48666c;

    public final ConcurrentHashMap f48667d = new ConcurrentHashMap();

    public C7620hf0(AbstractC8552nC abstractC8552nC, AbstractC8552nC abstractC8552nC2, AbstractC8552nC abstractC8552nC3) {
        this.f48664a = abstractC8552nC;
        this.f48665b = abstractC8552nC2;
        this.f48666c = abstractC8552nC3;
    }

    public Map<PackageReference, PackageReference> a() {
        return this.f48664a;
    }

    public final C7453gf0 a(C4798y c4798y) {
        Iterator<com.android.tools.r8.graph.H2> it = c4798y.f().d().iterator();
        while (it.hasNext()) {
            for (C4516j1 c4516j1 : it.next().z1()) {
                if (c4516j1.Q0() != null) {
                    c4516j1.Q0().V();
                }
            }
        }
        final HashMap hashMap = new HashMap();
        this.f48664a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Map.this.put(((PackageReference) obj).getPackageBinaryName(), ((PackageReference) obj2).getPackageBinaryName());
            }
        });
        final ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        final C4724u1 b10 = c4798y.b();
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7620hf0.this.b(b10, concurrentHashMap, hashMap, (com.android.tools.r8.graph.M2) obj);
            }
        };
        synchronized (b10) {
            new ArrayList(b10.f38025d.values()).forEach(consumer);
        }
        return new C7453gf0(concurrentHashMap, hashMap, b10);
    }

    public final PackageReference a(String str) {
        return (PackageReference) this.f48667d.computeIfAbsent(str, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Reference.packageFromString((String) obj);
            }
        });
    }

    public final void b(C4724u1 c4724u1, Map map, Map map2, com.android.tools.r8.graph.M2 m22) {
        if (m22.Q0()) {
            if (m22.E0()) {
                b(c4724u1, map, map2, m22.a(c4724u1));
                return;
            }
            if (!f48663e && !m22.I0()) {
                throw new AssertionError();
            }
            ClassReference classReference = (ClassReference) this.f48665b.get(m22.s0());
            if (classReference != null) {
                map.put(m22, c4724u1.b(classReference.getDescriptor()));
                return;
            }
            PackageReference packageReference = (PackageReference) this.f48664a.get(a(m22.A0()));
            if (packageReference != null) {
                map.put(m22, m22.f36592f.a(c4724u1.b("L" + m22.z0()), c4724u1.b("L" + packageReference.getPackageBinaryName()), c4724u1));
                return;
            }
            if (this.f48666c.isEmpty() || m22.A0().isEmpty()) {
                return;
            }
            a(m22, m22.A0(), c4724u1, map, map2);
        }
    }

    public final void a(com.android.tools.r8.graph.M2 m22, String str, C4724u1 c4724u1, Map map, Map map2) {
        PackageReference a10 = a(str);
        PackageReference packageReference = (PackageReference) this.f48666c.get(a10);
        if (packageReference != null) {
            com.android.tools.r8.graph.L2 a11 = m22.f36592f.a(c4724u1.b("L" + a10.getPackageBinaryName()), c4724u1.b("L" + packageReference.getPackageBinaryName()), c4724u1);
            if (!f48663e && !C4932Bl.y(a11.toString())) {
                throw new AssertionError();
            }
            map.put(m22, a11);
            map2.putIfAbsent(m22.z0(), C4932Bl.n(C4932Bl.b(a11.toString())));
            return;
        }
        if (str.isEmpty()) {
            return;
        }
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf == -1) {
            a(m22, "", c4724u1, map, map2);
        } else {
            a(m22, str.substring(0, lastIndexOf), c4724u1, map, map2);
        }
    }
}
