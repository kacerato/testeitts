package R7;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.itsmagic.engine2.R;

public class d extends b {

    public String f22611o;

    public d(String name, String path) {
        super(path, new U7.b());
        this.f22611o = name;
        this.f6679a = path;
    }

    @Override
    public String g() {
        return this.f22611o;
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
