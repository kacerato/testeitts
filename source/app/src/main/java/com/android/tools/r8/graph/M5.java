package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5513Ll0;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class M5 {

    public static final boolean f36604h = true;

    public AbstractC4780x0 f36605a;

    public final Set f36606b = c();

    public final Map f36607c = b();

    public final Set f36608d = c();

    public Set f36609e = c();

    public final Set f36610f = c();

    public Set f36611g = c();

    public final O5 a() {
        if (!this.f36607c.isEmpty()) {
            IdentityHashMap identityHashMap = new IdentityHashMap();
            for (Map.Entry entry : this.f36607c.entrySet()) {
                A2 a22 = (A2) entry.getKey();
                if (!identityHashMap.containsKey(a22)) {
                    H5 h52 = (H5) entry.getValue();
                    H5 h53 = (H5) this.f36607c.get(h52.getReference());
                    if (h53 == null) {
                        continue;
                    } else {
                        A2[] a2Arr = {a22, h52.getReference()};
                        ArrayDeque arrayDeque = new ArrayDeque();
                        Collections.addAll(arrayDeque, a2Arr);
                        while (true) {
                            A2 reference = h53.getReference();
                            H5 h54 = (H5) this.f36607c.get(reference);
                            if (h54 == null) {
                                break;
                            }
                            arrayDeque.addLast(reference);
                            h53 = h54;
                        }
                        if (!f36604h && this.f36611g.contains(h53.getReference())) {
                            throw new AssertionError();
                        }
                        Iterator it = arrayDeque.iterator();
                        while (it.hasNext()) {
                            identityHashMap.put((A2) it.next(), h53);
                        }
                    }
                }
            }
            this.f36607c.putAll(identityHashMap);
        }
        return new O5(this.f36605a, this.f36606b, this.f36607c, this.f36608d, this.f36609e, this.f36610f, this.f36611g);
    }

    public Map b() {
        return new IdentityHashMap();
    }

    public Set c() {
        return AbstractC5513Ll0.c();
    }

    public final M5 a(Set set) {
        this.f36608d.addAll(set);
        this.f36609e.addAll(set);
        return this;
    }
}
