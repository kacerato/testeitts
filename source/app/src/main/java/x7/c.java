package x7;

import android.view.View;
import android.widget.TextView;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine2.R;

public class c {

    public final Vector2 f127975a;

    public String f127976b;

    public c() {
        this.f127975a = new Vector2();
    }

    public int a() {
        return R.layout.view_node;
    }

    public Vector2 b() {
        return this.f127975a;
    }

    public String c() {
        return this.f127976b;
    }

    public void d(View v10) {
        ((TextView) v10.findViewById(R.id.title)).setText(c());
    }

    public void e(String title) {
        this.f127976b = title;
    }

    public c(String title, Vector2 position) {
        Vector2 vector2 = new Vector2();
        this.f127975a = vector2;
        this.f127976b = title;
        vector2.x0(position);
    }
}
