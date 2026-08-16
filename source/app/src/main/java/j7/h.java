package j7;

import F7.m;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.FolderManifest;
import com.itsmagic.engine2.R;
import l7.C14056a;

public class h extends f {

    public FolderManifest f92642q;

    public h(String name, String path) {
        super(name, path);
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
    public C14056a z(Context context, ViewGroup parent, LayoutInflater layoutInflater) {
        return new C14056a(layoutInflater.inflate(R.layout.editor3d_panel_files_content_view_item_horizontal, parent, false));
    }
}
