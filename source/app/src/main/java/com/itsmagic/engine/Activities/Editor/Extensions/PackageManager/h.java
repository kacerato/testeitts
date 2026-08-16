package com.itsmagic.engine.Activities.Editor.Extensions.PackageManager;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import b6.C3847a;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.g;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.v2.Package;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import r4.C15147a;

public class h extends RecyclerView.Adapter<f> {

    public final List<g.o> f70282a;

    public final LayoutInflater f70283b;

    public final e f70284c;

    public class a implements View.OnClickListener {

        public final g.o f70285b;

        public class C1063a implements dd.d {
            public C1063a() {
            }

            @Override
            public void onSelected(View v10) {
                h.this.f70284c.a(a.this.f70285b);
            }
        }

        public a(final g.o val$down) {
            this.f70285b = val$down;
        }

        @Override
        public void onClick(View v10) {
            LinkedList linkedList = new LinkedList();
            linkedList.add(new C12908b("Cancel", new C1063a()));
            Y6.a.F1(v10, C15147a.e.Below, linkedList);
        }
    }

    public class b implements View.OnClickListener {

        public final g.o f70288b;

        public class a implements dd.d {
            public a() {
            }

            @Override
            public void onSelected(View v10) {
                h.this.f70284c.a(b.this.f70288b);
            }
        }

        public b(final g.o val$down) {
            this.f70288b = val$down;
        }

        @Override
        public void onClick(View v10) {
            LinkedList linkedList = new LinkedList();
            linkedList.add(new C12908b("Remove", new a()));
            Y6.a.F1(v10, C15147a.e.Below, linkedList);
        }
    }

    public class c implements View.OnClickListener {

        public final g.o f70291b;

        public class a implements dd.d {
            public a() {
            }

            @Override
            public void onSelected(View v10) {
                int indexOf = h.this.f70282a.indexOf(c.this.f70291b);
                if (indexOf < 0) {
                    h.this.notifyDataSetChanged();
                    return;
                }
                h.this.f70282a.remove(indexOf);
                h.this.notifyItemRemoved(indexOf);
                h.this.f70284c.a(c.this.f70291b);
            }
        }

        public c(final g.o val$down) {
            this.f70291b = val$down;
        }

        @Override
        public void onClick(View v10) {
            LinkedList linkedList = new LinkedList();
            linkedList.add(new C12908b("Remove", new a()));
            Y6.a.F1(v10, C15147a.e.Below, linkedList);
        }
    }

    public static class d {

        public static final int[] f70294a;

        static {
            int[] iArr = new int[g.o.b.values().length];
            f70294a = iArr;
            try {
                iArr[g.o.b.Downloading.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f70294a[g.o.b.Importing.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public interface e {
        void a(g.o download);
    }

    public class f extends RecyclerView.ViewHolder {

        public TextView f70295a;

        public TextView f70296b;

        public ImageView f70297c;

        public View f70298d;

        public f(View itemView) {
            super(itemView);
            this.f70295a = (TextView) itemView.findViewById(R.id.tittle);
            this.f70296b = (TextView) itemView.findViewById(R.id.desc);
            this.f70297c = (ImageView) itemView.findViewById(R.id.icon);
            this.f70298d = itemView.findViewById(R.id.menu);
        }
    }

    public h(Context context, List<g.o> data, e callbacks) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f70282a = steppedArrayList;
        this.f70283b = LayoutInflater.from(context);
        steppedArrayList.clear();
        steppedArrayList.addAll(data);
        this.f70284c = callbacks;
    }

    @Override
    public int getItemCount() {
        return this.f70282a.size();
    }

    public void i(g.o download) {
        this.f70282a.add(download);
        notifyItemInserted(this.f70282a.size() - 1);
    }

    @Override
    public void onBindViewHolder(f holder, int position) {
        List<String> list;
        g.o oVar = this.f70282a.get(position);
        String str = oVar.f70277l;
        if (str != null) {
            holder.f70295a.setText(str);
        } else {
            holder.f70295a.setText("Starting...");
        }
        int[] iArr = d.f70294a;
        int i10 = iArr[oVar.k().ordinal()];
        if (i10 == 1) {
            holder.f70296b.setText("Downloading: " + oVar.c() + ve.j.f121589a);
        } else if (i10 != 2) {
            holder.f70296b.setText(Tc.b.d(oVar.k().toString().toLowerCase(Locale.ROOT)));
        } else {
            holder.f70296b.setText("Importing: " + oVar.c() + ve.j.f121589a);
        }
        Package D10 = T5.b.D(oVar.f70266a);
        String str2 = D10.thumbnail;
        String I10 = (str2 == null || str2.isEmpty()) ? null : T5.b.I(D10, D10.thumbnail);
        if ((I10 == null || I10.isEmpty()) && (list = D10.images) != null && !list.isEmpty()) {
            I10 = T5.b.I(D10, D10.images.get(0));
        }
        if (I10 != null) {
            ImageView imageView = holder.f70297c;
            Vc.e.a0(imageView, I10, R.drawable.package_failedload, R.drawable.package_failedload, imageView.getContext());
        } else {
            Vc.e.U(holder.f70297c, R.drawable.package_failedload);
        }
        int i11 = iArr[oVar.k().ordinal()];
        if (i11 == 1) {
            holder.f70298d.setOnClickListener(new a(oVar));
            holder.f70296b.setText("D: " + oVar.c() + "% " + C3847a.a(oVar.e()) + " - " + C3847a.b(oVar.d()));
            return;
        }
        if (i11 != 2) {
            holder.f70298d.setOnClickListener(new c(oVar));
            holder.f70296b.setText(Tc.b.d(oVar.k().toString().toLowerCase(Locale.ROOT)));
            return;
        }
        holder.f70298d.setOnClickListener(new b(oVar));
        holder.f70296b.setText("Importing: " + oVar.c() + ve.j.f121589a);
    }

    @Override
    public f onCreateViewHolder(ViewGroup parent, int viewType) {
        return new f(this.f70283b.inflate(R.layout.package_downloader_item, parent, false));
    }

    public void l(List<g.o> displayDownloads) {
        for (int i10 = 0; i10 < this.f70282a.size(); i10++) {
            g.o oVar = this.f70282a.get(i10);
            if (!displayDownloads.contains(oVar)) {
                this.f70282a.remove(oVar);
                notifyItemRemoved(i10);
                return;
            }
        }
        for (int i11 = 0; i11 < displayDownloads.size(); i11++) {
            g.o oVar2 = displayDownloads.get(i11);
            if (!this.f70282a.contains(oVar2)) {
                i(oVar2);
            }
        }
        for (int i12 = 0; i12 < this.f70282a.size(); i12++) {
            notifyItemChanged(i12);
        }
    }
}
