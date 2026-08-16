package java.lang.classfile;

import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.Supplier;
import jdk.internal.classfile.impl.TransformImpl;

@FunctionalInterface
public interface FieldTransform extends ClassFileTransform<FieldTransform, FieldElement, FieldBuilder> {
    public static final FieldTransform ACCEPT_ALL = new FieldTransform() {
        @Override
        public void accept(FieldBuilder builder, FieldElement element) {
            builder.with(element);
        }
    };

    static FieldTransform ofStateful(Supplier<FieldTransform> supplier) {
        return new TransformImpl.SupplierFieldTransform((Supplier) Objects.requireNonNull(supplier));
    }

    static FieldTransform endHandler(final Consumer<FieldBuilder> finisher) {
        Objects.requireNonNull(finisher);
        return new FieldTransform() {
            @Override
            public void accept(FieldBuilder builder, FieldElement element) {
                builder.with(element);
            }

            @Override
            public void atEnd(FieldBuilder builder) {
                Consumer.this.accept(builder);
            }
        };
    }

    static FieldTransform dropping(Predicate<FieldElement> filter) {
        Objects.requireNonNull(filter);
        return (b10, e10) -> {
            if (!filter.test(e10)) {
                b10.with(e10);
            }
        };
    }

    @Override
    default FieldTransform andThen(FieldTransform t10) {
        return new TransformImpl.ChainedFieldTransform(this, (FieldTransform) Objects.requireNonNull(t10));
    }
}
