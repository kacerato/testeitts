package androidx.core.view;

import android.view.Menu;
import android.view.MenuItem;
import java.util.Iterator;
import nf.P0;

public final class MenuKt$iterator$1 implements Iterator<MenuItem>, Nf.d {
    final Menu $this_iterator;
    private int index;

    public MenuKt$iterator$1(Menu menu) {
        this.$this_iterator = menu;
    }

    @Override
    public boolean hasNext() {
        return this.index < this.$this_iterator.size();
    }

    @Override
    public void remove() {
        P0 p02;
        Menu menu = this.$this_iterator;
        int i10 = this.index - 1;
        this.index = i10;
        MenuItem item = menu.getItem(i10);
        if (item != null) {
            kotlin.jvm.internal.M.o(item, "getItem(index)");
            menu.removeItem(item.getItemId());
            p02 = P0.f98194a;
        } else {
            p02 = null;
        }
        if (p02 == null) {
            throw new IndexOutOfBoundsException();
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public MenuItem next() {
        Menu menu = this.$this_iterator;
        int i10 = this.index;
        this.index = i10 + 1;
        MenuItem item = menu.getItem(i10);
        if (item != null) {
            return item;
        }
        throw new IndexOutOfBoundsException();
    }
}
