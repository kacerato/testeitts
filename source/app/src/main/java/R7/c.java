package R7;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.itsmagic.engine2.R;

public class c extends b {

    public String f22609o;

    public d f22610p;

    public c(String name, String path, d folder) {
        super(path, new U7.a());
        this.f22609o = name;
        this.f22610p = folder;
    }

    @Override
    public String g() {
        return this.f22609o;
    }

    @Override
    public int k() {
        return 1;
    }

    @Override
    public T7.a z(Context context, ViewGroup parent, LayoutInflater layoutInflater) {
        return new T7.a(layoutInflater.inflate(R.layout.editor3d_panel_files_content_view_item_horizontal, parent, false));
    }
}
