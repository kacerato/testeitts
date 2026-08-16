package jn;

import java.util.Comparator;
import java.util.PriorityQueue;

public class E {

    public final PriorityQueue<B> f94167a = new PriorityQueue<>(new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            int d10;
            d10 = E.d((B) obj, (B) obj2);
            return d10;
        }
    });

    public static int d(B b10, B b11) {
        return Float.compare(b10.f94159d, b11.f94159d);
    }

    public void b() {
        this.f94167a.clear();
    }

    public boolean c() {
        return this.f94167a.isEmpty();
    }

    public void e(B node) {
        this.f94167a.remove(node);
        this.f94167a.offer(node);
    }

    public B f() {
        return this.f94167a.poll();
    }

    public void g(B node) {
        this.f94167a.offer(node);
    }

    public B h() {
        return this.f94167a.peek();
    }
}
