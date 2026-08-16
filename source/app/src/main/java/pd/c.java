package Pd;

import Od.n;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;

public final class c implements ViewBinding {

    @NonNull
    public final LinearLayout f21266a;

    @NonNull
    public final LinearLayout f21267b;

    @NonNull
    public final AppCompatTextView f21268c;

    public c(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull AppCompatTextView appCompatTextView) {
        this.f21266a = linearLayout;
        this.f21267b = linearLayout2;
        this.f21268c = appCompatTextView;
    }

    @NonNull
    public static c a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i10 = n.g.f17444a1;
        AppCompatTextView appCompatTextView = (AppCompatTextView) view.findViewById(i10);
        if (appCompatTextView != null) {
            return new c((LinearLayout) view, linearLayout, appCompatTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static c c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static c d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(n.j.f17548H, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override
    @NonNull
    public LinearLayout getRoot() {
        return this.f21266a;
    }
}
