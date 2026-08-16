package M6;

import Vc.e;
import Z6.i;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine2.R;
import e7.C13042a;
import java.util.List;

public class d extends C13042a<b, c> {

    public static final String f14592e = "SuggestionsAdapter";

    public class a implements C13042a.InterfaceC1584a<M6.b, M6.c> {

        public final Context f14593a;

        public final M6.a f14594b;

        public class C0416a extends AbstractViewOnClickListenerC12733a {

            public final M6.b f14595b;

            public C0416a(final M6.b val$element) {
                this.f14595b = val$element;
            }

            @Override
            public void click(View view) {
                M6.b bVar = this.f14595b;
                i.y1(bVar.f14568b, bVar.f14574h);
            }
        }

        public class b extends AbstractViewOnClickListenerC12733a {

            public final M6.b f14597b;

            public b(final M6.b val$element) {
                this.f14597b = val$element;
            }

            @Override
            public void click(View view) {
                i.y1(this.f14597b.f14568b, "Missing information, please ask on communities!!");
            }
        }

        public class c extends AbstractViewOnClickListenerC12733a {

            public final M6.b f14599b;

            public c(final M6.b val$element) {
                this.f14599b = val$element;
            }

            @Override
            public void click(View view) {
                a.this.f14594b.a(this.f14599b);
            }
        }

        public a(final Context val$context, final M6.a val$adapterListener) {
            this.f14593a = val$context;
            this.f14594b = val$adapterListener;
        }

        @Override
        public void a(M6.c holder, M6.b element, int position) {
            holder.f14588b.setText(element.f14567a);
            e.U(holder.f14589c, element.f14575i);
            e.u(holder.f14590d, this.f14593a, Theme.i(position % 2 == 0 ? Theme.T.TREE_LIST_ROW2 : Theme.T.TREE_LIST_ROW1));
            String str = element.f14574h;
            if (str == null || str.isEmpty()) {
                holder.f14591e.setImageResource(R.drawable.pending);
                holder.f14591e.setOnClickListener(new b(element));
            } else {
                holder.f14591e.setImageResource(R.drawable.interrogation);
                holder.f14591e.setOnClickListener(new C0416a(element));
            }
            holder.a().setOnClickListener(new c(element));
        }

        @Override
        public M6.c b(LayoutInflater inflater, ViewGroup parent) {
            return new M6.c(inflater.inflate(R.layout.suggestion_element, parent, false));
        }
    }

    public d(Context context, List<b> elements, M6.a adapterListener) {
        super(context, elements, new a(context, adapterListener));
    }
}
