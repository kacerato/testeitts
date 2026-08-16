package androidx.collection;

import com.tonyodev.fetch2.util.FetchDefaults;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.jdt.internal.core.JavaElement;

public final class ArraySet<E> implements Collection<E>, Set<E> {
    private static final int BASE_SIZE = 4;
    private static final int CACHE_SIZE = 10;
    private static final boolean DEBUG = false;
    private static final int[] INT = new int[0];
    private static final Object[] OBJECT = new Object[0];
    private static final String TAG = "ArraySet";
    private static Object[] sBaseCache;
    private static int sBaseCacheSize;
    private static Object[] sTwiceBaseCache;
    private static int sTwiceBaseCacheSize;
    Object[] mArray;
    private MapCollections<E, E> mCollections;
    private int[] mHashes;
    int mSize;

    public ArraySet() {
        this(0);
    }

    private void allocArrays(int i10) {
        if (i10 == 8) {
            synchronized (ArraySet.class) {
                try {
                    Object[] objArr = sTwiceBaseCache;
                    if (objArr != null) {
                        this.mArray = objArr;
                        sTwiceBaseCache = (Object[]) objArr[0];
                        this.mHashes = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        sTwiceBaseCacheSize--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i10 == 4) {
            synchronized (ArraySet.class) {
                try {
                    Object[] objArr2 = sBaseCache;
                    if (objArr2 != null) {
                        this.mArray = objArr2;
                        sBaseCache = (Object[]) objArr2[0];
                        this.mHashes = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        sBaseCacheSize--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.mHashes = new int[i10];
        this.mArray = new Object[i10];
    }

    private static void freeArrays(int[] iArr, Object[] objArr, int i10) {
        if (iArr.length == 8) {
            synchronized (ArraySet.class) {
                try {
                    if (sTwiceBaseCacheSize < 10) {
                        objArr[0] = sTwiceBaseCache;
                        objArr[1] = iArr;
                        for (int i11 = i10 - 1; i11 >= 2; i11--) {
                            objArr[i11] = null;
                        }
                        sTwiceBaseCache = objArr;
                        sTwiceBaseCacheSize++;
                    }
                } finally {
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (ArraySet.class) {
                try {
                    if (sBaseCacheSize < 10) {
                        objArr[0] = sBaseCache;
                        objArr[1] = iArr;
                        for (int i12 = i10 - 1; i12 >= 2; i12--) {
                            objArr[i12] = null;
                        }
                        sBaseCache = objArr;
                        sBaseCacheSize++;
                    }
                } finally {
                }
            }
        }
    }

    private MapCollections<E, E> getCollection() {
        if (this.mCollections == null) {
            this.mCollections = new MapCollections<E, E>() {
                @Override
                public void colClear() {
                    ArraySet.this.clear();
                }

                @Override
                public Object colGetEntry(int i10, int i11) {
                    return ArraySet.this.mArray[i10];
                }

                @Override
                public Map<E, E> colGetMap() {
                    throw new UnsupportedOperationException("not a map");
                }

                @Override
                public int colGetSize() {
                    return ArraySet.this.mSize;
                }

                @Override
                public int colIndexOfKey(Object obj) {
                    return ArraySet.this.indexOf(obj);
                }

                @Override
                public int colIndexOfValue(Object obj) {
                    return ArraySet.this.indexOf(obj);
                }

                @Override
                public void colPut(E e10, E e11) {
                    ArraySet.this.add(e10);
                }

                @Override
                public void colRemoveAt(int i10) {
                    ArraySet.this.removeAt(i10);
                }

                @Override
                public E colSetValue(int i10, E e10) {
                    throw new UnsupportedOperationException("not a map");
                }
            };
        }
        return this.mCollections;
    }

    private int indexOf(Object obj, int i10) {
        int i11 = this.mSize;
        if (i11 == 0) {
            return -1;
        }
        int binarySearch = ContainerHelpers.binarySearch(this.mHashes, i11, i10);
        if (binarySearch < 0 || obj.equals(this.mArray[binarySearch])) {
            return binarySearch;
        }
        int i12 = binarySearch + 1;
        while (i12 < i11 && this.mHashes[i12] == i10) {
            if (obj.equals(this.mArray[i12])) {
                return i12;
            }
            i12++;
        }
        for (int i13 = binarySearch - 1; i13 >= 0 && this.mHashes[i13] == i10; i13--) {
            if (obj.equals(this.mArray[i13])) {
                return i13;
            }
        }
        return ~i12;
    }

    private int indexOfNull() {
        int i10 = this.mSize;
        if (i10 == 0) {
            return -1;
        }
        int binarySearch = ContainerHelpers.binarySearch(this.mHashes, i10, 0);
        if (binarySearch < 0 || this.mArray[binarySearch] == null) {
            return binarySearch;
        }
        int i11 = binarySearch + 1;
        while (i11 < i10 && this.mHashes[i11] == 0) {
            if (this.mArray[i11] == null) {
                return i11;
            }
            i11++;
        }
        for (int i12 = binarySearch - 1; i12 >= 0 && this.mHashes[i12] == 0; i12--) {
            if (this.mArray[i12] == null) {
                return i12;
            }
        }
        return ~i11;
    }

    @Override
    public boolean add(E e10) {
        int i10;
        int indexOf;
        if (e10 == null) {
            indexOf = indexOfNull();
            i10 = 0;
        } else {
            int hashCode = e10.hashCode();
            i10 = hashCode;
            indexOf = indexOf(e10, hashCode);
        }
        if (indexOf >= 0) {
            return false;
        }
        int i11 = ~indexOf;
        int i12 = this.mSize;
        int[] iArr = this.mHashes;
        if (i12 >= iArr.length) {
            int i13 = 8;
            if (i12 >= 8) {
                i13 = (i12 >> 1) + i12;
            } else if (i12 < 4) {
                i13 = 4;
            }
            Object[] objArr = this.mArray;
            allocArrays(i13);
            int[] iArr2 = this.mHashes;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.mArray, 0, objArr.length);
            }
            freeArrays(iArr, objArr, this.mSize);
        }
        int i14 = this.mSize;
        if (i11 < i14) {
            int[] iArr3 = this.mHashes;
            int i15 = i11 + 1;
            System.arraycopy(iArr3, i11, iArr3, i15, i14 - i11);
            Object[] objArr2 = this.mArray;
            System.arraycopy(objArr2, i11, objArr2, i15, this.mSize - i11);
        }
        this.mHashes[i11] = i10;
        this.mArray[i11] = e10;
        this.mSize++;
        return true;
    }

    public void addAll(ArraySet<? extends E> arraySet) {
        int i10 = arraySet.mSize;
        ensureCapacity(this.mSize + i10);
        if (this.mSize != 0) {
            for (int i11 = 0; i11 < i10; i11++) {
                add(arraySet.valueAt(i11));
            }
        } else if (i10 > 0) {
            System.arraycopy(arraySet.mHashes, 0, this.mHashes, 0, i10);
            System.arraycopy(arraySet.mArray, 0, this.mArray, 0, i10);
            this.mSize = i10;
        }
    }

    @Override
    public void clear() {
        int i10 = this.mSize;
        if (i10 != 0) {
            freeArrays(this.mHashes, this.mArray, i10);
            this.mHashes = INT;
            this.mArray = OBJECT;
            this.mSize = 0;
        }
    }

    @Override
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public void ensureCapacity(int i10) {
        int[] iArr = this.mHashes;
        if (iArr.length < i10) {
            Object[] objArr = this.mArray;
            allocArrays(i10);
            int i11 = this.mSize;
            if (i11 > 0) {
                System.arraycopy(iArr, 0, this.mHashes, 0, i11);
                System.arraycopy(objArr, 0, this.mArray, 0, this.mSize);
            }
            freeArrays(iArr, objArr, this.mSize);
        }
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (size() != set.size()) {
                return false;
            }
            for (int i10 = 0; i10 < this.mSize; i10++) {
                try {
                    if (!set.contains(valueAt(i10))) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    @Override
    public int hashCode() {
        int[] iArr = this.mHashes;
        int i10 = this.mSize;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 += iArr[i12];
        }
        return i11;
    }

    @Override
    public boolean isEmpty() {
        return this.mSize <= 0;
    }

    @Override
    public Iterator<E> iterator() {
        return getCollection().getKeySet().iterator();
    }

    @Override
    public boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf < 0) {
            return false;
        }
        removeAt(indexOf);
        return true;
    }

    public boolean removeAll(ArraySet<? extends E> arraySet) {
        int i10 = arraySet.mSize;
        int i11 = this.mSize;
        for (int i12 = 0; i12 < i10; i12++) {
            remove(arraySet.valueAt(i12));
        }
        return i11 != this.mSize;
    }

    public E removeAt(int i10) {
        Object[] objArr = this.mArray;
        E e10 = (E) objArr[i10];
        int i11 = this.mSize;
        if (i11 <= 1) {
            freeArrays(this.mHashes, objArr, i11);
            this.mHashes = INT;
            this.mArray = OBJECT;
            this.mSize = 0;
        } else {
            int[] iArr = this.mHashes;
            if (iArr.length <= 8 || i11 >= iArr.length / 3) {
                int i12 = i11 - 1;
                this.mSize = i12;
                if (i10 < i12) {
                    int i13 = i10 + 1;
                    System.arraycopy(iArr, i13, iArr, i10, i12 - i10);
                    Object[] objArr2 = this.mArray;
                    System.arraycopy(objArr2, i13, objArr2, i10, this.mSize - i10);
                }
                this.mArray[this.mSize] = null;
            } else {
                allocArrays(i11 > 8 ? i11 + (i11 >> 1) : 8);
                this.mSize--;
                if (i10 > 0) {
                    System.arraycopy(iArr, 0, this.mHashes, 0, i10);
                    System.arraycopy(objArr, 0, this.mArray, 0, i10);
                }
                int i14 = this.mSize;
                if (i10 < i14) {
                    int i15 = i10 + 1;
                    System.arraycopy(iArr, i15, this.mHashes, i10, i14 - i10);
                    System.arraycopy(objArr, i15, this.mArray, i10, this.mSize - i10);
                }
            }
        }
        return e10;
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        boolean z10 = false;
        for (int i10 = this.mSize - 1; i10 >= 0; i10--) {
            if (!collection.contains(this.mArray[i10])) {
                removeAt(i10);
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public int size() {
        return this.mSize;
    }

    @Override
    public Object[] toArray() {
        int i10 = this.mSize;
        Object[] objArr = new Object[i10];
        System.arraycopy(this.mArray, 0, objArr, 0, i10);
        return objArr;
    }

    public String toString() {
        if (isEmpty()) {
            return FetchDefaults.EMPTY_JSON_OBJECT_STRING;
        }
        StringBuilder sb2 = new StringBuilder(this.mSize * 14);
        sb2.append(JavaElement.JEM_COMPILATIONUNIT);
        for (int i10 = 0; i10 < this.mSize; i10++) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            E valueAt = valueAt(i10);
            if (valueAt != this) {
                sb2.append((Object) valueAt);
            } else {
                sb2.append("(this Set)");
            }
        }
        sb2.append(JavaElement.JEM_ANNOTATION);
        return sb2.toString();
    }

    public E valueAt(int i10) {
        return (E) this.mArray[i10];
    }

    public ArraySet(int i10) {
        if (i10 == 0) {
            this.mHashes = INT;
            this.mArray = OBJECT;
        } else {
            allocArrays(i10);
        }
        this.mSize = 0;
    }

    @Override
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.mSize) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.mSize));
        }
        System.arraycopy(this.mArray, 0, tArr, 0, this.mSize);
        int length = tArr.length;
        int i10 = this.mSize;
        if (length > i10) {
            tArr[i10] = null;
        }
        return tArr;
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            z10 |= remove(it.next());
        }
        return z10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArraySet(ArraySet<E> arraySet) {
        this();
        if (arraySet != 0) {
            addAll((ArraySet) arraySet);
        }
    }

    @Override
    public boolean addAll(Collection<? extends E> collection) {
        ensureCapacity(this.mSize + collection.size());
        Iterator<? extends E> it = collection.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            z10 |= add(it.next());
        }
        return z10;
    }

    public int indexOf(Object obj) {
        return obj == null ? indexOfNull() : indexOf(obj, obj.hashCode());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArraySet(Collection<E> collection) {
        this();
        if (collection != 0) {
            addAll(collection);
        }
    }
}
