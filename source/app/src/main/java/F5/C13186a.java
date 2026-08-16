package f5;

import android.view.View;
import java.util.List;

public class C13186a extends C13189d {

    public final String f86079g;

    public List<b> f86080h;

    public interface InterfaceC1598a {
        void a(C13189d viewMode);
    }

    public static abstract class b {

        public final String f86081a;

        public b(String title) {
            this.f86081a = title;
        }

        public String a() {
            return this.f86081a;
        }

        public abstract void b(View v10, InterfaceC1598a callback);
    }

    public C13186a(String title, List<b> items) {
        this.f86079g = title;
        this.f86080h = items;
    }

    public List<b> H() {
        return this.f86080h;
    }

    @Override
    public String i() {
        return this.f86079g;
    }
}
