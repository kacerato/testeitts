package org.eclipse.jdt.internal.core.nd;

public class Pointer<T> {
    private final long address;

    private final Nd f102535nd;
    private ITypeFactory<T> targetFactory;

    public Pointer(Nd nd2, long j10, ITypeFactory<T> iTypeFactory) {
        this.f102535nd = nd2;
        this.address = j10;
        this.targetFactory = iTypeFactory;
    }

    public static <T> ITypeFactory<Pointer<T>> getFactory(final ITypeFactory<T> iTypeFactory) {
        if (NdNode.class.isAssignableFrom(iTypeFactory.getElementClass())) {
            throw new IllegalArgumentException("Don't use Pointer<T> for references to NdNode");
        }
        return new AbstractTypeFactory<Pointer<T>>() {
            @Override
            public Class<?> getElementClass() {
                return Pointer.class;
            }

            @Override
            public int getRecordSize() {
                return 4;
            }

            @Override
            public Pointer<T> create(Nd nd2, long j10) {
                return new Pointer<>(nd2, j10, ITypeFactory.this);
            }
        };
    }

    public T get() {
        long recPtr = this.f102535nd.getDB().getRecPtr(this.address);
        if (recPtr == 0) {
            return null;
        }
        return this.targetFactory.create(this.f102535nd, recPtr);
    }
}
