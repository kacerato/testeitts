package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C6673bx implements Iterator {

    public final Iterator f46902b;

    public int f46903c = -1;

    public Object f46904d;

    public final C6839cx f46905e;

    public C6673bx(C6839cx c6839cx) {
        this.f46905e = c6839cx;
        this.f46902b = c6839cx.f47211a.iterator();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002e, code lost:
    
        r5.f46903c = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0032, code lost:
    
        if (r5.f46903c != 1) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0034, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0035, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0005, code lost:
    
        if (r5.f46903c == (-1)) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000d, code lost:
    
        if (r5.f46902b.hasNext() == false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
    
        r0 = r5.f46902b.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0027, code lost:
    
        if (((java.lang.Boolean) r5.f46905e.f47213c.a(r0)).booleanValue() != r5.f46905e.f47212b) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0029, code lost:
    
        r5.f46904d = r0;
        r5.f46903c = 1;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean hasNext() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002d, code lost:
    
        r4.f46903c = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0032, code lost:
    
        if (r4.f46903c == 0) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0034, code lost:
    
        r0 = r4.f46904d;
        r4.f46904d = null;
        r4.f46903c = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003b, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0041, code lost:
    
        throw new java.util.NoSuchElementException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0003, code lost:
    
        if (r4.f46903c == (-1)) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000b, code lost:
    
        if (r4.f46902b.hasNext() == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000d, code lost:
    
        r0 = r4.f46902b.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0025, code lost:
    
        if (((java.lang.Boolean) r4.f46905e.f47213c.a(r0)).booleanValue() != r4.f46905e.f47212b) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0027, code lost:
    
        r4.f46904d = r0;
        r4.f46903c = 1;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object next() {
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
