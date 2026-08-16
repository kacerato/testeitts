package org.eclipse.jdt.internal.core.hierarchy;

import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class BindingMap<V> {
    private Map<TypeBinding, V> identityMap = new IdentityHashMap();
    private Object[] mapIdToValue = new Object[0];
    private Set<TypeBinding> bindingsWithoutAnId = new HashSet();

    private void insertIntoIdMap(int i10, V v10) {
        int i11 = i10 + 1;
        Object[] objArr = this.mapIdToValue;
        if (objArr.length < i11) {
            Object[] objArr2 = new Object[i11 * 2];
            System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
            this.mapIdToValue = objArr2;
        }
        this.mapIdToValue[i10] = v10;
    }

    public void clear() {
        this.identityMap.clear();
        this.bindingsWithoutAnId.clear();
        this.mapIdToValue = new Object[0];
    }

    public V get(TypeBinding typeBinding) {
        int i10;
        V v10 = this.identityMap.get(typeBinding);
        if (v10 != null || (i10 = typeBinding.f102482id) == Integer.MAX_VALUE) {
            return v10;
        }
        Object[] objArr = this.mapIdToValue;
        if (i10 < objArr.length) {
            v10 = (V) objArr[i10];
        }
        V v11 = v10;
        if (v11 != null) {
            return v11;
        }
        Iterator<TypeBinding> it = this.bindingsWithoutAnId.iterator();
        while (it.hasNext()) {
            TypeBinding next = it.next();
            int i11 = next.f102482id;
            if (i11 != Integer.MAX_VALUE) {
                insertIntoIdMap(i11, this.identityMap.get(next));
                it.remove();
            }
        }
        Object[] objArr2 = this.mapIdToValue;
        return i10 < objArr2.length ? (V) objArr2[i10] : v11;
    }

    public void put(TypeBinding typeBinding, V v10) {
        this.identityMap.put(typeBinding, v10);
        int i10 = typeBinding.f102482id;
        if (i10 != Integer.MAX_VALUE) {
            insertIntoIdMap(i10, v10);
        } else {
            this.bindingsWithoutAnId.add(typeBinding);
        }
    }
}
