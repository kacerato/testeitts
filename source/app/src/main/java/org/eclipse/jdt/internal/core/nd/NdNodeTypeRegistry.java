package org.eclipse.jdt.internal.core.nd;

import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdt.internal.core.nd.db.IndexException;

public class NdNodeTypeRegistry<R> {
    private final Map<Short, ITypeFactory<? extends R>> types = new HashMap();
    private final BitSet reserved = new BitSet();
    private final Map<Class<?>, Short> registeredClasses = new HashMap();

    public R createNode(Nd nd2, long j10, short s10) throws IndexException {
        ITypeFactory<? extends R> iTypeFactory = this.types.get(Short.valueOf(s10));
        if (iTypeFactory != null) {
            return iTypeFactory.create(nd2, j10);
        }
        throw new IndexException("Index corruption detected. Unknown node type: " + ((int) s10) + " at address " + j10);
    }

    public ITypeFactory<? extends R> getClassForType(short s10) {
        return this.types.get(Short.valueOf(s10));
    }

    public <T extends R> ITypeFactory<T> getTypeFactory(short s10) {
        ITypeFactory<? extends R> iTypeFactory = this.types.get(Short.valueOf(s10));
        if (iTypeFactory != null) {
            return iTypeFactory;
        }
        throw new IllegalArgumentException("The node type " + ((int) s10) + " is not registered with this database");
    }

    public short getTypeForClass(Class<?> cls) {
        Short sh2 = this.registeredClasses.get(cls);
        if (sh2 != null) {
            return sh2.shortValue();
        }
        throw new IllegalArgumentException(cls.getName() + " was not registered as a node type");
    }

    public boolean isRegisteredClass(Class<?> cls) {
        return this.registeredClasses.containsKey(cls);
    }

    public <T extends R> void register(int i10, ITypeFactory<T> iTypeFactory) {
        if (((-65536) & i10) != 0) {
            throw new IllegalArgumentException("The typeId " + i10 + " does not fit within a short int");
        }
        short s10 = (short) i10;
        String name = iTypeFactory.getElementClass().getName();
        if (!this.types.containsKey(Short.valueOf(s10)) && !this.reserved.get(i10)) {
            this.types.put(Short.valueOf(s10), iTypeFactory);
            this.registeredClasses.put(iTypeFactory.getElementClass(), Short.valueOf(s10));
            return;
        }
        throw new IllegalArgumentException("The type id " + i10 + " for class " + name + " is already in use.");
    }

    public void reserve(short s10) {
        if (!this.types.containsKey(Short.valueOf(s10)) && !this.reserved.get(s10)) {
            this.reserved.set(s10);
            return;
        }
        throw new IllegalArgumentException("The type ID " + ((int) s10) + " is already in use");
    }
}
