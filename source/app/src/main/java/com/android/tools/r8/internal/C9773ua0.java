package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.LinkedList;

public final class C9773ua0 {

    public final com.android.tools.r8.graph.H5 f52879a;

    public final int f52880b;

    public final LinkedList f52881c;

    public final LinkedList f52882d;

    public final LinkedList f52883e;

    public C9773ua0(com.android.tools.r8.graph.H5 h52, int i10, LinkedList linkedList, LinkedList linkedList2, LinkedList linkedList3) {
        this.f52879a = h52;
        this.f52880b = i10;
        this.f52881c = linkedList;
        this.f52882d = linkedList2;
        this.f52883e = linkedList3;
    }

    public final boolean a() {
        LinkedList linkedList = this.f52881c;
        return (linkedList == null || linkedList.isEmpty()) ? false : true;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("ProtoMessageInfo(fields=[");
        if (a()) {
            Iterator<E> it = this.f52881c.iterator();
            sb2.append(it.next());
            while (it.hasNext()) {
                sb2.append(", ");
                sb2.append(it.next());
            }
        }
        sb2.append("])");
        return sb2.toString();
    }
}
