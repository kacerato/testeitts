package o7;

import Nc.b;
import android.annotation.SuppressLint;
import android.content.Context;
import android.view.ViewTreeObserver;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

@SuppressLint({"NotifyDataSetChanged"})
public class C14486a {

    public final RecyclerView.Adapter f98603a;

    public final GridLayoutManager f98604b;

    public final RecyclerView f98605c;

    public final int f98606d;

    public final int f98607e;

    public int f98608f = -1;

    public int f98609g = -1;

    public class ViewTreeObserverOnGlobalLayoutListenerC1888a implements ViewTreeObserver.OnGlobalLayoutListener {
        public ViewTreeObserverOnGlobalLayoutListenerC1888a() {
        }

        @Override
        public void onGlobalLayout() {
            C14486a.this.c();
        }
    }

    public C14486a(Context context, RecyclerView recyclerView, RecyclerView.Adapter adapter, int wantedWidthDP) {
        adapter.getClass();
        context.getClass();
        recyclerView.getClass();
        this.f98605c = recyclerView;
        this.f98603a = adapter;
        this.f98607e = wantedWidthDP;
        this.f98606d = b.l0(wantedWidthDP, context);
        recyclerView.setHasFixedSize(true);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(context, 1);
        this.f98604b = gridLayoutManager;
        recyclerView.setLayoutManager(gridLayoutManager);
        c();
        recyclerView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserverOnGlobalLayoutListenerC1888a());
    }

    public int a() {
        return this.f98604b.findLastVisibleItemPosition();
    }

    public int b() {
        return this.f98604b.getSpanCount();
    }

    public void c() {
        int width = this.f98605c.getWidth();
        if (width == this.f98609g || width == 0) {
            return;
        }
        this.f98609g = width;
        int N10 = b.N(1, width / this.f98606d);
        while (width / N10 <= this.f98606d && N10 > 1) {
            N10--;
        }
        if (N10 != this.f98608f) {
            this.f98608f = N10;
            this.f98604b.setSpanCount(N10);
            this.f98603a.notifyDataSetChanged();
        }
    }
}
