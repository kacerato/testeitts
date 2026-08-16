package com.android.tools.r8.internal;

import java.util.ListIterator;
import java.util.NoSuchElementException;

public final class ND implements ListIterator {

    public H f42538b;

    public H f42539c;

    public H f42540d;

    public final OD f42541e;

    public ND(OD od2) {
        this.f42541e = od2;
        int i10 = od2.f42824b;
        if (i10 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i10 == 0) {
            this.f42538b = null;
            this.f42539c = od2.f42826d;
        } else {
            H h10 = od2.f42825c;
            this.f42538b = h10;
            this.f42539c = h10.f40642d;
        }
    }

    @Override
    public final void add(Object obj) {
        H h10 = this.f42538b;
        if (h10 != null) {
            OD od2 = this.f42541e;
            H h11 = (H) obj;
            od2.f42824b++;
            H h12 = h10.f40642d;
            if (h12 == null) {
                od2.f42825c = h11;
            } else {
                h12.f40643e = h11;
            }
            h10.f40642d = h11;
            h11.f40643e = h10;
            h11.f40642d = h12;
            od2.f42827e = null;
            h11.f40644f = 0;
        } else {
            H h13 = this.f42539c;
            if (h13 != null) {
                OD od3 = this.f42541e;
                H h14 = (H) obj;
                od3.f42824b++;
                H h15 = h13.f40643e;
                if (h15 == null) {
                    od3.f42826d = h14;
                } else {
                    h15.f40642d = h14;
                }
                h13.f40643e = h14;
                h14.f40643e = h15;
                h14.f40642d = h13;
                od3.f42827e = null;
                h14.f40644f = 0;
            } else {
                this.f42541e.a((H) obj);
            }
        }
        this.f42539c = (H) obj;
        this.f42540d = null;
    }

    @Override
    public final boolean hasNext() {
        return this.f42538b != null;
    }

    @Override
    public final boolean hasPrevious() {
        return this.f42539c != null;
    }

    @Override
    public final Object next() {
        H h10 = this.f42538b;
        if (h10 == null) {
            throw new NoSuchElementException();
        }
        this.f42539c = h10;
        this.f42538b = h10.f40643e;
        this.f42540d = h10;
        return h10;
    }

    @Override
    public final int nextIndex() {
        if (this.f42538b == null) {
            return this.f42541e.f42824b;
        }
        OD od2 = this.f42541e;
        if (od2.f42827e == null) {
            od2.f42827e = od2.a();
        }
        return this.f42538b.f40644f;
    }

    @Override
    public final Object previous() {
        H h10 = this.f42539c;
        if (h10 == null) {
            throw new NoSuchElementException();
        }
        this.f42538b = h10;
        this.f42539c = h10.f40642d;
        this.f42540d = h10;
        return h10;
    }

    @Override
    public final int previousIndex() {
        if (this.f42539c == null) {
            return -1;
        }
        OD od2 = this.f42541e;
        if (od2.f42827e == null) {
            od2.f42827e = od2.a();
        }
        return this.f42539c.f40644f;
    }

    @Override
    public final void remove() {
        H h10 = this.f42540d;
        if (h10 == null) {
            throw new IllegalStateException();
        }
        H h11 = this.f42538b;
        if (h10 == h11) {
            this.f42538b = h11.f40643e;
        } else {
            this.f42539c = this.f42539c.f40642d;
        }
        OD od2 = this.f42541e;
        od2.f42824b--;
        H h12 = h10.f40643e;
        H h13 = h10.f40642d;
        if (h12 == null) {
            if (h13 == null) {
                od2.f42825c = null;
                od2.f42826d = null;
            } else {
                h13.f40643e = null;
                od2.f42826d = h13;
            }
        } else if (h13 == null) {
            od2.f42825c = h12;
            h12.f40642d = null;
        } else {
            h13.f40643e = h12;
            h12.f40642d = h13;
        }
        od2.f42827e = null;
        h10.f40644f = -1;
        h10.f40642d = null;
        h10.f40643e = null;
        this.f42540d = null;
    }

    @Override
    public final void set(Object obj) {
        H h10 = this.f42540d;
        if (h10 == null) {
            throw new IllegalStateException();
        }
        OD od2 = this.f42541e;
        H h11 = (H) obj;
        od2.getClass();
        H h12 = h10.f40643e;
        h11.f40643e = h12;
        if (h12 != null) {
            h12.f40642d = h11;
        } else {
            od2.f42826d = h11;
        }
        H h13 = h10.f40642d;
        h11.f40642d = h13;
        if (h13 != null) {
            h13.f40643e = h11;
        } else {
            od2.f42825c = h11;
        }
        H[] hArr = od2.f42827e;
        if (hArr != null) {
            int i10 = h10.f40644f;
            hArr[i10] = h11;
            h11.f40644f = i10;
        } else {
            h11.f40644f = 0;
        }
        h10.f40644f = -1;
        h10.f40642d = null;
        h10.f40643e = null;
        if (this.f42540d == this.f42539c) {
            this.f42539c = h11;
        } else {
            this.f42538b = h11;
        }
    }
}
