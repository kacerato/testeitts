package Z5;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.v2.Package;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine2.R;
import e7.C13042a;
import java.util.List;

public class a extends C13042a<c, d> {

    public class C0808a implements C13042a.InterfaceC1584a<c, d> {

        public final Context f30762a;

        public final b f30763b;

        public class C0809a extends AbstractViewOnClickListenerC12733a {

            public final Package f30764b;

            public C0809a(final Package val$pack) {
                this.f30764b = val$pack;
            }

            @Override
            public void click(View view) {
                C0808a.this.f30763b.a(this.f30764b, view);
            }
        }

        public C0808a(final Context val$context, final b val$callbacks) {
            this.f30762a = val$context;
            this.f30763b = val$callbacks;
        }

        @Override
        public void a(d holder, c element, int position) {
            d(holder, element);
        }

        public final void d(d holder, c element) {
            List<String> list;
            Package a10 = element.a();
            holder.f30773d.setText(T5.b.P(a10));
            holder.f30775f.setVisibility(8);
            holder.f30777h.setVisibility(8);
            String str = a10.thumbnail;
            String I10 = (str == null || str.isEmpty()) ? null : T5.b.I(a10, a10.thumbnail);
            if ((I10 == null || I10.isEmpty()) && (list = a10.images) != null && !list.isEmpty()) {
                I10 = T5.b.I(a10, a10.images.get(0));
            }
            if (I10 != null) {
                Vc.e.a0(holder.f30776g, I10, R.drawable.package_failedload, R.drawable.package_failedload, this.f30762a);
            } else {
                Vc.e.U(holder.f30776g, R.drawable.package_failedload);
            }
            holder.f30771b.setOnClickListener(new C0809a(a10));
        }

        @Override
        public d b(LayoutInflater inflater, ViewGroup parent) {
            return new d(inflater.inflate(R.layout.marketplace_store_panel_single_product, parent, false));
        }
    }

    public interface b {
        void a(Package pack, View anchor);
    }

    public a(Context context, b callbacks) {
        super(context, new C0808a(context, callbacks));
    }
}
