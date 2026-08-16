package Pd;

import Od.n;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;

public final class b implements ViewBinding {

    @NonNull
    public final FrameLayout f21263a;

    @NonNull
    public final FrameLayout f21264b;

    @NonNull
    public final RecyclerView f21265c;

    public b(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull RecyclerView recyclerView) {
        this.f21263a = frameLayout;
        this.f21264b = frameLayout2;
        this.f21265c = recyclerView;
    }

    @NonNull
    public static b a(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i10 = n.g.f17460e1;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(i10);
        if (recyclerView != null) {
            return new b((FrameLayout) view, frameLayout, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static b c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static b d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(n.j.f17547G, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override
    @NonNull
    public FrameLayout getRoot() {
        return this.f21263a;
    }
}
