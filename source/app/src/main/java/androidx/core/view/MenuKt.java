package androidx.core.view;

import Xf.InterfaceC3312m;
import android.view.Menu;
import android.view.MenuItem;
import java.util.Iterator;
import nf.P0;

public final class MenuKt {
    public static final boolean contains(Menu menu, MenuItem item) {
        kotlin.jvm.internal.M.p(menu, "<this>");
        kotlin.jvm.internal.M.p(item, "item");
        int size = menu.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (kotlin.jvm.internal.M.g(menu.getItem(i10), item)) {
                return true;
            }
        }
        return false;
    }

    public static final void forEach(Menu menu, Mf.l<? super MenuItem, P0> action) {
        kotlin.jvm.internal.M.p(menu, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int size = menu.size();
        for (int i10 = 0; i10 < size; i10++) {
            MenuItem item = menu.getItem(i10);
            kotlin.jvm.internal.M.o(item, "getItem(index)");
            action.invoke(item);
        }
    }

    public static final void forEachIndexed(Menu menu, Mf.p<? super Integer, ? super MenuItem, P0> action) {
        kotlin.jvm.internal.M.p(menu, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int size = menu.size();
        for (int i10 = 0; i10 < size; i10++) {
            Integer valueOf = Integer.valueOf(i10);
            MenuItem item = menu.getItem(i10);
            kotlin.jvm.internal.M.o(item, "getItem(index)");
            action.invoke(valueOf, item);
        }
    }

    public static final MenuItem get(Menu menu, int i10) {
        kotlin.jvm.internal.M.p(menu, "<this>");
        MenuItem item = menu.getItem(i10);
        kotlin.jvm.internal.M.o(item, "getItem(index)");
        return item;
    }

    public static final InterfaceC3312m<MenuItem> getChildren(final Menu menu) {
        kotlin.jvm.internal.M.p(menu, "<this>");
        return new InterfaceC3312m<MenuItem>() {
            @Override
            public Iterator<MenuItem> iterator() {
                return MenuKt.iterator(Menu.this);
            }
        };
    }

    public static final int getSize(Menu menu) {
        kotlin.jvm.internal.M.p(menu, "<this>");
        return menu.size();
    }

    public static final boolean isEmpty(Menu menu) {
        kotlin.jvm.internal.M.p(menu, "<this>");
        return menu.size() == 0;
    }

    public static final boolean isNotEmpty(Menu menu) {
        kotlin.jvm.internal.M.p(menu, "<this>");
        return menu.size() != 0;
    }

    public static final Iterator<MenuItem> iterator(Menu menu) {
        kotlin.jvm.internal.M.p(menu, "<this>");
        return new MenuKt$iterator$1(menu);
    }

    public static final void minusAssign(Menu menu, MenuItem item) {
        kotlin.jvm.internal.M.p(menu, "<this>");
        kotlin.jvm.internal.M.p(item, "item");
        menu.removeItem(item.getItemId());
    }

    public static final void removeItemAt(Menu menu, int i10) {
        P0 p02;
        kotlin.jvm.internal.M.p(menu, "<this>");
        MenuItem item = menu.getItem(i10);
        if (item != null) {
            menu.removeItem(item.getItemId());
            p02 = P0.f98194a;
        } else {
            p02 = null;
        }
        if (p02 == null) {
            throw new IndexOutOfBoundsException();
        }
    }
}
