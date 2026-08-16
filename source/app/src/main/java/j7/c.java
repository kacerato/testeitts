package j7;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.itsmagic.engine2.R;
import l7.C14056a;
import m7.C14189a;

public class c extends b {

    public String f92636o;

    public d f92637p;

    public c(String name, String path, d folder) {
        super(path, new C14189a());
        this.f92636o = name;
        this.f92637p = folder;
    }

    @Override
    public String g() {
        return this.f92636o;
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
