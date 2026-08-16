package com.threed.jpct;

class GenericContainer implements Comparable<GenericContainer> {
    private int[] content;
    private int hash;
    private int pos;

    public GenericContainer() {
        this.pos = 0;
        this.hash = 0;
        this.content = new int[4];
    }

    public void add(float f10) {
        add(Float.floatToRawIntBits(f10));
    }

    public void clear() {
        this.pos = 0;
        this.hash = 0;
    }

    public boolean equals(Object obj) {
        if (obj instanceof GenericContainer) {
            GenericContainer genericContainer = (GenericContainer) obj;
            if (this.pos == genericContainer.pos && this.hash == genericContainer.hash) {
                for (int i10 = 0; i10 < this.pos; i10++) {
                    if (this.content[i10] != genericContainer.content[i10]) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.hash;
    }

    public String toString() {
        return String.valueOf(hashCode());
    }

    public void add(int i10) {
        int i11 = this.pos;
        int[] iArr = this.content;
        if (i11 == iArr.length) {
            int[] iArr2 = new int[iArr.length * 2];
            for (int i12 = 0; i12 < this.pos; i12++) {
                iArr2[i12] = this.content[i12];
            }
            this.content = iArr2;
        }
        int[] iArr3 = this.content;
        int i13 = this.pos;
        iArr3[i13] = i10;
        int i14 = i13 + 1;
        this.pos = i14;
        if ((i14 & 1) == 1) {
            this.hash += i10;
        } else {
            this.hash -= i10;
        }
    }

    @Override
    public int compareTo(GenericContainer genericContainer) {
        int i10 = this.pos;
        int i11 = genericContainer.pos;
        if (i10 != i11) {
            return i10 - i11;
        }
        for (int i12 = 0; i12 < this.pos; i12++) {
            int i13 = this.content[i12] - genericContainer.content[i12];
            if (i13 != 0) {
                return i13;
            }
        }
        return 0;
    }

    public GenericContainer(int i10) {
        this.content = null;
        this.pos = 0;
        this.hash = 0;
        this.content = new int[i10];
    }
}
