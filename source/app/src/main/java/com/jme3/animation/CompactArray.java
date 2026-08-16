package com.jme3.animation;

import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.lang.reflect.Array;
import java.util.HashMap;
import java.util.Map;

public abstract class CompactArray<T> implements JmeCloneable {
    static final boolean $assertionsDisabled = false;
    protected float[] array;
    protected int[] index;
    protected Map<T, Integer> indexPool = new HashMap();
    private boolean invalid;

    public CompactArray() {
    }

    public void add(T... tArr) {
        int length;
        if (tArr == null || tArr.length == 0) {
            return;
        }
        this.invalid = true;
        if (this.index == null) {
            this.index = new int[tArr.length];
            length = 0;
        } else {
            if (this.indexPool.isEmpty()) {
                throw new RuntimeException("Internal is already fixed");
            }
            int[] iArr = this.index;
            length = iArr.length;
            int[] iArr2 = new int[tArr.length + length];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.index = iArr2;
        }
        for (int i10 = 0; i10 < tArr.length; i10++) {
            T t10 = tArr[i10];
            if (t10 == null) {
                this.index[length + i10] = -1;
            } else {
                Integer num = this.indexPool.get(t10);
                if (num == null) {
                    num = Integer.valueOf(this.indexPool.size());
                    this.indexPool.put(t10, num);
                }
                this.index[length + i10] = num.intValue();
            }
        }
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.indexPool = (Map) cloner.clone(this.indexPool);
        this.index = (int[]) cloner.clone(this.index);
        this.array = (float[]) cloner.clone(this.array);
    }

    public abstract T deserialize(int i10, T t10);

    public float[] ensureCapacity(float[] fArr, int i10) {
        if (fArr == null) {
            return new float[i10];
        }
        if (fArr.length >= i10) {
            return fArr;
        }
        float[] fArr2 = new float[i10];
        System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
        return fArr2;
    }

    public void freeze() {
        serialize();
        this.indexPool.clear();
    }

    public final T get(int i10, T t10) {
        serialize();
        return deserialize(getCompactIndex(i10), t10);
    }

    public int getCompactIndex(int i10) {
        int[] iArr = this.index;
        return iArr != null ? iArr[i10] : i10;
    }

    public final int getCompactObjectSize() {
        return getSerializedSize() / getTupleSize();
    }

    public abstract Class<T> getElementClass();

    public final int[] getIndex(T... tArr) {
        int length = tArr.length;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            T t10 = tArr[i10];
            iArr[i10] = t10 != null ? this.indexPool.get(t10).intValue() : -1;
        }
        return iArr;
    }

    public final float[] getSerializedData() {
        serialize();
        return this.array;
    }

    public final int getSerializedSize() {
        return Array.getLength(getSerializedData());
    }

    public final int getTotalObjectSize() {
        int[] iArr = this.index;
        return iArr != null ? iArr.length : getSerializedSize() / getTupleSize();
    }

    public abstract int getTupleSize();

    @Override
    public Object jmeClone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException("Can't clone array", e10);
        }
    }

    public final void serialize() {
        if (this.invalid) {
            int size = this.indexPool.size() * getTupleSize();
            float[] fArr = this.array;
            if (fArr == null || Array.getLength(fArr) < size) {
                this.array = ensureCapacity(this.array, size);
                for (Map.Entry<T, Integer> entry : this.indexPool.entrySet()) {
                    serialize(entry.getValue().intValue(), entry.getKey());
                }
            }
            this.invalid = false;
        }
    }

    public abstract void serialize(int i10, T t10);

    public final void set(int i10, T t10) {
        serialize(getCompactIndex(i10), t10);
    }

    public void setInvalid(boolean z10) {
        this.invalid = z10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final T[] toObjectArray() {
        try {
            Object[] objArr = (Object[]) Array.newInstance((Class<?>) getElementClass(), getSerializedSize() / getTupleSize());
            for (int i10 = 0; i10 < objArr.length; i10++) {
                T newInstance = getElementClass().getDeclaredConstructor(null).newInstance(null);
                objArr[i10] = newInstance;
                deserialize(i10, newInstance);
            }
            T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) getElementClass(), getTotalObjectSize()));
            for (int i11 = 0; i11 < tArr.length; i11++) {
                tArr[i11] = objArr[getCompactIndex(i11)];
            }
            return tArr;
        } catch (Exception unused) {
            return null;
        }
    }

    public CompactArray m1256clone() throws CloneNotSupportedException {
        return (CompactArray) Cloner.deepClone(this);
    }

    public CompactArray(float[] fArr, int[] iArr) {
        this.array = fArr;
        this.index = iArr;
    }
}
