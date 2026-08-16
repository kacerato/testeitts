package Pm;

import Um.A;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.ListIterator;

public class s implements Xm.a {

    public final char f21857a;

    public int f21858b = 0;

    public LinkedList<Xm.a> f21859c = new LinkedList<>();

    public s(char c10) {
        this.f21857a = c10;
    }

    @Override
    public char a() {
        return this.f21857a;
    }

    @Override
    public int b() {
        return this.f21858b;
    }

    @Override
    public char c() {
        return this.f21857a;
    }

    @Override
    public int d(Xm.b bVar, Xm.b bVar2) {
        return g(bVar.length()).d(bVar, bVar2);
    }

    @Override
    public void e(A a10, A a11, int i10) {
        g(i10).e(a10, a11, i10);
    }

    public void f(Xm.a aVar) {
        int b10 = aVar.b();
        ListIterator<Xm.a> listIterator = this.f21859c.listIterator();
        while (listIterator.hasNext()) {
            int b11 = listIterator.next().b();
            if (b10 > b11) {
                listIterator.previous();
                listIterator.add(aVar);
                return;
            } else if (b10 == b11) {
                throw new IllegalArgumentException("Cannot add two delimiter processors for char '" + this.f21857a + "' and minimum length " + b10);
            }
        }
        this.f21859c.add(aVar);
        this.f21858b = b10;
    }

    public final Xm.a g(int i10) {
        Iterator<Xm.a> it = this.f21859c.iterator();
        while (it.hasNext()) {
            Xm.a next = it.next();
            if (next.b() <= i10) {
                return next;
            }
        }
        return this.f21859c.getFirst();
    }
}
