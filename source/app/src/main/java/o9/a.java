package O9;

import Ic.C2622a;
import Ic.C2634m;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.tonyodev.fetch2.util.FetchDefaults;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.UnaryOperator;
import t3.C15377a;

public class a<T> extends AbstractList<T> implements List<T> {

    public static boolean f16560h = false;

    public static final AtomicBoolean f16561i;

    public final Object f16562b;

    public final C2622a f16563c;

    public final List<Runnable> f16564d;

    public final List<T> f16565e;

    public long f16566f;

    public volatile b<T> f16567g;

    public class RunnableC0468a implements Runnable {

        public final Object f16568b;

        public RunnableC0468a(final Object val$obj) {
            this.f16568b = val$obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void run() {
            b bVar = a.this.f16567g;
            if (bVar != 0) {
                try {
                    bVar.a(this.f16568b);
                } finally {
                    a.this.f16563c.e();
                }
            }
        }
    }

    public interface b<T> {
        void a(T object);
    }

    static {
        if (C15377a.f109719g.booleanValue()) {
            f16560h = false;
        }
        f16561i = new AtomicBoolean();
    }

    public a() {
        this(10);
    }

    @Override
    public boolean add(T obj) {
        obj.getClass();
        if (!(obj instanceof C2634m)) {
            throw new RuntimeException("This list only supports GUIDHashObject objects!");
        }
        synchronized (this.f16562b) {
            try {
                if (contains(obj)) {
                    return false;
                }
                this.f16565e.add(obj);
                this.f16564d.add(new RunnableC0468a(obj));
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public boolean addAll(@NonNull Collection<? extends T> c10) {
        Iterator<? extends T> it = c10.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
        return true;
    }

    public void c(List<T> list) {
        list.getClass();
        for (int i10 = 0; i10 < list.size(); i10++) {
            T t10 = list.get(i10);
            if (t10 != null) {
                add(t10);
            }
        }
    }

    @Override
    public void clear() {
        synchronized (this.f16562b) {
            this.f16565e.clear();
            this.f16564d.clear();
        }
    }

    @Override
    public boolean contains(@Nullable Object o10) {
        o10.getClass();
        return this.f16565e.contains(o10);
    }

    @Override
    public boolean containsAll(@NonNull Collection<?> c10) {
        if (c10.isEmpty()) {
            return false;
        }
        Iterator<?> it = c10.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public long d() {
        return this.f16566f;
    }

    public void e(b<T> streamListener) {
        synchronized (this.f16562b) {
            try {
                if (this.f16565e.isEmpty()) {
                    return;
                }
                Objects.requireNonNull(streamListener, "streamListener");
                this.f16567g = streamListener;
                boolean z10 = true;
                if (f16561i.compareAndSet(false, true)) {
                    this.f16563c.bulkRegister(this.f16565e.size());
                    for (int i10 = 0; i10 < this.f16564d.size(); i10++) {
                        O9.b.d(this.f16564d.get(i10));
                    }
                } else {
                    for (int i11 = 0; i11 < this.f16564d.size(); i11++) {
                        this.f16564d.get(i11).run();
                    }
                    z10 = false;
                }
                if (z10) {
                    this.f16563c.b(this.f16566f);
                    this.f16567g = null;
                    f16561i.set(false);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void f(List<T> list) {
        list.getClass();
        for (int i10 = 0; i10 < list.size(); i10++) {
            remove(list.get(i10));
        }
    }

    public void g(long phaserWaitMs) {
        this.f16566f = phaserWaitMs;
    }

    @Override
    public T get(int index) {
        T t10;
        synchronized (this.f16562b) {
            t10 = this.f16565e.get(index);
        }
        return t10;
    }

    @Override
    public int indexOf(@Nullable Object o10) {
        return this.f16565e.indexOf(o10);
    }

    @Override
    public boolean isEmpty() {
        return this.f16565e.isEmpty();
    }

    @Override
    public boolean remove(Object obj) {
        obj.getClass();
        synchronized (this.f16562b) {
            try {
                if (!contains(obj)) {
                    return false;
                }
                this.f16564d.remove(this.f16565e.indexOf(obj));
                return this.f16565e.remove(obj);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public boolean removeAll(@NonNull Collection<?> c10) {
        Iterator<?> it = c10.iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void replaceAll(@NonNull UnaryOperator<T> unaryOperator) {
        Objects.requireNonNull(unaryOperator);
        ListIterator<T> listIterator = listIterator();
        while (listIterator.hasNext()) {
            listIterator.set(unaryOperator.apply(listIterator.next()));
        }
    }

    @Override
    public boolean retainAll(@NonNull Collection<?> c10) {
        throw new RuntimeException("Unsupported operation!");
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f16562b) {
            size = this.f16565e.size();
        }
        return size;
    }

    @Override
    public void sort(@Nullable Comparator<? super T> comparator) {
        Object[] array = toArray();
        Arrays.sort(array, comparator);
        ListIterator<T> listIterator = listIterator();
        for (Object obj : array) {
            listIterator.next();
            listIterator.set(obj);
        }
    }

    @Override
    @NonNull
    public Object[] toArray() {
        Object[] objArr = new Object[this.f16565e.size()];
        for (int i10 = 0; i10 < this.f16565e.size(); i10++) {
            objArr[i10] = get(i10);
        }
        return objArr;
    }

    public a(int initialCapacity) {
        this.f16562b = new Object();
        this.f16563c = new C2622a(1, "HyperParallelList");
        this.f16566f = FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER;
        this.f16564d = new SteppedArrayList(initialCapacity);
        this.f16565e = new SteppedArrayList(initialCapacity);
    }

    @Override
    public boolean addAll(int index, @NonNull Collection<? extends T> c10) {
        return false;
    }

    @Override
    @NonNull
    public <T1> T1[] toArray(@NonNull T1[] arr) {
        for (int i10 = 0; i10 < this.f16565e.size(); i10++) {
            arr[i10] = get(i10);
        }
        return arr;
    }

    @Override
    public T remove(int index) {
        T t10 = this.f16565e.get(index);
        remove(t10);
        return t10;
    }
}
