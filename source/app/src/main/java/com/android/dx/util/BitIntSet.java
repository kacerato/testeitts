package com.android.dx.util;

import java.util.NoSuchElementException;
import org.eclipse.jdt.internal.core.JavaElement;

public class BitIntSet implements IntSet {
    int[] bits;

    public BitIntSet(int i10) {
        this.bits = Bits.makeBitSet(i10);
    }

    private void ensureCapacity(int i10) {
        if (i10 >= Bits.getMax(this.bits)) {
            int[] makeBitSet = Bits.makeBitSet(Math.max(i10 + 1, Bits.getMax(this.bits) * 2));
            int[] iArr = this.bits;
            System.arraycopy(iArr, 0, makeBitSet, 0, iArr.length);
            this.bits = makeBitSet;
        }
    }

    @Override
    public void add(int i10) {
        ensureCapacity(i10);
        Bits.set(this.bits, i10, true);
    }

    @Override
    public int elements() {
        return Bits.bitCount(this.bits);
    }

    @Override
    public boolean has(int i10) {
        return i10 < Bits.getMax(this.bits) && Bits.get(this.bits, i10);
    }

    @Override
    public IntIterator iterator() {
        return new IntIterator() {
            private int idx;

            {
                this.idx = Bits.findFirst(BitIntSet.this.bits, 0);
            }

            @Override
            public boolean hasNext() {
                return this.idx >= 0;
            }

            @Override
            public int next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                int i10 = this.idx;
                this.idx = Bits.findFirst(BitIntSet.this.bits, i10 + 1);
                return i10;
            }
        };
    }

    @Override
    public void merge(IntSet intSet) {
        if (intSet instanceof BitIntSet) {
            BitIntSet bitIntSet = (BitIntSet) intSet;
            ensureCapacity(Bits.getMax(bitIntSet.bits) + 1);
            Bits.or(this.bits, bitIntSet.bits);
        } else {
            if (!(intSet instanceof ListIntSet)) {
                IntIterator it = intSet.iterator();
                while (it.hasNext()) {
                    add(it.next());
                }
                return;
            }
            ListIntSet listIntSet = (ListIntSet) intSet;
            int size = listIntSet.ints.size();
            if (size > 0) {
                ensureCapacity(listIntSet.ints.get(size - 1));
            }
            for (int i10 = 0; i10 < listIntSet.ints.size(); i10++) {
                Bits.set(this.bits, listIntSet.ints.get(i10), true);
            }
        }
    }

    @Override
    public void remove(int i10) {
        if (i10 < Bits.getMax(this.bits)) {
            Bits.set(this.bits, i10, false);
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(JavaElement.JEM_COMPILATIONUNIT);
        int findFirst = Bits.findFirst(this.bits, 0);
        boolean z10 = true;
        while (findFirst >= 0) {
            if (!z10) {
                sb2.append(", ");
            }
            sb2.append(findFirst);
            findFirst = Bits.findFirst(this.bits, findFirst + 1);
            z10 = false;
        }
        sb2.append(JavaElement.JEM_ANNOTATION);
        return sb2.toString();
    }
}
