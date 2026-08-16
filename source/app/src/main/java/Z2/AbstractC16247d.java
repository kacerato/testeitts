package z2;

import com.google.common.collect.C12530i2;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import w2.H;

@InterfaceC16248e
public abstract class AbstractC16247d {

    public static final class b extends AbstractC16247d {

        public static final b f130590a = new b();

        @Override
        public void a(Object obj, Iterator<C16253j> it) {
            H.E(obj);
            while (it.hasNext()) {
                it.next().d(obj);
            }
        }
    }

    public static final class c extends AbstractC16247d {

        public final ConcurrentLinkedQueue<a> f130591a;

        public static final class a {

            public final Object f130592a;

            public final C16253j f130593b;

            public a(Object obj, C16253j c16253j) {
                this.f130592a = obj;
                this.f130593b = c16253j;
            }
        }

        public c() {
            this.f130591a = C12530i2.f();
        }

        @Override
        public void a(Object obj, Iterator<C16253j> it) {
            H.E(obj);
            while (it.hasNext()) {
                this.f130591a.add(new a(obj, it.next()));
            }
            while (true) {
                a poll = this.f130591a.poll();
                if (poll == null) {
                    return;
                } else {
                    poll.f130593b.d(poll.f130592a);
                }
            }
        }
    }

    public static final class C2230d extends AbstractC16247d {

        public final ThreadLocal<Queue<c>> f130594a;

        public final ThreadLocal<Boolean> f130595b;

        public class a extends ThreadLocal<Queue<c>> {
            public a(C2230d c2230d) {
            }

            @Override
            public Queue<c> initialValue() {
                return C12530i2.d();
            }
        }

        public class b extends ThreadLocal<Boolean> {
            public b(C2230d c2230d) {
            }

            @Override
            public Boolean initialValue() {
                return Boolean.FALSE;
            }
        }

        public static final class c {

            public final Object f130596a;

            public final Iterator<C16253j> f130597b;

            public c(Object obj, Iterator<C16253j> it) {
                this.f130596a = obj;
                this.f130597b = it;
            }
        }

        public C2230d() {
            this.f130594a = new a(this);
            this.f130595b = new b(this);
        }

        @Override
        public void a(Object obj, Iterator<C16253j> it) {
            H.E(obj);
            H.E(it);
            Queue<c> queue = this.f130594a.get();
            queue.offer(new c(obj, it));
            if (this.f130595b.get().booleanValue()) {
                return;
            }
            this.f130595b.set(Boolean.TRUE);
            while (true) {
                try {
                    c poll = queue.poll();
                    if (poll == null) {
                        return;
                    }
                    while (poll.f130597b.hasNext()) {
                        ((C16253j) poll.f130597b.next()).d(poll.f130596a);
                    }
                } finally {
                    this.f130595b.remove();
                    this.f130594a.remove();
                }
            }
        }
    }

    public static AbstractC16247d b() {
        return b.f130590a;
    }

    public static AbstractC16247d c() {
        return new c();
    }

    public static AbstractC16247d d() {
        return new C2230d();
    }

    public abstract void a(Object obj, Iterator<C16253j> it);
}
