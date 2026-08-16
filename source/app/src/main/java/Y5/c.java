package Y5;

import H7.d;
import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.Objects.Product;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.v2.Package;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine2.R;
import java.util.List;

public class c extends H7.d {

    public final d f29766g;

    public class a implements d.c {
        @Override
        public void a(Product product, View anchor) {
        }
    }

    public class b extends d.b {
        public b(int layout) {
            super(layout);
        }

        @Override
        public d.a e(View itemView) {
            return new e(itemView);
        }
    }

    public class C0791c extends d.b {
        public C0791c(int layout) {
            super(layout);
        }

        @Override
        public d.a e(View itemView) {
            return new f(itemView);
        }
    }

    public interface d {
        void a(Package pack, View anchor);
    }

    public class e extends d.a {

        public View f29769b;

        public ImageView f29770c;

        public class a extends AbstractViewOnClickListenerC12733a {

            public final Package f29772b;

            public a(final Package val$pack) {
                this.f29772b = val$pack;
            }

            @Override
            public void click(View view) {
                c.this.f29766g.a(this.f29772b, view);
            }
        }

        public e(@NonNull View itemView) {
            super(itemView);
            this.f29769b = itemView;
            this.f29770c = (ImageView) itemView.findViewById(R.id.icon);
        }

        @Override
        @SuppressLint({"SetTextI18n"})
        public void a(H7.a element, d.c listener) {
            List<String> list;
            Package b10 = element.b();
            String str = b10.thumbnail;
            String I10 = (str == null || str.isEmpty()) ? null : T5.b.I(b10, b10.thumbnail);
            if ((I10 == null || I10.isEmpty()) && (list = b10.images) != null && !list.isEmpty()) {
                I10 = T5.b.I(b10, b10.images.get(0));
            }
            if (I10 != null) {
                Vc.e.a0(this.f29770c, I10, R.drawable.package_failedload, R.drawable.package_failedload, c.this.f8291d);
            } else {
                Vc.e.U(this.f29770c, R.drawable.package_failedload);
            }
            this.f29769b.setOnClickListener(new a(b10));
        }
    }

    public class f extends d.a {
        public f(@NonNull View itemView) {
            super(itemView);
        }

        @SuppressLint({"SetTextI18n"})
        public void b(H7.a element, d listener) {
        }
    }

    public c(List<H7.a> elements, Context context, d listener) {
        super(elements, context, new a());
        this.f29766g = listener;
        b bVar = new b(R.layout.embed_marketplace_search_panel_single_product);
        C0791c c0791c = new C0791c(R.layout.marketplace_search_product_skeleton);
        this.f8288a.put(0, bVar);
        this.f8288a.put(2, c0791c);
        this.f8289b.add(bVar);
        this.f8289b.add(c0791c);
        for (int i10 = 0; i10 < this.f8289b.size(); i10++) {
            this.f8289b.get(i10).f8296c = i10;
        }
    }
}
