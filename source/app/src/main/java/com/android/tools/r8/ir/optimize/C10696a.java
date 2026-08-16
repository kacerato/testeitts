package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C6628bi;
import com.android.tools.r8.internal.C7119ef0;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C8331lu0;
import com.android.tools.r8.internal.QC;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;

public class C10696a implements Set<C10340xw0> {

    public static final C10696a f54828c;

    public final Set f54829b;

    static {
        int i10 = QC.f43505c;
        f54828c = new C10696a(C7119ef0.f47742j);
    }

    public C10696a() {
        this.f54829b = AbstractC5513Ll0.c();
    }

    public final boolean a(C10340xw0 c10340xw0) {
        return this.f54829b.add(c10340xw0);
    }

    @Override
    public final boolean add(Object obj) {
        return this.f54829b.add((C10340xw0) obj);
    }

    @Override
    public final boolean addAll(Collection collection) {
        return this.f54829b.addAll(collection);
    }

    public final void b(C4798y c4798y, C7215fB c7215fB, Consumer consumer) {
        if (this.f54829b.isEmpty()) {
            return;
        }
        C8331lu0 c8331lu0 = new C8331lu0(c4798y, c7215fB, false);
        consumer.accept(c8331lu0);
        Consumer b10 = C6628bi.b();
        c8331lu0.a(this, 4);
        c8331lu0.a(b10);
        this.f54829b.clear();
    }

    @Override
    public final void clear() {
        this.f54829b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f54829b.contains(obj);
    }

    @Override
    public final boolean containsAll(Collection collection) {
        return this.f54829b.containsAll(collection);
    }

    @Override
    public final boolean isEmpty() {
        return this.f54829b.isEmpty();
    }

    @Override
    public final Iterator iterator() {
        return this.f54829b.iterator();
    }

    @Override
    public final boolean remove(Object obj) {
        return this.f54829b.remove(obj);
    }

    @Override
    public final boolean removeAll(Collection collection) {
        return this.f54829b.removeAll(collection);
    }

    @Override
    public final boolean retainAll(Collection collection) {
        return this.f54829b.retainAll(collection);
    }

    @Override
    public final int size() {
        return this.f54829b.size();
    }

    @Override
    public final Object[] toArray() {
        return this.f54829b.toArray();
    }

    public final void a(Predicate predicate, C10340xw0 c10340xw0) {
        for (C10340xw0 c10340xw02 : c10340xw0.a().f54829b) {
            if (c10340xw02.x() && !predicate.test(c10340xw02.b())) {
                this.f54829b.add(c10340xw02);
            }
        }
    }

    @Override
    public final Object[] toArray(Object[] objArr) {
        return this.f54829b.toArray(objArr);
    }

    public C10696a(C7119ef0 c7119ef0) {
        this.f54829b = c7119ef0;
    }

    public final void a(C4798y c4798y, C7215fB c7215fB, Consumer consumer) {
        if (this.f54829b.isEmpty()) {
            return;
        }
        C8331lu0 c8331lu0 = new C8331lu0(c4798y, c7215fB, false);
        consumer.accept(c8331lu0);
        c8331lu0.a(this, C6628bi.b());
        this.f54829b.clear();
    }
}
