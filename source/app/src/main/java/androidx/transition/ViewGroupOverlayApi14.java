package androidx.transition;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

public class ViewGroupOverlayApi14 extends ViewOverlayApi14 implements ViewGroupOverlayImpl {
    public ViewGroupOverlayApi14(Context context, ViewGroup viewGroup, View view) {
        super(context, viewGroup, view);
    }

    public static ViewGroupOverlayApi14 createFrom(ViewGroup viewGroup) {
        return (ViewGroupOverlayApi14) ViewOverlayApi14.createFrom(viewGroup);
    }

    @Override
    public void add(View view) {
        this.mOverlayViewGroup.add(view);
    }

    @Override
    public void remove(View view) {
        this.mOverlayViewGroup.remove(view);
    }
}
