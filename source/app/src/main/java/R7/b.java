package R7;

import F7.j;
import F7.m;
import android.content.Context;
import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.itsmagic.engine2.R;
import java.io.File;

public class b extends F7.i {

    public String f22607m;

    public boolean f22608n;

    public b(String path, j iconDrawer) {
        super(path, iconDrawer);
        this.f22607m = null;
    }

    public void A(Context context, T7.a viewHolder) {
        if (context == null || viewHolder == null) {
            return;
        }
        boolean z10 = viewHolder.f24103j != null;
        FrameLayout frameLayout = viewHolder.f24098e;
        int i10 = R.color.theme_card;
        if (frameLayout != null) {
            Vc.e.u(frameLayout, context, z10 ? R.color.theme_tree_list_row_2 : R.color.theme_card);
        }
        View view = viewHolder.f24102i;
        if (view != null) {
            if (!z10) {
                i10 = R.color.theme_tree_list_row_2;
            }
            Vc.e.u(view, context, i10);
        }
        View view2 = viewHolder.f24100g;
        if (view2 != null) {
            Vc.e.u(view2, context, R.color.theme_tree_list_row_2);
        }
        TextView textView = viewHolder.f24095b;
        if (textView != null) {
            textView.setTextColor(context.getResources().getColor(R.color.theme_high_text_color));
        }
        TextView textView2 = viewHolder.f24103j;
        if (textView2 != null) {
            textView2.setTextColor(context.getResources().getColor(R.color.theme_mid_text_color));
        }
        View view3 = viewHolder.f24099f;
        if (view3 instanceof ImageView) {
            ((ImageView) view3).setImageTintList(ColorStateList.valueOf(context.getResources().getColor(R.color.theme_high_icon_tint)));
        }
    }

    public void B(boolean allowLongPressSimulationAtTittleClick) {
        this.f22608n = allowLongPressSimulationAtTittleClick;
    }

    public void C(String description) {
        this.f22607m = description;
    }

    @Override
    public boolean c() {
        return this.f22608n;
    }

    @Override
    public String f() {
        return this.f22607m;
    }

    @Override
    public int k() {
        return -1;
    }

    @Override
    public m o(Context context, ViewGroup parent, LayoutInflater layoutInflater) {
        return new m(layoutInflater.inflate(R.layout.tree_list_view_default_item, parent, false));
    }

    public File u() {
        return new File(this.f6679a);
    }

    public int v() {
        return R.color.theme_tree_list_row_1;
    }

    public int w() {
        return R.color.white;
    }

    public int x() {
        return R.color.theme_primary_dark;
    }

    public int y() {
        return R.color.theme_high_text_color;
    }

    public T7.a z(Context context, ViewGroup parent, LayoutInflater layoutInflater) {
        throw new RuntimeException();
    }
}
