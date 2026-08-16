package Pc;

import java.util.List;
import java.util.concurrent.CountDownLatch;

public class r<T> {

    public n f21257a = new n(Runtime.getRuntime().availableProcessors());

    public CountDownLatch f21258b;

    public class a implements p<T, T> {

        public final q f21259a;

        public a(final q val$listener) {
            this.f21259a = val$listener;
        }

        @Override
        public T apply(T param) {
            this.f21259a.a(param);
            r.this.f21258b.countDown();
            return null;
        }
    }

    public void b(List<T> list, q listener) {
        this.f21258b = new CountDownLatch(list.size());
        this.f21257a.F(list, new a(listener));
        try {
            this.f21258b.await();
        } catch (InterruptedException e10) {
            e10.printStackTrace();
        }
    }
}
