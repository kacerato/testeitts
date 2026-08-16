package j7;

import F7.m;
import Ic.C2633l;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;
import com.itsmagic.engine2.R;
import d8.j;
import l7.C14056a;

public class g extends e {

    public boolean f92641r;

    public g(String name, String path, d folder) {
        super(name, path, folder);
        this.f92641r = false;
    }

    @Override
    public void A(Context context, C14056a viewHolder) {
        JavaMetaInfo J10;
        super.A(context, viewHolder);
        if (!C2633l.b(this.f6679a, ".java") || (J10 = j.J(Tc.b.w(this.f6679a, true))) == null) {
            return;
        }
        if (J10.f72519i) {
            this.f92641r = true;
        } else {
            this.f92641r = false;
        }
    }

    @Override
    public int k() {
        return 3;
    }

    @Override
    public m o(Context context, ViewGroup parent, LayoutInflater layoutInflater) {
        return new m(layoutInflater.inflate(R.layout.tree_list_view_default_item, parent, false));
    }

    @Override
    public int w() {
        return this.f92641r ? R.color.colorAccent : super.w();
    }

    @Override
    public int y() {
        return this.f92641r ? R.color.colorAccent : super.y();
    }

    @Override
    public C14056a z(Context context, ViewGroup parent, LayoutInflater layoutInflater) {
        return new C14056a(layoutInflater.inflate(R.layout.editor3d_panel_files_content_view_item_horizontal, parent, false));
    }
}
