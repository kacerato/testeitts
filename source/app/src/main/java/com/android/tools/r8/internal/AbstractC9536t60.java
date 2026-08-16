package com.android.tools.r8.internal;

import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.ExecutorService;
import java.util.function.Predicate;

public abstract class AbstractC9536t60 {

    public static final boolean f52530a = true;

    public abstract LinkedList a(AbstractC9369s60 abstractC9369s60, LinkedList linkedList, ExecutorService executorService);

    public final LinkedList a(AbstractList abstractList, Collection collection, ExecutorService executorService, C8659ns0 c8659ns0) {
        LinkedList linkedList;
        if (abstractList instanceof LinkedList) {
            linkedList = (LinkedList) abstractList;
        } else {
            linkedList = new LinkedList(abstractList);
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            AbstractC9369s60 abstractC9369s60 = (AbstractC9369s60) it.next();
            if (!abstractC9369s60.l()) {
                c8659ns0.b(abstractC9369s60.f());
                linkedList = a(abstractC9369s60, linkedList, executorService);
                c8659ns0.d();
                abstractC9369s60.e();
                if (linkedList.isEmpty()) {
                    return linkedList;
                }
                if (!f52530a && !linkedList.stream().allMatch(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return AbstractC9536t60.a((AbstractC6429aW) obj);
                    }
                })) {
                    throw new AssertionError();
                }
            }
        }
        return linkedList;
    }

    public static boolean a(AbstractC6429aW abstractC6429aW) {
        return abstractC6429aW.size() >= 2;
    }
}
