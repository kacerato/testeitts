package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;

public abstract class AbstractC5513Ll0 {
    public static HashSet a(Collection collection) {
        if (collection instanceof Collection) {
            return new HashSet(collection);
        }
        Iterator<E> it = collection.iterator();
        HashSet hashSet = new HashSet();
        JK.a(hashSet, it);
        return hashSet;
    }

    public static HashSet b() {
        return new HashSet();
    }

    public static Set c() {
        return Collections.newSetFromMap(new IdentityHashMap());
    }

    public static Set a() {
        return AbstractC8368m60.a();
    }

    public static boolean a(Set set, Collection collection) {
        collection.getClass();
        if (collection instanceof LY) {
            collection = ((LY) collection).w();
        }
        boolean z10 = false;
        if ((collection instanceof Set) && collection.size() > set.size()) {
            Iterator it = set.iterator();
            collection.getClass();
            while (it.hasNext()) {
                if (collection.contains(it.next())) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }
        Iterator it2 = collection.iterator();
        while (it2.hasNext()) {
            z10 |= set.remove(it2.next());
        }
        return z10;
    }

    public static int a(Set set) {
        Iterator it = set.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i10 = ~(~(i10 + (next != null ? next.hashCode() : 0)));
        }
        return i10;
    }
}
