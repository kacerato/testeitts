package com.android.tools.r8.internal;

import com.android.tools.r8.inspector.Inspector;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;

public final class QD implements Inspector {

    public final Collection f43506a;

    public QD(Collection collection) {
        this.f43506a = collection;
    }

    public static List a(Collection collection) {
        if (collection != null && !collection.isEmpty()) {
            ArrayList arrayList = new ArrayList(collection.size());
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                final Consumer consumer = (Consumer) it.next();
                Objects.requireNonNull(consumer);
                arrayList.add(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        Consumer.this.accept((QD) obj);
                    }
                });
            }
            return arrayList;
        }
        return Collections.EMPTY_LIST;
    }

    @Override
    public final void forEachClass(Consumer consumer) {
        Iterator it = this.f43506a.iterator();
        while (it.hasNext()) {
            consumer.accept(new C6779cd((com.android.tools.r8.graph.H2) it.next()));
        }
    }

    public static void a(List list, Collection collection) {
        if (list == null || list.isEmpty()) {
            return;
        }
        QD qd2 = new QD(collection);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Consumer) it.next()).accept(qd2);
        }
    }
}
