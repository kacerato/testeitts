package org.eclipse.jdt.internal.core;

import java.util.Arrays;
import java.util.HashMap;
import org.eclipse.jdt.core.IType;

public final class TypeVector {
    static int INITIAL_SIZE = 10;
    static int MIN_ELEMENTS_FOR_HASHSET = 8;
    public static final IType[] NoElements = new IType[0];
    private HashMap<IType, IType> elementSet = null;
    IType[] elements;
    int maxSize;
    public int size;

    public TypeVector() {
        int i10 = INITIAL_SIZE;
        this.maxSize = i10;
        this.size = 0;
        this.elements = new IType[i10];
    }

    private void constructElementSetIfNecessary() {
        if (this.elementSet != null || this.size < MIN_ELEMENTS_FOR_HASHSET) {
            return;
        }
        this.elementSet = new HashMap<>();
        for (IType iType : this.elements) {
            this.elementSet.put(iType, iType);
        }
    }

    public void add(IType iType) {
        int i10 = this.size;
        int i11 = this.maxSize;
        if (i10 == i11) {
            IType[] iTypeArr = this.elements;
            int i12 = i11 * 2;
            this.maxSize = i12;
            IType[] iTypeArr2 = new IType[i12];
            this.elements = iTypeArr2;
            System.arraycopy(iTypeArr, 0, iTypeArr2, 0, i10);
        }
        IType[] iTypeArr3 = this.elements;
        int i13 = this.size;
        this.size = i13 + 1;
        iTypeArr3[i13] = iType;
        HashMap<IType, IType> hashMap = this.elementSet;
        if (hashMap != null) {
            hashMap.put(iType, iType);
        }
    }

    public void addAll(IType[] iTypeArr) {
        int i10 = this.size;
        if (iTypeArr.length + i10 >= this.maxSize) {
            int length = iTypeArr.length + i10;
            this.maxSize = length;
            IType[] iTypeArr2 = this.elements;
            IType[] iTypeArr3 = new IType[length];
            this.elements = iTypeArr3;
            System.arraycopy(iTypeArr2, 0, iTypeArr3, 0, i10);
        }
        System.arraycopy(iTypeArr, 0, this.elements, this.size, iTypeArr.length);
        this.size += iTypeArr.length;
        if (this.elementSet != null) {
            for (IType iType : iTypeArr) {
                this.elementSet.put(iType, iType);
            }
        }
    }

    public boolean contains(IType iType) {
        constructElementSetIfNecessary();
        HashMap<IType, IType> hashMap = this.elementSet;
        if (hashMap != null) {
            return hashMap.containsKey(iType);
        }
        int i10 = this.size;
        do {
            i10--;
            if (i10 < 0) {
                return false;
            }
        } while (!iType.equals(this.elements[i10]));
        return true;
    }

    public TypeVector copy() {
        TypeVector typeVector = new TypeVector();
        IType[] iTypeArr = this.elements;
        int length = iTypeArr.length;
        IType[] iTypeArr2 = new IType[length];
        typeVector.elements = iTypeArr2;
        System.arraycopy(iTypeArr, 0, iTypeArr2, 0, length);
        typeVector.size = this.size;
        typeVector.maxSize = this.maxSize;
        return typeVector;
    }

    public IType elementAt(int i10) {
        return this.elements[i10];
    }

    public IType[] elements() {
        int i10 = this.size;
        if (i10 == 0) {
            return NoElements;
        }
        if (i10 < this.maxSize) {
            this.maxSize = i10;
            IType[] iTypeArr = this.elements;
            IType[] iTypeArr2 = new IType[i10];
            this.elements = iTypeArr2;
            System.arraycopy(iTypeArr, 0, iTypeArr2, 0, i10);
        }
        return this.elements;
    }

    public IType remove(IType iType) {
        HashMap<IType, IType> hashMap = this.elementSet;
        if (hashMap != null) {
            if (hashMap.get(iType) != iType) {
                return null;
            }
            this.elementSet.remove(iType);
        }
        int i10 = this.size;
        while (true) {
            int i11 = i10 - 1;
            if (i11 < 0) {
                return null;
            }
            IType[] iTypeArr = this.elements;
            if (iType == iTypeArr[i11]) {
                int i12 = this.size - 1;
                this.size = i12;
                System.arraycopy(iTypeArr, i10, iTypeArr, i11, i12 - i11);
                this.elements[this.size] = null;
                return iType;
            }
            i10 = i11;
        }
    }

    public void removeAll() {
        Arrays.fill(this.elements, (Object) null);
        this.elementSet = null;
        this.size = 0;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("[");
        for (int i10 = 0; i10 < this.size; i10++) {
            sb2.append("\n");
            sb2.append((Object) this.elements[i10]);
        }
        sb2.append("\n]");
        return sb2.toString();
    }

    public TypeVector(IType[] iTypeArr) {
        int length = iTypeArr.length;
        this.size = length;
        int i10 = length + 1;
        this.maxSize = i10;
        IType[] iTypeArr2 = new IType[i10];
        this.elements = iTypeArr2;
        System.arraycopy(iTypeArr, 0, iTypeArr2, 0, length);
    }

    public TypeVector(IType iType) {
        int i10 = INITIAL_SIZE;
        this.maxSize = i10;
        this.size = 1;
        IType[] iTypeArr = new IType[i10];
        this.elements = iTypeArr;
        iTypeArr[0] = iType;
    }
}
