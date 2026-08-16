package j7;

import F7.j;
import F7.m;
import android.content.Context;
import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine2.R;
import java.io.File;
import l7.C14056a;

public class b extends F7.i {

    public String f92634m;

    public boolean f92635n;

    public b(String path, j iconDrawer) {
        super(path, iconDrawer);
        this.f92634m = null;
    }

    public void A(Context context, C14056a viewHolder) {
        if (context == null || viewHolder == null) {
            return;
        }
        boolean z10 = viewHolder.f96189j != null;
        if (viewHolder.f96184e != null) {
            Vc.e.t(viewHolder.f96184e, context, Theme.i(z10 ? Theme.T.TREE_LIST_ROW2 : Theme.T.CARD));
        }
        if (viewHolder.f96188i != null) {
            Vc.e.t(viewHolder.f96188i, context, Theme.i(z10 ? Theme.T.CARD : Theme.T.TREE_LIST_ROW2));
        }
        View view = viewHolder.f96186g;
        if (view != null) {
            Vc.e.t(view, context, Theme.i(Theme.T.TREE_LIST_ROW2));
        }
        TextView textView = viewHolder.f96181b;
        if (textView != null) {
            textView.setTextColor(Theme.i(Theme.T.HIGH_TEXT_COLOR));
        }
        TextView textView2 = viewHolder.f96189j;
        if (textView2 != null) {
            textView2.setTextColor(Theme.i(Theme.T.MID_TEXT_COLOR));
        }
        View view2 = viewHolder.f96185f;
        if (view2 instanceof ImageView) {
            ((ImageView) view2).setImageTintList(ColorStateList.valueOf(Theme.i(Theme.T.HIGH_ICON_TINT)));
        }
    }

    public void B(boolean allowLongPressSimulationAtTittleClick) {
        this.f92635n = allowLongPressSimulationAtTittleClick;
    }

    public void C(String description) {
        this.f92634m = description;
    }

    @Override
    public boolean c() {
        return this.f92635n;
    }

    @Override
    public String f() {
        return this.f92634m;
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
        return Theme.i(Theme.T.TREE_LIST_ROW1);
    }

    public int w() {
        return R.color.white;
    }

    public int x() {
        return Theme.i(Theme.T.PRIMARY_DARK);
    }

    public int y() {
        return Theme.i(Theme.T.HIGH_TEXT_COLOR);
    }

    public C14056a z(Context context, ViewGroup parent, LayoutInflater layoutInflater) {
        throw new RuntimeException();
    }
}
