package com.threed.jpct;

import java.io.Serializable;
import java.util.ConcurrentModificationException;
import java.util.Enumeration;
import java.util.NoSuchElementException;

public final class Object3DList implements Serializable {
    private static final long serialVersionUID = 1;
    private int SIZE;
    private int count;
    private Object3D[] objList;

    public Object3DList() {
        this.SIZE = 100;
        this.count = 0;
        this.objList = new Object3D[100];
    }

    public void addElement(Object3D object3D) {
        int i10 = this.count;
        Object3D[] object3DArr = this.objList;
        if (i10 >= object3DArr.length) {
            Object3D[] object3DArr2 = new Object3D[this.SIZE + object3DArr.length];
            System.arraycopy(object3DArr, 0, object3DArr2, 0, object3DArr.length);
            this.objList = object3DArr2;
        }
        Object3D[] object3DArr3 = this.objList;
        int i11 = this.count;
        object3DArr3[i11] = object3D;
        this.count = i11 + 1;
    }

    public void clear() {
        for (int i10 = 0; i10 < this.count; i10++) {
            this.objList[i10] = null;
        }
        if (this.objList.length > 1000) {
            this.objList = new Object3D[this.SIZE];
        }
        this.count = 0;
    }

    public boolean contains(Object3D object3D) {
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.objList[i10].equals(object3D)) {
                return true;
            }
        }
        return false;
    }

    public Object3D elementAt(int i10) {
        return this.objList[i10];
    }

    public Enumeration<Object3D> elements() {
        return new Enumeration<Object3D>() {
            int cnt = 0;

            int f83623sc;

            {
                this.f83623sc = Object3DList.this.count;
            }

            @Override
            public boolean hasMoreElements() {
                if (Object3DList.this.count == this.f83623sc) {
                    return this.cnt < Object3DList.this.count;
                }
                throw new ConcurrentModificationException();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public Object3D nextElement() {
                if (Object3DList.this.count == this.f83623sc) {
                    if (this.cnt < Object3DList.this.count) {
                        Object3D[] object3DArr = Object3DList.this.objList;
                        int i10 = this.cnt;
                        this.cnt = i10 + 1;
                        return object3DArr[i10];
                    }
                    throw new NoSuchElementException("ObjList Enumeration");
                }
                throw new ConcurrentModificationException();
            }
        };
    }

    public Object3D[] getInternalArray() {
        return this.objList;
    }

    public boolean removeElement(Object3D object3D) {
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.objList[i10].equals(object3D)) {
                removeElementAt(i10);
                return true;
            }
        }
        return false;
    }

    public void removeElementAt(int i10) {
        int i11 = i10 + 1;
        if (i11 < this.count) {
            Object3D[] object3DArr = this.objList;
            System.arraycopy(object3DArr, i11, object3DArr, i10, (r1 - i10) - 1);
        }
        int i12 = this.count - 1;
        this.count = i12;
        this.objList[i12] = null;
    }

    public int size() {
        return this.count;
    }

    public Object3D[] toArray() {
        int i10 = this.count;
        Object3D[] object3DArr = new Object3D[i10];
        System.arraycopy(this.objList, 0, object3DArr, 0, i10);
        return object3DArr;
    }

    public Object3DList(int i10) {
        this.objList = null;
        this.count = 0;
        this.SIZE = i10;
        this.objList = new Object3D[i10];
    }
}
