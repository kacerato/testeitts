package F7;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.util.List;

public class i {

    public String f6679a;

    public j f6680b;

    public int f6681c;

    public boolean f6682d = false;

    public boolean f6683e = false;

    public final h f6684f = new h();

    public boolean f6685g = true;

    public final List<G7.a> f6686h = new SteppedArrayList();

    public final List<G7.a> f6687i = new SteppedArrayList();

    public c f6688j;

    public b f6689k;

    public m f6690l;

    public i(String path, j iconDrawer) {
        this.f6679a = path;
        this.f6680b = iconDrawer;
    }

    public i a(G7.a entry) {
        this.f6686h.add(entry);
        return this;
    }

    public i b(G7.a entry) {
        this.f6687i.add(entry);
        return this;
    }

    public boolean c() {
        return true;
    }

    public boolean d(i ol2) {
        return this.f6679a.equals(ol2.f6679a);
    }

    public int e() {
        return this.f6681c;
    }

    public String f() {
        return null;
    }

    public String g() {
        return null;
    }

    public List<G7.a> h() {
        return this.f6686h;
    }

    public j i() {
        return this.f6680b;
    }

    public List<G7.a> j() {
        return this.f6687i;
    }

    public int k() {
        return 0;
    }

    public boolean l() {
        return this.f6682d;
    }

    public boolean m() {
        return this.f6685g;
    }

    public boolean n() {
        b bVar = this.f6689k;
        return bVar != null && bVar.a() == this;
    }

    public m o(Context context, ViewGroup parent, LayoutInflater layoutInflater) {
        return new m(layoutInflater.inflate(R.layout.tree_list_view_default_item, parent, false));
    }

    public void p(Context context, m viewHolder) {
    }

    public void q(int depth) {
        this.f6681c = depth;
    }

    public void r(boolean haveChildren) {
        this.f6682d = haveChildren;
    }

    public void s(j iconDrawer) {
        this.f6680b = iconDrawer;
    }

    public void t(boolean selectable) {
        this.f6685g = selectable;
    }
}
