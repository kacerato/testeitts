package org.eclipse.jdt.internal.core.nd;

import org.eclipse.jdt.internal.core.nd.NdRawLinkedList;
import org.eclipse.jdt.internal.core.nd.db.IndexException;

public final class NdLinkedList<T> {
    final ITypeFactory<T> elementFactory;
    private final NdRawLinkedList rawList;

    public interface ILinkedListVisitor<T> {
        void visit(T t10, short s10, int i10) throws IndexException;
    }

    public NdLinkedList(Nd nd2, long j10, ITypeFactory<T> iTypeFactory, int i10, int i11) {
        this(nd2, j10, iTypeFactory, i10, i11, 0);
    }

    public static <T> ITypeFactory<NdLinkedList<T>> getFactoryFor(ITypeFactory<T> iTypeFactory, int i10, int i11) {
        return getFactoryFor(iTypeFactory, i10, i11, 0);
    }

    public void accept(final ILinkedListVisitor<T> iLinkedListVisitor) throws IndexException {
        final NdRawLinkedList ndRawLinkedList = this.rawList;
        final ITypeFactory<T> iTypeFactory = this.elementFactory;
        ndRawLinkedList.accept(new NdRawLinkedList.ILinkedListVisitor() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public void visit(long j10, short s10, int i10) throws IndexException {
                iLinkedListVisitor.visit(iTypeFactory.create(ndRawLinkedList.getNd(), j10), s10, i10);
            }
        });
    }

    public T addMember(short s10) throws IndexException {
        return this.elementFactory.create(this.rawList.getNd(), this.rawList.addMember(s10));
    }

    public void destruct() {
        if (this.elementFactory.hasDestructor()) {
            final Nd nd2 = this.rawList.getNd();
            this.rawList.accept(new NdRawLinkedList.ILinkedListVisitor() {
                @Override
                public void visit(long j10, short s10, int i10) throws IndexException {
                    NdLinkedList.this.elementFactory.destruct(nd2, j10);
                }
            });
        }
        this.rawList.destruct();
    }

    public int size() throws IndexException {
        return this.rawList.size();
    }

    public NdLinkedList(Nd nd2, long j10, ITypeFactory<T> iTypeFactory, int i10, int i11, int i12) {
        this.rawList = new NdRawLinkedList(nd2, j10, iTypeFactory.getRecordSize(), i10, i11, i12);
        this.elementFactory = iTypeFactory;
    }

    public static <T> ITypeFactory<NdLinkedList<T>> getFactoryFor(final ITypeFactory<T> iTypeFactory, final int i10, final int i11, final int i12) {
        return new AbstractTypeFactory<NdLinkedList<T>>() {
            @Override
            public void destruct(Nd nd2, long j10) {
                destructFields(nd2, j10);
            }

            @Override
            public void destructFields(Nd nd2, long j10) {
                create(nd2, j10).destruct();
            }

            @Override
            public Class<?> getElementClass() {
                return NdLinkedList.class;
            }

            @Override
            public int getRecordSize() {
                return NdRawLinkedList.recordSize(ITypeFactory.this.getRecordSize(), i10, i12);
            }

            @Override
            public boolean hasDestructor() {
                return true;
            }

            @Override
            public NdLinkedList<T> create(Nd nd2, long j10) {
                return new NdLinkedList<>(nd2, j10, ITypeFactory.this, i10, i11, i12);
            }
        };
    }
}
