package java.lang.classfile;

import java.lang.classfile.ClassFileElement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Spliterators;
import java.util.function.Consumer;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import jdk.internal.classfile.components.ClassPrinter;

public interface CompoundElement<E extends ClassFileElement> extends ClassFileElement, Iterable<E> {
    @Override
    void forEach(Consumer<? super E> consumer);

    @Override
    default Iterator<E> iterator() {
        return elementList().iterator();
    }

    default Stream<E> elementStream() {
        return StreamSupport.stream(Spliterators.spliteratorUnknownSize(iterator(), 1296), false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    default List<E> elementList() {
        final List<E> list = new ArrayList<>();
        forEach(new Consumer<E>(this) {
            {
                Objects.requireNonNull(this);
            }

            @Override
            public void accept(E e10) {
                list.add(e10);
            }
        });
        return Collections.unmodifiableList(list);
    }

    default String toDebugString() {
        StringBuilder text = new StringBuilder();
        ClassPrinter.Verbosity verbosity = ClassPrinter.Verbosity.TRACE_ALL;
        Objects.requireNonNull(text);
        ClassPrinter.toYaml(this, verbosity, text::append);
        return text.toString();
    }
}
