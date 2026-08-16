package u5;

import F7.i;
import F7.m;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.util.List;
import l7.C14056a;

public class e extends j7.d {

    public final List<i> f118513p;

    public e(String name, String path) {
        super(name, path);
        this.f118513p = new SteppedArrayList();
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
