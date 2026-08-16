package org.eclipse.jdt.internal.compiler.util;

import java.util.Iterator;

public final class ObjectVector implements Iterable<Object> {
    static int INITIAL_SIZE = 10;
    Object[] elements;
    int maxSize;
    public int size;

    public ObjectVector() {
        this(INITIAL_SIZE);
    }

    public void add(Object obj) {
        int i10 = this.size;
        int i11 = this.maxSize;
        if (i10 == i11) {
            Object[] objArr = this.elements;
            int i12 = i11 * 2;
            this.maxSize = i12;
            Object[] objArr2 = new Object[i12];
            this.elements = objArr2;
            System.arraycopy(objArr, 0, objArr2, 0, i10);
        }
        Object[] objArr3 = this.elements;
        int i13 = this.size;
        this.size = i13 + 1;
        objArr3[i13] = obj;
    }

    public void addAll(Object[] objArr) {
        int i10 = this.size;
        if (objArr.length + i10 >= this.maxSize) {
            int length = objArr.length + i10;
            this.maxSize = length;
            Object[] objArr2 = this.elements;
            Object[] objArr3 = new Object[length];
            this.elements = objArr3;
            System.arraycopy(objArr2, 0, objArr3, 0, i10);
        }
        System.arraycopy(objArr, 0, this.elements, this.size, objArr.length);
        this.size += objArr.length;
    }

    public boolean contains(Object obj) {
        int i10 = this.size;
        do {
            i10--;
            if (i10 < 0) {
                return false;
            }
        } while (!obj.equals(this.elements[i10]));
        return true;
    }

    public boolean containsIdentical(Object obj) {
        int i10 = this.size;
        do {
            i10--;
            if (i10 < 0) {
                return false;
            }
        } while (obj != this.elements[i10]);
        return true;
    }

    public void copyInto(Object[] objArr) {
        copyInto(objArr, 0);
    }

    public Object elementAt(int i10) {
        return this.elements[i10];
    }

    public Object find(Object obj) {
        int i10 = this.size;
        do {
            i10--;
            if (i10 < 0) {
                return null;
            }
        } while (!obj.equals(this.elements[i10]));
        return this.elements[i10];
    }

    @Override
    public Iterator<Object> iterator() {
        return new Iterator<Object>() {

            int f102515i = 0;

            @Override
            public boolean hasNext() {
                return this.f102515i < ObjectVector.this.size;
            }

            @Override
            public Object next() {
                ObjectVector objectVector = ObjectVector.this;
                int i10 = this.f102515i;
                this.f102515i = i10 + 1;
                return objectVector.elementAt(i10);
            }
        };
    }

    public Object remove(Object obj) {
        int i10 = this.size;
        while (true) {
            int i11 = i10 - 1;
            if (i11 < 0) {
                return null;
            }
            if (obj.equals(this.elements[i11])) {
                Object[] objArr = this.elements;
                int i12 = this.size - 1;
                this.size = i12;
                System.arraycopy(objArr, i10, objArr, i11, i12 - i11);
                this.elements[this.size] = null;
                return obj;
            }
            i10 = i11;
        }
    }

    public void removeAll() {
        int i10 = this.size;
        while (true) {
            i10--;
            if (i10 < 0) {
                this.size = 0;
                return;
            }
            this.elements[i10] = null;
        }
    }

    public int size() {
        return this.size;
    }

    public String toString() {
        String str = "";
        for (int i10 = 0; i10 < this.size; i10++) {
            str = String.valueOf(str) + this.elements[i10].toString() + "\n";
        }
        return str;
    }

    public ObjectVector(int i10) {
        i10 = i10 <= 0 ? INITIAL_SIZE : i10;
        this.maxSize = i10;
        this.size = 0;
        this.elements = new Object[i10];
    }

    public void copyInto(Object[] objArr, int i10) {
        System.arraycopy(this.elements, 0, objArr, i10, this.size);
    }

    public void addAll(ObjectVector objectVector) {
        int i10 = this.size;
        int i11 = objectVector.size;
        if (i10 + i11 >= this.maxSize) {
            int i12 = i11 + i10;
            this.maxSize = i12;
            Object[] objArr = this.elements;
            Object[] objArr2 = new Object[i12];
            this.elements = objArr2;
            System.arraycopy(objArr, 0, objArr2, 0, i10);
        }
        System.arraycopy(objectVector.elements, 0, this.elements, this.size, objectVector.size);
        this.size += objectVector.size;
    }
}
