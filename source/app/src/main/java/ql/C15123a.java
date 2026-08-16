package ql;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.TreeMap;
import oh.C14549x;
import ql.C15129g;
import ql.C15131i;
import ql.C15132j;

public final class C15123a implements Serializable {

    public static final long f108313n = 1;

    public transient C15133k f108314b;

    public final int f108315c;

    public final List<C15125c> f108316d;

    public int f108317e;

    public E f108318f;

    public List<E> f108319g;

    public Map<Integer, LinkedList<E>> f108320h;

    public Stack<E> f108321i;

    public Map<Integer, E> f108322j;

    public int f108323k;

    public boolean f108324l;

    public transient int f108325m;

    public C15123a(C15123a c15123a) {
        this.f108314b = new C15133k(c15123a.f108314b.e());
        this.f108315c = c15123a.f108315c;
        this.f108317e = c15123a.f108317e;
        this.f108318f = c15123a.f108318f;
        ArrayList arrayList = new ArrayList();
        this.f108319g = arrayList;
        arrayList.addAll(c15123a.f108319g);
        this.f108320h = new TreeMap();
        for (Integer num : c15123a.f108320h.o()) {
            this.f108320h.put(num, (LinkedList) c15123a.f108320h.get(num).clone());
        }
        Stack<E> stack = new Stack<>();
        this.f108321i = stack;
        stack.addAll(c15123a.f108321i);
        this.f108316d = new ArrayList();
        Iterator<C15125c> it = c15123a.f108316d.iterator();
        while (it.hasNext()) {
            this.f108316d.add(it.next().clone());
        }
        this.f108322j = new TreeMap(c15123a.f108322j);
        this.f108323k = c15123a.f108323k;
        this.f108325m = c15123a.f108325m;
        this.f108324l = c15123a.f108324l;
    }

    public List<E> a() {
        ArrayList arrayList = new ArrayList();
        Iterator<E> it = this.f108319g.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public final C15125c b() {
        C15125c c15125c = null;
        for (C15125c c15125c2 : this.f108316d) {
            if (!c15125c2.f() && c15125c2.g() && (c15125c == null || c15125c2.b() < c15125c.b() || (c15125c2.b() == c15125c.b() && c15125c2.c() < c15125c.c()))) {
                c15125c = c15125c2;
            }
        }
        return c15125c;
    }

    public int c() {
        return this.f108323k;
    }

    public int d() {
        return this.f108325m;
    }

    public C15123a e(byte[] bArr, byte[] bArr2, C15132j c15132j) {
        return new C15123a(this, bArr, bArr2, c15132j);
    }

    public E f() {
        return this.f108318f;
    }

    public int g() {
        return this.f108315c;
    }

    public final void h(byte[] bArr, byte[] bArr2, C15132j c15132j) {
        if (c15132j == null) {
            throw new NullPointerException("otsHashAddress == null");
        }
        C15131i c15131i = (C15131i) new C15131i.b().h(c15132j.b()).i(c15132j.c()).e();
        C15129g c15129g = (C15129g) new C15129g.b().h(c15132j.b()).i(c15132j.c()).e();
        for (int i10 = 0; i10 < (1 << this.f108315c); i10++) {
            c15132j = (C15132j) new C15132j.b().h(c15132j.b()).i(c15132j.c()).p(i10).n(c15132j.f()).o(c15132j.g()).g(c15132j.a()).e();
            C15133k c15133k = this.f108314b;
            c15133k.l(c15133k.k(bArr2, c15132j), bArr);
            C15137o g10 = this.f108314b.g(c15132j);
            c15131i = (C15131i) new C15131i.b().h(c15131i.b()).i(c15131i.c()).n(i10).o(c15131i.g()).p(c15131i.h()).g(c15131i.a()).e();
            E a10 = F.a(this.f108314b, g10, c15131i);
            c15129g = (C15129g) new C15129g.b().h(c15129g.b()).i(c15129g.c()).n(i10).g(c15129g.a()).e();
            while (!this.f108321i.isEmpty() && this.f108321i.peek().a() == a10.a()) {
                int a11 = i10 / (1 << a10.a());
                if (a11 == 1) {
                    this.f108319g.add(a10);
                }
                if (a11 == 3 && a10.a() < this.f108315c - this.f108317e) {
                    this.f108316d.get(a10.a()).h(a10);
                }
                if (a11 >= 3 && (a11 & 1) == 1 && a10.a() >= this.f108315c - this.f108317e && a10.a() <= this.f108315c - 2) {
                    if (this.f108320h.get(Integer.valueOf(a10.a())) == null) {
                        LinkedList<E> linkedList = new LinkedList<>();
                        linkedList.add(a10);
                        this.f108320h.put(Integer.valueOf(a10.a()), linkedList);
                    } else {
                        this.f108320h.get(Integer.valueOf(a10.a())).add(a10);
                    }
                }
                C15129g c15129g2 = (C15129g) new C15129g.b().h(c15129g.b()).i(c15129g.c()).m(c15129g.g()).n((c15129g.h() - 1) / 2).g(c15129g.a()).e();
                E b10 = F.b(this.f108314b, this.f108321i.pop(), a10, c15129g2);
                E e10 = new E(b10.a() + 1, b10.b());
                c15129g = (C15129g) new C15129g.b().h(c15129g2.b()).i(c15129g2.c()).m(c15129g2.g() + 1).n(c15129g2.h()).g(c15129g2.a()).e();
                a10 = e10;
            }
            this.f108321i.push(a10);
        }
        this.f108318f = this.f108321i.pop();
    }

    public boolean i() {
        return this.f108324l;
    }

    public void j() {
        this.f108324l = true;
    }

    public final void k(byte[] bArr, byte[] bArr2, C15132j c15132j) {
        List<E> list;
        E removeFirst;
        if (c15132j == null) {
            throw new NullPointerException("otsHashAddress == null");
        }
        if (this.f108324l) {
            throw new IllegalStateException("index already used");
        }
        int i10 = this.f108323k;
        if (i10 > this.f108325m - 1) {
            throw new IllegalStateException("index out of bounds");
        }
        int c10 = O.c(i10, this.f108315c);
        if (((this.f108323k >> (c10 + 1)) & 1) == 0 && c10 < this.f108315c - 1) {
            this.f108322j.put(Integer.valueOf(c10), this.f108319g.get(c10));
        }
        C15131i c15131i = (C15131i) new C15131i.b().h(c15132j.b()).i(c15132j.c()).e();
        C15129g c15129g = (C15129g) new C15129g.b().h(c15132j.b()).i(c15132j.c()).e();
        if (c10 == 0) {
            c15132j = (C15132j) new C15132j.b().h(c15132j.b()).i(c15132j.c()).p(this.f108323k).n(c15132j.f()).o(c15132j.g()).g(c15132j.a()).e();
            C15133k c15133k = this.f108314b;
            c15133k.l(c15133k.k(bArr2, c15132j), bArr);
            this.f108319g.set(0, F.a(this.f108314b, this.f108314b.g(c15132j), (C15131i) new C15131i.b().h(c15131i.b()).i(c15131i.c()).n(this.f108323k).o(c15131i.g()).p(c15131i.h()).g(c15131i.a()).e()));
        } else {
            int i11 = c10 - 1;
            C15129g c15129g2 = (C15129g) new C15129g.b().h(c15129g.b()).i(c15129g.c()).m(i11).n(this.f108323k >> c10).g(c15129g.a()).e();
            C15133k c15133k2 = this.f108314b;
            c15133k2.l(c15133k2.k(bArr2, c15132j), bArr);
            E b10 = F.b(this.f108314b, this.f108319g.get(i11), this.f108322j.get(Integer.valueOf(i11)), c15129g2);
            this.f108319g.set(c10, new E(b10.a() + 1, b10.b()));
            this.f108322j.remove(Integer.valueOf(i11));
            for (int i12 = 0; i12 < c10; i12++) {
                if (i12 < this.f108315c - this.f108317e) {
                    list = this.f108319g;
                    removeFirst = this.f108316d.get(i12).d();
                } else {
                    list = this.f108319g;
                    removeFirst = this.f108320h.get(Integer.valueOf(i12)).removeFirst();
                }
                list.set(i12, removeFirst);
            }
            int min = Math.min(c10, this.f108315c - this.f108317e);
            for (int i13 = 0; i13 < min; i13++) {
                int i14 = this.f108323k + 1 + ((1 << i13) * 3);
                if (i14 < (1 << this.f108315c)) {
                    this.f108316d.get(i13).e(i14);
                }
            }
        }
        for (int i15 = 0; i15 < ((this.f108315c - this.f108317e) >> 1); i15++) {
            C15125c b11 = b();
            if (b11 != null) {
                b11.i(this.f108321i, this.f108314b, bArr, bArr2, c15132j);
            }
        }
        this.f108323k++;
    }

    public final void l(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f108325m = objectInputStream.available() != 0 ? objectInputStream.readInt() : (1 << this.f108315c) - 1;
        int i10 = this.f108325m;
        if (i10 > (1 << this.f108315c) - 1 || this.f108323k > i10 + 1 || objectInputStream.available() != 0) {
            throw new IOException("inconsistent BDS data detected");
        }
    }

    public final void m() {
        if (this.f108319g == null) {
            throw new IllegalStateException("authenticationPath == null");
        }
        if (this.f108320h == null) {
            throw new IllegalStateException("retain == null");
        }
        if (this.f108321i == null) {
            throw new IllegalStateException("stack == null");
        }
        if (this.f108316d == null) {
            throw new IllegalStateException("treeHashInstances == null");
        }
        if (this.f108322j == null) {
            throw new IllegalStateException("keep == null");
        }
        if (!O.n(this.f108315c, this.f108323k)) {
            throw new IllegalStateException("index in BDS state out of bounds");
        }
    }

    public C15123a n(int i10, C14549x c14549x) {
        return new C15123a(this, i10, c14549x);
    }

    public C15123a o(C14549x c14549x) {
        return new C15123a(this, c14549x);
    }

    public final void p(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(this.f108325m);
    }

    public C15123a(C15123a c15123a, int i10, C14549x c14549x) {
        this.f108314b = new C15133k(new C15135m(c14549x));
        this.f108315c = c15123a.f108315c;
        this.f108317e = c15123a.f108317e;
        this.f108318f = c15123a.f108318f;
        ArrayList arrayList = new ArrayList();
        this.f108319g = arrayList;
        arrayList.addAll(c15123a.f108319g);
        this.f108320h = new TreeMap();
        for (Integer num : c15123a.f108320h.o()) {
            this.f108320h.put(num, (LinkedList) c15123a.f108320h.get(num).clone());
        }
        Stack<E> stack = new Stack<>();
        this.f108321i = stack;
        stack.addAll(c15123a.f108321i);
        this.f108316d = new ArrayList();
        Iterator<C15125c> it = c15123a.f108316d.iterator();
        while (it.hasNext()) {
            this.f108316d.add(it.next().clone());
        }
        this.f108322j = new TreeMap(c15123a.f108322j);
        this.f108323k = c15123a.f108323k;
        this.f108325m = i10;
        this.f108324l = c15123a.f108324l;
        m();
    }

    public C15123a(C15123a c15123a, C14549x c14549x) {
        this.f108314b = new C15133k(new C15135m(c14549x));
        this.f108315c = c15123a.f108315c;
        this.f108317e = c15123a.f108317e;
        this.f108318f = c15123a.f108318f;
        ArrayList arrayList = new ArrayList();
        this.f108319g = arrayList;
        arrayList.addAll(c15123a.f108319g);
        this.f108320h = new TreeMap();
        for (Integer num : c15123a.f108320h.o()) {
            this.f108320h.put(num, (LinkedList) c15123a.f108320h.get(num).clone());
        }
        Stack<E> stack = new Stack<>();
        this.f108321i = stack;
        stack.addAll(c15123a.f108321i);
        this.f108316d = new ArrayList();
        Iterator<C15125c> it = c15123a.f108316d.iterator();
        while (it.hasNext()) {
            this.f108316d.add(it.next().clone());
        }
        this.f108322j = new TreeMap(c15123a.f108322j);
        this.f108323k = c15123a.f108323k;
        this.f108325m = c15123a.f108325m;
        this.f108324l = c15123a.f108324l;
        m();
    }

    public C15123a(C15123a c15123a, byte[] bArr, byte[] bArr2, C15132j c15132j) {
        this.f108314b = new C15133k(c15123a.f108314b.e());
        this.f108315c = c15123a.f108315c;
        this.f108317e = c15123a.f108317e;
        this.f108318f = c15123a.f108318f;
        ArrayList arrayList = new ArrayList();
        this.f108319g = arrayList;
        arrayList.addAll(c15123a.f108319g);
        this.f108320h = new TreeMap();
        for (Integer num : c15123a.f108320h.o()) {
            this.f108320h.put(num, (LinkedList) c15123a.f108320h.get(num).clone());
        }
        Stack<E> stack = new Stack<>();
        this.f108321i = stack;
        stack.addAll(c15123a.f108321i);
        this.f108316d = new ArrayList();
        Iterator<C15125c> it = c15123a.f108316d.iterator();
        while (it.hasNext()) {
            this.f108316d.add(it.next().clone());
        }
        this.f108322j = new TreeMap(c15123a.f108322j);
        this.f108323k = c15123a.f108323k;
        this.f108325m = c15123a.f108325m;
        this.f108324l = false;
        k(bArr, bArr2, c15132j);
    }

    public C15123a(C15133k c15133k, int i10, int i11, int i12) {
        this.f108314b = c15133k;
        this.f108315c = i10;
        this.f108325m = i12;
        this.f108317e = i11;
        if (i11 <= i10 && i11 >= 2) {
            int i13 = i10 - i11;
            if (i13 % 2 == 0) {
                this.f108319g = new ArrayList();
                this.f108320h = new TreeMap();
                this.f108321i = new Stack<>();
                this.f108316d = new ArrayList();
                for (int i14 = 0; i14 < i13; i14++) {
                    this.f108316d.add(new C15125c(i14));
                }
                this.f108322j = new TreeMap();
                this.f108323k = 0;
                this.f108324l = false;
                return;
            }
        }
        throw new IllegalArgumentException("illegal value for BDS parameter k");
    }

    public C15123a(H h10, int i10, int i11) {
        this(h10.i(), h10.b(), h10.c(), i11);
        this.f108325m = i10;
        this.f108323k = i11;
        this.f108324l = true;
    }

    public C15123a(H h10, byte[] bArr, byte[] bArr2, C15132j c15132j) {
        this(h10.i(), h10.b(), h10.c(), (1 << h10.b()) - 1);
        h(bArr, bArr2, c15132j);
    }

    public C15123a(H h10, byte[] bArr, byte[] bArr2, C15132j c15132j, int i10) {
        this(h10.i(), h10.b(), h10.c(), (1 << h10.b()) - 1);
        h(bArr, bArr2, c15132j);
        while (this.f108323k < i10) {
            k(bArr, bArr2, c15132j);
            this.f108324l = false;
        }
    }
}
