package java.lang.classfile;

import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.Supplier;
import jdk.internal.classfile.impl.TransformImpl;

@FunctionalInterface
public interface ClassTransform extends ClassFileTransform<ClassTransform, ClassElement, ClassBuilder> {
    public static final ClassTransform ACCEPT_ALL = new ClassTransform() {
        @Override
        public void accept(ClassBuilder builder, ClassElement element) {
            builder.with(element);
        }
    };

    static ClassTransform ofStateful(Supplier<ClassTransform> supplier) {
        return new TransformImpl.SupplierClassTransform((Supplier) Objects.requireNonNull(supplier));
    }

    static ClassTransform endHandler(final Consumer<ClassBuilder> finisher) {
        Objects.requireNonNull(finisher);
        return new ClassTransform() {
            @Override
            public void accept(ClassBuilder builder, ClassElement element) {
                builder.with(element);
            }

            @Override
            public void atEnd(ClassBuilder builder) {
                Consumer.this.accept(builder);
            }
        };
    }

    static ClassTransform dropping(Predicate<ClassElement> filter) {
        Objects.requireNonNull(filter);
        return (b10, e10) -> {
            if (!filter.test(e10)) {
                b10.with(e10);
            }
        };
    }

    static ClassTransform transformingMethods(Predicate<MethodModel> filter, MethodTransform xform) {
        return new TransformImpl.ClassMethodTransform((MethodTransform) Objects.requireNonNull(xform), (Predicate) Objects.requireNonNull(filter));
    }

    static ClassTransform transformingMethods(MethodTransform xform) {
        return transformingMethods(methodModel -> {
            return true;
        }, xform);
    }

    static ClassTransform transformingMethodBodies(Predicate<MethodModel> filter, CodeTransform xform) {
        return transformingMethods(filter, MethodTransform.transformingCode(xform));
    }

    static ClassTransform transformingMethodBodies(CodeTransform xform) {
        return transformingMethods(MethodTransform.transformingCode(xform));
    }

    static ClassTransform transformingFields(FieldTransform xform) {
        return new TransformImpl.ClassFieldTransform((FieldTransform) Objects.requireNonNull(xform), fieldModel -> {
            return true;
        });
    }

    @Override
    default ClassTransform andThen(ClassTransform t10) {
        return new TransformImpl.ChainedClassTransform(this, (ClassTransform) Objects.requireNonNull(t10));
    }
}
