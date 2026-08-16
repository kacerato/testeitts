package org.bouncycastle.cms;

import fi.C13228d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class I0 implements org.bouncycastle.util.l<H0> {

    public final List f100541b;

    public final Map f100542c;

    public I0(Collection<H0> collection) {
        this.f100542c = new HashMap();
        for (H0 h02 : collection) {
            F0 i10 = h02.i();
            ArrayList arrayList = (ArrayList) this.f100542c.get(i10);
            if (arrayList == null) {
                arrayList = new ArrayList(1);
                this.f100542c.put(i10, arrayList);
            }
            arrayList.add(h02);
        }
        this.f100541b = new ArrayList(collection);
    }

    public H0 a(F0 f02) {
        Collection<H0> c10 = c(f02);
        if (c10.size() == 0) {
            return null;
        }
        return c10.iterator().next();
    }

    public Collection<H0> b() {
        return new ArrayList(this.f100541b);
    }

    public Collection<H0> c(F0 f02) {
        if (f02 instanceof C14675q0) {
            C14675q0 c14675q0 = (C14675q0) f02;
            C13228d b10 = c14675q0.b();
            byte[] d10 = c14675q0.d();
            if (b10 != null && d10 != null) {
                ArrayList arrayList = new ArrayList();
                Collection<H0> c10 = c(new C14675q0(b10, c14675q0.c()));
                if (c10 != null) {
                    arrayList.addAll(c10);
                }
                Collection<H0> c11 = c(new C14675q0(d10));
                if (c11 != null) {
                    arrayList.addAll(c11);
                }
                return arrayList;
            }
        }
        ArrayList arrayList2 = (ArrayList) this.f100542c.get(f02);
        return arrayList2 == null ? new ArrayList() : new ArrayList(arrayList2);
    }

    @Override
    public Iterator<H0> iterator() {
        return b().iterator();
    }

    public int size() {
        return this.f100541b.size();
    }

    public I0(H0 h02) {
        HashMap hashMap = new HashMap();
        this.f100542c = hashMap;
        ArrayList arrayList = new ArrayList(1);
        this.f100541b = arrayList;
        arrayList.add(h02);
        hashMap.put(h02.i(), arrayList);
    }
}
