package Pd;

import Od.n;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;

public final class a implements ViewBinding {

    @NonNull
    public final AppCompatTextView f21261a;

    @NonNull
    public final AppCompatTextView f21262b;

    public a(@NonNull AppCompatTextView appCompatTextView, @NonNull AppCompatTextView appCompatTextView2) {
        this.f21261a = appCompatTextView;
        this.f21262b = appCompatTextView2;
    }

    @NonNull
    public static a a(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        AppCompatTextView appCompatTextView = (AppCompatTextView) view;
        return new a(appCompatTextView, appCompatTextView);
    }

    @NonNull
    public static a c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(n.j.f17546F, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override
    @NonNull
    public AppCompatTextView getRoot() {
        return this.f21261a;
    }
}
