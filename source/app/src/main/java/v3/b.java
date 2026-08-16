package v3;

import android.view.View;
import java.util.HashMap;
import java.util.Map;

public class b {

    public Map<String, View> f121170a = new HashMap();

    public View a(String key) {
        return this.f121170a.get(key);
    }

    public void b(String key, View view) {
        this.f121170a.put(key, view);
    }
}
