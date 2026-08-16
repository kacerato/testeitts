package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;

public final class AdapterListUpdateCallback implements ListUpdateCallback {
    private final RecyclerView.Adapter mAdapter;

    public AdapterListUpdateCallback(RecyclerView.Adapter adapter) {
        this.mAdapter = adapter;
    }

    @Override
    public void onChanged(int i10, int i11, Object obj) {
        this.mAdapter.notifyItemRangeChanged(i10, i11, obj);
    }

    @Override
    public void onInserted(int i10, int i11) {
        this.mAdapter.notifyItemRangeInserted(i10, i11);
    }

    @Override
    public void onMoved(int i10, int i11) {
        this.mAdapter.notifyItemMoved(i10, i11);
    }

    @Override
    public void onRemoved(int i10, int i11) {
        this.mAdapter.notifyItemRangeRemoved(i10, i11);
    }
}
