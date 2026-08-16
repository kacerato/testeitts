package Sc;

import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

public class a<T> {

    public final List<T> f23036a = Collections.synchronizedList(new LinkedList());

    public final List<T> f23037b = Collections.synchronizedList(new LinkedList());

    public final List<T> f23038c = Collections.synchronizedList(new LinkedList());

    public void a(T object) {
        synchronized (this.f23037b) {
            this.f23037b.add(object);
        }
    }

    public void b(List<T> objects) {
        synchronized (this.f23037b) {
            this.f23037b.addAll(objects);
        }
    }

    public void c() {
        synchronized (this.f23036a) {
            this.f23036a.clear();
        }
        synchronized (this.f23037b) {
            this.f23037b.clear();
        }
        synchronized (this.f23038c) {
            this.f23038c.clear();
        }
    }

    public void d() {
        synchronized (this.f23038c) {
            synchronized (this.f23036a) {
                this.f23038c.addAll(this.f23036a);
            }
            synchronized (this.f23037b) {
                this.f23038c.addAll(this.f23037b);
            }
        }
    }

    public T e(int idx) {
        T t10;
        synchronized (this.f23036a) {
            t10 = this.f23036a.get(idx);
        }
        return t10;
    }

    public T f(int idx) {
        T t10;
        synchronized (this.f23036a) {
            try {
                if (idx < this.f23036a.size()) {
                    t10 = this.f23036a.get(idx);
                } else {
                    synchronized (this.f23037b) {
                        t10 = this.f23037b.get(idx - this.f23036a.size());
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return t10;
    }

    public boolean g() {
        synchronized (this.f23036a) {
            if (this.f23036a.isEmpty()) {
                synchronized (this.f23037b) {
                    return this.f23037b.isEmpty() ? true : true;
                }
            }
            synchronized (this.f23038c) {
                synchronized (this.f23037b) {
                    if ((this.f23036a.size() + this.f23037b.size()) - this.f23038c.size() <= 0) {
                        return true;
                    }
                }
            }
        }
    }

    public void h(T object) {
        synchronized (this.f23038c) {
            this.f23038c.add(object);
        }
    }

    public void i(List<T> objects) {
        synchronized (this.f23038c) {
            this.f23038c.addAll(objects);
        }
    }

    public int j() {
        int size;
        synchronized (this.f23036a) {
            size = this.f23036a.size();
        }
        return size;
    }

    public int k() {
        int size;
        int size2;
        synchronized (this.f23036a) {
            size = this.f23036a.size();
        }
        synchronized (this.f23037b) {
            size2 = this.f23037b.size();
        }
        return size + size2;
    }

    public void l() {
        synchronized (this.f23036a) {
            synchronized (this.f23037b) {
                this.f23036a.addAll(this.f23037b);
                this.f23037b.clear();
            }
            synchronized (this.f23038c) {
                this.f23036a.removeAll(this.f23038c);
                this.f23038c.clear();
            }
        }
    }
}
