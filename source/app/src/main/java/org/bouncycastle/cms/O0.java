package org.bouncycastle.cms;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class O0 implements org.bouncycastle.util.l<N0> {

    public List f100583b;

    public Map f100584c = new HashMap();

    public O0(Collection<N0> collection) {
        this.f100583b = new ArrayList();
        for (N0 n02 : collection) {
            K0 l10 = n02.l();
            ArrayList arrayList = (ArrayList) this.f100584c.get(l10);
            if (arrayList == null) {
                arrayList = new ArrayList(1);
                this.f100584c.put(l10, arrayList);
            }
            arrayList.add(n02);
        }
        this.f100583b = new ArrayList(collection);
    }

    public N0 a(K0 k02) {
        Collection<N0> c10 = c(k02);
        if (c10.size() == 0) {
            return null;
        }
        return c10.iterator().next();
    }

    public Collection<N0> b() {
        return new ArrayList(this.f100583b);
    }

    public Collection<N0> c(K0 k02) {
        if (k02.a() == null || k02.c() == null) {
            ArrayList arrayList = (ArrayList) this.f100584c.get(k02);
            return arrayList == null ? new ArrayList() : new ArrayList(arrayList);
        }
        ArrayList arrayList2 = new ArrayList();
        Collection<N0> c10 = c(new K0(k02.a(), k02.b()));
        if (c10 != null) {
            arrayList2.addAll(c10);
        }
        Collection<N0> c11 = c(new K0(k02.c()));
        if (c11 != null) {
            arrayList2.addAll(c11);
        }
        return arrayList2;
    }

    @Override
    public Iterator<N0> iterator() {
        return b().iterator();
    }

    public int size() {
        return this.f100583b.size();
    }

    public O0(N0 n02) {
        this.f100583b = new ArrayList();
        ArrayList arrayList = new ArrayList(1);
        this.f100583b = arrayList;
        arrayList.add(n02);
        this.f100584c.put(n02.l(), this.f100583b);
    }
}
