package x5;

import F7.m;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.itsmagic.engine2.R;
import java.util.List;
import l7.C14056a;
import yd.C16181m;

public class d extends j7.d {

    public interface a {
        void a(j7.b element, d origin);

        void onFinish();
    }

    public d(String name) {
        super(name, "");
        this.f6679a = C16181m.f130230g + Tc.b.d(name);
    }

    public void D(List<j7.b> out, a listInterface) {
    }

    public void E(List<j7.b> out) {
    }

    @Override
    public m o(Context context, ViewGroup parent, LayoutInflater layoutInflater) {
        return new m(layoutInflater.inflate(R.layout.tree_list_view_default_item, parent, false));
    }

    @Override
    public C14056a z(Context context, ViewGroup parent, LayoutInflater layoutInflater) {
        return new C14056a(layoutInflater.inflate(R.layout.editor3d_panel_files_content_view_item, parent, false));
    }
}
