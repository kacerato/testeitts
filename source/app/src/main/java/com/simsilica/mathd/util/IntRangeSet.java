package com.simsilica.mathd.util;

import b3.s;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.NoSuchElementException;

public class IntRangeSet extends AbstractSet<Integer> {
    private Span head;

    public class IntegerIterator implements Iterator<Integer> {
        private Span current;
        private Integer nextValue;

        public IntegerIterator(Span span) {
            this.current = span;
            fetch();
        }

        public void fetch() {
            Span span = this.current;
            if (span == null) {
                this.nextValue = null;
                return;
            }
            Integer num = this.nextValue;
            if (num == null) {
                this.nextValue = Integer.valueOf(span.min);
                return;
            }
            int intValue = num.intValue() + 1;
            if (this.current.contains(intValue)) {
                this.nextValue = Integer.valueOf(intValue);
                return;
            }
            this.current = this.current.next;
            this.nextValue = null;
            fetch();
        }

        @Override
        public boolean hasNext() {
            return this.nextValue != null;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Integer next() {
            Integer num = this.nextValue;
            if (num != null) {
                fetch();
                return num;
            }
            throw new NoSuchElementException();
        }
    }

    public class RangeIterator implements Iterator<IntRange> {
        private Span current;

        public RangeIterator(Span span) {
            this.current = span;
        }

        @Override
        public boolean hasNext() {
            return this.current != null;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public IntRange next() {
            if (hasNext()) {
                Span span = this.current;
                this.current = span.next;
                return span;
            }
            throw new NoSuchElementException();
        }
    }

    @Override
    public void clear() {
        this.head = null;
    }

    @Override
    public boolean contains(Object obj) {
        if (obj instanceof Integer) {
            return contains(((Integer) obj).intValue());
        }
        return false;
    }

    @Override
    public boolean isEmpty() {
        return this.head == null;
    }

    @Override
    public Iterator<Integer> iterator() {
        return new IntegerIterator(this.head);
    }

    public Iterator<IntRange> rangeIterator() {
        return new RangeIterator(this.head);
    }

    @Override
    public boolean remove(Object obj) {
        if (obj instanceof Integer) {
            return remove(((Integer) obj).intValue());
        }
        if (obj != null) {
            return false;
        }
        throw new NullPointerException("Cannot add nulls");
    }

    @Override
    public int size() {
        int i10 = 0;
        for (Span span = this.head; span != null; span = span.next) {
            i10 += span.size;
        }
        return i10;
    }

    public IntRange[] toRangeArray() {
        int i10 = 0;
        int i11 = 0;
        for (Span span = this.head; span != null; span = span.next) {
            i11++;
        }
        IntRange[] intRangeArr = new IntRange[i11];
        Span span2 = this.head;
        while (span2 != null) {
            intRangeArr[i10] = new FixedIntRange(span2.getMinValue(), span2.getMaxValue());
            span2 = span2.next;
            i10++;
        }
        return intRangeArr;
    }

    @Override
    public boolean add(Integer num) {
        if (num != null) {
            return add(num.intValue());
        }
        throw new NullPointerException("Cannot add nulls");
    }

    public static class Span implements IntRange {
        int min;
        Span next;
        int size;

        public Span(int i10) {
            this.min = i10;
            this.size = 1;
        }

        public boolean contains(int i10) {
            return i10 >= this.min && i10 <= getMaxValue();
        }

        @Override
        public int getLength() {
            return this.size;
        }

        @Override
        public int getMaxValue() {
            return (this.min + this.size) - 1;
        }

        @Override
        public int getMinValue() {
            return this.min;
        }

        public void setMaxValue(int i10) {
            this.size = (i10 - this.min) + 1;
        }

        public void setRange(int i10, int i11) {
            this.min = i10;
            this.size = (i11 - i10) + 1;
        }

        public String toString() {
            return "Range[" + getMinValue() + s.f32937c + getMaxValue() + "]";
        }

        public Span(int i10, int i11) {
            this.min = i10;
            this.size = (i11 - i10) + 1;
        }
    }

    public boolean contains(int i10) {
        for (Span span = this.head; span != null; span = span.next) {
            if (span.contains(i10)) {
                return true;
            }
        }
        return false;
    }

    public boolean add(int i10) {
        Span span = this.head;
        if (span == null) {
            this.head = new Span(i10);
            return true;
        }
        Span span2 = null;
        while (span != null) {
            int i11 = span.min;
            if (i10 < i11 - 1) {
                Span span3 = new Span(i10);
                span3.next = span;
                if (span2 == null) {
                    this.head = span3;
                } else {
                    span2.next = span3;
                }
                return true;
            }
            if (i10 == i11 - 1) {
                span.min = i10;
                span.size++;
                return true;
            }
            if (span.contains(i10)) {
                return false;
            }
            int i12 = span.min;
            int i13 = span.size;
            if (i10 == i12 + i13) {
                int i14 = i13 + 1;
                span.size = i14;
                Span span4 = span.next;
                if (span4 != null && i10 == span4.min - 1) {
                    span.size = i14 + span4.size;
                    span.next = span4.next;
                }
                return true;
            }
            span2 = span;
            span = span.next;
        }
        span2.next = new Span(i10);
        return true;
    }

    public boolean remove(int i10) {
        Span span = this.head;
        if (span == null) {
            return false;
        }
        Span span2 = null;
        while (span != null && i10 >= span.min) {
            if (!span.contains(i10)) {
                span2 = span;
                span = span.next;
            } else {
                int i11 = span.min;
                if (i11 == i10) {
                    int i12 = span.size;
                    if (i12 > 1) {
                        span.min = i11 + 1;
                        span.size = i12 - 1;
                        return true;
                    }
                    if (span2 == null) {
                        this.head = span.next;
                    } else {
                        span2.next = span.next;
                    }
                    return true;
                }
                if (span.getMaxValue() == i10) {
                    span.size--;
                    return true;
                }
                Span span3 = new Span(i10 + 1, span.getMaxValue());
                span3.next = span.next;
                span.setMaxValue(i10 - 1);
                span.next = span3;
                return true;
            }
        }
        return false;
    }

    public boolean remove(IntRange intRange) {
        return remove(intRange.getMinValue(), intRange.getMaxValue());
    }

    public boolean remove(int i10, int i11) {
        Span span = this.head;
        boolean z10 = false;
        if (span == null) {
            return false;
        }
        Span span2 = null;
        while (span != null) {
            int i12 = span.min;
            if (i11 < i12) {
                return z10;
            }
            if (i10 <= i12 && i11 >= span.getMaxValue()) {
                if (span2 == null) {
                    this.head = span.next;
                } else {
                    span2.next = span.next;
                }
                if (i11 == span.getMaxValue()) {
                    return true;
                }
            } else {
                if (i10 <= span.min && span.contains(i11)) {
                    span.setRange(i11 + 1, span.getMaxValue());
                    return true;
                }
                if (span.contains(i10) && i11 >= span.getMaxValue()) {
                    span.setRange(span.min, i10 - 1);
                } else {
                    if (span.contains(i10) && span.contains(i11)) {
                        Span span3 = new Span(i11 + 1, span.getMaxValue());
                        span3.next = span.next;
                        span.setMaxValue(i10 - 1);
                        span.next = span3;
                        return true;
                    }
                    span2 = span;
                    span = span.next;
                }
            }
            z10 = true;
            span2 = span;
            span = span.next;
        }
        return z10;
    }
}
