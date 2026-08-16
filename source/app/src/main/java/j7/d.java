package j7;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.itsmagic.engine2.R;
import l7.C14056a;
import m7.C14190b;

public class d extends b {

    public String f92638o;

    public d(String name, String path) {
        super(path, new C14190b());
        this.f92638o = name;
        this.f6679a = path;
    }

    @Override
    public String g() {
        return this.f92638o;
    }

    @Override
    public int k() {
        return 1;
    }

    @Override
    public C14056a z(Context context, ViewGroup parent, LayoutInflater layoutInflater) {
        return new C14056a(layoutInflater.inflate(R.layout.editor3d_panel_files_content_view_item_horizontal, parent, false));
    }
}
