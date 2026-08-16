package B5;

import C5.b;
import C5.h;
import C5.n;
import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

public class a {

    public LinearLayout f1507a;

    public LinearLayout f1508b;

    public View f1509c;

    public RecyclerView f1510d;

    public Activity f1511e;

    public LayoutInflater f1512f;

    public class C0030a implements n {

        public final b f1513a;

        public final List f1514b;

        public final LinearLayout f1515c;

        public C0030a(final b val$entriesListener, final List val$entries, final LinearLayout val$content) {
            this.f1513a = val$entriesListener;
            this.f1514b = val$entries;
            this.f1515c = val$content;
        }

        @Override
        public void refresh(int position) {
            b bVar = this.f1513a;
            if (bVar != null) {
                bVar.a(this.f1514b);
            } else {
                a.this.g(this.f1514b, this.f1515c, true, bVar);
            }
        }
    }

    public a(View scrollView, LinearLayout scrollContent, LinearLayout topContent, RecyclerView listView, Activity context, LayoutInflater layoutInflater) {
        this.f1507a = topContent;
        this.f1509c = scrollView;
        this.f1508b = scrollContent;
        this.f1510d = listView;
        this.f1511e = context;
        this.f1512f = layoutInflater;
        scrollView.setVisibility(8);
        this.f1508b.setVisibility(8);
        this.f1507a.setVisibility(8);
        this.f1510d.setVisibility(8);
    }

    public void a() {
        try {
            LinearLayout linearLayout = this.f1507a;
            if (linearLayout != null) {
                linearLayout.removeAllViews();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void b(int position) {
    }

    public void c() {
    }

    public void d() {
    }

    public void e(List<C5.b> entries, LinearLayout content) {
        g(entries, content, true, null);
    }

    public void f(List<C5.b> entries, LinearLayout content, boolean clearViews) {
        g(entries, content, clearViews, null);
    }

    public void g(List<C5.b> entries, LinearLayout content, boolean clearViews, b entriesListener) {
        if (clearViews) {
            content.removeAllViews();
        }
        for (C5.b bVar : entries) {
            b.a aVar = bVar.f2079n;
            if (aVar == b.a.Vector) {
                h.y(content, this.f1512f, bVar, 0, this.f1511e);
            } else if (aVar == b.a.Component) {
                h.w(content, this.f1512f, bVar, 0, this.f1511e, new C0030a(entriesListener, entries, content));
            } else {
                h.x(content, this.f1512f, bVar, 0, true, this.f1511e);
            }
        }
    }

    public void h() {
    }
}
