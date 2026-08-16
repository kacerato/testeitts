package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;

public final class ViewGroupKt$iterator$1 implements Iterator<View>, Nf.d {
    final ViewGroup $this_iterator;
    private int index;

    public ViewGroupKt$iterator$1(ViewGroup viewGroup) {
        this.$this_iterator = viewGroup;
    }

    @Override
    public boolean hasNext() {
        return this.index < this.$this_iterator.getChildCount();
    }

    @Override
    public void remove() {
        ViewGroup viewGroup = this.$this_iterator;
        int i10 = this.index - 1;
        this.index = i10;
        viewGroup.removeViewAt(i10);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public View next() {
        ViewGroup viewGroup = this.$this_iterator;
        int i10 = this.index;
        this.index = i10 + 1;
        View childAt = viewGroup.getChildAt(i10);
        if (childAt != null) {
            return childAt;
        }
        throw new IndexOutOfBoundsException();
    }
}
