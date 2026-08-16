package Sc;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

@Deprecated
public class b<T> {

    public final Object f23039a = new Object();

    public final List<T> f23040b = new SteppedArrayList();

    public final List<T> f23041c = new SteppedArrayList();

    public final List<T> f23042d = new SteppedArrayList();

    public void a(T object) {
        synchronized (this.f23039a) {
            this.f23041c.add(object);
        }
    }

    public void b(List<T> objects) {
        synchronized (this.f23039a) {
            this.f23041c.addAll(objects);
        }
    }

    public void c() {
        synchronized (this.f23039a) {
            this.f23040b.clear();
            this.f23041c.clear();
            this.f23042d.clear();
        }
    }

    public void d() {
        synchronized (this.f23039a) {
            this.f23042d.addAll(this.f23040b);
            this.f23042d.addAll(this.f23041c);
        }
    }

    public T e(int idx) {
        T t10;
        synchronized (this.f23039a) {
            t10 = this.f23040b.get(idx);
        }
        return t10;
    }

    public T f(int idx) {
        synchronized (this.f23039a) {
            try {
                if (idx < this.f23040b.size()) {
                    return this.f23040b.get(idx);
                }
                return this.f23041c.get(idx - this.f23040b.size());
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean g() {
        boolean z10;
        synchronized (this.f23039a) {
            z10 = (this.f23040b.size() + this.f23041c.size()) - this.f23042d.size() <= 0;
        }
        return z10;
    }

    public void h(T object) {
        synchronized (this.f23039a) {
            this.f23042d.add(object);
        }
    }

    public void i(List<T> objects) {
        synchronized (this.f23039a) {
            this.f23042d.addAll(objects);
        }
    }

    public int j() {
        int size;
        synchronized (this.f23039a) {
            size = this.f23040b.size();
        }
        return size;
    }

    public int k() {
        int size;
        synchronized (this.f23039a) {
            size = this.f23040b.size() + this.f23041c.size();
        }
        return size;
    }

    public void l() {
        synchronized (this.f23039a) {
            this.f23040b.addAll(this.f23041c);
            this.f23041c.clear();
            this.f23040b.removeAll(this.f23042d);
            this.f23042d.clear();
        }
    }
}
