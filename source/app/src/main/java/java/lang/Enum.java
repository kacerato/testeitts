package java.lang;

import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.Enum;
import java.lang.constant.ClassDesc;
import java.lang.constant.Constable;
import java.lang.constant.ConstantDesc;
import java.lang.constant.ConstantDescs;
import java.lang.constant.DynamicConstantDesc;
import java.lang.invoke.MethodHandles;
import java.util.Objects;
import java.util.Optional;
import jdk.internal.vm.annotation.Stable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/Enum.class
 */
public abstract class Enum<E extends Enum<E>> implements Constable, Comparable<E>, Serializable {
    private final String name;
    private final int ordinal;

    @Stable
    private int hash;

    public final String name() {
        return this.name;
    }

    public final int ordinal() {
        return this.ordinal;
    }

    public Enum(String name, int ordinal) {
        this.name = name;
        this.ordinal = ordinal;
    }

    public String toString() {
        return this.name;
    }

    public final boolean equals(Object other) {
        return this == other;
    }

    public final int hashCode() {
        int hc2 = this.hash;
        if (hc2 == 0) {
            int identityHashCode = System.identityHashCode(this);
            this.hash = identityHashCode;
            hc2 = identityHashCode;
        }
        return hc2;
    }

    protected final Object clone() throws CloneNotSupportedException {
        throw new CloneNotSupportedException();
    }

    @Override
    public final int compareTo(E o10) {
        if (getClass() == o10.getClass() || getDeclaringClass() == o10.getDeclaringClass()) {
            return this.ordinal - o10.ordinal;
        }
        throw new ClassCastException();
    }

    public final Class<E> getDeclaringClass() {
        Class<E> cls = (Class<E>) getClass();
        Class superclass = cls.getSuperclass();
        return superclass == Enum.class ? cls : superclass;
    }

    @Override
    public final Optional<EnumDesc<E>> describeConstable() {
        return (Optional<EnumDesc<E>>) getDeclaringClass().describeConstable().map(c10 -> {
            return EnumDesc.of(c10, this.name);
        });
    }

    public static <T extends Enum<T>> T valueOf(Class<T> enumClass, String name) {
        T result = enumClass.enumConstantDirectory().get(name);
        if (result != null) {
            return result;
        }
        if (name == null) {
            throw new NullPointerException("Name is null");
        }
        throw new IllegalArgumentException("No enum constant " + enumClass.getCanonicalName() + "." + name);
    }

    @Deprecated(since = "18", forRemoval = true)
    protected final void finalize() {
    }

    private void readObject(ObjectInputStream in2) throws IOException, ClassNotFoundException {
        throw new InvalidObjectException("can't deserialize enum");
    }

    private void readObjectNoData() throws ObjectStreamException {
        throw new InvalidObjectException("can't deserialize enum");
    }

    public static final class EnumDesc<E extends Enum<E>> extends DynamicConstantDesc<E> {
        private EnumDesc(ClassDesc constantClass, String constantName) {
            super(ConstantDescs.BSM_ENUM_CONSTANT, (String) Objects.requireNonNull(constantName), (ClassDesc) Objects.requireNonNull(constantClass), new ConstantDesc[0]);
        }

        public static <E extends Enum<E>> EnumDesc<E> of(ClassDesc enumClass, String constantName) {
            return new EnumDesc<>(enumClass, constantName);
        }

        @Override
        public E resolveConstantDesc(MethodHandles.Lookup lookup) throws ReflectiveOperationException {
            return (E) Enum.valueOf(constantType().resolveConstantDesc(lookup), constantName());
        }

        @Override
        public String toString() {
            return String.format("EnumDesc[%s.%s]", constantType().displayName(), constantName());
        }
    }
}
