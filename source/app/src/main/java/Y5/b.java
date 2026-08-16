package Y5;

import H7.d;
import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.Objects.Product;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.v2.Package;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine2.R;
import java.util.List;

@Deprecated
public class b extends H7.d {

    public final d f29753g;

    public class a implements d.c {
        @Override
        public void a(Product product, View anchor) {
        }
    }

    public class C0790b extends d.b {
        public C0790b(int layout) {
            super(layout);
        }

        @Override
        public d.a e(View itemView) {
            return new e(itemView);
        }
    }

    public class c extends d.b {
        public c(int layout) {
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

        public View f29756b;

        public TextView f29757c;

        public TextView f29758d;

        public TextView f29759e;

        public ImageView f29760f;

        public View f29761g;

        public class a extends AbstractViewOnClickListenerC12733a {

            public final Package f29763b;

            public a(final Package val$pack) {
                this.f29763b = val$pack;
            }

            @Override
            public void click(View view) {
                b.this.f29753g.a(this.f29763b, view);
            }
        }

        public e(@NonNull View itemView) {
            super(itemView);
            this.f29756b = itemView;
            this.f29757c = (TextView) itemView.findViewById(R.id.name);
            this.f29759e = (TextView) itemView.findViewById(R.id.price);
            this.f29760f = (ImageView) itemView.findViewById(R.id.icon);
            this.f29761g = itemView.findViewById(R.id.promotion_layout);
            this.f29758d = (TextView) itemView.findViewById(R.id.percent_descont);
        }

        @Override
        @SuppressLint({"SetTextI18n"})
        public void a(H7.a element, d.c listener) {
            List<String> list;
            Package b10 = element.b();
            this.f29757c.setText(T5.b.P(b10));
            this.f29759e.setVisibility(8);
            this.f29761g.setVisibility(8);
            String str = b10.thumbnail;
            String I10 = (str == null || str.isEmpty()) ? null : T5.b.I(b10, b10.thumbnail);
            if ((I10 == null || I10.isEmpty()) && (list = b10.images) != null && !list.isEmpty()) {
                I10 = T5.b.I(b10, b10.images.get(0));
            }
            if (I10 != null) {
                Vc.e.a0(this.f29760f, I10, R.drawable.package_failedload, R.drawable.package_failedload, b.this.f8291d);
            } else {
                Vc.e.U(this.f29760f, R.drawable.package_failedload);
            }
            this.f29756b.setOnClickListener(new a(b10));
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

    public b(List<H7.a> elements, Context context, d listener) {
        super(elements, context, new a());
        this.f29753g = listener;
        C0790b c0790b = new C0790b(R.layout.marketplace_search_panel_single_product);
        c cVar = new c(R.layout.marketplace_search_product_skeleton);
        this.f8288a.put(0, c0790b);
        this.f8288a.put(2, cVar);
        this.f8289b.add(c0790b);
        this.f8289b.add(cVar);
        for (int i10 = 0; i10 < this.f8289b.size(); i10++) {
            this.f8289b.get(i10).f8296c = i10;
        }
    }
}
