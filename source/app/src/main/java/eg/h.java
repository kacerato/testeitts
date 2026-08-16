package Eg;

import Dg.a;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import net.lingala.zip4j.exception.ZipException;

public abstract class h<T> {

    public final Dg.a f5789a;

    public final boolean f5790b;

    public final ExecutorService f5791c;

    public class a implements Runnable {

        public final Object f5792b;

        public a(Object obj) {
            this.f5792b = obj;
        }

        @Override
        public void run() {
            try {
                h hVar = h.this;
                hVar.i(this.f5792b, hVar.f5789a);
            } catch (ZipException unused) {
            } catch (Throwable th2) {
                h.this.f5791c.shutdown();
                throw th2;
            }
            h.this.f5791c.shutdown();
        }
    }

    public static class b {

        public final Dg.a f5794a;

        public final boolean f5795b;

        public final ExecutorService f5796c;

        public b(ExecutorService executorService, boolean z10, Dg.a aVar) {
            this.f5796c = executorService;
            this.f5795b = z10;
            this.f5794a = aVar;
        }
    }

    public h(b bVar) {
        this.f5789a = bVar.f5794a;
        this.f5790b = bVar.f5795b;
        this.f5791c = bVar.f5796c;
    }

    public abstract long d(T t10) throws ZipException;

    public void e(T t10) throws ZipException {
        if (this.f5790b && a.b.BUSY.equals(this.f5789a.i())) {
            throw new ZipException("invalid operation - Zip4j is in busy state");
        }
        h();
        if (!this.f5790b) {
            i(t10, this.f5789a);
            return;
        }
        this.f5789a.w(d(t10));
        this.f5791c.execute(new a(t10));
    }

    public abstract void f(T t10, Dg.a aVar) throws IOException;

    public abstract a.c g();

    public final void h() {
        this.f5789a.c();
        this.f5789a.v(a.b.BUSY);
        this.f5789a.p(g());
    }

    public final void i(T t10, Dg.a aVar) throws ZipException {
        try {
            f(t10, aVar);
            aVar.a();
        } catch (ZipException e10) {
            aVar.b(e10);
            throw e10;
        } catch (Exception e11) {
            aVar.b(e11);
            throw new ZipException(e11);
        }
    }

    public void j() throws ZipException {
        if (this.f5789a.l()) {
            this.f5789a.u(a.EnumC0097a.CANCELLED);
            this.f5789a.v(a.b.READY);
            throw new ZipException("Task cancelled", ZipException.a.TASK_CANCELLED_EXCEPTION);
        }
    }
}
