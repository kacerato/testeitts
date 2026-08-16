package w6;

import K8.c;
import U.h;
import Vc.e;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.load.engine.i;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.io.File;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import x6.C16057a;
import x6.C16058b;

public class C15970a extends RecyclerView.Adapter<d> {

    public final List<C16058b> f127214a;

    public final LayoutInflater f127215b;

    public final b f127216c;

    public final Context f127217d;

    public C16058b f127218e;

    public class C2171a extends AbstractViewOnClickListenerC12733a {

        public final x6.c f127219b;

        public final int f127220c;

        public C2171a(final x6.c val$project, final int val$position) {
            this.f127219b = val$project;
            this.f127220c = val$position;
        }

        @Override
        public void click(View v10) {
            C15970a.this.f127216c.a(this.f127219b, this.f127220c);
        }
    }

    public interface b {
        void a(x6.c project, int idx);
    }

    public static class c extends d {

        public final View f127222a;

        public final TextView f127223b;

        public final ImageView f127224c;

        public final LinearLayout f127225d;

        public final TextView f127226e;

        public c(View v10) {
            super(v10);
            this.f127222a = v10;
            this.f127225d = (LinearLayout) v10.findViewById(R.id.backgroundView);
            this.f127223b = (TextView) v10.findViewById(R.id.tittle);
            this.f127224c = (ImageView) v10.findViewById(R.id.thumb);
            this.f127226e = (TextView) v10.findViewById(R.id.desc);
        }
    }

    public static class d extends RecyclerView.ViewHolder {
        public d(View v10) {
            super(v10);
        }
    }

    public C15970a(Context context, b listener) {
        listener.getClass();
        context.getClass();
        this.f127217d = context;
        this.f127214a = new SteppedArrayList();
        this.f127215b = LayoutInflater.from(context);
        this.f127216c = listener;
    }

    @Override
    public int getItemCount() {
        return this.f127214a.size();
    }

    @Override
    public int getItemViewType(int position) {
        return this.f127214a.get(position) instanceof C16057a ? 1 : 0;
    }

    public void h(List<C16058b> elements) {
        int size = this.f127214a.size();
        this.f127214a.addAll(elements);
        notifyItemRangeInserted(size, elements.size());
    }

    public void i(C16058b elements) {
        int size = this.f127214a.size();
        this.f127214a.add(elements);
        notifyItemInserted(size);
    }

    public C16058b j(int i10) {
        return this.f127214a.get(i10);
    }

    public File k(String projectName) {
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(projectName) + "/_EDITOR/thumb.png");
        if (file.exists()) {
            return file;
        }
        return new File(com.itsmagic.engine.Core.Components.ProjectController.a.Z(projectName, this.f127217d) + "/" + W7.b.f27306f.f2458a.f4940c + "/APP/Settings/Icon/512x.png");
    }

    public int l(C16058b element) {
        if (element == null) {
            return -1;
        }
        return this.f127214a.indexOf(element);
    }

    @Override
    public void onBindViewHolder(@NonNull d baseHolder, final int initialPosition) {
        C16058b c16058b = this.f127214a.get(initialPosition);
        if (!(c16058b instanceof x6.c)) {
            throw new RuntimeException("Invalid holder " + baseHolder.getClass().getName());
        }
        x6.c cVar = (x6.c) c16058b;
        c cVar2 = (c) baseHolder;
        String str = cVar.f127956a;
        cVar2.f127223b.setText(str);
        cVar2.itemView.setOnClickListener(new C2171a(cVar, initialPosition));
        File k10 = k(str);
        if (k10.exists()) {
            cVar2.f127224c.setScaleType(ImageView.ScaleType.CENTER_CROP);
            e.I(cVar2.f127224c, k10, this.f127217d, new h().c().u(R.drawable.project_default_icon), i.f59186b);
        } else {
            cVar2.f127224c.setScaleType(ImageView.ScaleType.FIT_CENTER);
            e.X(cVar2.f127224c, R.drawable.project_default_icon, this.f127217d, R.drawable.project_default_icon, i.f59185a, 0, new h().y().u(R.drawable.project_default_icon));
        }
        int k02 = Nc.b.k0(8.0f);
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) cVar2.f127225d.getLayoutParams();
        if (this.f127218e == cVar) {
            com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.h(cVar2.f127225d, true);
            layoutParams.leftMargin = 0;
            layoutParams.rightMargin = 0;
            layoutParams.topMargin = 0;
            layoutParams.bottomMargin = 0;
            cVar2.f127222a.setPadding(k02, 0, k02, 0);
        } else {
            com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.h(cVar2.f127225d, false);
            layoutParams.leftMargin = k02;
            layoutParams.rightMargin = k02;
            layoutParams.topMargin = k02;
            layoutParams.bottomMargin = k02;
            cVar2.f127222a.setPadding(0, 0, k02, 0);
        }
        cVar2.f127225d.setLayoutParams(layoutParams);
    }

    @Override
    @NonNull
    public d onCreateViewHolder(@NonNull ViewGroup viewGroup, int viewType) {
        if (viewType == 0) {
            return K8.c.f11004e == c.a.Landscape ? new c(this.f127215b.inflate(R.layout.project_single_v3_land, viewGroup, false)) : new c(this.f127215b.inflate(R.layout.project_single_v3, viewGroup, false));
        }
        throw new RuntimeException("Invalid type " + viewType);
    }

    public boolean o(C16058b element) {
        int indexOf = this.f127214a.indexOf(element);
        if (indexOf < 0) {
            return false;
        }
        this.f127214a.remove(indexOf);
        notifyItemRemoved(indexOf);
        return true;
    }

    public void p(List<C16058b> elements) {
        Iterator<C16058b> it = elements.iterator();
        while (it.hasNext()) {
            o(it.next());
        }
    }

    public void q(x6.c selectedProject) {
        int indexOf;
        C16058b c16058b = this.f127218e;
        int indexOf2 = c16058b != null ? this.f127214a.indexOf(c16058b) : -1;
        this.f127218e = selectedProject;
        if (selectedProject != null && (indexOf = this.f127214a.indexOf(selectedProject)) >= 0) {
            notifyItemChanged(indexOf);
        }
        if (indexOf2 >= 0) {
            notifyItemChanged(indexOf2);
        }
    }

    public void r(Comparator<? super C16058b> c10) {
        this.f127214a.sort(c10);
        super.notifyDataSetChanged();
    }
}
