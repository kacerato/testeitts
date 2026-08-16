package com.android.dx.util;

import java.util.NoSuchElementException;

public class ListIntSet implements IntSet {
    final IntList ints;

    public ListIntSet() {
        IntList intList = new IntList();
        this.ints = intList;
        intList.sort();
    }

    @Override
    public void add(int i10) {
        int binarysearch = this.ints.binarysearch(i10);
        if (binarysearch < 0) {
            this.ints.insert(-(binarysearch + 1), i10);
        }
    }

    @Override
    public int elements() {
        return this.ints.size();
    }

    @Override
    public boolean has(int i10) {
        return this.ints.indexOf(i10) >= 0;
    }

    @Override
    public IntIterator iterator() {
        return new IntIterator() {
            private int idx = 0;

            @Override
            public boolean hasNext() {
                return this.idx < ListIntSet.this.ints.size();
            }

            @Override
            public int next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                IntList intList = ListIntSet.this.ints;
                int i10 = this.idx;
                this.idx = i10 + 1;
                return intList.get(i10);
            }
        };
    }

    @Override
    public void merge(IntSet intSet) {
        int i10 = 0;
        if (!(intSet instanceof ListIntSet)) {
            if (!(intSet instanceof BitIntSet)) {
                IntIterator it = intSet.iterator();
                while (it.hasNext()) {
                    add(it.next());
                }
                return;
            } else {
                BitIntSet bitIntSet = (BitIntSet) intSet;
                while (i10 >= 0) {
                    this.ints.add(i10);
                    i10 = Bits.findFirst(bitIntSet.bits, i10 + 1);
                }
                this.ints.sort();
                return;
            }
        }
        ListIntSet listIntSet = (ListIntSet) intSet;
        int size = this.ints.size();
        int size2 = listIntSet.ints.size();
        int i11 = 0;
        while (i10 < size2 && i11 < size) {
            while (i10 < size2 && listIntSet.ints.get(i10) < this.ints.get(i11)) {
                add(listIntSet.ints.get(i10));
                i10++;
            }
            if (i10 == size2) {
                break;
            }
            while (i11 < size && listIntSet.ints.get(i10) >= this.ints.get(i11)) {
                i11++;
            }
        }
        while (i10 < size2) {
            add(listIntSet.ints.get(i10));
            i10++;
        }
        this.ints.sort();
    }

    @Override
    public void remove(int i10) {
        int indexOf = this.ints.indexOf(i10);
        if (indexOf >= 0) {
            this.ints.removeIndex(indexOf);
        }
    }

    public String toString() {
        return this.ints.toString();
    }
}
