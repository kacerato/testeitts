package C4;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import java.util.List;
import r4.C15147a;

public class a extends RecyclerView.Adapter<f> {

    public List<D4.c> f1991a;

    public final LayoutInflater f1992b;

    public final e f1993c;

    public final Context f1994d;

    public class C0040a extends AbstractViewOnClickListenerC12733a {

        public final D4.b f1995b;

        public final int f1996c;

        public C0040a(final D4.b val$build, final int val$position) {
            this.f1995b = val$build;
            this.f1996c = val$position;
        }

        @Override
        public void click(View v10) {
            a.this.q(v10, this.f1995b, this.f1996c);
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {

        public final D4.b f1998b;

        public final int f1999c;

        public b(final D4.b val$build, final int val$position) {
            this.f1998b = val$build;
            this.f1999c = val$position;
        }

        @Override
        public void click(View v10) {
            a.this.q(v10, this.f1998b, this.f1999c);
        }
    }

    public class c extends SteppedArrayList<C12908b> {

        public final D4.b f2001b;

        public class C0041a implements dd.d {
            public C0041a() {
            }

            @Override
            public void onSelected(View v10) {
                if (!c.this.f2001b.f4827g.equals("3")) {
                    N7.c.v0(Lang.l(Lang.T.BUILDS_ERROR_APK_UNDER_CONSTRUCTION));
                    return;
                }
                try {
                    N7.c.p0(new Intent("android.intent.action.VIEW", Uri.parse("https://itsmagic.com.br/getBuild/index.php?at=" + c.this.f2001b.f4823c)));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public c(final D4.b val$pack) {
            this.f2001b = val$pack;
            add(new C12908b("Open link", new C0041a()));
        }
    }

    public static class d extends f {

        public final TextView f2004a;

        public final ImageView f2005b;

        public final TextView f2006c;

        public final TextView f2007d;

        public final TextView f2008e;

        public final View f2009f;

        public d(View v10) {
            super(v10);
            this.f2004a = (TextView) v10.findViewById(R.id.tittle);
            this.f2005b = (ImageView) v10.findViewById(R.id.icon);
            this.f2006c = (TextView) v10.findViewById(R.id.date);
            this.f2007d = (TextView) v10.findViewById(R.id.version);
            this.f2009f = v10.findViewById(R.id.menu);
            this.f2008e = (TextView) v10.findViewById(R.id.status);
        }
    }

    public interface e {
        void a(int index);
    }

    public static class f extends RecyclerView.ViewHolder {
        public f(View v10) {
            super(v10);
        }
    }

    public a(Context context, e listener) {
        listener.getClass();
        context.getClass();
        this.f1994d = context;
        this.f1991a = new SteppedArrayList();
        this.f1992b = LayoutInflater.from(context);
        this.f1993c = listener;
    }

    @Override
    public int getItemCount() {
        return this.f1991a.size();
    }

    @Override
    public int getItemViewType(int position) {
        return this.f1991a.get(position) instanceof D4.a ? 1 : 0;
    }

    public void h(D4.c elements) {
        int size = this.f1991a.size();
        this.f1991a.add(elements);
        notifyItemInserted(size);
    }

    public void i(List<D4.c> elements) {
        int size = this.f1991a.size();
        this.f1991a.addAll(elements);
        notifyItemRangeInserted(size, elements.size());
    }

    public void j() {
        int size = this.f1991a.size();
        this.f1991a.clear();
        notifyItemRangeRemoved(0, size);
    }

    public D4.c k(int i10) {
        return this.f1991a.get(i10);
    }

    @Override
    public void onBindViewHolder(@NonNull f baseHolder, final int initialPosition) {
        D4.c cVar = this.f1991a.get(initialPosition);
        if (!(cVar instanceof D4.b)) {
            throw new RuntimeException("Invalid holder " + baseHolder.getClass().getName());
        }
        D4.b bVar = (D4.b) cVar;
        d dVar = (d) baseHolder;
        Vc.e.V(dVar.f2005b, R.drawable.embed_mp, this.f1994d);
        dVar.f2004a.setText(bVar.a());
        dVar.f2006c.setText(bVar.f4828h);
        dVar.f2007d.setText(bVar.f4825e + " - " + bVar.f4826f);
        if (bVar.f4827g.equals("3")) {
            dVar.f2008e.setText("Builded at " + bVar.f4829i);
        } else if (bVar.f4827g.equals("0")) {
            dVar.f2008e.setText(this.f1994d.getResources().getString(R.string.activity_marketplace_cloudbuild_build_waitingassets));
        } else if (bVar.f4827g.equals("1")) {
            if (bVar.f4830j.equals("0")) {
                dVar.f2008e.setText(this.f1994d.getResources().getString(R.string.activity_marketplace_cloudbuild_build_waitingcompiller));
            } else {
                dVar.f2008e.setText(this.f1994d.getResources().getString(R.string.activity_marketplace_cloudbuild_build_waitingqueue) + " " + bVar.f4830j + " " + this.f1994d.getResources().getString(R.string.activity_marketplace_cloudbuild_build_frontyou));
            }
        } else if (bVar.f4827g.equals("2")) {
            dVar.f2008e.setText(this.f1994d.getResources().getString(R.string.activity_marketplace_cloudbuild_build_building));
        } else if (bVar.f4827g.equals("4")) {
            dVar.f2008e.setText(this.f1994d.getResources().getString(R.string.activity_marketplace_cloudbuild_build_buildingerror));
        }
        dVar.itemView.setOnClickListener(new C0040a(bVar, initialPosition));
        dVar.f2009f.setOnClickListener(new b(bVar, initialPosition));
    }

    @Override
    @NonNull
    public f onCreateViewHolder(@NonNull ViewGroup viewGroup, int viewType) {
        if (viewType == 0) {
            return new d(this.f1992b.inflate(R.layout.build_single_element, viewGroup, false));
        }
        throw new RuntimeException("Invalid type " + viewType);
    }

    public void n(int index, D4.c element) {
        this.f1991a.set(index, element);
        notifyItemChanged(index);
    }

    public void o(int index) {
        this.f1991a.remove(index);
        notifyItemRemoved(index);
    }

    public void p(List<D4.c> elements) {
        for (D4.c cVar : elements) {
            int i10 = 0;
            while (true) {
                if (i10 >= this.f1991a.size()) {
                    break;
                }
                D4.c cVar2 = this.f1991a.get(i10);
                if (cVar2 == cVar) {
                    this.f1991a.remove(cVar2);
                    notifyItemRemoved(i10);
                    break;
                }
                i10++;
            }
        }
    }

    public final void q(View view, D4.b pack, int position) {
        Y6.a.F1(view, C15147a.e.Below, new c(pack));
    }
}
