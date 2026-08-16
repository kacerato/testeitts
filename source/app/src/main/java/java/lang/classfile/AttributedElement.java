package java.lang.classfile;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

public interface AttributedElement extends ClassFileElement {
    List<Attribute<?>> attributes();

    default <T extends Attribute<T>> Optional<T> findAttribute(AttributeMapper<T> attr) {
        Objects.requireNonNull(attr);
        for (Attribute<?> la2 : attributes()) {
            if (la2.attributeMapper() == attr) {
                Optional<T> res = Optional.of(la2);
                return res;
            }
        }
        return Optional.empty();
    }

    default <T extends Attribute<T>> List<T> findAttributes(AttributeMapper<T> attr) {
        Objects.requireNonNull(attr);
        ArrayList<T> list = new ArrayList<>();
        for (Attribute<?> a10 : attributes()) {
            if (a10.attributeMapper() == attr) {
                list.add(a10);
            }
        }
        return Collections.unmodifiableList(list);
    }
}
