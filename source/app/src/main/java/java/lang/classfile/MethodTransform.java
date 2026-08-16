package java.lang.classfile;

import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.Supplier;
import jdk.internal.classfile.impl.TransformImpl;

@FunctionalInterface
public interface MethodTransform extends ClassFileTransform<MethodTransform, MethodElement, MethodBuilder> {
    public static final MethodTransform ACCEPT_ALL = new MethodTransform() {
        @Override
        public void accept(MethodBuilder builder, MethodElement element) {
            builder.with(element);
        }
    };

    static MethodTransform ofStateful(Supplier<MethodTransform> supplier) {
        Objects.requireNonNull(supplier);
        return new TransformImpl.SupplierMethodTransform(supplier);
    }

    static MethodTransform endHandler(final Consumer<MethodBuilder> finisher) {
        Objects.requireNonNull(finisher);
        return new MethodTransform() {
            @Override
            public void accept(MethodBuilder builder, MethodElement element) {
                builder.with(element);
            }

            @Override
            public void atEnd(MethodBuilder builder) {
                Consumer.this.accept(builder);
            }
        };
    }

    static MethodTransform dropping(Predicate<MethodElement> filter) {
        Objects.requireNonNull(filter);
        return (b10, e10) -> {
            if (!filter.test(e10)) {
                b10.with(e10);
            }
        };
    }

    static MethodTransform transformingCode(CodeTransform xform) {
        return new TransformImpl.MethodCodeTransform((CodeTransform) Objects.requireNonNull(xform));
    }

    @Override
    default MethodTransform andThen(MethodTransform t10) {
        return new TransformImpl.ChainedMethodTransform(this, (MethodTransform) Objects.requireNonNull(t10));
    }
}
