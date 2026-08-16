package java.lang.invoke;

import java.lang.invoke.AbstractConstantGroup;
import java.util.List;
import java.util.function.IntFunction;

public interface ConstantGroup {
    int size();

    Object get(int i10) throws LinkageError;

    Object get(int i10, Object obj);

    boolean isPresent(int i10);

    static {
        if (AnonymousClass1.$assertionsDisabled) {
        }
    }

    default List<Object> asList() {
        return new AbstractConstantGroup.AsList(this, 0, size());
    }

    default List<Object> asList(Object ifNotPresent) {
        return new AbstractConstantGroup.AsList(this, 0, size(), ifNotPresent);
    }

    default ConstantGroup subGroup(int start, int end) {
        return new AbstractConstantGroup.SubGroup(this, start, end);
    }

    default int copyConstants(int start, int end, Object[] buf, int pos) throws LinkageError {
        int bufBase = pos - start;
        for (int i10 = start; i10 < end; i10++) {
            buf[bufBase + i10] = get(i10);
        }
        return end;
    }

    default int copyConstants(int start, int end, Object[] buf, int pos, Object ifNotPresent) {
        int bufBase = pos - start;
        for (int i10 = start; i10 < end; i10++) {
            buf[bufBase + i10] = get(i10, ifNotPresent);
        }
        return end;
    }

    static ConstantGroup makeConstantGroup(List<Object> constants, Object ifNotPresent, IntFunction<Object> constantProvider) {
        return new AbstractConstantGroup.WithCache(ifNotPresent, constantProvider) {
            final Object val$ifNotPresent;
            final IntFunction val$constantProvider;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(List.this.size());
                this.val$ifNotPresent = ifNotPresent;
                this.val$constantProvider = constantProvider;
                initializeCache(List.this, ifNotPresent);
            }

            @Override
            Object fillCache(int index) {
                if (this.val$constantProvider == null) {
                    super.fillCache(index);
                }
                return this.val$constantProvider.apply(index);
            }
        };
    }

    public static class AnonymousClass1 {
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !ConstantGroup.class.desiredAssertionStatus();
        }
    }

    static ConstantGroup makeConstantGroup(List<Object> constants) {
        Object NP = AbstractConstantGroup.WithCache.NOT_PRESENT;
        if (AnonymousClass1.$assertionsDisabled || !constants.contains(NP)) {
            return makeConstantGroup(constants, NP, null);
        }
        throw new AssertionError();
    }
}
