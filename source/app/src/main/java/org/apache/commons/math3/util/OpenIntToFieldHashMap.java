package org.apache.commons.math3.util;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.ConcurrentModificationException;
import java.util.NoSuchElementException;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;

public class OpenIntToFieldHashMap<T extends FieldElement<T>> implements Serializable {
    private static final int DEFAULT_EXPECTED_SIZE = 16;
    protected static final byte FREE = 0;
    protected static final byte FULL = 1;
    private static final float LOAD_FACTOR = 0.5f;
    private static final int PERTURB_SHIFT = 5;
    protected static final byte REMOVED = 2;
    private static final int RESIZE_MULTIPLIER = 2;
    private static final long serialVersionUID = -9179080286849120720L;
    private transient int count;
    private final Field<T> field;
    private int[] keys;
    private int mask;
    private final T missingEntries;
    private int size;
    private byte[] states;
    private T[] values;

    public class Iterator {
        private int current;
        private int next;
        private final int referenceCount;

        public void advance() throws ConcurrentModificationException, NoSuchElementException {
            byte[] bArr;
            int i10;
            if (this.referenceCount != OpenIntToFieldHashMap.this.count) {
                throw new ConcurrentModificationException();
            }
            this.current = this.next;
            do {
                try {
                    bArr = OpenIntToFieldHashMap.this.states;
                    i10 = this.next + 1;
                    this.next = i10;
                } catch (ArrayIndexOutOfBoundsException unused) {
                    this.next = -2;
                    if (this.current < 0) {
                        throw new NoSuchElementException();
                    }
                    return;
                }
            } while (bArr[i10] != 1);
        }

        public boolean hasNext() {
            return this.next >= 0;
        }

        public int key() throws ConcurrentModificationException, NoSuchElementException {
            if (this.referenceCount != OpenIntToFieldHashMap.this.count) {
                throw new ConcurrentModificationException();
            }
            if (this.current >= 0) {
                return OpenIntToFieldHashMap.this.keys[this.current];
            }
            throw new NoSuchElementException();
        }

        public T value() throws ConcurrentModificationException, NoSuchElementException {
            if (this.referenceCount != OpenIntToFieldHashMap.this.count) {
                throw new ConcurrentModificationException();
            }
            if (this.current >= 0) {
                return (T) OpenIntToFieldHashMap.this.values[this.current];
            }
            throw new NoSuchElementException();
        }

        private Iterator() {
            this.referenceCount = OpenIntToFieldHashMap.this.count;
            this.next = -1;
            try {
                advance();
            } catch (NoSuchElementException unused) {
            }
        }
    }

    public OpenIntToFieldHashMap(Field<T> field) {
        this(field, 16, field.getZero());
    }

    private T[] buildArray(int i10) {
        return (T[]) ((FieldElement[]) Array.newInstance(this.field.getRuntimeClass(), i10));
    }

    private static int changeIndexSign(int i10) {
        return (-i10) - 1;
    }

    private static int computeCapacity(int i10) {
        if (i10 == 0) {
            return 1;
        }
        int ceil = (int) FastMath.ceil(i10 / 0.5f);
        return Integer.highestOneBit(ceil) == ceil ? ceil : nextPowerOfTwo(ceil);
    }

    private T doRemove(int i10) {
        this.keys[i10] = 0;
        this.states[i10] = 2;
        T[] tArr = this.values;
        T t10 = tArr[i10];
        tArr[i10] = this.missingEntries;
        this.size--;
        this.count++;
        return t10;
    }

    private int findInsertionIndex(int i10) {
        return findInsertionIndex(this.keys, this.states, i10, this.mask);
    }

    private void growTable() {
        byte[] bArr = this.states;
        int length = bArr.length;
        int[] iArr = this.keys;
        T[] tArr = this.values;
        int i10 = length * 2;
        int[] iArr2 = new int[i10];
        T[] buildArray = buildArray(i10);
        byte[] bArr2 = new byte[i10];
        int i11 = i10 - 1;
        for (int i12 = 0; i12 < length; i12++) {
            if (bArr[i12] == 1) {
                int i13 = iArr[i12];
                int findInsertionIndex = findInsertionIndex(iArr2, bArr2, i13, i11);
                iArr2[findInsertionIndex] = i13;
                buildArray[findInsertionIndex] = tArr[i12];
                bArr2[findInsertionIndex] = 1;
            }
        }
        this.mask = i11;
        this.keys = iArr2;
        this.values = buildArray;
        this.states = bArr2;
    }

    private static int hashOf(int i10) {
        int i11 = i10 ^ ((i10 >>> 20) ^ (i10 >>> 12));
        return (i11 >>> 4) ^ ((i11 >>> 7) ^ i11);
    }

    private static int nextPowerOfTwo(int i10) {
        return Integer.highestOneBit(i10) << 1;
    }

    private static int perturb(int i10) {
        return i10 & Integer.MAX_VALUE;
    }

    private static int probe(int i10, int i11) {
        return (i11 << 2) + i11 + i10 + 1;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.count = 0;
    }

    private boolean shouldGrowTable() {
        return ((float) this.size) > ((float) (this.mask + 1)) * 0.5f;
    }

    public boolean containsKey(int i10) {
        int hashOf = hashOf(i10);
        int i11 = this.mask & hashOf;
        if (containsKey(i10, i11)) {
            return true;
        }
        if (this.states[i11] == 0) {
            return false;
        }
        int perturb = perturb(hashOf);
        int i12 = i11;
        while (this.states[i11] != 0) {
            i12 = probe(perturb, i12);
            i11 = this.mask & i12;
            if (containsKey(i10, i11)) {
                return true;
            }
            perturb >>= 5;
        }
        return false;
    }

    public T get(int i10) {
        int hashOf = hashOf(i10);
        int i11 = this.mask & hashOf;
        if (containsKey(i10, i11)) {
            return this.values[i11];
        }
        if (this.states[i11] == 0) {
            return this.missingEntries;
        }
        int perturb = perturb(hashOf);
        int i12 = i11;
        while (this.states[i11] != 0) {
            i12 = probe(perturb, i12);
            i11 = this.mask & i12;
            if (containsKey(i10, i11)) {
                return this.values[i11];
            }
            perturb >>= 5;
        }
        return this.missingEntries;
    }

    public OpenIntToFieldHashMap<T>.Iterator iterator() {
        return new Iterator();
    }

    public T put(int i10, T t10) {
        boolean z10;
        int findInsertionIndex = findInsertionIndex(i10);
        T t11 = this.missingEntries;
        if (findInsertionIndex < 0) {
            findInsertionIndex = changeIndexSign(findInsertionIndex);
            t11 = this.values[findInsertionIndex];
            z10 = false;
        } else {
            z10 = true;
        }
        this.keys[findInsertionIndex] = i10;
        this.states[findInsertionIndex] = 1;
        this.values[findInsertionIndex] = t10;
        if (z10) {
            this.size++;
            if (shouldGrowTable()) {
                growTable();
            }
            this.count++;
        }
        return t11;
    }

    public T remove(int i10) {
        int hashOf = hashOf(i10);
        int i11 = this.mask & hashOf;
        if (containsKey(i10, i11)) {
            return doRemove(i11);
        }
        if (this.states[i11] == 0) {
            return this.missingEntries;
        }
        int perturb = perturb(hashOf);
        int i12 = i11;
        while (this.states[i11] != 0) {
            i12 = probe(perturb, i12);
            i11 = this.mask & i12;
            if (containsKey(i10, i11)) {
                return doRemove(i11);
            }
            perturb >>= 5;
        }
        return this.missingEntries;
    }

    public int size() {
        return this.size;
    }

    public OpenIntToFieldHashMap(Field<T> field, T t10) {
        this(field, 16, t10);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0038 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int findInsertionIndex(int[] iArr, byte[] bArr, int i10, int i11) {
        int i12;
        byte b10;
        int i13;
        int hashOf = hashOf(i10);
        int i14 = hashOf & i11;
        byte b11 = bArr[i14];
        if (b11 == 0) {
            return i14;
        }
        if (b11 == 1 && iArr[i14] == i10) {
            return changeIndexSign(i14);
        }
        int perturb = perturb(hashOf);
        if (bArr[i14] != 1) {
            i12 = i14;
            b10 = bArr[i14];
            if (b10 != 0) {
                return i14;
            }
            if (b10 == 1) {
                return changeIndexSign(i14);
            }
            while (true) {
                i12 = probe(perturb, i12);
                int i15 = i12 & i11;
                byte b12 = bArr[i15];
                if (b12 == 0) {
                    return i14;
                }
                if (b12 == 1 && iArr[i15] == i10) {
                    return changeIndexSign(i15);
                }
                perturb >>= 5;
            }
        }
        do {
            i14 = probe(perturb, i14);
            i13 = i14 & i11;
            perturb >>= 5;
            if (bArr[i13] != 1) {
                break;
            }
        } while (iArr[i13] != i10);
        i12 = i14;
        i14 = i13;
        b10 = bArr[i14];
        if (b10 != 0) {
        }
    }

    public OpenIntToFieldHashMap(Field<T> field, int i10) {
        this(field, i10, field.getZero());
    }

    public OpenIntToFieldHashMap(Field<T> field, int i10, T t10) {
        this.field = field;
        int computeCapacity = computeCapacity(i10);
        this.keys = new int[computeCapacity];
        this.values = buildArray(computeCapacity);
        this.states = new byte[computeCapacity];
        this.missingEntries = t10;
        this.mask = computeCapacity - 1;
    }

    private boolean containsKey(int i10, int i11) {
        return (i10 != 0 || this.states[i11] == 1) && this.keys[i11] == i10;
    }

    public OpenIntToFieldHashMap(OpenIntToFieldHashMap<T> openIntToFieldHashMap) {
        this.field = openIntToFieldHashMap.field;
        int length = openIntToFieldHashMap.keys.length;
        int[] iArr = new int[length];
        this.keys = iArr;
        System.arraycopy(openIntToFieldHashMap.keys, 0, iArr, 0, length);
        T[] buildArray = buildArray(length);
        this.values = buildArray;
        System.arraycopy(openIntToFieldHashMap.values, 0, buildArray, 0, length);
        byte[] bArr = new byte[length];
        this.states = bArr;
        System.arraycopy(openIntToFieldHashMap.states, 0, bArr, 0, length);
        this.missingEntries = openIntToFieldHashMap.missingEntries;
        this.size = openIntToFieldHashMap.size;
        this.mask = openIntToFieldHashMap.mask;
        this.count = openIntToFieldHashMap.count;
    }
}
