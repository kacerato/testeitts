package com.jme3.renderer;

import java.util.Arrays;

public class IDList {
    public int[] newList = new int[16];
    public int[] oldList = new int[16];
    public int newLen = 0;
    public int oldLen = 0;

    public void copyNewToOld() {
        System.arraycopy(this.newList, 0, this.oldList, 0, this.newLen);
        this.oldLen = this.newLen;
        this.newLen = 0;
    }

    public boolean moveToNew(int i10) {
        int i11 = this.newLen;
        if (i11 == 0 || this.newList[i11 - 1] != i10) {
            int[] iArr = this.newList;
            this.newLen = i11 + 1;
            iArr[i11] = i10;
        }
        int i12 = 0;
        while (true) {
            int i13 = this.oldLen;
            if (i12 >= i13) {
                return false;
            }
            if (this.oldList[i12] == i10) {
                this.oldLen = i13 - 1;
                while (i12 < this.oldLen) {
                    int[] iArr2 = this.oldList;
                    int i14 = i12 + 1;
                    iArr2[i12] = iArr2[i14];
                    i12 = i14;
                }
                return true;
            }
            i12++;
        }
    }

    public void print() {
        int i10 = 0;
        if (this.newLen > 0) {
            System.out.print("New List: ");
            int i11 = 0;
            while (true) {
                int i12 = this.newLen;
                if (i11 >= i12) {
                    break;
                }
                if (i11 == i12 - 1) {
                    System.out.println(this.newList[i11]);
                } else {
                    System.out.print(this.newList[i11] + ", ");
                }
                i11++;
            }
        }
        if (this.oldLen <= 0) {
            return;
        }
        System.out.print("Old List: ");
        while (true) {
            int i13 = this.oldLen;
            if (i10 >= i13) {
                return;
            }
            if (i10 == i13 - 1) {
                System.out.println(this.oldList[i10]);
            } else {
                System.out.print(this.oldList[i10] + ", ");
            }
            i10++;
        }
    }

    public void reset() {
        this.newLen = 0;
        this.oldLen = 0;
        Arrays.fill(this.newList, 0);
        Arrays.fill(this.oldList, 0);
    }
}
