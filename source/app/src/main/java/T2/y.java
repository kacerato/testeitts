package T2;

import androidx.annotation.VisibleForTesting;

public class y<T> implements a3.b<T> {

    public static final Object f24038c = new Object();

    public volatile Object f24039a;

    public volatile a3.b<T> f24040b;

    public y(T t10) {
        this.f24039a = f24038c;
        this.f24039a = t10;
    }

    @VisibleForTesting
    public boolean a() {
        return this.f24039a != f24038c;
    }

    @Override
    public T get() {
        T t10 = (T) this.f24039a;
        Object obj = f24038c;
        if (t10 == obj) {
            synchronized (this) {
                try {
                    t10 = (T) this.f24039a;
                    if (t10 == obj) {
                        t10 = this.f24040b.get();
                        this.f24039a = t10;
                        this.f24040b = null;
                    }
                } finally {
                }
            }
        }
        return t10;
    }

    public y(a3.b<T> bVar) {
        this.f24039a = f24038c;
        this.f24040b = bVar;
    }
}
