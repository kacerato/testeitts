package java.lang.invoke;

import b3.s;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import jdk.internal.vm.annotation.Stable;

public abstract class AbstractConstantGroup implements ConstantGroup {
    protected final int size;

    @Override
    public abstract Object get(int i10) throws LinkageError;

    @Override
    public abstract Object get(int i10, Object obj);

    @Override
    public abstract boolean isPresent(int i10);

    AbstractConstantGroup(int size) {
        this.size = size;
    }

    @Override
    public final int size() {
        return this.size;
    }

    public String toString() {
        return asList("*").toString();
    }

    static class AsIterator implements Iterator<Object> {
        private final ConstantGroup self;
        private final int end;
        private final boolean resolving;
        private final Object ifNotPresent;
        private int index;

        private AsIterator(ConstantGroup self, int start, int end, boolean resolving, Object ifNotPresent) {
            this.self = self;
            this.end = end;
            this.index = start;
            this.resolving = resolving;
            this.ifNotPresent = ifNotPresent;
        }

        AsIterator(ConstantGroup self, int start, int end) {
            this(self, start, end, true, null);
        }

        AsIterator(ConstantGroup self, int start, int end, Object ifNotPresent) {
            this(self, start, end, false, ifNotPresent);
        }

        @Override
        public boolean hasNext() {
            return this.index < this.end;
        }

        @Override
        public Object next() {
            int i10 = bumpIndex();
            if (this.resolving) {
                return this.self.get(i10);
            }
            return this.self.get(i10, this.ifNotPresent);
        }

        private int bumpIndex() {
            int i10 = this.index;
            if (i10 >= this.end) {
                throw new NoSuchElementException();
            }
            this.index = i10 + 1;
            return i10;
        }
    }

    static class SubGroup extends AbstractConstantGroup {
        private final ConstantGroup self;
        private final int offset;

        public SubGroup(ConstantGroup self, int start, int end) {
            super(end - start);
            this.self = self;
            this.offset = start;
            Objects.checkFromToIndex(start, end, this.size);
        }

        private int mapIndex(int index) {
            return Objects.checkIndex(index, this.size) + this.offset;
        }

        @Override
        public Object get(int index) {
            return this.self.get(mapIndex(index));
        }

        @Override
        public Object get(int index, Object ifNotPresent) {
            return this.self.get(mapIndex(index), ifNotPresent);
        }

        @Override
        public boolean isPresent(int index) {
            return this.self.isPresent(mapIndex(index));
        }

        @Override
        public ConstantGroup subGroup(int start, int end) {
            Objects.checkFromToIndex(start, end, this.size);
            return new SubGroup(this.self, this.offset + start, this.offset + end);
        }

        @Override
        public List<Object> asList() {
            return new AsList(this.self, this.offset, this.offset + this.size);
        }

        @Override
        public List<Object> asList(Object ifNotPresent) {
            return new AsList(this.self, this.offset, this.offset + this.size, ifNotPresent);
        }

        @Override
        public int copyConstants(int start, int end, Object[] buf, int pos) throws LinkageError {
            Objects.checkFromToIndex(start, end, this.size);
            return this.self.copyConstants(this.offset + start, this.offset + end, buf, pos);
        }

        @Override
        public int copyConstants(int start, int end, Object[] buf, int pos, Object ifNotPresent) {
            Objects.checkFromToIndex(start, end, this.size);
            return this.self.copyConstants(this.offset + start, this.offset + end, buf, pos, ifNotPresent);
        }
    }

    public static class AsList extends AbstractList<Object> {
        private final ConstantGroup self;
        private final int size;
        private final int offset;
        private final boolean resolving;
        private final Object ifNotPresent;

        private AsList(ConstantGroup self, int start, int end, boolean resolving, Object ifNotPresent) {
            this.self = self;
            this.size = end - start;
            this.offset = start;
            this.resolving = resolving;
            this.ifNotPresent = ifNotPresent;
            Objects.checkFromToIndex(start, end, self.size());
        }

        public AsList(ConstantGroup self, int start, int end) {
            this(self, start, end, true, null);
        }

        public AsList(ConstantGroup self, int start, int end, Object ifNotPresent) {
            this(self, start, end, false, ifNotPresent);
        }

        private int mapIndex(int index) {
            return Objects.checkIndex(index, this.size) + this.offset;
        }

        @Override
        public final int size() {
            return this.size;
        }

        @Override
        public Object get(int index) {
            if (this.resolving) {
                return this.self.get(mapIndex(index));
            }
            return this.self.get(mapIndex(index), this.ifNotPresent);
        }

        @Override
        public Iterator<Object> iterator() {
            if (this.resolving) {
                return new AsIterator(this.self, this.offset, this.offset + this.size);
            }
            return new AsIterator(this.self, this.offset, this.offset + this.size, this.ifNotPresent);
        }

        @Override
        public List<Object> subList(int start, int end) {
            Objects.checkFromToIndex(start, end, this.size);
            return new AsList(this.self, this.offset + start, this.offset + end, this.resolving, this.ifNotPresent);
        }

        @Override
        public Object[] toArray() {
            return toArray(new Object[this.size]);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v17, types: [java.lang.Object[]] */
        @Override
        public <T> T[] toArray(T[] a10) {
            int pad = a10.length - this.size;
            if (pad < 0) {
                pad = 0;
                a10 = Arrays.copyOf(a10, this.size);
            }
            if (this.resolving) {
                this.self.copyConstants(this.offset, this.offset + this.size, a10, 0);
            } else {
                this.self.copyConstants(this.offset, this.offset + this.size, a10, 0, this.ifNotPresent);
            }
            if (pad > 0) {
                a10[this.size] = null;
            }
            return a10;
        }
    }

    public static abstract class WithCache extends AbstractConstantGroup {

        @Stable
        final Object[] cache;
        static final Object RESOLVED_TO_NULL;
        static final Object NOT_PRESENT;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !AbstractConstantGroup.class.desiredAssertionStatus();
            RESOLVED_TO_NULL = new Object();
            NOT_PRESENT = new Object();
        }

        public WithCache(int size) {
            super(size);
            this.cache = new Object[size];
        }

        public void initializeCache(List<Object> cacheContents, Object ifNotPresent) {
            for (int i10 = 0; i10 < this.cache.length; i10++) {
                Object x10 = cacheContents.get(i10);
                if (x10 != ifNotPresent) {
                    if (x10 == null) {
                        x10 = RESOLVED_TO_NULL;
                    }
                    this.cache[i10] = x10;
                }
            }
        }

        @Override
        public Object get(int i10) {
            Object x10 = this.cache[i10];
            if (x10 == null) {
                x10 = fillCache(i10);
            }
            return unwrapNull(x10);
        }

        @Override
        public Object get(int i10, Object ifNotAvailable) {
            Object x10 = this.cache[i10];
            return x10 == null ? ifNotAvailable : unwrapNull(x10);
        }

        @Override
        public boolean isPresent(int i10) {
            return this.cache[i10] != null;
        }

        public Object fillCache(int i10) {
            throw new NoSuchElementException("constant group does not contain element #" + i10);
        }

        public static Object wrapNull(Object x10) {
            return x10 == null ? RESOLVED_TO_NULL : x10;
        }

        public static Object unwrapNull(Object x10) {
            if (!$assertionsDisabled && x10 == null) {
                throw new AssertionError();
            }
            if (x10 == RESOLVED_TO_NULL) {
                return null;
            }
            return x10;
        }
    }

    public static class BSCIWithCache<T> extends WithCache implements BootstrapCallInfo<T> {
        private final MethodHandle bsm;
        private final String name;
        private final T type;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !AbstractConstantGroup.class.desiredAssertionStatus();
        }

        @Override
        public String toString() {
            return ((Object) this.bsm) + "/" + this.name + s.f32937c + ((Object) this.type) + super.toString();
        }

        public BSCIWithCache(MethodHandle bsm, String name, T type, int size) {
            super(size);
            this.type = type;
            this.bsm = bsm;
            this.name = name;
            if (!$assertionsDisabled && !(type instanceof Class) && !(type instanceof MethodType)) {
                throw new AssertionError();
            }
        }

        @Override
        public MethodHandle bootstrapMethod() {
            return this.bsm;
        }

        @Override
        public String invocationName() {
            return this.name;
        }

        @Override
        public T invocationType() {
            return this.type;
        }
    }
}
