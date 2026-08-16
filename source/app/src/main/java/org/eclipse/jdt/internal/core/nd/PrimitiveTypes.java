package org.eclipse.jdt.internal.core.nd;

public class PrimitiveTypes {
    public static final ITypeFactory<Long> Pointer = new AbstractTypeFactory<Long>() {
        @Override
        public Class<?> getElementClass() {
            return Long.class;
        }

        @Override
        public int getRecordSize() {
            return 4;
        }

        @Override
        public Long create(Nd nd2, long j10) {
            return Long.valueOf(nd2.getDB().getRecPtr(j10));
        }
    };
    public static final ITypeFactory<Short> Short = new AbstractTypeFactory<Short>() {
        @Override
        public Class<?> getElementClass() {
            return Short.class;
        }

        @Override
        public int getRecordSize() {
            return 2;
        }

        @Override
        public Short create(Nd nd2, long j10) {
            return Short.valueOf(nd2.getDB().getShort(j10));
        }
    };
    public static final ITypeFactory<Integer> Integer = new AbstractTypeFactory<Integer>() {
        @Override
        public Class<?> getElementClass() {
            return Integer.class;
        }

        @Override
        public int getRecordSize() {
            return 4;
        }

        @Override
        public Integer create(Nd nd2, long j10) {
            return Integer.valueOf(nd2.getDB().getInt(j10));
        }
    };
}
