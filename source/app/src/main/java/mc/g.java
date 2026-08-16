package Mc;

import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Collection;
import java.util.function.Predicate;

public class g<E> extends SteppedArrayList<E> {
    public g() {
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
        super.add(index, element);
    }

    public boolean d(E e10) {
        return super.add(e10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean e(int index, @NonNull Collection<? extends E> c10) {
        return super.addAll(index, c10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean f(@NonNull Collection<? extends E> c10) {
        return super.addAll(c10);
    }

    public void g(E element) {
        if (Build.VERSION.SDK_INT >= 35) {
            super.addFirst(element);
        }
    }

    public void h(E element) {
        if (Build.VERSION.SDK_INT >= 35) {
            super.addLast(element);
        }
    }

    public E j(int i10) {
        return (E) super.remove(i10);
    }

    public boolean k(@Nullable Object o10) {
        return super.remove(o10);
    }

    public boolean l(@NonNull Collection<?> c10) {
        return super.removeAll(c10);
    }

    public E m() {
        if (Build.VERSION.SDK_INT >= 35) {
            return (E) super.removeFirst();
        }
        return null;
    }

    public boolean n(@NonNull Predicate<? super E> filter) {
        return super.removeIf(filter);
    }

    public E o() {
        if (Build.VERSION.SDK_INT >= 35) {
            return (E) super.removeLast();
        }
        return null;
    }

    public void p(int fromIndex, int toIndex) {
        super.removeRange(fromIndex, toIndex);
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

    public g(int initialCapacity) {
        super(initialCapacity);
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

    public g(@NonNull Collection<? extends E> c10) {
        super(c10);
    }
}
