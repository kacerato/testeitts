package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.Stack;

public final class C5221Gk0 {

    public final Stack f40577a = new Stack();

    public final void a(AbstractC8206l8 abstractC8206l8) {
        if (!abstractC8206l8.b()) {
            if (abstractC8206l8 instanceof C5395Jk0) {
                C5395Jk0 c5395Jk0 = (C5395Jk0) abstractC8206l8;
                a(c5395Jk0.f41491e);
                a(c5395Jk0.f41492f);
                return;
            } else {
                String valueOf = String.valueOf(abstractC8206l8.getClass());
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 49);
                sb2.append("Has a new type of ByteString been created? Found ");
                sb2.append(valueOf);
                throw new IllegalArgumentException(sb2.toString());
            }
        }
        int size = abstractC8206l8.size();
        int[] iArr = C5395Jk0.f41489j;
        int binarySearch = Arrays.binarySearch(iArr, size);
        if (binarySearch < 0) {
            binarySearch = (-(binarySearch + 1)) - 1;
        }
        int i10 = iArr[binarySearch + 1];
        if (this.f40577a.isEmpty() || ((AbstractC8206l8) this.f40577a.peek()).size() >= i10) {
            this.f40577a.push(abstractC8206l8);
            return;
        }
        int i11 = iArr[binarySearch];
        AbstractC8206l8 abstractC8206l82 = (AbstractC8206l8) this.f40577a.pop();
        while (!this.f40577a.isEmpty() && ((AbstractC8206l8) this.f40577a.peek()).size() < i11) {
            abstractC8206l82 = new C5395Jk0((AbstractC8206l8) this.f40577a.pop(), abstractC8206l82);
        }
        C5395Jk0 c5395Jk02 = new C5395Jk0(abstractC8206l82, abstractC8206l8);
        while (!this.f40577a.isEmpty()) {
            int i12 = c5395Jk02.f41490d;
            int[] iArr2 = C5395Jk0.f41489j;
            int binarySearch2 = Arrays.binarySearch(iArr2, i12);
            if (binarySearch2 < 0) {
                binarySearch2 = (-(binarySearch2 + 1)) - 1;
            }
            if (((AbstractC8206l8) this.f40577a.peek()).size() >= iArr2[binarySearch2 + 1]) {
                break;
            } else {
                c5395Jk02 = new C5395Jk0((AbstractC8206l8) this.f40577a.pop(), c5395Jk02);
            }
        }
        this.f40577a.push(c5395Jk02);
    }
}
