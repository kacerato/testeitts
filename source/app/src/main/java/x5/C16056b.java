package x5;

import F7.i;
import F7.j;
import Vc.e;
import android.content.Context;
import android.widget.ImageView;
import com.itsmagic.engine2.R;
import java.util.List;
import x5.d;
import yd.C16181m;

public class C16056b extends d {

    public final List<j7.b> f127953p;

    public class a implements j {
        public a() {
        }

        @Override
        public void a(Context context, ImageView imageView, ImageView subIconImageView, i eElement) {
            e.V(imageView, R.drawable.folder_blue, context);
        }
    }

    public C16056b(String tittle, List<j7.b> children) {
        super(tittle);
        this.f6680b = new a();
        r(false);
        this.f6679a = C16181m.f130230g + Tc.b.d(tittle);
        super.r(true);
        this.f127953p = children;
    }

    @Override
    public void D(List<j7.b> out, d.a listInterface) {
        out.addAll(this.f127953p);
    }

    @Override
    public void E(List<j7.b> out) {
        out.addAll(this.f127953p);
    }

    public void F() {
        G("#/");
    }

    public void G(String parent) {
        this.f6679a = parent + Tc.b.d(this.f92638o);
        for (j7.b bVar : this.f127953p) {
            if (bVar instanceof d) {
                d dVar = (d) bVar;
                dVar.f6679a = this.f6679a + "/" + dVar.f92638o;
            } else if (bVar instanceof C16056b) {
                ((C16056b) bVar).G(this.f6679a + "/");
            }
        }
    }
}
