package com.android.tools.r8.internal;

import java.util.AbstractCollection;
import org.apache.commons.math3.geometry.VectorFormat;

public abstract class AbstractC6519b1 extends AbstractCollection implements InterfaceC10028w30 {
    @Override
    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        A30 it = iterator();
        int size = size();
        boolean z10 = true;
        while (true) {
            int i10 = size - 1;
            if (size == 0) {
                sb2.append(VectorFormat.DEFAULT_SUFFIX);
                return sb2.toString();
            }
            if (z10) {
                z10 = false;
            } else {
                sb2.append(", ");
            }
            Object next = it.next();
            if (this == next) {
                sb2.append("(this collection)");
            } else {
                sb2.append(String.valueOf(next));
            }
            size = i10;
        }
    }
}
