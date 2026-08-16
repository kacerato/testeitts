package Mc;

import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.function.Predicate;

public class h<E> extends SteppedArrayList<E> {

    public final HashSet<E> f14864b;

    public h() {
        this.f14864b = new HashSet<>();
    }

    @Override
    public boolean add(E e10) {
        throw new RuntimeException("List is read-only");
    }

    @Override
    public boolean addAll(int index, @NonNull Collection<? extends E> c10) {
        throw new RuntimeException("List is read-only");
    }

    public void addFirst(E element) {
        throw new RuntimeException("List is read-only");
    }

    public void addLast(E element) {
        throw new RuntimeException("List is read-only");
    }

    public void c(int index, E element) {
        if (this.f14864b.contains(element)) {
            return;
        }
        this.f14864b.add(element);
        super.add(index, element);
    }

    public boolean d(E e10) {
        if (this.f14864b.contains(e10)) {
            return false;
        }
        this.f14864b.add(e10);
        return super.add(e10);
    }

    public void e(E element) {
        if (!this.f14864b.contains(element) && Build.VERSION.SDK_INT >= 35) {
            this.f14864b.add(element);
            super.addFirst(element);
        }
    }

    public void f(E element) {
        if (!this.f14864b.contains(element) && Build.VERSION.SDK_INT >= 35) {
            this.f14864b.add(element);
            super.addLast(element);
        }
    }

    public E j(int i10) {
        E e10 = (E) super.remove(i10);
        this.f14864b.remove(e10);
        return e10;
    }

    public boolean k(@Nullable Object o10) {
        if (!this.f14864b.contains(o10)) {
            return false;
        }
        int indexOf = indexOf(o10);
        if (indexOf < 0) {
            this.f14864b.remove(o10);
            return false;
        }
        super.remove(indexOf);
        this.f14864b.remove(o10);
        return true;
    }

    public boolean l(@NonNull Collection<?> c10) {
        boolean z10 = false;
        for (int size = size() - 1; size >= 0; size--) {
            E e10 = get(size);
            if (c10.contains(e10)) {
                super.remove(size);
                this.f14864b.remove(e10);
                z10 = true;
            }
        }
        return z10;
    }

    public E m() {
        if (Build.VERSION.SDK_INT < 35) {
            return null;
        }
        E e10 = (E) super.removeFirst();
        this.f14864b.remove(e10);
        return e10;
    }

    public boolean n(@NonNull Predicate<? super E> predicate) {
        boolean z10 = false;
        for (int size = size() - 1; size >= 0; size--) {
            E e10 = get(size);
            if (predicate.test(e10)) {
                super.remove(size);
                this.f14864b.remove(e10);
                z10 = true;
            }
        }
        return z10;
    }

    public E o() {
        if (Build.VERSION.SDK_INT < 35) {
            return null;
        }
        E e10 = (E) super.removeLast();
        this.f14864b.remove(e10);
        return e10;
    }

    @Override
    public E remove(int index) {
        throw new RuntimeException("List is read-only");
    }

    @Override
    public boolean removeAll(@NonNull Collection<?> c10) {
        throw new RuntimeException("List is read-only");
    }

    public E removeFirst() {
        throw new RuntimeException("List is read-only");
    }

    @Override
    public boolean removeIf(@NonNull Predicate<? super E> filter) {
        throw new RuntimeException("List is read-only");
    }

    public E removeLast() {
        throw new RuntimeException("List is read-only");
    }

    @Override
    public void removeRange(int fromIndex, int toIndex) {
        throw new RuntimeException("List is read-only");
    }

    @Override
    public void add(int index, E element) {
        throw new RuntimeException("List is read-only");
    }

    @Override
    public boolean addAll(@NonNull Collection<? extends E> c10) {
        throw new RuntimeException("List is read-only");
    }

    @Override
    public boolean remove(@Nullable Object o10) {
        throw new RuntimeException("List is read-only");
    }

    public h(int initialCapacity) {
        super(initialCapacity);
        this.f14864b = new HashSet<>();
    }
}
