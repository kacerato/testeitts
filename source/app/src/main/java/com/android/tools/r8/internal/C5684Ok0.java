package com.android.tools.r8.internal;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.function.Function;

public final class C5684Ok0 {

    public static final boolean f43006h = true;

    public int f43007a = 0;

    public final C9115qd0 f43008b = new C9115qd0();

    public final Set f43009c = AbstractC5513Ll0.c();

    public final ArrayDeque f43010d = new ArrayDeque();

    public final ArrayDeque f43011e = new ArrayDeque();

    public final ArrayList f43012f = new ArrayList();

    public final Function f43013g;

    public C5684Ok0(Function function) {
        this.f43013g = function;
    }

    public final void a(Object obj) {
        Object pop;
        C9115qd0 c9115qd0 = this.f43008b;
        int i10 = this.f43007a;
        this.f43007a = i10 + 1;
        c9115qd0.b(i10, obj);
        this.f43009c.add(obj);
        this.f43010d.push(obj);
        this.f43011e.push(obj);
        for (Object obj2 : (Iterable) this.f43013g.apply(obj)) {
            if (!this.f43008b.containsKey(obj2)) {
                a(obj2);
            } else if (this.f43009c.contains(obj2)) {
                int b10 = this.f43008b.b(obj2);
                while (b10 < this.f43008b.b(this.f43011e.peek())) {
                    this.f43011e.pop();
                }
            }
        }
        if (this.f43011e.peek() == obj) {
            Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(this.f43010d.size()));
            do {
                pop = this.f43010d.pop();
                this.f43009c.remove(pop);
                newSetFromMap.add(pop);
            } while (pop != obj);
            this.f43012f.add(newSetFromMap);
            this.f43011e.pop();
        }
    }
}
