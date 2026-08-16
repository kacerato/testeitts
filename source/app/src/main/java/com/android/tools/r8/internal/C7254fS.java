package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;

public final class C7254fS extends AbstractC10102wY {

    public static final boolean f47974c = true;

    public final int f47975b;

    public C7254fS(C4798y c4798y) {
        int i10;
        if (c4798y.m()) {
            i10 = c4798y.E().K().d();
        } else {
            c4798y.E().K().getClass();
            i10 = 100;
        }
        this.f47975b = i10;
        if (!f47974c && i10 < 2) {
            throw new AssertionError();
        }
    }

    @Override
    public final Collection a(AA aa2) {
        if (aa2.f38553b.size() <= this.f47975b || aa2.j()) {
            return Collections.singletonList(aa2);
        }
        LinkedList linkedList = new LinkedList();
        AA aa3 = new AA();
        linkedList.add(aa3);
        Iterator<E> it = aa2.f38553b.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            if (aa3.f38553b.size() == this.f47975b) {
                aa3 = new AA();
                linkedList.add(aa3);
            }
            aa3.f38553b.add(h22);
        }
        if (aa3.f38553b.size() == 1) {
            if (this.f47975b == 2) {
                AA aa4 = (AA) linkedList.removeLast();
                if (!f47974c && aa4 != aa3) {
                    throw new AssertionError();
                }
            } else {
                aa3.f38553b.add((com.android.tools.r8.graph.H2) ((AA) linkedList.getFirst()).f38553b.removeLast());
            }
        }
        return linkedList;
    }

    @Override
    public final String f() {
        return "LimitGroups";
    }

    @Override
    public final boolean g() {
        return true;
    }
}
