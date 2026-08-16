package jf;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.lang.Comparable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.logging.Logger;
import kf.C13974a;
import p000if.C13702E;

public class j<Fitness extends Comparable<Fitness>, Element> {

    public static final Logger f92929d = Logger.getLogger(j.class.getName());

    public static final boolean f92930e = false;

    public int f92931a;

    public int f92932b = 0;

    public final TreeMap<Fitness, List<Element>> f92933c = new TreeMap<>();

    public j(int i10) {
        C13702E.F(i10, "capacity");
        this.f92931a = i10;
    }

    public void a(Element element, Fitness fitness) {
        C13702E.t(element, "element");
        if (this.f92932b < this.f92931a || n().compareTo(fitness) < 0) {
            List<Element> list = this.f92933c.get(fitness);
            if (list == null) {
                list = new ArrayList<>(1);
                this.f92933c.put(fitness, list);
            }
            if (!list.contains(element)) {
                list.add(element);
                this.f92932b++;
                d(this.f92931a);
            }
            if (list.isEmpty()) {
                this.f92933c.remove(fitness);
            }
        }
    }

    public void b(List<Element> list, Fitness fitness) {
        C13702E.t(list, "list");
        if (this.f92932b < this.f92931a || n().compareTo(fitness) < 0) {
            int size = list.size();
            List<Element> list2 = this.f92933c.get(fitness);
            if (list2 == null) {
                list2 = new ArrayList<>(size);
                this.f92933c.put(fitness, list2);
            }
            for (Element element : list) {
                if (!list2.contains(element)) {
                    list2.add(element);
                    this.f92932b++;
                }
            }
            if (list2.isEmpty()) {
                this.f92933c.remove(fitness);
            }
            d(this.f92931a);
        }
    }

    public Fitness c() {
        Map.Entry<Fitness, List<Element>> lastEntry = this.f92933c.lastEntry();
        if (lastEntry == null) {
            return null;
        }
        return lastEntry.getKey();
    }

    public void d(int i10) {
        C13702E.q(i10, "target size");
        while (this.f92932b > i10) {
            Fitness firstKey = this.f92933c.firstKey();
            List<Element> list = this.f92933c.get(firstKey);
            int size = list.size();
            if (this.f92932b - size >= i10) {
                this.f92933c.remove(firstKey);
                this.f92932b -= size;
            } else {
                Iterator<Element> it = list.iterator();
                while (it.hasNext()) {
                    it.next();
                    if (this.f92932b > i10) {
                        it.remove();
                        this.f92932b--;
                    }
                }
            }
        }
    }

    public Element e() {
        Map.Entry<Fitness, List<Element>> lastEntry = this.f92933c.lastEntry();
        if (lastEntry == null) {
            return null;
        }
        return lastEntry.getValue().get(0);
    }

    public int f() {
        return this.f92931a;
    }

    public List<Element> g() {
        ArrayList arrayList = new ArrayList(this.f92932b);
        Iterator<Map.Entry<Fitness, List<Element>>> it = this.f92933c.descendingMap().entrySet().iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next().getValue());
        }
        return arrayList;
    }

    public int h(int i10, j<Fitness, Element> jVar) {
        C13702E.q(i10, "maxCount");
        C13702E.t(jVar, FirebaseAnalytics.d.f67729z);
        Iterator<Map.Entry<Fitness, List<Element>>> it = this.f92933c.descendingMap().entrySet().iterator();
        int i11 = 0;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<Fitness, List<Element>> next = it.next();
            List<Element> value = next.getValue();
            Fitness key = next.getKey();
            if (value.size() + i11 <= i10) {
                jVar.b(value, key);
                i11 += value.size();
            } else {
                Iterator<Element> it2 = value.iterator();
                while (i11 < i10) {
                    jVar.a(it2.next(), key);
                    i11++;
                }
            }
        }
        return i11;
    }

    public int i(BitSet bitSet, j<Fitness, Element> jVar) {
        C13702E.t(bitSet, "subset");
        C13702E.t(jVar, FirebaseAnalytics.d.f67729z);
        int i10 = 0;
        int nextSetBit = bitSet.nextSetBit(0);
        if (nextSetBit == -1) {
            return 0;
        }
        int i11 = nextSetBit;
        int i12 = 0;
        for (Map.Entry<Fitness, List<Element>> entry : this.f92933c.entrySet()) {
            List<Element> value = entry.getValue();
            if (value.size() + i12 <= i11) {
                i12 += value.size();
            } else {
                Fitness key = entry.getKey();
                for (Element element : value) {
                    if (i12 == i11) {
                        jVar.a(element, key);
                        i10++;
                        i11 = bitSet.nextSetBit(i11 + 1);
                        if (i11 == -1) {
                            return i10;
                        }
                    }
                    i12++;
                }
            }
        }
        return i10;
    }

    public void j(j<Fitness, Element> jVar) {
        C13702E.t(jVar, FirebaseAnalytics.d.f67729z);
        for (Map.Entry<Fitness, List<Element>> entry : this.f92933c.entrySet()) {
            jVar.b(entry.getValue(), entry.getKey());
        }
    }

    public int k(int i10, C13974a c13974a, j<Fitness, Element> jVar) {
        C13702E.q(i10, "maxCount");
        C13702E.t(c13974a, "generator");
        C13702E.t(jVar, FirebaseAnalytics.d.f67729z);
        if (i10 >= this.f92932b) {
            j(jVar);
            return this.f92932b;
        }
        BitSet bitSet = new BitSet(this.f92932b);
        int i11 = this.f92932b - 1;
        for (int i12 = 0; i12 < i10; i12++) {
            bitSet.set(c13974a.i(bitSet, i11, false));
        }
        return i(bitSet, jVar);
    }

    public void l(int i10) {
        C13702E.F(i10, "new capacity");
        this.f92931a = i10;
        d(i10);
    }

    public int m() {
        return this.f92932b;
    }

    public Fitness n() {
        Map.Entry<Fitness, List<Element>> firstEntry = this.f92933c.firstEntry();
        if (firstEntry == null) {
            return null;
        }
        return firstEntry.getKey();
    }
}
